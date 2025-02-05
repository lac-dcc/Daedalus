; ModuleID = 'cdecl.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.YYSTYPE = type { %struct.anon }
%struct.anon = type { ptr, ptr, ptr }
%struct.yywork = type { i8, i8 }
%struct.anon.0 = type { ptr, i32 }
%struct.helpstruct = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@cdeclsccsid = internal global [24 x i8] c"@(#)cdecl.c\092.4 3/31/88\00", align 16
@modbits = internal unnamed_addr global i32 0, align 4
@arbdims = internal unnamed_addr global i1 false, align 4
@savedname = internal unnamed_addr global ptr null, align 8
@unknown_name = internal global [13 x i8] c"unknown_name\00", align 1
@prev = internal unnamed_addr global i8 0, align 1
@RitchieFlag = internal unnamed_addr global i1 false, align 4
@MkProgramFlag = internal unnamed_addr global i1 false, align 4
@PreANSIFlag = internal unnamed_addr global i1 false, align 4
@CplusplusFlag = internal unnamed_addr global i1 false, align 4
@OnATty = internal unnamed_addr global i32 0, align 4
@Interactive = internal unnamed_addr global i1 false, align 4
@KeywordName = internal unnamed_addr global i1 false, align 4
@.str = private unnamed_addr constant [6 x i8] c"cdecl\00", align 1
@progname = internal unnamed_addr global ptr @.str, align 8
@cdgramsccsid = internal global [25 x i8] c"@(#)cdgram.y\092.2 3/30/88\00", align 16
@yyexca = internal unnamed_addr constant [46 x i16] [i16 -1, i16 1, i16 0, i16 -1, i16 -2, i16 0, i16 -1, i16 27, i16 282, i16 81, i16 40, i16 81, i16 42, i16 81, i16 38, i16 81, i16 -2, i16 87, i16 -1, i16 37, i16 260, i16 31, i16 41, i16 31, i16 -2, i16 81, i16 -1, i16 87, i16 282, i16 82, i16 40, i16 82, i16 42, i16 82, i16 38, i16 82, i16 -2, i16 80, i16 -1, i16 92, i16 260, i16 31, i16 41, i16 31, i16 -2, i16 81], align 16
@yyact = internal unnamed_addr constant [322 x i16] [i16 67, i16 79, i16 28, i16 69, i16 72, i16 68, i16 66, i16 76, i16 159, i16 13, i16 77, i16 75, i16 78, i16 73, i16 74, i16 70, i16 79, i16 16, i16 17, i16 18, i16 19, i16 16, i16 17, i16 18, i16 19, i16 67, i16 129, i16 78, i16 69, i16 103, i16 68, i16 66, i16 125, i16 25, i16 76, i16 39, i16 23, i16 77, i16 75, i16 128, i16 70, i16 74, i16 118, i16 22, i16 115, i16 137, i16 117, i16 118, i16 85, i16 115, i16 86, i16 117, i16 83, i16 23, i16 152, i16 25, i16 30, i16 100, i16 23, i16 10, i16 22, i16 56, i16 25, i16 23, i16 47, i16 22, i16 60, i16 59, i16 37, i16 97, i16 22, i16 121, i16 25, i16 40, i16 41, i16 123, i16 58, i16 25, i16 20, i16 34, i16 139, i16 110, i16 25, i16 161, i16 144, i16 93, i16 145, i16 92, i16 94, i16 32, i16 24, i16 57, i16 147, i16 71, i16 126, i16 29, i16 81, i16 21, i16 42, i16 55, i16 8, i16 136, i16 108, i16 150, i16 12, i16 135, i16 33, i16 106, i16 11, i16 114, i16 31, i16 10, i16 62, i16 151, i16 132, i16 134, i16 44, i16 45, i16 48, i16 49, i16 156, i16 43, i16 35, i16 2, i16 63, i16 15, i16 53, i16 1, i16 54, i16 14, i16 50, i16 64, i16 27, i16 65, i16 52, i16 101, i16 26, i16 46, i16 87, i16 82, i16 61, i16 38, i16 0, i16 90, i16 80, i16 88, i16 0, i16 0, i16 89, i16 0, i16 95, i16 96, i16 98, i16 108, i16 91, i16 108, i16 0, i16 0, i16 108, i16 0, i16 11, i16 0, i16 51, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 109, i16 0, i16 111, i16 104, i16 102, i16 0, i16 0, i16 0, i16 105, i16 112, i16 107, i16 0, i16 122, i16 99, i16 0, i16 113, i16 0, i16 119, i16 120, i16 0, i16 0, i16 0, i16 0, i16 127, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 124, i16 131, i16 0, i16 133, i16 0, i16 0, i16 0, i16 0, i16 142, i16 0, i16 0, i16 130, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 138, i16 146, i16 140, i16 141, i16 148, i16 0, i16 149, i16 0, i16 0, i16 0, i16 0, i16 127, i16 0, i16 0, i16 0, i16 153, i16 0, i16 0, i16 25, i16 158, i16 0, i16 0, i16 127, i16 0, i16 128, i16 155, i16 160, i16 16, i16 17, i16 18, i16 19, i16 154, i16 0, i16 0, i16 0, i16 0, i16 157, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 116, i16 0, i16 0, i16 0, i16 0, i16 116, i16 84, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 36, i16 0, i16 0, i16 145, i16 145, i16 92, i16 9, i16 0, i16 0, i16 5, i16 0, i16 4, i16 0, i16 6, i16 0, i16 3, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 7], align 16
@yypact = internal unnamed_addr constant [162 x i16] [i16 -1000, i16 49, i16 -1000, i16 101, i16 -273, i16 -204, i16 -38, i16 -226, i16 -1000, i16 101, i16 -1000, i16 -1000, i16 -1000, i16 -169, i16 -194, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -187, i16 101, i16 28, i16 -248, i16 -196, i16 -214, i16 -212, i16 -214, i16 -214, i16 101, i16 -1000, i16 -1000, i16 -269, i16 101, i16 -194, i16 -1000, i16 -194, i16 -221, i16 -191, i16 -1000, i16 -206, i16 -207, i16 -1000, i16 -274, i16 -1000, i16 -1000, i16 10, i16 -214, i16 10, i16 -1000, i16 -1000, i16 -194, i16 -1000, i16 101, i16 -1000, i16 44, i16 -170, i16 -1000, i16 -194, i16 -199, i16 -194, i16 -1000, i16 -249, i16 -1000, i16 -225, i16 -247, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 10, i16 101, i16 67, i16 -214, i16 -181, i16 -214, i16 10, i16 -1000, i16 101, i16 9, i16 101, i16 -1000, i16 -221, i16 -200, i16 -194, i16 -1000, i16 -1000, i16 -192, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 101, i16 -1000, i16 -9, i16 -1000, i16 -67, i16 10, i16 72, i16 10, i16 74, i16 -1000, i16 64, i16 4, i16 -182, i16 9, i16 9, i16 -1000, i16 -173, i16 -194, i16 -1000, i16 -259, i16 -1000, i16 -1000, i16 43, i16 -1000, i16 -1000, i16 -1000, i16 -1, i16 -1000, i16 10, i16 -1000, i16 -1000, i16 -226, i16 -1000, i16 -1000, i16 62, i16 71, i16 11, i16 11, i16 -1000, i16 -228, i16 -1000, i16 -243, i16 9, i16 -1000, i16 -1000, i16 101, i16 80, i16 9, i16 -194, i16 -174, i16 11, i16 -1000, i16 -33, i16 11, i16 -1000, i16 -1000, i16 42, i16 -1000], align 16
@yypgo = internal unnamed_addr constant [26 x i16] [i16 0, i16 99, i16 141, i16 140, i16 109, i16 94, i16 96, i16 139, i16 101, i16 137, i16 93, i16 112, i16 135, i16 133, i16 90, i16 95, i16 129, i16 125, i16 131, i16 124, i16 98, i16 91, i16 127, i16 123, i16 100, i16 121], align 16
@yyr1 = internal unnamed_addr constant [89 x i16] [i16 0, i16 22, i16 22, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 23, i16 24, i16 24, i16 15, i16 15, i16 6, i16 6, i16 6, i16 6, i16 7, i16 7, i16 7, i16 7, i16 7, i16 5, i16 5, i16 5, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 8, i16 8, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 21, i16 2, i16 2, i16 20, i16 25, i16 3, i16 3, i16 3, i16 3, i16 18, i16 18, i16 18, i16 10, i16 10, i16 19, i16 19, i16 19, i16 19, i16 19, i16 11, i16 11, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 14, i16 14, i16 9, i16 17, i16 17, i16 17, i16 17, i16 16, i16 16], align 16
@yyr2 = internal unnamed_addr constant [89 x i16] [i16 0, i16 0, i16 2, i16 2, i16 6, i16 4, i16 5, i16 3, i16 6, i16 5, i16 5, i16 8, i16 3, i16 1, i16 2, i16 1, i16 1, i16 1, i16 0, i16 1, i16 3, i16 4, i16 3, i16 3, i16 4, i16 2, i16 3, i16 1, i16 3, i16 3, i16 1, i16 0, i16 3, i16 1, i16 1, i16 3, i16 0, i16 2, i16 5, i16 6, i16 3, i16 4, i16 2, i16 2, i16 2, i16 2, i16 3, i16 3, i16 6, i16 4, i16 4, i16 8, i16 4, i16 2, i16 0, i16 1, i16 2, i16 0, i16 1, i16 1, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 0, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 0], align 16
@yychk = internal unnamed_addr constant [162 x i16] [i16 -1000, i16 -22, i16 -23, i16 265, i16 261, i16 259, i16 263, i16 272, i16 -24, i16 256, i16 10, i16 59, i16 -24, i16 282, i16 -16, i16 -17, i16 290, i16 291, i16 292, i16 293, i16 282, i16 -21, i16 264, i16 257, i16 -14, i16 276, i16 -16, i16 -17, i16 40, i16 -15, i16 282, i16 -24, i16 258, i16 -21, i16 266, i16 -24, i16 271, i16 40, i16 -2, i16 283, i16 269, i16 270, i16 -20, i16 -25, i16 -14, i16 -14, i16 -9, i16 276, i16 -14, i16 -14, i16 -24, i16 -16, i16 -24, i16 -21, i16 -21, i16 -1, i16 282, i16 -21, i16 267, i16 273, i16 273, i16 -3, i16 -11, i16 -19, i16 -18, i16 -13, i16 280, i16 274, i16 279, i16 277, i16 289, i16 -10, i16 278, i16 287, i16 288, i16 285, i16 281, i16 284, i16 286, i16 275, i16 -20, i16 -6, i16 -7, i16 42, i16 282, i16 38, i16 40, i16 -14, i16 -6, i16 -20, i16 -21, i16 -24, i16 260, i16 41, i16 258, i16 -21, i16 -21, i16 268, i16 -21, i16 -19, i16 282, i16 -12, i16 -11, i16 276, i16 -6, i16 -24, i16 40, i16 -8, i16 91, i16 -14, i16 262, i16 -14, i16 -6, i16 -24, i16 -4, i16 40, i16 282, i16 42, i16 38, i16 -24, i16 -1, i16 271, i16 -21, i16 267, i16 -24, i16 41, i16 -5, i16 -14, i16 282, i16 93, i16 283, i16 -6, i16 42, i16 -6, i16 41, i16 41, i16 -8, i16 41, i16 -4, i16 262, i16 -4, i16 -4, i16 -21, i16 -10, i16 41, i16 260, i16 -20, i16 93, i16 -6, i16 -15, i16 41, i16 42, i16 282, i16 -5, i16 -4, i16 -24, i16 40, i16 -4, i16 -21, i16 41, i16 -5, i16 41], align 16
@yydef = internal unnamed_addr constant [162 x i16] [i16 1, i16 -2, i16 2, i16 0, i16 88, i16 81, i16 88, i16 18, i16 13, i16 0, i16 15, i16 16, i16 3, i16 0, i16 81, i16 87, i16 83, i16 84, i16 85, i16 86, i16 0, i16 0, i16 0, i16 54, i16 57, i16 81, i16 81, i16 -2, i16 81, i16 0, i16 17, i16 14, i16 88, i16 0, i16 81, i16 7, i16 81, i16 -2, i16 0, i16 55, i16 0, i16 0, i16 53, i16 0, i16 80, i16 57, i16 0, i16 81, i16 0, i16 57, i16 12, i16 81, i16 5, i16 0, i16 47, i16 0, i16 33, i16 34, i16 81, i16 81, i16 81, i16 56, i16 58, i16 59, i16 0, i16 73, i16 67, i16 68, i16 69, i16 70, i16 71, i16 62, i16 63, i16 64, i16 76, i16 77, i16 78, i16 79, i16 65, i16 66, i16 0, i16 0, i16 19, i16 81, i16 27, i16 81, i16 0, i16 -2, i16 0, i16 36, i16 0, i16 6, i16 -2, i16 0, i16 81, i16 49, i16 50, i16 0, i16 52, i16 60, i16 61, i16 72, i16 74, i16 75, i16 0, i16 10, i16 81, i16 25, i16 0, i16 0, i16 0, i16 0, i16 0, i16 9, i16 0, i16 36, i16 0, i16 36, i16 36, i16 4, i16 32, i16 81, i16 35, i16 0, i16 8, i16 23, i16 0, i16 57, i16 30, i16 45, i16 0, i16 20, i16 0, i16 22, i16 26, i16 18, i16 44, i16 37, i16 0, i16 0, i16 42, i16 43, i16 48, i16 0, i16 24, i16 81, i16 36, i16 46, i16 21, i16 0, i16 40, i16 36, i16 81, i16 28, i16 29, i16 11, i16 81, i16 41, i16 51, i16 38, i16 0, i16 39], align 16
@yychar = internal unnamed_addr global i32 -1, align 4
@yynerrs = internal unnamed_addr global i32 0, align 4
@yyerrflag = internal unnamed_addr global i16 0, align 2
@yyv = internal unnamed_addr global [150 x %union.YYSTYPE] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yyval = internal unnamed_addr global %union.YYSTYPE zeroinitializer, align 8
@yylval = internal unnamed_addr global %union.YYSTYPE zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" pointer to \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pointer to \00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"pointer to member of class\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"pointer to member of class \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" reference to \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"reference to \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"function returning \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"function (\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c") returning \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"array \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"of \00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" of \00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Function returning function\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"function returning pointer to function\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Function returning array\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"function returning pointer\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Array of function\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"array of pointer to function\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Inner array of unspecified size\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"array of pointer\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Array of void\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"pointer to void\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Pointer to array of unspecified dimension\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"pointer to object\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"Reference to void\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Reference to array of unspecified dimension\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"reference to object\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c" (Pre-ANSI Compiler)\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c" (Ritchie Compiler)\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"noalias\00", align 1
@yyin = internal unnamed_addr global ptr null, align 8
@cdlexsccsid = internal global [24 x i8] c"@(#)cdlex.l\092.2 3/30/88\00", align 16
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@yytext = internal global [8192 x i8] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"bad character '%s'\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"bad switch yylook %d\00", align 1
@yyvstop = internal global [496 x i32] [i32 0, i32 56, i32 0, i32 54, i32 56, i32 0, i32 55, i32 0, i32 53, i32 56, i32 0, i32 55, i32 56, i32 0, i32 25, i32 56, i32 0, i32 52, i32 56, i32 0, i32 56, i32 0, i32 24, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 51, i32 56, i32 0, i32 53, i32 0, i32 52, i32 0, i32 23, i32 0, i32 51, i32 0, i32 51, i32 0, i32 2, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 12, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 21, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 38, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 14, i32 51, i32 0, i32 51, i32 0, i32 17, i32 51, i32 0, i32 51, i32 0, i32 19, i32 51, i32 0, i32 20, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 26, i32 51, i32 0, i32 3, i32 51, i32 0, i32 28, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 34, i32 51, i32 0, i32 5, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 8, i32 51, i32 0, i32 9, i32 51, i32 0, i32 51, i32 0, i32 10, i32 51, i32 0, i32 39, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 15, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 49, i32 51, i32 0, i32 51, i32 0, i32 1, i32 51, i32 0, i32 51, i32 0, i32 29, i32 51, i32 0, i32 31, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 36, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 42, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 47, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 32, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 35, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 11, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 43, i32 51, i32 0, i32 44, i32 51, i32 0, i32 46, i32 51, i32 0, i32 51, i32 0, i32 22, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 4, i32 51, i32 0, i32 51, i32 0, i32 6, i32 51, i32 0, i32 51, i32 0, i32 37, i32 51, i32 0, i32 40, i32 51, i32 0, i32 13, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 30, i32 51, i32 0, i32 51, i32 0, i32 7, i32 51, i32 0, i32 51, i32 0, i32 41, i32 51, i32 0, i32 51, i32 0, i32 51, i32 0, i32 48, i32 51, i32 0, i32 50, i32 51, i32 0, i32 27, i32 51, i32 0, i32 51, i32 0, i32 16, i32 51, i32 0, i32 18, i32 51, i32 0, i32 45, i32 51, i32 0, i32 51, i32 0, i32 33, i32 51, i32 0, i32 0], align 16
@yycrank = internal global [377 x %struct.yywork] [%struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 3 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 4 }, %struct.yywork { i8 1, i8 5 }, %struct.yywork { i8 31, i8 0 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork { i8 6, i8 0 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 6 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 7 }, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork { i8 1, i8 8 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 9 }, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 10 }, %struct.yywork { i8 10, i8 33 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 11 }, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 12 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork { i8 6, i8 31 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 2, i8 10 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork { i8 9, i8 32 }, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork zeroinitializer, %struct.yywork { i8 1, i8 13 }, %struct.yywork { i8 39, i8 69 }, %struct.yywork { i8 1, i8 14 }, %struct.yywork { i8 1, i8 15 }, %struct.yywork { i8 1, i8 16 }, %struct.yywork { i8 1, i8 17 }, %struct.yywork { i8 18, i8 48 }, %struct.yywork { i8 1, i8 18 }, %struct.yywork { i8 1, i8 19 }, %struct.yywork { i8 21, i8 51 }, %struct.yywork { i8 23, i8 53 }, %struct.yywork { i8 1, i8 20 }, %struct.yywork { i8 1, i8 21 }, %struct.yywork { i8 1, i8 22 }, %struct.yywork { i8 1, i8 23 }, %struct.yywork { i8 1, i8 24 }, %struct.yywork { i8 1, i8 25 }, %struct.yywork { i8 1, i8 26 }, %struct.yywork { i8 1, i8 27 }, %struct.yywork { i8 1, i8 28 }, %struct.yywork { i8 1, i8 29 }, %struct.yywork { i8 1, i8 30 }, %struct.yywork { i8 2, i8 13 }, %struct.yywork { i8 17, i8 46 }, %struct.yywork { i8 2, i8 14 }, %struct.yywork { i8 2, i8 15 }, %struct.yywork { i8 2, i8 16 }, %struct.yywork { i8 2, i8 17 }, %struct.yywork { i8 19, i8 49 }, %struct.yywork { i8 2, i8 18 }, %struct.yywork { i8 2, i8 19 }, %struct.yywork { i8 20, i8 50 }, %struct.yywork { i8 17, i8 47 }, %struct.yywork { i8 2, i8 20 }, %struct.yywork { i8 2, i8 21 }, %struct.yywork { i8 2, i8 22 }, %struct.yywork { i8 2, i8 23 }, %struct.yywork { i8 2, i8 24 }, %struct.yywork { i8 2, i8 25 }, %struct.yywork { i8 2, i8 26 }, %struct.yywork { i8 2, i8 27 }, %struct.yywork { i8 2, i8 28 }, %struct.yywork { i8 2, i8 29 }, %struct.yywork { i8 2, i8 30 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 13, i8 35 }, %struct.yywork { i8 13, i8 36 }, %struct.yywork { i8 22, i8 52 }, %struct.yywork { i8 13, i8 37 }, %struct.yywork { i8 25, i8 56 }, %struct.yywork { i8 26, i8 57 }, %struct.yywork { i8 28, i8 62 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 24, i8 54 }, %struct.yywork { i8 29, i8 63 }, %struct.yywork { i8 35, i8 66 }, %struct.yywork { i8 37, i8 67 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 24, i8 55 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 12, i8 34 }, %struct.yywork { i8 14, i8 38 }, %struct.yywork { i8 27, i8 58 }, %struct.yywork { i8 15, i8 42 }, %struct.yywork { i8 16, i8 44 }, %struct.yywork { i8 27, i8 59 }, %struct.yywork { i8 27, i8 60 }, %struct.yywork { i8 38, i8 68 }, %struct.yywork { i8 14, i8 39 }, %struct.yywork { i8 30, i8 64 }, %struct.yywork { i8 40, i8 70 }, %struct.yywork { i8 41, i8 71 }, %struct.yywork { i8 14, i8 40 }, %struct.yywork { i8 15, i8 43 }, %struct.yywork { i8 16, i8 45 }, %struct.yywork { i8 14, i8 41 }, %struct.yywork { i8 42, i8 72 }, %struct.yywork { i8 27, i8 61 }, %struct.yywork { i8 43, i8 73 }, %struct.yywork { i8 30, i8 65 }, %struct.yywork { i8 44, i8 74 }, %struct.yywork { i8 45, i8 75 }, %struct.yywork { i8 46, i8 78 }, %struct.yywork { i8 47, i8 79 }, %struct.yywork { i8 48, i8 80 }, %struct.yywork { i8 49, i8 81 }, %struct.yywork { i8 50, i8 82 }, %struct.yywork { i8 51, i8 83 }, %struct.yywork { i8 45, i8 76 }, %struct.yywork { i8 52, i8 84 }, %struct.yywork { i8 54, i8 85 }, %struct.yywork { i8 55, i8 86 }, %struct.yywork { i8 45, i8 77 }, %struct.yywork { i8 56, i8 87 }, %struct.yywork { i8 57, i8 88 }, %struct.yywork { i8 57, i8 89 }, %struct.yywork { i8 58, i8 91 }, %struct.yywork { i8 59, i8 92 }, %struct.yywork { i8 60, i8 93 }, %struct.yywork { i8 61, i8 94 }, %struct.yywork { i8 63, i8 96 }, %struct.yywork { i8 64, i8 98 }, %struct.yywork { i8 65, i8 99 }, %struct.yywork { i8 66, i8 101 }, %struct.yywork { i8 67, i8 102 }, %struct.yywork { i8 65, i8 100 }, %struct.yywork { i8 68, i8 103 }, %struct.yywork { i8 69, i8 104 }, %struct.yywork { i8 57, i8 90 }, %struct.yywork { i8 70, i8 105 }, %struct.yywork { i8 63, i8 97 }, %struct.yywork { i8 71, i8 106 }, %struct.yywork { i8 72, i8 107 }, %struct.yywork { i8 73, i8 108 }, %struct.yywork { i8 74, i8 109 }, %struct.yywork { i8 75, i8 110 }, %struct.yywork { i8 61, i8 95 }, %struct.yywork { i8 76, i8 111 }, %struct.yywork { i8 77, i8 112 }, %struct.yywork { i8 78, i8 113 }, %struct.yywork { i8 79, i8 114 }, %struct.yywork { i8 80, i8 115 }, %struct.yywork { i8 81, i8 116 }, %struct.yywork { i8 82, i8 118 }, %struct.yywork { i8 83, i8 119 }, %struct.yywork { i8 84, i8 120 }, %struct.yywork { i8 85, i8 121 }, %struct.yywork { i8 87, i8 122 }, %struct.yywork { i8 88, i8 123 }, %struct.yywork { i8 89, i8 124 }, %struct.yywork { i8 90, i8 125 }, %struct.yywork { i8 92, i8 126 }, %struct.yywork { i8 81, i8 117 }, %struct.yywork { i8 93, i8 127 }, %struct.yywork { i8 94, i8 -128 }, %struct.yywork { i8 95, i8 -127 }, %struct.yywork { i8 96, i8 -126 }, %struct.yywork { i8 97, i8 -125 }, %struct.yywork { i8 98, i8 -124 }, %struct.yywork { i8 99, i8 -123 }, %struct.yywork { i8 100, i8 -122 }, %struct.yywork { i8 101, i8 -121 }, %struct.yywork { i8 104, i8 -120 }, %struct.yywork { i8 105, i8 -119 }, %struct.yywork { i8 106, i8 -118 }, %struct.yywork { i8 107, i8 -117 }, %struct.yywork { i8 108, i8 -116 }, %struct.yywork { i8 109, i8 -115 }, %struct.yywork { i8 111, i8 -114 }, %struct.yywork { i8 112, i8 -113 }, %struct.yywork { i8 113, i8 -112 }, %struct.yywork { i8 114, i8 -111 }, %struct.yywork { i8 116, i8 -110 }, %struct.yywork { i8 119, i8 -109 }, %struct.yywork { i8 120, i8 -108 }, %struct.yywork { i8 121, i8 -107 }, %struct.yywork { i8 123, i8 -106 }, %struct.yywork { i8 124, i8 -105 }, %struct.yywork { i8 125, i8 -104 }, %struct.yywork { i8 126, i8 -103 }, %struct.yywork { i8 127, i8 -102 }, %struct.yywork { i8 -128, i8 -101 }, %struct.yywork { i8 -127, i8 -100 }, %struct.yywork { i8 -126, i8 -99 }, %struct.yywork { i8 -125, i8 -98 }, %struct.yywork { i8 -124, i8 -97 }, %struct.yywork { i8 -122, i8 -96 }, %struct.yywork { i8 -120, i8 -95 }, %struct.yywork { i8 -118, i8 -94 }, %struct.yywork { i8 -117, i8 -93 }, %struct.yywork { i8 -116, i8 -92 }, %struct.yywork { i8 -115, i8 -91 }, %struct.yywork { i8 -114, i8 -90 }, %struct.yywork { i8 -113, i8 -89 }, %struct.yywork { i8 -111, i8 -88 }, %struct.yywork { i8 -110, i8 -87 }, %struct.yywork { i8 -109, i8 -86 }, %struct.yywork { i8 -108, i8 -85 }, %struct.yywork { i8 -107, i8 -84 }, %struct.yywork { i8 -106, i8 -83 }, %struct.yywork { i8 -105, i8 -82 }, %struct.yywork { i8 -104, i8 -81 }, %struct.yywork { i8 -102, i8 -80 }, %struct.yywork { i8 -101, i8 -79 }, %struct.yywork { i8 -100, i8 -78 }, %struct.yywork { i8 -98, i8 -77 }, %struct.yywork { i8 -97, i8 -76 }, %struct.yywork { i8 -96, i8 -75 }, %struct.yywork { i8 -95, i8 -74 }, %struct.yywork { i8 -94, i8 -73 }, %struct.yywork { i8 -93, i8 -72 }, %struct.yywork { i8 -91, i8 -71 }, %struct.yywork { i8 -90, i8 -70 }, %struct.yywork { i8 -88, i8 -69 }, %struct.yywork { i8 -87, i8 -68 }, %struct.yywork { i8 -85, i8 -67 }, %struct.yywork { i8 -84, i8 -66 }, %struct.yywork { i8 -83, i8 -65 }, %struct.yywork { i8 -82, i8 -64 }, %struct.yywork { i8 -81, i8 -63 }, %struct.yywork { i8 -78, i8 -62 }, %struct.yywork { i8 -77, i8 -61 }, %struct.yywork { i8 -75, i8 -60 }, %struct.yywork { i8 -74, i8 -59 }, %struct.yywork { i8 -73, i8 -58 }, %struct.yywork { i8 -71, i8 -57 }, %struct.yywork { i8 -69, i8 -56 }, %struct.yywork { i8 -65, i8 -55 }, %struct.yywork { i8 -64, i8 -54 }, %struct.yywork { i8 -63, i8 -53 }, %struct.yywork { i8 -62, i8 -52 }, %struct.yywork { i8 -61, i8 -51 }, %struct.yywork { i8 -60, i8 -50 }, %struct.yywork { i8 -59, i8 -49 }, %struct.yywork { i8 -57, i8 -48 }, %struct.yywork { i8 -55, i8 -47 }, %struct.yywork { i8 -53, i8 -46 }, %struct.yywork { i8 -52, i8 -45 }, %struct.yywork { i8 -48, i8 -44 }, %struct.yywork { i8 -44, i8 -43 }, %struct.yywork zeroinitializer], align 16
@yysvec = internal global [215 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 -2), ptr null, ptr null }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 -46), ptr getelementptr (i8, ptr @yysvec, i64 24), ptr null }, %struct.anon { ptr @yycrank, ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 4) }, %struct.anon { ptr @yycrank, ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 12) }, %struct.anon { ptr @yycrank, ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 24) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 -12), ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 32) }, %struct.anon { ptr @yycrank, ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 44) }, %struct.anon { ptr @yycrank, ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 56) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 68), ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 68) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 4), ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 80) }, %struct.anon { ptr @yycrank, ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 88) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 188), ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 100) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 76), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 112) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 240), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 124) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 236), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 136) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 220), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 148) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 26), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 160) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 6), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 172) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 32), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 184) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 36), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 196) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 12), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 208) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 86), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 220) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 12), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 232) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 148), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 244) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 78), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 256) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 112), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 268) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 234), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 280) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 94), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 292) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 152), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 304) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 248), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 316) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 -4), ptr getelementptr (i8, ptr @yysvec, i64 144), ptr getelementptr (i8, ptr @yyvstop, i64 328) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 216), ptr getelementptr (i8, ptr @yyvstop, i64 336) }, %struct.anon { ptr @yycrank, ptr null, ptr getelementptr (i8, ptr @yyvstop, i64 344) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 352) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 146), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 360) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 368) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 144), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 380) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 216), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 388) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 4), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 396) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 258), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 404) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 234), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 412) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 266), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 420) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 234), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 428) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 238), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 436) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 264), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 444) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 254), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 452) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 258), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 460) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 264), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 468) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 250), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 476) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 264), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 484) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 268), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 492) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 296), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 500) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 508) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 282), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 520) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 266), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 528) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 288), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 536) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 296), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 544) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 272), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 552) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 284), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 560) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 302), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 568) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 316), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 576) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 584) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 302), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 596) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 316), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 604) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 306), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 612) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 324), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 620) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 298), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 628) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 292), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 636) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 298), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 644) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 300), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 652) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 304), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 660) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 320), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 668) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 342), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 676) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 322), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 684) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 310), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 692) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 330), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 700) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 346), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 708) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 356), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 716) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 354), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 724) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 330), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 732) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 354), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 740) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 352), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 752) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 364), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 760) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 346), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 768) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 344), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 776) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 784) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 334), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 796) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 366), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 804) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 360), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 816) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 338), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 824) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 836) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 346), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 848) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 358), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 856) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 348), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 864) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 348), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 872) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 362), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 880) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 376), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 888) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 356), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 896) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 390), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 904) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 398), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 912) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 352), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 920) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 928) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 940) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 402), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 952) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 368), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 964) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 368), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 972) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 408), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 980) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 388), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 988) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 404), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 996) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1008) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 414), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1020) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 382), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1028) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 380), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1036) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 382), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1044) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1056) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 410), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1068) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1076) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1088) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 416), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1100) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 410), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1108) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 390), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1116) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1124) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 396), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1136) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 396), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1144) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 400), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1152) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 398), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1160) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 430), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1168) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 424), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1176) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 438), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1184) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 418), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1192) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 434), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1200) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 420), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1208) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1216) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 412), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1228) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1236) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 448), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1248) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1256) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 454), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1268) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 422), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1280) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 450), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1288) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 426), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1296) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 446), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1304) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 438), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1312) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1320) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 450), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1332) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 460), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1340) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 436), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1348) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 472), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1356) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 466), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1364) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 468), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1372) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 440), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1380) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 454), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1388) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1396) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 476), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1408) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 480), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1416) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 448), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1424) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1432) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 462), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1444) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 456), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1452) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 476), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1460) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 456), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1468) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 470), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1476) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 490), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1484) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1492) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 500), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1504) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 476), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1512) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1520) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 476), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1532) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 472), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1540) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1548) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 472), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1560) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 476), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1568) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 486), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1576) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 506), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1584) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 500), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1592) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1600) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1612) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 478), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1624) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 512), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1636) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1644) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 500), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1656) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 516), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1664) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 488), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1672) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1680) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 490), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1692) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1700) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 504), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1712) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1720) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1732) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1744) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 528), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1756) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 500), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1764) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 510), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1772) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 504), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1780) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 534), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1788) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 534), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1796) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 510), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1804) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1812) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 530), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1824) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1832) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 540), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1844) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1852) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 538), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1864) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 544), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1872) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1880) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1892) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1904) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 526), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1916) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1924) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1936) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1948) }, %struct.anon { ptr getelementptr (i8, ptr @yycrank, i64 530), ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1960) }, %struct.anon { ptr @yycrank, ptr getelementptr (i8, ptr @yysvec, i64 288), ptr getelementptr (i8, ptr @yyvstop, i64 1968) }, %struct.anon zeroinitializer], align 16
@yymatch = internal unnamed_addr constant [257 x i8] c"\00\01\01\01\01\01\01\01\01\09\0A\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\01\01#\01\01&\01&&&\01,\01\01\010000000000\01&\01\01\01?\01AAAAAAAAAAAAAAAAAAAAAAAAAA&\01&\01A\01AAAAAAAAAAAAAAAAAAAAAAAAAA\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@yylineno = internal unnamed_addr global i32 1, align 4
@yysbuf = internal global [8192 x i8] zeroinitializer, align 16
@yysptr = internal unnamed_addr global ptr @yysbuf, align 8
@yyprevious = internal unnamed_addr global i32 10, align 4
@yylstate = internal global [8192 x ptr] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [33 x i8] c"Input string too long, limit %d\0A\00", align 1
@yyfnd = internal unnamed_addr global ptr null, align 8
@yyolsp = internal unnamed_addr global ptr null, align 8
@yylsp = internal unnamed_addr global ptr null, align 8
@crosscheck = internal unnamed_addr constant <{ [9 x i8], [9 x i8], <{ i8, [8 x i8] }>, [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x i8], [9 x i8] }> <{ [9 x i8] zeroinitializer, [9 x i8] zeroinitializer, <{ i8, [8 x i8] }> <{ i8 1, [8 x i8] zeroinitializer }>, [9 x i8] c"\01\01\01\00\00\00\00\00\00", [9 x i8] c"\01\01\01\01\00\00\00\00\00", [9 x i8] c"\02\00\02\02\01\00\00\00\00", [9 x i8] c"\03\03\03\03\01\01\00\00\00", [9 x i8] c"\04\01\01\01\01\01\01\00\00", [9 x i8] c"\03\01\01\01\01\01\01\01\00" }>, align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@crosstypes = internal unnamed_addr constant [9 x %struct.anon.0] [%struct.anon.0 { ptr @.str.56, i32 2 }, %struct.anon.0 { ptr @.str.52, i32 8 }, %struct.anon.0 { ptr @.str.57, i32 1 }, %struct.anon.0 { ptr @.str.49, i32 16 }, %struct.anon.0 { ptr @.str.40, i32 128 }, %struct.anon.0 { ptr @.str.58, i32 4 }, %struct.anon.0 { ptr @.str.59, i32 256 }, %struct.anon.0 { ptr @.str.60, i32 32 }, %struct.anon.0 { ptr @.str.61, i32 64 }], align 16
@.str.62 = private unnamed_addr constant [17 x i8] c" (ANSI Compiler)\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.63 = private unnamed_addr constant [45 x i8] c"%s: Internal error in crosscheck[%d,%d]=%d!\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"\09(maybe you mean \22%s\22)\0A\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"Warning: Unsupported in%s C%s -- '%s' with '%s'\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"Warning: Unsupported in%s C%s -- '%s'\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"%s: out of malloc space within cat()!\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"%s: malloc() failed!\0A\00", align 1
@visible.buf = internal global [5 x i8] zeroinitializer, align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"[] means optional; {} means 1 or more; <> means defined elsewhere\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"  commands are separated by ';' and newlines\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"command:\00", align 1
@.str.75 = private unnamed_addr constant [30 x i8] c"  declare <name> as <english>\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"  cast <name> into <english>\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"  explain <gibberish>\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"  set or set options\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"  help, ?\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"  quit or exit\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"english:\00", align 1
@.str.82 = private unnamed_addr constant [49 x i8] c"  function [( <decl-list> )] returning <english>\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"  array [<number>] of <english>\00", align 1
@.str.84 = private unnamed_addr constant [56 x i8] c"  [{ const | volatile | noalias }] pointer to <english>\00", align 1
@.str.85 = private unnamed_addr constant [79 x i8] c"  [{const|volatile}] {pointer|reference} to [member of class <name>] <english>\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"  <type>\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"type:\00", align 1
@.str.88 = private unnamed_addr constant [48 x i8] c"  {[<storage-class>] [{<modifier>}] [<C-type>]}\00", align 1
@.str.89 = private unnamed_addr constant [35 x i8] c"  { struct | union | enum } <name>\00", align 1
@.str.90 = private unnamed_addr constant [35 x i8] c"  {struct|class|union|enum} <name>\00", align 1
@.str.91 = private unnamed_addr constant [77 x i8] c"decllist: a comma separated list of <name>, <english> or <name> as <english>\00", align 1
@.str.92 = private unnamed_addr constant [21 x i8] c"name: a C identifier\00", align 1
@.str.93 = private unnamed_addr constant [68 x i8] c"gibberish: a C declaration, like 'int *x', or cast, like '(int *)x'\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"storage-class: extern, static, auto, register\00", align 1
@.str.95 = private unnamed_addr constant [42 x i8] c"C-type: int, char, float, double, or void\00", align 1
@.str.96 = private unnamed_addr constant [69 x i8] c"modifier: short, long, signed, unsigned, const, volatile, or noalias\00", align 1
@.str.97 = private unnamed_addr constant [60 x i8] c"modifier: short, long, signed, unsigned, const, or volatile\00", align 1
@helptext = internal unnamed_addr constant [24 x %struct.helpstruct] [%struct.helpstruct { ptr @.str.72, ptr null }, %struct.helpstruct { ptr @.str.73, ptr null }, %struct.helpstruct { ptr @.str.74, ptr null }, %struct.helpstruct { ptr @.str.75, ptr null }, %struct.helpstruct { ptr @.str.76, ptr null }, %struct.helpstruct { ptr @.str.77, ptr null }, %struct.helpstruct { ptr @.str.78, ptr null }, %struct.helpstruct { ptr @.str.79, ptr null }, %struct.helpstruct { ptr @.str.80, ptr null }, %struct.helpstruct { ptr @.str.81, ptr null }, %struct.helpstruct { ptr @.str.82, ptr null }, %struct.helpstruct { ptr @.str.83, ptr null }, %struct.helpstruct { ptr @.str.84, ptr @.str.85 }, %struct.helpstruct { ptr @.str.86, ptr null }, %struct.helpstruct { ptr @.str.87, ptr null }, %struct.helpstruct { ptr @.str.88, ptr null }, %struct.helpstruct { ptr @.str.89, ptr @.str.90 }, %struct.helpstruct { ptr @.str.91, ptr null }, %struct.helpstruct { ptr @.str.92, ptr null }, %struct.helpstruct { ptr @.str.93, ptr null }, %struct.helpstruct { ptr @.str.94, ptr null }, %struct.helpstruct { ptr @.str.95, ptr null }, %struct.helpstruct { ptr @.str.96, ptr @.str.97 }, %struct.helpstruct zeroinitializer], align 16
@.str.98 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.100 = private unnamed_addr constant [46 x i8] c"Usage: %s [-r|-p|-a|-+] [-ci%s%s] [files...]\0A\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"\09-r Check against Ritchie PDP C Compiler\0A\00", align 1
@.str.102 = private unnamed_addr constant [39 x i8] c"\09-p Check against Pre-ANSI C Compiler\0A\00", align 1
@.str.103 = private unnamed_addr constant [37 x i8] c"\09-a Check against ANSI C Compiler%s\0A\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c" (the default)\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"\09-+ Check against C++ Compiler%s\0A\00", align 1
@.str.106 = private unnamed_addr constant [49 x i8] c"\09-c Create compilable output (include ; and {})\0A\00", align 1
@.str.107 = private unnamed_addr constant [28 x i8] c"\09-i Force interactive mode\0A\00", align 1
@prompting = internal unnamed_addr global i1 false, align 4
@.str.108 = private unnamed_addr constant [5 x i8] c"%s> \00", align 1
@namedkeyword.cmdlist = internal unnamed_addr constant [7 x ptr] [ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr null], align 16
@.str.109 = private unnamed_addr constant [8 x i8] c"explain\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"declare\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"cast\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.113 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"%s: cannot open temp file\0A\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"%s: error writing to temp file\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.118 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.119 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.120 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"%s: cannot open %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Cast into function\00", align 1
@.str.123 = private unnamed_addr constant [30 x i8] c"cast into pointer to function\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"Cast into array\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"cast into pointer\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"(%s%*s%s)%s\0A\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"Variable of type void\00", align 1
@.str.129 = private unnamed_addr constant [33 x i8] c"variable of type pointer to void\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"Register function\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"Register array\00", align 1
@.str.132 = private unnamed_addr constant [22 x i8] c"Register struct/class\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"%s %s%s%s\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.140 = private unnamed_addr constant [19 x i8] c"array of type void\00", align 1
@.str.141 = private unnamed_addr constant [30 x i8] c"array of type pointer to void\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"reference to type void\00", align 1
@.str.143 = private unnamed_addr constant [33 x i8] c"Register struct/union/enum/class\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"declare %s as \00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"cast %s into %s\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"nocreate\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"interactive\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"nointeractive\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"ritchie\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"preansi\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"ansi\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"cplusplus\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.156 = private unnamed_addr constant [26 x i8] c"Unknown set option: '%s'\0A\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"\09%screate\0A\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c" no\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"\09%sinteractive\0A\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"Version:\0A\09%s\0A\09%s\0A\09%s\0A\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"c++decl\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"cirpa+dDV\00", align 1
@str = private unnamed_addr constant [2 x i8] c";\00", align 1
@str.178 = private unnamed_addr constant [5 x i8] c" { }\00", align 1
@str.179 = private unnamed_addr constant [54 x i8] c"Valid set options (and command line equivalents) are:\00", align 1
@str.180 = private unnamed_addr constant [9 x i8] c"\09options\00", align 1
@str.181 = private unnamed_addr constant [23 x i8] c"\09create (-c), nocreate\00", align 1
@str.182 = private unnamed_addr constant [33 x i8] c"\09interactive (-i), nointeractive\00", align 1
@str.183 = private unnamed_addr constant [57 x i8] c"\09ritchie (-r), preansi (-p), ansi (-a) or cplusplus (-+)\00", align 1
@str.184 = private unnamed_addr constant [25 x i8] c"\0ACurrent set values are:\00", align 1
@str.185 = private unnamed_addr constant [13 x i8] c"\09(noritchie)\00", align 1
@str.186 = private unnamed_addr constant [13 x i8] c"\09(nopreansi)\00", align 1
@str.187 = private unnamed_addr constant [9 x i8] c"\09   ansi\00", align 1
@str.188 = private unnamed_addr constant [15 x i8] c"\09(nocplusplus)\00", align 1
@str.189 = private unnamed_addr constant [14 x i8] c"\09   cplusplus\00", align 1
@str.190 = private unnamed_addr constant [10 x i8] c"\09(noansi)\00", align 1
@str.191 = private unnamed_addr constant [12 x i8] c"\09   preansi\00", align 1
@str.192 = private unnamed_addr constant [12 x i8] c"\09   ritchie\00", align 1
@str.193 = private unnamed_addr constant [28 x i8] c"Type `help' or `?' for help\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 47) #16
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds i8, ptr %4, i64 1
  %7 = select i1 %5, ptr %3, ptr %6
  store ptr %7, ptr @progname, align 8, !tbaa !7
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(8) @.str.176) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i1 true, ptr @CplusplusFlag, align 4
  br label %11

11:                                               ; preds = %10, %2
  br label %12

12:                                               ; preds = %20, %11
  %13 = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.177) #17
  switch i32 %13, label %20 [
    i32 -1, label %24
    i32 99, label %14
    i32 105, label %15
    i32 114, label %16
    i32 112, label %17
    i32 97, label %18
    i32 43, label %19
    i32 86, label %21
    i32 63, label %23
  ]

14:                                               ; preds = %12
  store i1 true, ptr @MkProgramFlag, align 4
  br label %20

15:                                               ; preds = %12
  store i1 true, ptr @Interactive, align 4
  br label %20

16:                                               ; preds = %12
  store i1 false, ptr @CplusplusFlag, align 4
  store i1 true, ptr @RitchieFlag, align 4
  store i1 false, ptr @PreANSIFlag, align 4
  br label %20

17:                                               ; preds = %12
  store i1 false, ptr @CplusplusFlag, align 4
  store i1 false, ptr @RitchieFlag, align 4
  store i1 true, ptr @PreANSIFlag, align 4
  br label %20

18:                                               ; preds = %12
  store i1 false, ptr @CplusplusFlag, align 4
  store i1 false, ptr @RitchieFlag, align 4
  store i1 false, ptr @PreANSIFlag, align 4
  br label %20

19:                                               ; preds = %12
  store i1 true, ptr @CplusplusFlag, align 4
  store i1 false, ptr @RitchieFlag, align 4
  store i1 false, ptr @PreANSIFlag, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15, %14, %12
  br label %12

21:                                               ; preds = %12
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.175, ptr noundef nonnull @cdeclsccsid, ptr noundef nonnull @cdgramsccsid, ptr noundef nonnull @cdlexsccsid) #18
  tail call void @exit(i32 noundef 0) #19
  unreachable

23:                                               ; preds = %12
  tail call fastcc void @usage() #18
  unreachable

24:                                               ; preds = %12
  %25 = load i32, ptr @optind, align 4, !tbaa !11
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = tail call fastcc i32 @dostdin() #18, !range !13
  br label %134

29:                                               ; preds = %24
  %30 = sext i32 %25 to i64
  %31 = getelementptr inbounds ptr, ptr %1, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = load ptr, ptr @progname, align 8, !tbaa !7
  br label %38

34:                                               ; preds = %38
  %35 = getelementptr inbounds ptr, ptr %40, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %34, %29
  %39 = phi ptr [ @.str.109, %29 ], [ %36, %34 ]
  %40 = phi ptr [ @namedkeyword.cmdlist, %29 ], [ %35, %34 ]
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %33) #16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %34

43:                                               ; preds = %38
  store i1 true, ptr @KeywordName, align 4
  br label %53

44:                                               ; preds = %48
  %45 = getelementptr inbounds ptr, ptr %50, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %97, label %48

48:                                               ; preds = %44, %34
  %49 = phi ptr [ %46, %44 ], [ @.str.109, %34 ]
  %50 = phi ptr [ %45, %44 ], [ @namedkeyword.cmdlist, %34 ]
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %32) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %44

53:                                               ; preds = %48, %43
  %54 = tail call noalias ptr @tmpfile() #18
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = tail call ptr @__errno_location() #20
  %58 = load i32, ptr %57, align 4, !tbaa !11
  %59 = load ptr, ptr @stderr, align 8, !tbaa !7
  %60 = load ptr, ptr @progname, align 8, !tbaa !7
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.116, ptr noundef %60) #21
  store i32 %58, ptr %57, align 4, !tbaa !11
  %62 = load ptr, ptr @progname, align 8, !tbaa !7
  tail call void @perror(ptr noundef %62) #21
  br label %134

63:                                               ; preds = %53
  %64 = load i1, ptr @KeywordName, align 4
  br i1 %64, label %65, label %77

65:                                               ; preds = %63
  %66 = load ptr, ptr @progname, align 8, !tbaa !7
  %67 = tail call i32 @fputs(ptr noundef %66, ptr noundef nonnull %54) #18
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %77

69:                                               ; preds = %91, %80, %65
  %70 = tail call ptr @__errno_location() #20
  %71 = load i32, ptr %70, align 4, !tbaa !11
  %72 = load ptr, ptr @stderr, align 8, !tbaa !7
  %73 = load ptr, ptr @progname, align 8, !tbaa !7
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.117, ptr noundef %73) #21
  store i32 %71, ptr %70, align 4, !tbaa !11
  %75 = load ptr, ptr @progname, align 8, !tbaa !7
  tail call void @perror(ptr noundef %75) #21
  %76 = tail call i32 @fclose(ptr noundef nonnull %54) #18
  br label %134

77:                                               ; preds = %65, %63
  %78 = load i32, ptr @optind, align 4, !tbaa !11
  %79 = icmp slt i32 %78, %0
  br i1 %79, label %80, label %91

80:                                               ; preds = %87, %77
  %81 = phi i32 [ %89, %87 ], [ %78, %77 ]
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %1, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !7
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %54, ptr noundef nonnull @.str.118, ptr noundef %84) #18
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %69, label %87

87:                                               ; preds = %80
  %88 = load i32, ptr @optind, align 4, !tbaa !11
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr @optind, align 4, !tbaa !11
  %90 = icmp slt i32 %89, %0
  br i1 %90, label %80, label %91

91:                                               ; preds = %87, %77
  %92 = tail call i32 @putc(i32 noundef 10, ptr noundef nonnull %54) #18
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %69, label %94

94:                                               ; preds = %91
  tail call void @rewind(ptr noundef nonnull %54) #18
  store ptr %54, ptr @yyin, align 8, !tbaa !7
  %95 = tail call fastcc i32 @yyparse() #18, !range !13
  %96 = tail call i32 @fclose(ptr noundef nonnull %54) #18
  br label %134

97:                                               ; preds = %44
  %98 = icmp slt i32 %25, %0
  br i1 %98, label %99, label %134

99:                                               ; preds = %128, %97
  %100 = phi i32 [ %132, %128 ], [ %25, %97 ]
  %101 = phi i32 [ %130, %128 ], [ 0, %97 ]
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds ptr, ptr %1, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !7
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %104, ptr noundef nonnull dereferenceable(2) @.str.119) #16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = tail call fastcc i32 @dostdin() #18, !range !13
  br label %128

109:                                              ; preds = %99
  %110 = tail call noalias ptr @fopen(ptr noundef %104, ptr noundef nonnull @.str.120) #18
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = tail call ptr @__errno_location() #20
  %114 = load i32, ptr %113, align 4, !tbaa !11
  %115 = load ptr, ptr @stderr, align 8, !tbaa !7
  %116 = load ptr, ptr @progname, align 8, !tbaa !7
  %117 = load i32, ptr @optind, align 4, !tbaa !11
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %1, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !7
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.121, ptr noundef %116, ptr noundef %120) #21
  store i32 %114, ptr %113, align 4, !tbaa !11
  %122 = load i32, ptr @optind, align 4, !tbaa !11
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %1, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !7
  tail call void @perror(ptr noundef %125) #21
  br label %128

126:                                              ; preds = %109
  store ptr %110, ptr @yyin, align 8, !tbaa !7
  %127 = tail call fastcc i32 @yyparse() #18, !range !13
  br label %128

128:                                              ; preds = %126, %112, %107
  %129 = phi i32 [ %108, %107 ], [ 1, %112 ], [ %127, %126 ]
  %130 = add nuw nsw i32 %129, %101
  %131 = load i32, ptr @optind, align 4, !tbaa !11
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr @optind, align 4, !tbaa !11
  %133 = icmp slt i32 %132, %0
  br i1 %133, label %99, label %134

134:                                              ; preds = %128, %97, %94, %69, %56, %27
  %135 = phi i32 [ %28, %27 ], [ 1, %69 ], [ %95, %94 ], [ 1, %56 ], [ 0, %97 ], [ %130, %128 ]
  ret i32 %135
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @usage() unnamed_addr #5 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2 = load ptr, ptr @progname, align 8, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.100, ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #21
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 41, i64 1, ptr %4) #22
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 38, i64 1, ptr %6) #22
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = load i1, ptr @CplusplusFlag, align 4
  %10 = select i1 %9, ptr @.str.15, ptr @.str.104
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.103, ptr noundef nonnull %10) #21
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = load i1, ptr @CplusplusFlag, align 4
  %14 = select i1 %13, ptr @.str.104, ptr @.str.15
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.105, ptr noundef nonnull %14) #21
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 48, i64 1, ptr %16) #22
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 27, i64 1, ptr %18) #22
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @dostdin() unnamed_addr #0 {
  %1 = tail call i32 @isatty(i32 noundef 0) #17
  store i32 %1, ptr @OnATty, align 4, !tbaa !11
  %2 = icmp ne i32 %1, 0
  %3 = load i1, ptr @Interactive, align 4
  %4 = select i1 %2, i1 true, i1 %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.193)
  tail call fastcc void @prompt() #18
  br label %7

7:                                                ; preds = %5, %0
  %8 = load ptr, ptr @stdin, align 8, !tbaa !7
  store ptr %8, ptr @yyin, align 8, !tbaa !7
  %9 = tail call fastcc i32 @yyparse() #18, !range !13
  store i32 0, ptr @OnATty, align 4, !tbaa !11
  ret i32 %9
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @tmpfile() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @yyparse() unnamed_addr #0 {
  %1 = alloca [150 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %1) #23
  store i32 -1, ptr @yychar, align 4, !tbaa !11
  store i32 0, ptr @yynerrs, align 4, !tbaa !11
  store i16 0, ptr @yyerrflag, align 2, !tbaa !14
  %2 = getelementptr inbounds [150 x i16], ptr %1, i64 0, i64 150
  br label %5

3:                                                ; preds = %41
  %4 = call i32 @puts(ptr nonnull dereferenceable(1) @.str.1)
  br label %711

5:                                                ; preds = %41, %0
  %6 = phi ptr [ %1, %0 ], [ %45, %41 ]
  %7 = phi ptr [ getelementptr inbounds ([150 x %union.YYSTYPE], ptr @yyv, i64 -1, i64 149), %0 ], [ %44, %41 ]
  %8 = phi i16 [ 0, %0 ], [ %42, %41 ]
  store i16 %8, ptr %6, align 2, !tbaa !14
  %9 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) @yyval, i64 24, i1 false), !tbaa.struct !16
  %10 = sext i16 %8 to i64
  %11 = getelementptr inbounds [162 x i16], ptr @yypact, i64 0, i64 %10
  %12 = getelementptr inbounds [162 x i16], ptr @yydef, i64 0, i64 %10
  %13 = load i16, ptr %11, align 2, !tbaa !14
  %14 = icmp slt i16 %13, -999
  br label %15

15:                                               ; preds = %103, %5
  br i1 %14, label %47, label %16

16:                                               ; preds = %15
  %17 = load i32, ptr @yychar, align 4, !tbaa !11
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call fastcc i32 @yylex() #18, !range !17
  %21 = call i32 @llvm.smax.i32(i32 %20, i32 0)
  store i32 %21, ptr @yychar, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %21, %19 ], [ %17, %16 ]
  %24 = trunc i32 %23 to i16
  %25 = add i16 %13, %24
  %26 = icmp ugt i16 %25, 321
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = zext i16 %25 to i64
  %29 = getelementptr inbounds [322 x i16], ptr @yyact, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !14
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds [162 x i16], ptr @yychk, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !14
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %23, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %.lcssa1 = phi i16 [ %30, %27 ]
  store i32 -1, ptr @yychar, align 4, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @yyval, ptr noundef nonnull align 8 dereferenceable(24) @yylval, i64 24, i1 false), !tbaa.struct !16
  %37 = load i16, ptr @yyerrflag, align 2, !tbaa !14
  %38 = icmp sgt i16 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = add nsw i16 %37, -1
  store i16 %40, ptr @yyerrflag, align 2, !tbaa !14
  br label %41

41:                                               ; preds = %709, %707, %705, %696, %670, %661, %633, %629, %625, %621, %619, %593, %591, %586, %582, %578, %574, %570, %566, %564, %562, %557, %552, %550, %548, %547, %545, %540, %538, %529, %495, %459, %425, %406, %390, %374, %362, %360, %355, %351, %342, %335, %328, %321, %316, %314, %312, %302, %294, %292, %286, %284, %282, %272, %266, %263, %261, %256, %249, %244, %236, %224, %211, %209, %207, %206, %205, %204, %202, %194, %188, %182, %174, %168, %160, %152, %142, %141, %140, %138, %91, %39, %36
  %42 = phi i16 [ %.lcssa1, %39 ], [ %.lcssa1, %36 ], [ %139, %138 ], [ %139, %709 ], [ %139, %707 ], [ %139, %705 ], [ %139, %696 ], [ %139, %670 ], [ %139, %661 ], [ %139, %633 ], [ %139, %629 ], [ %139, %625 ], [ %139, %621 ], [ %139, %619 ], [ %139, %593 ], [ %139, %591 ], [ %139, %586 ], [ %139, %582 ], [ %139, %578 ], [ %139, %574 ], [ %139, %570 ], [ %139, %566 ], [ %139, %564 ], [ %139, %562 ], [ %139, %557 ], [ %139, %552 ], [ %139, %550 ], [ %139, %548 ], [ %139, %547 ], [ %139, %545 ], [ %139, %540 ], [ %139, %538 ], [ %139, %529 ], [ %139, %495 ], [ %139, %459 ], [ %139, %425 ], [ %139, %406 ], [ %139, %390 ], [ %139, %374 ], [ %139, %362 ], [ %139, %360 ], [ %139, %355 ], [ %139, %351 ], [ %139, %342 ], [ %139, %335 ], [ %139, %328 ], [ %139, %321 ], [ %139, %316 ], [ %139, %314 ], [ %139, %312 ], [ %139, %302 ], [ %139, %294 ], [ %139, %292 ], [ %139, %286 ], [ %139, %284 ], [ %139, %282 ], [ %139, %272 ], [ %139, %266 ], [ %139, %263 ], [ %139, %261 ], [ %139, %256 ], [ %139, %249 ], [ %139, %244 ], [ %139, %236 ], [ %139, %224 ], [ %139, %211 ], [ %139, %209 ], [ %139, %207 ], [ %139, %206 ], [ %139, %205 ], [ %139, %204 ], [ %139, %202 ], [ %139, %194 ], [ %139, %188 ], [ %139, %182 ], [ %139, %174 ], [ %139, %168 ], [ %139, %160 ], [ %139, %152 ], [ %139, %142 ], [ %139, %141 ], [ %139, %140 ], [ 9, %91 ]
  %43 = phi ptr [ %6, %39 ], [ %6, %36 ], [ %111, %138 ], [ %111, %709 ], [ %111, %707 ], [ %111, %705 ], [ %111, %696 ], [ %111, %670 ], [ %111, %661 ], [ %111, %633 ], [ %111, %629 ], [ %111, %625 ], [ %111, %621 ], [ %111, %619 ], [ %111, %593 ], [ %111, %591 ], [ %111, %586 ], [ %111, %582 ], [ %111, %578 ], [ %111, %574 ], [ %111, %570 ], [ %111, %566 ], [ %111, %564 ], [ %111, %562 ], [ %111, %557 ], [ %111, %552 ], [ %111, %550 ], [ %111, %548 ], [ %111, %547 ], [ %111, %545 ], [ %111, %540 ], [ %111, %538 ], [ %111, %529 ], [ %111, %495 ], [ %111, %459 ], [ %111, %425 ], [ %111, %406 ], [ %111, %390 ], [ %111, %374 ], [ %111, %362 ], [ %111, %360 ], [ %111, %355 ], [ %111, %351 ], [ %111, %342 ], [ %111, %335 ], [ %111, %328 ], [ %111, %321 ], [ %111, %316 ], [ %111, %314 ], [ %111, %312 ], [ %111, %302 ], [ %111, %294 ], [ %111, %292 ], [ %111, %286 ], [ %111, %284 ], [ %111, %282 ], [ %111, %272 ], [ %111, %266 ], [ %111, %263 ], [ %111, %261 ], [ %111, %256 ], [ %111, %249 ], [ %111, %244 ], [ %111, %236 ], [ %111, %224 ], [ %111, %211 ], [ %111, %209 ], [ %111, %207 ], [ %111, %206 ], [ %111, %205 ], [ %111, %204 ], [ %111, %202 ], [ %111, %194 ], [ %111, %188 ], [ %111, %182 ], [ %111, %174 ], [ %111, %168 ], [ %111, %160 ], [ %111, %152 ], [ %111, %142 ], [ %111, %141 ], [ %111, %140 ], [ %93, %91 ]
  %44 = phi ptr [ %9, %39 ], [ %9, %36 ], [ %112, %138 ], [ %112, %709 ], [ %112, %707 ], [ %112, %705 ], [ %112, %696 ], [ %112, %670 ], [ %112, %661 ], [ %112, %633 ], [ %112, %629 ], [ %112, %625 ], [ %112, %621 ], [ %112, %619 ], [ %112, %593 ], [ %112, %591 ], [ %112, %586 ], [ %112, %582 ], [ %112, %578 ], [ %112, %574 ], [ %112, %570 ], [ %112, %566 ], [ %112, %564 ], [ %112, %562 ], [ %112, %557 ], [ %112, %552 ], [ %112, %550 ], [ %112, %548 ], [ %112, %547 ], [ %112, %545 ], [ %112, %540 ], [ %112, %538 ], [ %112, %529 ], [ %112, %495 ], [ %112, %459 ], [ %112, %425 ], [ %112, %406 ], [ %112, %390 ], [ %112, %374 ], [ %112, %362 ], [ %112, %360 ], [ %112, %355 ], [ %112, %351 ], [ %112, %342 ], [ %112, %335 ], [ %112, %328 ], [ %112, %321 ], [ %112, %316 ], [ %112, %314 ], [ %112, %312 ], [ %112, %302 ], [ %112, %294 ], [ %112, %292 ], [ %112, %286 ], [ %112, %284 ], [ %112, %282 ], [ %112, %272 ], [ %112, %266 ], [ %112, %263 ], [ %112, %261 ], [ %112, %256 ], [ %112, %249 ], [ %112, %244 ], [ %112, %236 ], [ %112, %224 ], [ %112, %211 ], [ %112, %209 ], [ %112, %207 ], [ %112, %206 ], [ %112, %205 ], [ %112, %204 ], [ %112, %202 ], [ %112, %194 ], [ %112, %188 ], [ %112, %182 ], [ %112, %174 ], [ %112, %168 ], [ %112, %160 ], [ %112, %152 ], [ %112, %142 ], [ %112, %141 ], [ %112, %140 ], [ %92, %91 ]
  %45 = getelementptr inbounds i16, ptr %43, i64 1
  %46 = icmp ult ptr %45, %2
  br i1 %46, label %5, label %3

47:                                               ; preds = %27, %22, %15
  %48 = load i16, ptr %12, align 2, !tbaa !14
  %49 = icmp eq i16 %48, -2
  br i1 %49, label %50, label %80

50:                                               ; preds = %47
  %51 = load i32, ptr @yychar, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = call fastcc i32 @yylex() #18, !range !17
  %55 = call i32 @llvm.smax.i32(i32 %54, i32 0)
  store i32 %55, ptr @yychar, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %55, %53 ], [ %51, %50 ]
  br label %58

58:                                               ; preds = %66, %56
  %59 = phi ptr [ @yyexca, %56 ], [ %67, %66 ]
  %60 = load i16, ptr %59, align 2, !tbaa !14
  %61 = icmp eq i16 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds i16, ptr %59, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !14
  %65 = icmp eq i16 %64, %8
  br i1 %65, label %68, label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds i16, ptr %59, i64 2
  br label %58

68:                                               ; preds = %68, %62
  %69 = phi ptr [ %70, %68 ], [ %59, %62 ]
  %70 = getelementptr inbounds i16, ptr %69, i64 2
  %71 = load i16, ptr %70, align 2, !tbaa !14
  %72 = icmp slt i16 %71, 0
  %73 = sext i16 %71 to i32
  %74 = icmp eq i32 %57, %73
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %76, label %68

76:                                               ; preds = %68
  %.lcssa = phi ptr [ %69, %68 ]
  %77 = getelementptr inbounds i16, ptr %.lcssa, i64 3
  %78 = load i16, ptr %77, align 2, !tbaa !14
  %79 = icmp slt i16 %78, 0
  br i1 %79, label %711, label %80

80:                                               ; preds = %76, %47
  %81 = phi i16 [ %78, %76 ], [ %48, %47 ]
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  %84 = load i16, ptr @yyerrflag, align 2, !tbaa !14
  switch i16 %84, label %104 [
    i16 0, label %85
    i16 1, label %89
    i16 2, label %89
    i16 3, label %100
  ]

85:                                               ; preds = %83
  %.lcssa3 = phi i16 [ %81, %83 ]
  %86 = call i32 @puts(ptr nonnull dereferenceable(1) @.str.2)
  %87 = load i32, ptr @yynerrs, align 4, !tbaa !11
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr @yynerrs, align 4, !tbaa !11
  br label %89

89:                                               ; preds = %85, %83, %83
  store i16 3, ptr @yyerrflag, align 2, !tbaa !14
  %90 = icmp ult ptr %6, %1
  br i1 %90, label %711, label %91

91:                                               ; preds = %96, %89
  %92 = phi ptr [ %98, %96 ], [ %9, %89 ]
  %93 = phi ptr [ %97, %96 ], [ %6, %89 ]
  %94 = load i16, ptr %93, align 2, !tbaa !14
  %95 = icmp eq i16 %94, 1
  br i1 %95, label %41, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds i16, ptr %93, i64 -1
  %98 = getelementptr inbounds %union.YYSTYPE, ptr %92, i64 -1
  %99 = icmp ult ptr %97, %1
  br i1 %99, label %711, label %91

100:                                              ; preds = %83
  %101 = load i32, ptr @yychar, align 4, !tbaa !11
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %711, label %103

103:                                              ; preds = %100
  store i32 -1, ptr @yychar, align 4, !tbaa !11
  br label %15

104:                                              ; preds = %83, %80
  %.lcssa2 = phi i16 [ %81, %83 ], [ %81, %80 ]
  %105 = sext i16 %.lcssa2 to i32
  %106 = sext i16 %.lcssa2 to i64
  %107 = getelementptr inbounds [89 x i16], ptr @yyr2, i64 0, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !14
  %109 = sext i16 %108 to i64
  %110 = sub nsw i64 0, %109
  %111 = getelementptr inbounds i16, ptr %6, i64 %110
  %112 = getelementptr inbounds %union.YYSTYPE, ptr %9, i64 %110
  %113 = getelementptr inbounds %union.YYSTYPE, ptr %112, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @yyval, ptr noundef nonnull align 8 dereferenceable(24) %113, i64 24, i1 false), !tbaa.struct !16
  %114 = getelementptr inbounds [89 x i16], ptr @yyr1, i64 0, i64 %106
  %115 = load i16, ptr %114, align 2, !tbaa !14
  %116 = sext i16 %115 to i64
  %117 = getelementptr inbounds [26 x i16], ptr @yypgo, i64 0, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !14
  %119 = load i16, ptr %111, align 2, !tbaa !14
  %120 = add i16 %118, 1
  %121 = add i16 %120, %119
  %122 = icmp sgt i16 %121, 321
  br i1 %122, label %134, label %123

123:                                              ; preds = %104
  %124 = sext i16 %121 to i64
  %125 = getelementptr inbounds [322 x i16], ptr @yyact, i64 0, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !14
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds [162 x i16], ptr @yychk, i64 0, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !14
  %130 = sext i16 %129 to i32
  %131 = sext i16 %115 to i32
  %132 = sub nsw i32 0, %131
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %123, %104
  %135 = sext i16 %118 to i64
  %136 = getelementptr inbounds [322 x i16], ptr @yyact, i64 0, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !14
  br label %138

138:                                              ; preds = %134, %123
  %139 = phi i16 [ %137, %134 ], [ %126, %123 ]
  switch i32 %105, label %41 [
    i32 2, label %140
    i32 3, label %141
    i32 4, label %142
    i32 5, label %152
    i32 6, label %160
    i32 7, label %168
    i32 8, label %174
    i32 9, label %182
    i32 10, label %188
    i32 11, label %194
    i32 12, label %202
    i32 14, label %204
    i32 15, label %205
    i32 16, label %206
    i32 17, label %207
    i32 18, label %209
    i32 20, label %211
    i32 21, label %219
    i32 22, label %231
    i32 23, label %244
    i32 24, label %249
    i32 25, label %256
    i32 26, label %261
    i32 27, label %263
    i32 28, label %266
    i32 29, label %272
    i32 30, label %282
    i32 31, label %284
    i32 32, label %286
    i32 33, label %292
    i32 34, label %294
    i32 35, label %302
    i32 36, label %312
    i32 37, label %314
    i32 38, label %316
    i32 39, label %321
    i32 40, label %328
    i32 41, label %330
    i32 42, label %342
    i32 43, label %346
    i32 44, label %355
    i32 45, label %360
    i32 46, label %362
    i32 47, label %366
    i32 48, label %382
    i32 49, label %401
    i32 50, label %417
    i32 51, label %446
    i32 52, label %481
    i32 53, label %516
    i32 54, label %538
    i32 55, label %540
    i32 56, label %545
    i32 57, label %547
    i32 58, label %548
    i32 59, label %550
    i32 60, label %552
    i32 61, label %557
    i32 64, label %562
    i32 66, label %564
    i32 67, label %566
    i32 68, label %570
    i32 69, label %574
    i32 70, label %578
    i32 71, label %582
    i32 72, label %586
    i32 73, label %591
    i32 74, label %593
    i32 75, label %595
    i32 76, label %621
    i32 77, label %625
    i32 78, label %629
    i32 79, label %633
    i32 80, label %637
    i32 81, label %670
    i32 82, label %672
    i32 86, label %705
    i32 87, label %707
    i32 88, label %709
  ]

140:                                              ; preds = %138
  call fastcc void @prompt() #18
  store i8 0, ptr @prev, align 1, !tbaa !18
  br label %41

141:                                              ; preds = %138
  call fastcc void @dohelp() #18
  br label %41

142:                                              ; preds = %138
  %143 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -3
  %144 = load ptr, ptr %143, align 8, !tbaa !18
  %145 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %146 = load ptr, ptr %145, align 8, !tbaa !18
  %147 = load ptr, ptr %7, align 8, !tbaa !18
  %148 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !18
  %150 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !18
  call fastcc void @dodeclare(ptr noundef %144, ptr noundef %146, ptr noundef %147, ptr noundef %149, ptr noundef %151) #18
  br label %41

152:                                              ; preds = %138
  %153 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %154 = load ptr, ptr %153, align 8, !tbaa !18
  %155 = load ptr, ptr %7, align 8, !tbaa !18
  %156 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !18
  %158 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !18
  call fastcc void @dodeclare(ptr noundef null, ptr noundef %154, ptr noundef %155, ptr noundef %157, ptr noundef %159) #18
  br label %41

160:                                              ; preds = %138
  %161 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %162 = load ptr, ptr %161, align 8, !tbaa !18
  %163 = load ptr, ptr %7, align 8, !tbaa !18
  %164 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !18
  %166 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !18
  call fastcc void @docast(ptr noundef %162, ptr noundef %163, ptr noundef %165, ptr noundef %167) #18
  br label %41

168:                                              ; preds = %138
  %169 = load ptr, ptr %7, align 8, !tbaa !18
  %170 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !18
  %172 = getelementptr inbounds %struct.anon, ptr %7, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !18
  call fastcc void @docast(ptr noundef null, ptr noundef %169, ptr noundef %171, ptr noundef %173) #18
  br label %41

174:                                              ; preds = %138
  %175 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -3
  %176 = load ptr, ptr %175, align 8, !tbaa !18
  %177 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %178 = load ptr, ptr %177, align 8, !tbaa !18
  %179 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %180 = load ptr, ptr %179, align 8, !tbaa !18
  %181 = load ptr, ptr %7, align 8, !tbaa !18
  call fastcc void @dodexplain(ptr noundef %176, ptr noundef %178, ptr noundef %180, ptr noundef %181) #18
  br label %41

182:                                              ; preds = %138
  %183 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %184 = load ptr, ptr %183, align 8, !tbaa !18
  %185 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %186 = load ptr, ptr %185, align 8, !tbaa !18
  %187 = load ptr, ptr %7, align 8, !tbaa !18
  call fastcc void @dodexplain(ptr noundef %184, ptr noundef %186, ptr noundef null, ptr noundef %187) #18
  br label %41

188:                                              ; preds = %138
  %189 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %190 = load ptr, ptr %189, align 8, !tbaa !18
  %191 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %192 = load ptr, ptr %191, align 8, !tbaa !18
  %193 = load ptr, ptr %7, align 8, !tbaa !18
  call fastcc void @dodexplain(ptr noundef %190, ptr noundef %192, ptr noundef null, ptr noundef %193) #18
  br label %41

194:                                              ; preds = %138
  %195 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -4
  %196 = load ptr, ptr %195, align 8, !tbaa !18
  %197 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -3
  %198 = load ptr, ptr %197, align 8, !tbaa !18
  %199 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %200 = load ptr, ptr %199, align 8, !tbaa !18
  %201 = load ptr, ptr %7, align 8, !tbaa !18
  call fastcc void @docexplain(ptr noundef %196, ptr noundef %198, ptr noundef %200, ptr noundef %201) #18
  br label %41

202:                                              ; preds = %138
  %203 = load ptr, ptr %7, align 8, !tbaa !18
  call fastcc void @doset(ptr noundef %203) #18
  br label %41

204:                                              ; preds = %138
  store i16 0, ptr @yyerrflag, align 2, !tbaa !14
  br label %41

205:                                              ; preds = %138
  store i1 false, ptr @prompting, align 4
  br label %41

206:                                              ; preds = %138
  store i1 true, ptr @prompting, align 4
  br label %41

207:                                              ; preds = %138
  %208 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %208, ptr @yyval, align 8, !tbaa !18
  br label %41

209:                                              ; preds = %138
  %210 = call fastcc ptr @ds(ptr noundef nonnull @unknown_name) #18
  store ptr %210, ptr @yyval, align 8, !tbaa !18
  br label %41

211:                                              ; preds = %138
  %212 = load ptr, ptr %9, align 8, !tbaa !18
  %213 = load ptr, ptr %7, align 8, !tbaa !18
  %214 = load i8, ptr %213, align 1
  %215 = icmp eq i8 %214, 0
  %216 = select i1 %215, ptr @.str.4, ptr @.str.3
  %217 = call fastcc ptr @ds(ptr noundef nonnull %216) #18
  %218 = call ptr (ptr, ...) @cat(ptr noundef %212, ptr noundef nonnull %213, ptr noundef %217, ptr noundef null) #18
  store ptr %218, ptr @yyval, align 8, !tbaa !18
  store i8 112, ptr @prev, align 1, !tbaa !18
  br label %41

219:                                              ; preds = %138
  %220 = load i1, ptr @CplusplusFlag, align 4
  br i1 %220, label %224, label %221

221:                                              ; preds = %219
  %222 = load ptr, ptr @stdout, align 8, !tbaa !7
  %223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #18
  br label %224

224:                                              ; preds = %221, %219
  %225 = load ptr, ptr %9, align 8, !tbaa !18
  %226 = call fastcc ptr @ds(ptr noundef nonnull @.str.6) #18
  %227 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %228 = load ptr, ptr %227, align 8, !tbaa !18
  %229 = call fastcc ptr @ds(ptr noundef nonnull @.str.7) #18
  %230 = call ptr (ptr, ...) @cat(ptr noundef %225, ptr noundef %226, ptr noundef %228, ptr noundef %229, ptr noundef null) #18
  store ptr %230, ptr @yyval, align 8, !tbaa !18
  store i8 112, ptr @prev, align 1, !tbaa !18
  br label %41

231:                                              ; preds = %138
  %232 = load i1, ptr @CplusplusFlag, align 4
  br i1 %232, label %236, label %233

233:                                              ; preds = %231
  %234 = load ptr, ptr @stdout, align 8, !tbaa !7
  %235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #18
  br label %236

236:                                              ; preds = %233, %231
  %237 = load ptr, ptr %9, align 8, !tbaa !18
  %238 = load ptr, ptr %7, align 8, !tbaa !18
  %239 = load i8, ptr %238, align 1
  %240 = icmp eq i8 %239, 0
  %241 = select i1 %240, ptr @.str.10, ptr @.str.9
  %242 = call fastcc ptr @ds(ptr noundef nonnull %241) #18
  %243 = call ptr (ptr, ...) @cat(ptr noundef %237, ptr noundef nonnull %238, ptr noundef %242, ptr noundef null) #18
  store ptr %243, ptr @yyval, align 8, !tbaa !18
  store i8 114, ptr @prev, align 1, !tbaa !18
  br label %41

244:                                              ; preds = %138
  %245 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %246 = load ptr, ptr %245, align 8, !tbaa !18
  %247 = call fastcc ptr @ds(ptr noundef nonnull @.str.11) #18
  %248 = call ptr (ptr, ...) @cat(ptr noundef %246, ptr noundef %247, ptr noundef null) #18
  store ptr %248, ptr @yyval, align 8, !tbaa !18
  store i8 102, ptr @prev, align 1, !tbaa !18
  br label %41

249:                                              ; preds = %138
  %250 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %251 = load ptr, ptr %250, align 8, !tbaa !18
  %252 = call fastcc ptr @ds(ptr noundef nonnull @.str.12) #18
  %253 = load ptr, ptr %7, align 8, !tbaa !18
  %254 = call fastcc ptr @ds(ptr noundef nonnull @.str.13) #18
  %255 = call ptr (ptr, ...) @cat(ptr noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, ptr noundef null) #18
  store ptr %255, ptr @yyval, align 8, !tbaa !18
  store i8 102, ptr @prev, align 1, !tbaa !18
  br label %41

256:                                              ; preds = %138
  %257 = load ptr, ptr %7, align 8, !tbaa !18
  %258 = call fastcc ptr @ds(ptr noundef nonnull @.str.14) #18
  %259 = load ptr, ptr %9, align 8, !tbaa !18
  %260 = call ptr (ptr, ...) @cat(ptr noundef %257, ptr noundef %258, ptr noundef %259, ptr noundef null) #18
  store ptr %260, ptr @yyval, align 8, !tbaa !18
  store i8 97, ptr @prev, align 1, !tbaa !18
  br label %41

261:                                              ; preds = %138
  %262 = load ptr, ptr %7, align 8, !tbaa !18
  store ptr %262, ptr @yyval, align 8, !tbaa !18
  br label %41

263:                                              ; preds = %138
  %264 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %264, ptr @savedname, align 8, !tbaa !7
  %265 = call fastcc ptr @ds(ptr noundef nonnull @.str.15) #18
  store ptr %265, ptr @yyval, align 8, !tbaa !18
  store i8 110, ptr @prev, align 1, !tbaa !18
  br label %41

266:                                              ; preds = %138
  %267 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %268 = load ptr, ptr %267, align 8, !tbaa !18
  %269 = call fastcc ptr @ds(ptr noundef nonnull @.str.16) #18
  %270 = load ptr, ptr %9, align 8, !tbaa !18
  %271 = call ptr (ptr, ...) @cat(ptr noundef %268, ptr noundef %269, ptr noundef %270, ptr noundef null) #18
  store ptr %271, ptr @yyval, align 8, !tbaa !18
  br label %41

272:                                              ; preds = %138
  %273 = load ptr, ptr %9, align 8, !tbaa !18
  %274 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %275 = load ptr, ptr %274, align 8, !tbaa !18
  %276 = load i8, ptr %275, align 1
  %277 = icmp eq i8 %276, 0
  %278 = select i1 %277, ptr @.str.15, ptr @.str.7
  %279 = call fastcc ptr @ds(ptr noundef nonnull %278) #18
  %280 = load ptr, ptr %7, align 8, !tbaa !18
  %281 = call ptr (ptr, ...) @cat(ptr noundef %273, ptr noundef nonnull %275, ptr noundef %279, ptr noundef %280, ptr noundef null) #18
  store ptr %281, ptr @yyval, align 8, !tbaa !18
  br label %41

282:                                              ; preds = %138
  %283 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %283, ptr @yyval, align 8, !tbaa !18
  br label %41

284:                                              ; preds = %138
  %285 = call fastcc ptr @ds(ptr noundef nonnull @.str.15) #18
  store ptr %285, ptr @yyval, align 8, !tbaa !18
  br label %41

286:                                              ; preds = %138
  %287 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %288 = load ptr, ptr %287, align 8, !tbaa !18
  %289 = call fastcc ptr @ds(ptr noundef nonnull @.str.16) #18
  %290 = load ptr, ptr %9, align 8, !tbaa !18
  %291 = call ptr (ptr, ...) @cat(ptr noundef %288, ptr noundef %289, ptr noundef %290, ptr noundef null) #18
  store ptr %291, ptr @yyval, align 8, !tbaa !18
  br label %41

292:                                              ; preds = %138
  %293 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %293, ptr @yyval, align 8, !tbaa !18
  br label %41

294:                                              ; preds = %138
  %295 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !18
  %297 = call fastcc ptr @ds(ptr noundef nonnull @.str.7) #18
  %298 = load ptr, ptr %9, align 8, !tbaa !18
  %299 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !18
  %301 = call ptr (ptr, ...) @cat(ptr noundef %296, ptr noundef %297, ptr noundef %298, ptr noundef %300, ptr noundef null) #18
  store ptr %301, ptr @yyval, align 8, !tbaa !18
  br label %41

302:                                              ; preds = %138
  %303 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !18
  %305 = call fastcc ptr @ds(ptr noundef nonnull @.str.7) #18
  %306 = load ptr, ptr %9, align 8, !tbaa !18
  %307 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %308 = load ptr, ptr %307, align 8, !tbaa !18
  %309 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !18
  %311 = call ptr (ptr, ...) @cat(ptr noundef %304, ptr noundef %305, ptr noundef %306, ptr noundef %308, ptr noundef %310, ptr noundef null) #18
  store ptr %311, ptr @yyval, align 8, !tbaa !18
  br label %41

312:                                              ; preds = %138
  %313 = call fastcc ptr @ds(ptr noundef nonnull @.str.15) #18
  store ptr %313, ptr @yyval, align 8, !tbaa !18
  br label %41

314:                                              ; preds = %138
  %315 = call fastcc ptr @ds(ptr noundef nonnull @.str.11) #18
  store ptr %315, ptr @yyval, align 8, !tbaa !18
  store i8 102, ptr @prev, align 1, !tbaa !18
  br label %41

316:                                              ; preds = %138
  %317 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %318 = load ptr, ptr %317, align 8, !tbaa !18
  %319 = call fastcc ptr @ds(ptr noundef nonnull @.str.11) #18
  %320 = call ptr (ptr, ...) @cat(ptr noundef %318, ptr noundef %319, ptr noundef null) #18
  store ptr %320, ptr @yyval, align 8, !tbaa !18
  store i8 102, ptr @prev, align 1, !tbaa !18
  br label %41

321:                                              ; preds = %138
  %322 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -3
  %323 = load ptr, ptr %322, align 8, !tbaa !18
  %324 = call fastcc ptr @ds(ptr noundef nonnull @.str.12) #18
  %325 = load ptr, ptr %7, align 8, !tbaa !18
  %326 = call fastcc ptr @ds(ptr noundef nonnull @.str.13) #18
  %327 = call ptr (ptr, ...) @cat(ptr noundef %323, ptr noundef %324, ptr noundef %325, ptr noundef %326, ptr noundef null) #18
  store ptr %327, ptr @yyval, align 8, !tbaa !18
  store i8 102, ptr @prev, align 1, !tbaa !18
  br label %41

328:                                              ; preds = %138
  %329 = load ptr, ptr %7, align 8, !tbaa !18
  store ptr %329, ptr @yyval, align 8, !tbaa !18
  br label %41

330:                                              ; preds = %138
  %331 = load i1, ptr @CplusplusFlag, align 4
  br i1 %331, label %335, label %332

332:                                              ; preds = %330
  %333 = load ptr, ptr @stdout, align 8, !tbaa !7
  %334 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %333, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #18
  br label %335

335:                                              ; preds = %332, %330
  %336 = load ptr, ptr %9, align 8, !tbaa !18
  %337 = call fastcc ptr @ds(ptr noundef nonnull @.str.6) #18
  %338 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %339 = load ptr, ptr %338, align 8, !tbaa !18
  %340 = call fastcc ptr @ds(ptr noundef nonnull @.str.7) #18
  %341 = call ptr (ptr, ...) @cat(ptr noundef %336, ptr noundef %337, ptr noundef %339, ptr noundef %340, ptr noundef null) #18
  store ptr %341, ptr @yyval, align 8, !tbaa !18
  store i8 112, ptr @prev, align 1, !tbaa !18
  br label %41

342:                                              ; preds = %138
  %343 = load ptr, ptr %9, align 8, !tbaa !18
  %344 = call fastcc ptr @ds(ptr noundef nonnull @.str.4) #18
  %345 = call ptr (ptr, ...) @cat(ptr noundef %343, ptr noundef %344, ptr noundef null) #18
  store ptr %345, ptr @yyval, align 8, !tbaa !18
  store i8 112, ptr @prev, align 1, !tbaa !18
  br label %41

346:                                              ; preds = %138
  %347 = load i1, ptr @CplusplusFlag, align 4
  br i1 %347, label %351, label %348

348:                                              ; preds = %346
  %349 = load ptr, ptr @stdout, align 8, !tbaa !7
  %350 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %349, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #18
  br label %351

351:                                              ; preds = %348, %346
  %352 = load ptr, ptr %9, align 8, !tbaa !18
  %353 = call fastcc ptr @ds(ptr noundef nonnull @.str.10) #18
  %354 = call ptr (ptr, ...) @cat(ptr noundef %352, ptr noundef %353, ptr noundef null) #18
  store ptr %354, ptr @yyval, align 8, !tbaa !18
  store i8 114, ptr @prev, align 1, !tbaa !18
  br label %41

355:                                              ; preds = %138
  %356 = load ptr, ptr %7, align 8, !tbaa !18
  %357 = call fastcc ptr @ds(ptr noundef nonnull @.str.14) #18
  %358 = load ptr, ptr %9, align 8, !tbaa !18
  %359 = call ptr (ptr, ...) @cat(ptr noundef %356, ptr noundef %357, ptr noundef %358, ptr noundef null) #18
  store ptr %359, ptr @yyval, align 8, !tbaa !18
  store i8 97, ptr @prev, align 1, !tbaa !18
  br label %41

360:                                              ; preds = %138
  %361 = call fastcc ptr @ds(ptr noundef nonnull @.str.17) #18
  store ptr %361, ptr @yyval, align 8, !tbaa !18
  br label %41

362:                                              ; preds = %138
  %363 = load ptr, ptr %7, align 8, !tbaa !18
  %364 = call fastcc ptr @ds(ptr noundef nonnull @.str.18) #18
  %365 = call ptr (ptr, ...) @cat(ptr noundef %363, ptr noundef %364, ptr noundef null) #18
  store ptr %365, ptr @yyval, align 8, !tbaa !18
  br label %41

366:                                              ; preds = %138
  %367 = load i8, ptr @prev, align 1
  %368 = icmp eq i8 %367, 102
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  call fastcc void @unsupp(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #18
  br label %374

370:                                              ; preds = %366
  %371 = and i8 %367, -33
  %372 = icmp eq i8 %371, 65
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  call fastcc void @unsupp(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #18
  br label %374

374:                                              ; preds = %373, %370, %369
  %375 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %375, ptr @yyval, align 8, !tbaa !18
  %376 = call fastcc ptr @ds(ptr noundef nonnull @.str.23) #18
  %377 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !18
  %379 = call ptr (ptr, ...) @cat(ptr noundef %376, ptr noundef %378, ptr noundef null) #18
  store ptr %379, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 1), align 8, !tbaa !18
  %380 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !18
  store ptr %381, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 2), align 8, !tbaa !18
  store i8 102, ptr @prev, align 1, !tbaa !18
  br label %41

382:                                              ; preds = %138
  %383 = load i8, ptr @prev, align 1
  %384 = icmp eq i8 %383, 102
  br i1 %384, label %385, label %386

385:                                              ; preds = %382
  call fastcc void @unsupp(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #18
  br label %390

386:                                              ; preds = %382
  %387 = and i8 %383, -33
  %388 = icmp eq i8 %387, 65
  br i1 %388, label %389, label %390

389:                                              ; preds = %386
  call fastcc void @unsupp(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #18
  br label %390

390:                                              ; preds = %389, %386, %385
  %391 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %391, ptr @yyval, align 8, !tbaa !18
  %392 = call fastcc ptr @ds(ptr noundef nonnull @.str.24) #18
  %393 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %394 = load ptr, ptr %393, align 8, !tbaa !18
  %395 = call fastcc ptr @ds(ptr noundef nonnull @.str.25) #18
  %396 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !18
  %398 = call ptr (ptr, ...) @cat(ptr noundef %392, ptr noundef %394, ptr noundef %395, ptr noundef %397, ptr noundef null) #18
  store ptr %398, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 1), align 8, !tbaa !18
  %399 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !18
  store ptr %400, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 2), align 8, !tbaa !18
  store i8 102, ptr @prev, align 1, !tbaa !18
  br label %41

401:                                              ; preds = %138
  %402 = load i8, ptr @prev, align 1, !tbaa !18
  switch i8 %402, label %406 [
    i8 102, label %403
    i8 97, label %404
    i8 118, label %405
  ]

403:                                              ; preds = %401
  call fastcc void @unsupp(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #18
  br label %406

404:                                              ; preds = %401
  call fastcc void @unsupp(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #18
  br label %406

405:                                              ; preds = %401
  call fastcc void @unsupp(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #18
  br label %406

406:                                              ; preds = %405, %404, %403, %401
  %407 = load i1, ptr @arbdims, align 4
  %408 = select i1 %407, i8 65, i8 97
  store i8 %408, ptr @prev, align 1, !tbaa !18
  %409 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %409, ptr @yyval, align 8, !tbaa !18
  %410 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -1
  %411 = load ptr, ptr %410, align 8, !tbaa !18
  %412 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !18
  %414 = call ptr (ptr, ...) @cat(ptr noundef %411, ptr noundef %413, ptr noundef null) #18
  store ptr %414, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 1), align 8, !tbaa !18
  %415 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !18
  store ptr %416, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 2), align 8, !tbaa !18
  br label %41

417:                                              ; preds = %138
  %418 = load i8, ptr @prev, align 1
  %419 = icmp eq i8 %418, 97
  br i1 %419, label %420, label %422

420:                                              ; preds = %417
  call fastcc void @unsupp(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #18
  %421 = load i8, ptr @prev, align 1
  br label %422

422:                                              ; preds = %420, %417
  %423 = phi i8 [ %421, %420 ], [ %418, %417 ]
  switch i8 %423, label %425 [
    i8 102, label %424
    i8 97, label %424
    i8 65, label %424
  ]

424:                                              ; preds = %422, %422, %422
  br label %425

425:                                              ; preds = %424, %422
  %426 = phi ptr [ @.str.24, %424 ], [ @.str.15, %422 ]
  %427 = phi ptr [ @.str.25, %424 ], [ @.str.15, %422 ]
  %428 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %429 = load ptr, ptr %428, align 8, !tbaa !18
  %430 = load i8, ptr %429, align 1
  %431 = icmp eq i8 %430, 0
  %432 = select i1 %431, ptr @.str.15, ptr @.str.7
  %433 = load ptr, ptr %9, align 8, !tbaa !18
  %434 = call fastcc ptr @ds(ptr noundef nonnull %426) #18
  %435 = call fastcc ptr @ds(ptr noundef nonnull @.str.34) #18
  %436 = call fastcc ptr @ds(ptr noundef nonnull %432) #18
  %437 = load ptr, ptr %428, align 8, !tbaa !18
  %438 = call fastcc ptr @ds(ptr noundef nonnull %432) #18
  %439 = call ptr (ptr, ...) @cat(ptr noundef %433, ptr noundef %434, ptr noundef %435, ptr noundef %436, ptr noundef %437, ptr noundef %438, ptr noundef null) #18
  store ptr %439, ptr @yyval, align 8, !tbaa !18
  %440 = call fastcc ptr @ds(ptr noundef nonnull %427) #18
  %441 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !18
  %443 = call ptr (ptr, ...) @cat(ptr noundef %440, ptr noundef %442, ptr noundef null) #18
  store ptr %443, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 1), align 8, !tbaa !18
  %444 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !18
  store ptr %445, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 2), align 8, !tbaa !18
  store i8 112, ptr @prev, align 1, !tbaa !18
  br label %41

446:                                              ; preds = %138
  %447 = load i1, ptr @CplusplusFlag, align 4
  br i1 %447, label %451, label %448

448:                                              ; preds = %446
  %449 = load ptr, ptr @stdout, align 8, !tbaa !7
  %450 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %449, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.5) #18
  br label %451

451:                                              ; preds = %448, %446
  %452 = load i8, ptr @prev, align 1
  %453 = icmp eq i8 %452, 97
  br i1 %453, label %454, label %456

454:                                              ; preds = %451
  call fastcc void @unsupp(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #18
  %455 = load i8, ptr @prev, align 1
  br label %456

456:                                              ; preds = %454, %451
  %457 = phi i8 [ %455, %454 ], [ %452, %451 ]
  switch i8 %457, label %459 [
    i8 102, label %458
    i8 97, label %458
    i8 65, label %458
  ]

458:                                              ; preds = %456, %456, %456
  br label %459

459:                                              ; preds = %458, %456
  %460 = phi ptr [ @.str.24, %458 ], [ @.str.15, %456 ]
  %461 = phi ptr [ @.str.25, %458 ], [ @.str.15, %456 ]
  %462 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -6
  %463 = load ptr, ptr %462, align 8, !tbaa !18
  %464 = load i8, ptr %463, align 1
  %465 = icmp eq i8 %464, 0
  %466 = select i1 %465, ptr @.str.15, ptr @.str.7
  %467 = load ptr, ptr %9, align 8, !tbaa !18
  %468 = call fastcc ptr @ds(ptr noundef nonnull %460) #18
  %469 = load ptr, ptr %7, align 8, !tbaa !18
  %470 = call fastcc ptr @ds(ptr noundef nonnull @.str.35) #18
  %471 = call fastcc ptr @ds(ptr noundef nonnull %466) #18
  %472 = load ptr, ptr %462, align 8, !tbaa !18
  %473 = call fastcc ptr @ds(ptr noundef nonnull %466) #18
  %474 = call ptr (ptr, ...) @cat(ptr noundef %467, ptr noundef %468, ptr noundef %469, ptr noundef %470, ptr noundef %471, ptr noundef %472, ptr noundef %473, ptr noundef null) #18
  store ptr %474, ptr @yyval, align 8, !tbaa !18
  %475 = call fastcc ptr @ds(ptr noundef nonnull %461) #18
  %476 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !18
  %478 = call ptr (ptr, ...) @cat(ptr noundef %475, ptr noundef %477, ptr noundef null) #18
  store ptr %478, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 1), align 8, !tbaa !18
  %479 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !18
  store ptr %480, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 2), align 8, !tbaa !18
  store i8 112, ptr @prev, align 1, !tbaa !18
  br label %41

481:                                              ; preds = %138
  %482 = load i1, ptr @CplusplusFlag, align 4
  br i1 %482, label %486, label %483

483:                                              ; preds = %481
  %484 = load ptr, ptr @stdout, align 8, !tbaa !7
  %485 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %484, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #18
  br label %486

486:                                              ; preds = %483, %481
  %487 = load i8, ptr @prev, align 1
  switch i8 %487, label %492 [
    i8 118, label %488
    i8 97, label %489
  ]

488:                                              ; preds = %486
  call fastcc void @unsupp(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31) #18
  br label %490

489:                                              ; preds = %486
  call fastcc void @unsupp(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #18
  br label %490

490:                                              ; preds = %489, %488
  %491 = load i8, ptr @prev, align 1
  br label %492

492:                                              ; preds = %490, %486
  %493 = phi i8 [ %491, %490 ], [ %487, %486 ]
  switch i8 %493, label %495 [
    i8 102, label %494
    i8 97, label %494
    i8 65, label %494
  ]

494:                                              ; preds = %492, %492, %492
  br label %495

495:                                              ; preds = %494, %492
  %496 = phi ptr [ @.str.24, %494 ], [ @.str.15, %492 ]
  %497 = phi ptr [ @.str.25, %494 ], [ @.str.15, %492 ]
  %498 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 -2
  %499 = load ptr, ptr %498, align 8, !tbaa !18
  %500 = load i8, ptr %499, align 1
  %501 = icmp eq i8 %500, 0
  %502 = select i1 %501, ptr @.str.15, ptr @.str.7
  %503 = load ptr, ptr %9, align 8, !tbaa !18
  %504 = call fastcc ptr @ds(ptr noundef nonnull %496) #18
  %505 = call fastcc ptr @ds(ptr noundef nonnull @.str.39) #18
  %506 = call fastcc ptr @ds(ptr noundef nonnull %502) #18
  %507 = load ptr, ptr %498, align 8, !tbaa !18
  %508 = call fastcc ptr @ds(ptr noundef nonnull %502) #18
  %509 = call ptr (ptr, ...) @cat(ptr noundef %503, ptr noundef %504, ptr noundef %505, ptr noundef %506, ptr noundef %507, ptr noundef %508, ptr noundef null) #18
  store ptr %509, ptr @yyval, align 8, !tbaa !18
  %510 = call fastcc ptr @ds(ptr noundef nonnull %497) #18
  %511 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !18
  %513 = call ptr (ptr, ...) @cat(ptr noundef %510, ptr noundef %512, ptr noundef null) #18
  store ptr %513, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 1), align 8, !tbaa !18
  %514 = getelementptr inbounds %union.YYSTYPE, ptr %7, i64 1, i32 0, i32 2
  %515 = load ptr, ptr %514, align 8, !tbaa !18
  store ptr %515, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 2), align 8, !tbaa !18
  store i8 114, ptr @prev, align 1, !tbaa !18
  br label %41

516:                                              ; preds = %138
  %517 = call fastcc ptr @ds(ptr noundef nonnull @.str.15) #18
  store ptr %517, ptr @yyval, align 8, !tbaa !18
  %518 = call fastcc ptr @ds(ptr noundef nonnull @.str.15) #18
  store ptr %518, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 1), align 8, !tbaa !18
  %519 = load ptr, ptr %9, align 8, !tbaa !18
  %520 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %519, ptr noundef nonnull dereferenceable(5) @.str.40) #16
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %529, label %522

522:                                              ; preds = %516
  %523 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %519, ptr noundef nonnull dereferenceable(7) @.str.41, i64 noundef 6) #16
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %529, label %525

525:                                              ; preds = %522
  %526 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %519, ptr noundef nonnull dereferenceable(6) @.str.42, i64 noundef 5) #16
  %527 = icmp eq i32 %526, 0
  %528 = select i1 %527, i8 115, i8 116
  br label %529

529:                                              ; preds = %525, %522, %516
  %530 = phi i8 [ 118, %516 ], [ 115, %522 ], [ %528, %525 ]
  store i8 %530, ptr @prev, align 1, !tbaa !18
  %531 = load ptr, ptr %7, align 8, !tbaa !18
  %532 = load i8, ptr %531, align 1
  %533 = icmp eq i8 %532, 0
  %534 = select i1 %533, ptr @.str.15, ptr @.str.7
  %535 = call fastcc ptr @ds(ptr noundef nonnull %534) #18
  %536 = load ptr, ptr %9, align 8, !tbaa !18
  %537 = call ptr (ptr, ...) @cat(ptr noundef nonnull %531, ptr noundef %535, ptr noundef %536, ptr noundef null) #18
  store ptr %537, ptr getelementptr inbounds (%union.YYSTYPE, ptr @yyval, i64 0, i32 0, i32 2), align 8, !tbaa !18
  br label %41

538:                                              ; preds = %138
  store i1 false, ptr @arbdims, align 4
  %539 = call fastcc ptr @ds(ptr noundef nonnull @.str.43) #18
  store ptr %539, ptr @yyval, align 8, !tbaa !18
  br label %41

540:                                              ; preds = %138
  store i1 true, ptr @arbdims, align 4
  %541 = call fastcc ptr @ds(ptr noundef nonnull @.str.44) #18
  %542 = load ptr, ptr %9, align 8, !tbaa !18
  %543 = call fastcc ptr @ds(ptr noundef nonnull @.str.45) #18
  %544 = call ptr (ptr, ...) @cat(ptr noundef %541, ptr noundef %542, ptr noundef %543, ptr noundef null) #18
  store ptr %544, ptr @yyval, align 8, !tbaa !18
  br label %41

545:                                              ; preds = %138
  call fastcc void @mbcheck() #18
  %546 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %546, ptr @yyval, align 8, !tbaa !18
  br label %41

547:                                              ; preds = %138
  store i32 0, ptr @modbits, align 4, !tbaa !11
  br label %41

548:                                              ; preds = %138
  %549 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %549, ptr @yyval, align 8, !tbaa !18
  br label %41

550:                                              ; preds = %138
  %551 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %551, ptr @yyval, align 8, !tbaa !18
  br label %41

552:                                              ; preds = %138
  %553 = load ptr, ptr %7, align 8, !tbaa !18
  %554 = call fastcc ptr @ds(ptr noundef nonnull @.str.7) #18
  %555 = load ptr, ptr %9, align 8, !tbaa !18
  %556 = call ptr (ptr, ...) @cat(ptr noundef %553, ptr noundef %554, ptr noundef %555, ptr noundef null) #18
  store ptr %556, ptr @yyval, align 8, !tbaa !18
  br label %41

557:                                              ; preds = %138
  %558 = load ptr, ptr %7, align 8, !tbaa !18
  %559 = call fastcc ptr @ds(ptr noundef nonnull @.str.7) #18
  %560 = load ptr, ptr %9, align 8, !tbaa !18
  %561 = call ptr (ptr, ...) @cat(ptr noundef %558, ptr noundef %559, ptr noundef %560, ptr noundef null) #18
  store ptr %561, ptr @yyval, align 8, !tbaa !18
  br label %41

562:                                              ; preds = %138
  %563 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %563, ptr @yyval, align 8, !tbaa !18
  br label %41

564:                                              ; preds = %138
  %565 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %565, ptr @yyval, align 8, !tbaa !18
  br label %41

566:                                              ; preds = %138
  %567 = load i32, ptr @modbits, align 4, !tbaa !11
  %568 = or i32 %567, 8
  store i32 %568, ptr @modbits, align 4, !tbaa !11
  %569 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %569, ptr @yyval, align 8, !tbaa !18
  br label %41

570:                                              ; preds = %138
  %571 = load i32, ptr @modbits, align 4, !tbaa !11
  %572 = or i32 %571, 16
  store i32 %572, ptr @modbits, align 4, !tbaa !11
  %573 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %573, ptr @yyval, align 8, !tbaa !18
  br label %41

574:                                              ; preds = %138
  %575 = load i32, ptr @modbits, align 4, !tbaa !11
  %576 = or i32 %575, 32
  store i32 %576, ptr @modbits, align 4, !tbaa !11
  %577 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %577, ptr @yyval, align 8, !tbaa !18
  br label %41

578:                                              ; preds = %138
  %579 = load i32, ptr @modbits, align 4, !tbaa !11
  %580 = or i32 %579, 64
  store i32 %580, ptr @modbits, align 4, !tbaa !11
  %581 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %581, ptr @yyval, align 8, !tbaa !18
  br label %41

582:                                              ; preds = %138
  %583 = load i32, ptr @modbits, align 4, !tbaa !11
  %584 = or i32 %583, 128
  store i32 %584, ptr @modbits, align 4, !tbaa !11
  %585 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %585, ptr @yyval, align 8, !tbaa !18
  br label %41

586:                                              ; preds = %138
  %587 = load ptr, ptr %7, align 8, !tbaa !18
  %588 = call fastcc ptr @ds(ptr noundef nonnull @.str.7) #18
  %589 = load ptr, ptr %9, align 8, !tbaa !18
  %590 = call ptr (ptr, ...) @cat(ptr noundef %587, ptr noundef %588, ptr noundef %589, ptr noundef null) #18
  store ptr %590, ptr @yyval, align 8, !tbaa !18
  br label %41

591:                                              ; preds = %138
  %592 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %592, ptr @yyval, align 8, !tbaa !18
  br label %41

593:                                              ; preds = %138
  %594 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %594, ptr @yyval, align 8, !tbaa !18
  br label %41

595:                                              ; preds = %138
  %596 = load i1, ptr @PreANSIFlag, align 4
  br i1 %596, label %597, label %603

597:                                              ; preds = %595
  %598 = load ptr, ptr %9, align 8, !tbaa !18
  %599 = load i1, ptr @CplusplusFlag, align 4
  %600 = select i1 %599, ptr @.str.66, ptr @.str.15
  %601 = load ptr, ptr @stdout, align 8, !tbaa !7
  %602 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %601, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.46, ptr noundef nonnull %600, ptr noundef %598) #18
  br label %619

603:                                              ; preds = %595
  %604 = load i1, ptr @RitchieFlag, align 4
  %605 = load ptr, ptr %9, align 8, !tbaa !18
  br i1 %604, label %606, label %611

606:                                              ; preds = %603
  %607 = load i1, ptr @CplusplusFlag, align 4
  %608 = select i1 %607, ptr @.str.66, ptr @.str.15
  %609 = load ptr, ptr @stdout, align 8, !tbaa !7
  %610 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %609, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.47, ptr noundef nonnull %608, ptr noundef %605) #18
  br label %619

611:                                              ; preds = %603
  %612 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %605, ptr noundef nonnull dereferenceable(8) @.str.48) #16
  %613 = icmp eq i32 %612, 0
  %614 = load i1, ptr @CplusplusFlag, align 4
  %615 = select i1 %613, i1 %614, i1 false
  br i1 %615, label %616, label %619

616:                                              ; preds = %611
  %617 = load ptr, ptr @stdout, align 8, !tbaa !7
  %618 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %617, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.66, ptr noundef %605) #18
  br label %619

619:                                              ; preds = %616, %611, %606, %597
  %620 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %620, ptr @yyval, align 8, !tbaa !18
  br label %41

621:                                              ; preds = %138
  %622 = load i32, ptr @modbits, align 4, !tbaa !11
  %623 = or i32 %622, 4
  store i32 %623, ptr @modbits, align 4, !tbaa !11
  %624 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %624, ptr @yyval, align 8, !tbaa !18
  br label %41

625:                                              ; preds = %138
  %626 = load i32, ptr @modbits, align 4, !tbaa !11
  %627 = or i32 %626, 256
  store i32 %627, ptr @modbits, align 4, !tbaa !11
  %628 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %628, ptr @yyval, align 8, !tbaa !18
  br label %41

629:                                              ; preds = %138
  %630 = load i32, ptr @modbits, align 4, !tbaa !11
  %631 = or i32 %630, 2
  store i32 %631, ptr @modbits, align 4, !tbaa !11
  %632 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %632, ptr @yyval, align 8, !tbaa !18
  br label %41

633:                                              ; preds = %138
  %634 = load i32, ptr @modbits, align 4, !tbaa !11
  %635 = or i32 %634, 1
  store i32 %635, ptr @modbits, align 4, !tbaa !11
  %636 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %636, ptr @yyval, align 8, !tbaa !18
  br label %41

637:                                              ; preds = %138
  %638 = load i1, ptr @PreANSIFlag, align 4
  br i1 %638, label %639, label %645

639:                                              ; preds = %637
  %640 = load ptr, ptr %7, align 8, !tbaa !18
  %641 = load i1, ptr @CplusplusFlag, align 4
  %642 = select i1 %641, ptr @.str.66, ptr @.str.15
  %643 = load ptr, ptr @stdout, align 8, !tbaa !7
  %644 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %643, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.46, ptr noundef nonnull %642, ptr noundef %640) #18
  br label %661

645:                                              ; preds = %637
  %646 = load i1, ptr @RitchieFlag, align 4
  %647 = load ptr, ptr %7, align 8, !tbaa !18
  br i1 %646, label %648, label %653

648:                                              ; preds = %645
  %649 = load i1, ptr @CplusplusFlag, align 4
  %650 = select i1 %649, ptr @.str.66, ptr @.str.15
  %651 = load ptr, ptr @stdout, align 8, !tbaa !7
  %652 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %651, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.47, ptr noundef nonnull %650, ptr noundef %647) #18
  br label %661

653:                                              ; preds = %645
  %654 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %647, ptr noundef nonnull dereferenceable(8) @.str.48) #16
  %655 = icmp eq i32 %654, 0
  %656 = load i1, ptr @CplusplusFlag, align 4
  %657 = select i1 %655, i1 %656, i1 false
  br i1 %657, label %658, label %661

658:                                              ; preds = %653
  %659 = load ptr, ptr @stdout, align 8, !tbaa !7
  %660 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %659, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.66, ptr noundef %647) #18
  br label %661

661:                                              ; preds = %658, %653, %648, %639
  %662 = load ptr, ptr %7, align 8, !tbaa !18
  %663 = load ptr, ptr %9, align 8, !tbaa !18
  %664 = load i8, ptr %663, align 1
  %665 = icmp eq i8 %664, 0
  %666 = select i1 %665, ptr @.str.15, ptr @.str.7
  %667 = call fastcc ptr @ds(ptr noundef nonnull %666) #18
  %668 = load ptr, ptr %9, align 8, !tbaa !18
  %669 = call ptr (ptr, ...) @cat(ptr noundef %662, ptr noundef %667, ptr noundef %668, ptr noundef null) #18
  store ptr %669, ptr @yyval, align 8, !tbaa !18
  br label %41

670:                                              ; preds = %138
  %671 = call fastcc ptr @ds(ptr noundef nonnull @.str.15) #18
  store ptr %671, ptr @yyval, align 8, !tbaa !18
  br label %41

672:                                              ; preds = %138
  %673 = load i1, ptr @PreANSIFlag, align 4
  br i1 %673, label %674, label %680

674:                                              ; preds = %672
  %675 = load ptr, ptr %7, align 8, !tbaa !18
  %676 = load i1, ptr @CplusplusFlag, align 4
  %677 = select i1 %676, ptr @.str.66, ptr @.str.15
  %678 = load ptr, ptr @stdout, align 8, !tbaa !7
  %679 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %678, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.46, ptr noundef nonnull %677, ptr noundef %675) #18
  br label %696

680:                                              ; preds = %672
  %681 = load i1, ptr @RitchieFlag, align 4
  %682 = load ptr, ptr %7, align 8, !tbaa !18
  br i1 %681, label %683, label %688

683:                                              ; preds = %680
  %684 = load i1, ptr @CplusplusFlag, align 4
  %685 = select i1 %684, ptr @.str.66, ptr @.str.15
  %686 = load ptr, ptr @stdout, align 8, !tbaa !7
  %687 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %686, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.47, ptr noundef nonnull %685, ptr noundef %682) #18
  br label %696

688:                                              ; preds = %680
  %689 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %682, ptr noundef nonnull dereferenceable(8) @.str.48) #16
  %690 = icmp eq i32 %689, 0
  %691 = load i1, ptr @CplusplusFlag, align 4
  %692 = select i1 %690, i1 %691, i1 false
  br i1 %692, label %693, label %696

693:                                              ; preds = %688
  %694 = load ptr, ptr @stdout, align 8, !tbaa !7
  %695 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %694, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.66, ptr noundef %682) #18
  br label %696

696:                                              ; preds = %693, %688, %683, %674
  %697 = load ptr, ptr %7, align 8, !tbaa !18
  %698 = load ptr, ptr %9, align 8, !tbaa !18
  %699 = load i8, ptr %698, align 1
  %700 = icmp eq i8 %699, 0
  %701 = select i1 %700, ptr @.str.15, ptr @.str.7
  %702 = call fastcc ptr @ds(ptr noundef nonnull %701) #18
  %703 = load ptr, ptr %9, align 8, !tbaa !18
  %704 = call ptr (ptr, ...) @cat(ptr noundef %697, ptr noundef %702, ptr noundef %703, ptr noundef null) #18
  store ptr %704, ptr @yyval, align 8, !tbaa !18
  br label %41

705:                                              ; preds = %138
  %706 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %706, ptr @yyval, align 8, !tbaa !18
  br label %41

707:                                              ; preds = %138
  %708 = load ptr, ptr %9, align 8, !tbaa !18
  store ptr %708, ptr @yyval, align 8, !tbaa !18
  br label %41

709:                                              ; preds = %138
  %710 = call fastcc ptr @ds(ptr noundef nonnull @.str.15) #18
  store ptr %710, ptr @yyval, align 8, !tbaa !18
  br label %41

711:                                              ; preds = %100, %96, %89, %76, %3
  %712 = phi i32 [ 1, %3 ], [ 1, %96 ], [ 0, %76 ], [ 1, %100 ], [ 1, %89 ]
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %1) #23
  ret i32 %712
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @yylex() unnamed_addr #0 {
  %1 = load ptr, ptr @yyin, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !tbaa !7
  store ptr %4, ptr @yyin, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, ptr @yyprevious, align 4, !tbaa !11
  br label %7

7:                                                ; preds = %211, %5
  %8 = phi i32 [ %6, %5 ], [ %212, %211 ]
  %9 = phi i32 [ 1, %5 ], [ %213, %211 ]
  %10 = icmp eq i32 %8, 10
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds %struct.anon, ptr getelementptr inbounds ([215 x %struct.anon], ptr @yysvec, i64 0, i64 1, i32 0), i64 %11
  br label %13

13:                                               ; preds = %130, %7
  %14 = phi ptr [ @yylstate, %7 ], [ %131, %130 ]
  %15 = phi ptr [ %12, %7 ], [ %132, %130 ]
  %16 = phi i32 [ %9, %7 ], [ 0, %130 ]
  %17 = phi ptr [ @yytext, %7 ], [ %49, %130 ]
  %18 = load ptr, ptr %15, align 8, !tbaa !19
  %19 = icmp ne ptr %18, @yycrank
  %20 = icmp ne i32 %16, 0
  %21 = or i1 %20, %19
  br i1 %21, label %29, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.anon, ptr %15, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %156, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !19
  %28 = icmp eq ptr %27, @yycrank
  br i1 %28, label %156, label %29

29:                                               ; preds = %26, %13
  %30 = load ptr, ptr @yysptr, align 8, !tbaa !7
  %31 = icmp ugt ptr %30, @yysbuf
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %30, i64 -1
  store ptr %33, ptr @yysptr, align 8, !tbaa !7
  %34 = load i8, ptr %33, align 1, !tbaa !18
  %35 = sext i8 %34 to i32
  br label %39

36:                                               ; preds = %29
  %37 = load ptr, ptr @yyin, align 8, !tbaa !7
  %38 = tail call i32 @getc(ptr noundef %37) #18
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i32 [ %35, %32 ], [ %38, %36 ]
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, ptr @yylineno, align 4, !tbaa !11
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr @yylineno, align 4, !tbaa !11
  br label %45

45:                                               ; preds = %42, %39
  %46 = icmp eq i32 %40, -1
  %47 = select i1 %46, i32 0, i32 %40
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %48, ptr %17, align 1, !tbaa !18
  %50 = icmp eq ptr %17, getelementptr inbounds ([8192 x i8], ptr @yytext, i64 1, i64 0)
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = sext i32 %47 to i64
  %53 = getelementptr inbounds [257 x i8], ptr @yymatch, i64 0, i64 %52
  br label %56

54:                                               ; preds = %45
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 8192) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

56:                                               ; preds = %139, %51
  %57 = phi ptr [ %140, %139 ], [ %18, %51 ]
  %58 = phi ptr [ %137, %139 ], [ %15, %51 ]
  %59 = ptrtoint ptr %57 to i64
  %60 = trunc i64 %59 to i32
  %61 = icmp sgt i32 %60, ptrtoint (ptr @yycrank to i32)
  br i1 %61, label %62, label %83

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.yywork, ptr %57, i64 %52
  %64 = icmp ugt ptr %63, getelementptr inbounds ([377 x %struct.yywork], ptr @yycrank, i64 0, i64 375, i32 0)
  br i1 %64, label %135, label %65

65:                                               ; preds = %62
  %66 = load i8, ptr %63, align 1, !tbaa !22
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds %struct.anon, ptr @yysvec, i64 %67
  %69 = icmp eq ptr %68, %58
  br i1 %69, label %70, label %135

70:                                               ; preds = %65
  %.lcssa5 = phi ptr [ %57, %65 ]
  %71 = getelementptr inbounds %struct.yywork, ptr %.lcssa5, i64 %52, i32 1
  %72 = load i8, ptr %71, align 1, !tbaa !24
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %.lcssa30 = phi i8 [ %48, %70 ]
  %.lcssa22 = phi ptr [ %14, %70 ]
  %.lcssa13 = phi ptr [ %17, %70 ]
  %75 = icmp eq i8 %.lcssa30, 10
  br i1 %75, label %144, label %150

76:                                               ; preds = %70
  %77 = zext i8 %72 to i64
  %78 = getelementptr inbounds %struct.anon, ptr @yysvec, i64 %77
  %79 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %78, ptr %14, align 8, !tbaa !7
  %80 = icmp ugt ptr %79, getelementptr inbounds ([8192 x ptr], ptr @yylstate, i64 1, i64 0)
  br i1 %80, label %81, label %130

81:                                               ; preds = %76
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 8192) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

83:                                               ; preds = %56
  %84 = icmp slt i32 %60, ptrtoint (ptr @yycrank to i32)
  br i1 %84, label %85, label %135

85:                                               ; preds = %83
  %86 = sub i64 ptrtoint (ptr @yycrank to i64), %59
  %87 = ashr exact i64 %86, 1
  %88 = getelementptr inbounds %struct.yywork, ptr @yycrank, i64 %87
  %89 = getelementptr inbounds %struct.yywork, ptr %88, i64 %52
  %90 = icmp ugt ptr %89, getelementptr inbounds ([377 x %struct.yywork], ptr @yycrank, i64 0, i64 375, i32 0)
  br i1 %90, label %109, label %91

91:                                               ; preds = %85
  %92 = load i8, ptr %89, align 2, !tbaa !22
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds %struct.anon, ptr @yysvec, i64 %93
  %95 = icmp eq ptr %94, %58
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %.lcssa = phi ptr [ %88, %91 ]
  %97 = getelementptr inbounds %struct.yywork, ptr %.lcssa, i64 %52, i32 1
  %98 = load i8, ptr %97, align 1, !tbaa !24
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %.lcssa26 = phi i8 [ %48, %96 ]
  %.lcssa18 = phi ptr [ %14, %96 ]
  %.lcssa9 = phi ptr [ %17, %96 ]
  %101 = icmp eq i8 %.lcssa26, 10
  br i1 %101, label %144, label %150

102:                                              ; preds = %96
  %103 = zext i8 %98 to i64
  %104 = getelementptr inbounds %struct.anon, ptr @yysvec, i64 %103
  %105 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %104, ptr %14, align 8, !tbaa !7
  %106 = icmp ugt ptr %105, getelementptr inbounds ([8192 x ptr], ptr @yylstate, i64 1, i64 0)
  br i1 %106, label %107, label %130

107:                                              ; preds = %102
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 8192) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

109:                                              ; preds = %91, %85
  %110 = load i8, ptr %53, align 1, !tbaa !18
  %111 = sext i8 %110 to i64
  %112 = getelementptr inbounds %struct.yywork, ptr %88, i64 %111
  %113 = icmp ugt ptr %112, getelementptr inbounds ([377 x %struct.yywork], ptr @yycrank, i64 0, i64 375, i32 0)
  br i1 %113, label %135, label %114

114:                                              ; preds = %109
  %115 = load i8, ptr %112, align 2, !tbaa !22
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds %struct.anon, ptr @yysvec, i64 %116
  %118 = icmp eq ptr %117, %58
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %.lcssa2 = phi i64 [ %111, %114 ]
  %.lcssa1 = phi ptr [ %88, %114 ]
  %120 = getelementptr inbounds %struct.yywork, ptr %.lcssa1, i64 %.lcssa2, i32 1
  %121 = load i8, ptr %120, align 1, !tbaa !24
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %.lcssa28 = phi i8 [ %48, %119 ]
  %.lcssa20 = phi ptr [ %14, %119 ]
  %.lcssa11 = phi ptr [ %17, %119 ]
  %124 = icmp eq i8 %.lcssa28, 10
  br i1 %124, label %144, label %150

125:                                              ; preds = %119
  %126 = zext i8 %121 to i64
  %127 = getelementptr inbounds %struct.anon, ptr @yysvec, i64 %126
  %128 = getelementptr inbounds ptr, ptr %14, i64 1
  store ptr %127, ptr %14, align 8, !tbaa !7
  %129 = icmp ugt ptr %128, getelementptr inbounds ([8192 x ptr], ptr @yylstate, i64 1, i64 0)
  br i1 %129, label %133, label %130

130:                                              ; preds = %125, %102, %76
  %131 = phi ptr [ %79, %76 ], [ %105, %102 ], [ %128, %125 ]
  %132 = phi ptr [ %78, %76 ], [ %104, %102 ], [ %127, %125 ]
  br label %13

133:                                              ; preds = %125
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 8192) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

135:                                              ; preds = %114, %109, %83, %65, %62
  %136 = getelementptr inbounds %struct.anon, ptr %58, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !21
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %137, align 8, !tbaa !19
  %141 = icmp eq ptr %140, @yycrank
  br i1 %141, label %142, label %56

142:                                              ; preds = %139, %135
  %.lcssa32 = phi i8 [ %48, %139 ], [ %48, %135 ]
  %.lcssa24 = phi ptr [ %14, %139 ], [ %14, %135 ]
  %.lcssa15 = phi ptr [ %17, %139 ], [ %17, %135 ]
  %143 = icmp eq i8 %.lcssa32, 10
  br i1 %143, label %144, label %150

144:                                              ; preds = %142, %123, %100, %74
  %145 = phi i8 [ %.lcssa32, %142 ], [ %.lcssa28, %123 ], [ %.lcssa26, %100 ], [ %.lcssa30, %74 ]
  %146 = phi ptr [ %.lcssa24, %142 ], [ %.lcssa20, %123 ], [ %.lcssa18, %100 ], [ %.lcssa22, %74 ]
  %147 = phi ptr [ %.lcssa15, %142 ], [ %.lcssa11, %123 ], [ %.lcssa9, %100 ], [ %.lcssa13, %74 ]
  %148 = load i32, ptr @yylineno, align 4, !tbaa !11
  %149 = add nsw i32 %148, -1
  store i32 %149, ptr @yylineno, align 4, !tbaa !11
  br label %150

150:                                              ; preds = %144, %142, %123, %100, %74
  %151 = phi i8 [ %145, %144 ], [ %.lcssa32, %142 ], [ %.lcssa28, %123 ], [ %.lcssa26, %100 ], [ %.lcssa30, %74 ]
  %152 = phi ptr [ %146, %144 ], [ %.lcssa24, %142 ], [ %.lcssa20, %123 ], [ %.lcssa18, %100 ], [ %.lcssa22, %74 ]
  %153 = phi ptr [ %147, %144 ], [ %.lcssa15, %142 ], [ %.lcssa11, %123 ], [ %.lcssa9, %100 ], [ %.lcssa13, %74 ]
  %154 = load ptr, ptr @yysptr, align 8, !tbaa !7
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %155, ptr @yysptr, align 8, !tbaa !7
  store i8 %151, ptr %154, align 1, !tbaa !18
  br label %156

156:                                              ; preds = %150, %26, %22
  %.lcssa16 = phi ptr [ %152, %150 ], [ %14, %26 ], [ %14, %22 ]
  %.lcssa7 = phi ptr [ %153, %150 ], [ %17, %26 ], [ %17, %22 ]
  %157 = icmp ugt ptr %.lcssa16, @yylstate
  br i1 %157, label %158, label %182

158:                                              ; preds = %178, %156
  %159 = phi ptr [ %161, %178 ], [ %.lcssa16, %156 ]
  %160 = phi ptr [ %162, %178 ], [ %.lcssa7, %156 ]
  %161 = getelementptr inbounds ptr, ptr %159, i64 -1
  %162 = getelementptr inbounds i8, ptr %160, i64 -1
  store i8 0, ptr %160, align 1, !tbaa !18
  %163 = load ptr, ptr %161, align 8, !tbaa !7
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.anon, ptr %163, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !25
  store ptr %167, ptr @yyfnd, align 8, !tbaa !7
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = load i32, ptr %167, align 4, !tbaa !11
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %214, label %172

172:                                              ; preds = %169, %165, %158
  %173 = load i8, ptr %162, align 1, !tbaa !18
  %174 = icmp eq i8 %173, 10
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, ptr @yylineno, align 4, !tbaa !11
  %177 = add nsw i32 %176, -1
  store i32 %177, ptr @yylineno, align 4, !tbaa !11
  br label %178

178:                                              ; preds = %175, %172
  %179 = load ptr, ptr @yysptr, align 8, !tbaa !7
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  store ptr %180, ptr @yysptr, align 8, !tbaa !7
  store i8 %173, ptr %179, align 1, !tbaa !18
  %181 = icmp ugt ptr %161, @yylstate
  br i1 %181, label %158, label %182

182:                                              ; preds = %178, %156
  %183 = load i8, ptr @yytext, align 16, !tbaa !18
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store ptr @yysbuf, ptr @yysptr, align 8, !tbaa !7
  br label %305

186:                                              ; preds = %182
  %187 = load ptr, ptr @yysptr, align 8, !tbaa !7
  %188 = icmp ugt ptr %187, @yysbuf
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %187, i64 -1
  store ptr %190, ptr @yysptr, align 8, !tbaa !7
  %191 = load i8, ptr %190, align 1, !tbaa !18
  %192 = sext i8 %191 to i32
  br label %196

193:                                              ; preds = %186
  %194 = load ptr, ptr @yyin, align 8, !tbaa !7
  %195 = tail call i32 @getc(ptr noundef %194) #18
  br label %196

196:                                              ; preds = %193, %189
  %197 = phi i32 [ %192, %189 ], [ %195, %193 ]
  %198 = icmp eq i32 %197, 10
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, ptr @yylineno, align 4, !tbaa !11
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr @yylineno, align 4, !tbaa !11
  br label %202

202:                                              ; preds = %199, %196
  %203 = icmp eq i32 %197, -1
  %204 = trunc i32 %197 to i8
  %205 = select i1 %203, i8 0, i8 %204
  store i8 %205, ptr @yytext, align 16, !tbaa !18
  %206 = sext i8 %205 to i32
  store i32 %206, ptr @yyprevious, align 4, !tbaa !11
  %207 = icmp sgt i8 %205, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %202
  %209 = tail call i32 @putc(i32 noundef %206, ptr noundef null) #18
  %210 = load i32, ptr @yyprevious, align 4, !tbaa !11
  br label %211

211:                                              ; preds = %300, %226, %226, %208, %202
  %212 = phi i32 [ %210, %208 ], [ %206, %202 ], [ %302, %300 ], [ %216, %226 ], [ %216, %226 ]
  %213 = phi i32 [ 0, %208 ], [ 0, %202 ], [ 1, %300 ], [ 1, %226 ], [ 1, %226 ]
  br label %7

214:                                              ; preds = %169
  %.lcssa35 = phi ptr [ %167, %169 ]
  %.lcssa34 = phi ptr [ %161, %169 ]
  %.lcssa33 = phi ptr [ %162, %169 ]
  store ptr %.lcssa34, ptr @yyolsp, align 8, !tbaa !7
  %215 = load i8, ptr %.lcssa33, align 1, !tbaa !18
  %216 = sext i8 %215 to i32
  store i32 %216, ptr @yyprevious, align 4, !tbaa !11
  store ptr %.lcssa34, ptr @yylsp, align 8, !tbaa !7
  %217 = ptrtoint ptr %.lcssa33 to i64
  %218 = sub i64 %217, sext (i32 ptrtoint (ptr @yytext to i32) to i64)
  %219 = shl i64 %218, 32
  %220 = add i64 %219, 4294967296
  %221 = ashr exact i64 %220, 32
  %222 = getelementptr inbounds [8192 x i8], ptr @yytext, i64 0, i64 %221
  store i8 0, ptr %222, align 1, !tbaa !18
  %223 = getelementptr inbounds i32, ptr %.lcssa35, i64 1
  store ptr %223, ptr @yyfnd, align 8, !tbaa !7
  %224 = load i32, ptr %.lcssa35, align 4, !tbaa !11
  %225 = icmp sgt i32 %224, -1
  br i1 %225, label %226, label %303

226:                                              ; preds = %214
  switch i32 %224, label %300 [
    i32 0, label %305
    i32 1, label %303
    i32 2, label %306
    i32 3, label %307
    i32 4, label %308
    i32 5, label %305
    i32 6, label %309
    i32 7, label %310
    i32 8, label %310
    i32 9, label %311
    i32 10, label %312
    i32 11, label %313
    i32 12, label %314
    i32 13, label %227
    i32 14, label %228
    i32 15, label %305
    i32 16, label %229
    i32 17, label %230
    i32 18, label %231
    i32 19, label %232
    i32 20, label %233
    i32 21, label %234
    i32 22, label %303
    i32 23, label %235
    i32 24, label %311
    i32 25, label %236
    i32 26, label %237
    i32 27, label %239
    i32 28, label %241
    i32 29, label %243
    i32 30, label %245
    i32 31, label %247
    i32 32, label %249
    i32 33, label %251
    i32 34, label %253
    i32 35, label %255
    i32 36, label %257
    i32 37, label %259
    i32 38, label %261
    i32 39, label %263
    i32 40, label %265
    i32 41, label %267
    i32 42, label %269
    i32 43, label %271
    i32 44, label %273
    i32 45, label %275
    i32 46, label %277
    i32 47, label %279
    i32 48, label %281
    i32 49, label %283
    i32 50, label %285
    i32 51, label %287
    i32 52, label %289
    i32 53, label %211
    i32 54, label %211
    i32 55, label %291
    i32 56, label %294
  ]

227:                                              ; preds = %226
  br label %314

228:                                              ; preds = %226
  br label %314

229:                                              ; preds = %226
  br label %314

230:                                              ; preds = %226
  br label %314

231:                                              ; preds = %226
  br label %314

232:                                              ; preds = %226
  br label %314

233:                                              ; preds = %226
  br label %314

234:                                              ; preds = %226
  br label %314

235:                                              ; preds = %226
  br label %314

236:                                              ; preds = %226
  br label %314

237:                                              ; preds = %226
  %238 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %238, ptr @yylval, align 8, !tbaa !18
  br label %314

239:                                              ; preds = %226
  %240 = tail call fastcc ptr @ds(ptr noundef nonnull @.str.49) #18
  store ptr %240, ptr @yylval, align 8, !tbaa !18
  br label %314

241:                                              ; preds = %226
  %242 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %242, ptr @yylval, align 8, !tbaa !18
  br label %314

243:                                              ; preds = %226
  %244 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %244, ptr @yylval, align 8, !tbaa !18
  br label %314

245:                                              ; preds = %226
  %246 = tail call fastcc ptr @ds(ptr noundef nonnull @.str.50) #18
  store ptr %246, ptr @yylval, align 8, !tbaa !18
  br label %314

247:                                              ; preds = %226
  %248 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %248, ptr @yylval, align 8, !tbaa !18
  br label %314

249:                                              ; preds = %226
  %250 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %250, ptr @yylval, align 8, !tbaa !18
  br label %314

251:                                              ; preds = %226
  %252 = tail call fastcc ptr @ds(ptr noundef nonnull @.str.51) #18
  store ptr %252, ptr @yylval, align 8, !tbaa !18
  br label %314

253:                                              ; preds = %226
  %254 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %254, ptr @yylval, align 8, !tbaa !18
  br label %314

255:                                              ; preds = %226
  %256 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %256, ptr @yylval, align 8, !tbaa !18
  br label %314

257:                                              ; preds = %226
  %258 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %258, ptr @yylval, align 8, !tbaa !18
  br label %314

259:                                              ; preds = %226
  %260 = tail call fastcc ptr @ds(ptr noundef nonnull @.str.52) #18
  store ptr %260, ptr @yylval, align 8, !tbaa !18
  br label %314

261:                                              ; preds = %226
  %262 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %262, ptr @yylval, align 8, !tbaa !18
  br label %314

263:                                              ; preds = %226
  %264 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %264, ptr @yylval, align 8, !tbaa !18
  br label %314

265:                                              ; preds = %226
  %266 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %266, ptr @yylval, align 8, !tbaa !18
  br label %314

267:                                              ; preds = %226
  %268 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %268, ptr @yylval, align 8, !tbaa !18
  br label %314

269:                                              ; preds = %226
  %270 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %270, ptr @yylval, align 8, !tbaa !18
  br label %314

271:                                              ; preds = %226
  %272 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %272, ptr @yylval, align 8, !tbaa !18
  br label %314

273:                                              ; preds = %226
  %274 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %274, ptr @yylval, align 8, !tbaa !18
  br label %314

275:                                              ; preds = %226
  %276 = tail call fastcc ptr @ds(ptr noundef nonnull @.str.41) #18
  store ptr %276, ptr @yylval, align 8, !tbaa !18
  br label %314

277:                                              ; preds = %226
  %278 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %278, ptr @yylval, align 8, !tbaa !18
  br label %314

279:                                              ; preds = %226
  %280 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %280, ptr @yylval, align 8, !tbaa !18
  br label %314

281:                                              ; preds = %226
  %282 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %282, ptr @yylval, align 8, !tbaa !18
  br label %314

283:                                              ; preds = %226
  %284 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %284, ptr @yylval, align 8, !tbaa !18
  br label %314

285:                                              ; preds = %226
  %286 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %286, ptr @yylval, align 8, !tbaa !18
  br label %314

287:                                              ; preds = %226
  %288 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %288, ptr @yylval, align 8, !tbaa !18
  br label %314

289:                                              ; preds = %226
  %290 = tail call fastcc ptr @ds(ptr noundef nonnull @yytext) #18
  store ptr %290, ptr @yylval, align 8, !tbaa !18
  br label %314

291:                                              ; preds = %226
  %292 = load i8, ptr @yytext, align 16, !tbaa !18
  %293 = sext i8 %292 to i32
  br label %314

294:                                              ; preds = %226
  %295 = load i8, ptr @yytext, align 16, !tbaa !18
  %296 = sext i8 %295 to i32
  tail call fastcc void @visible(i32 noundef %296) #18
  %297 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef nonnull @visible.buf) #18
  %298 = load i8, ptr @yytext, align 16, !tbaa !18
  %299 = sext i8 %298 to i32
  br label %314

300:                                              ; preds = %226
  %301 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef %224) #18
  %302 = load i32, ptr @yyprevious, align 4, !tbaa !11
  br label %211

303:                                              ; preds = %226, %226, %214
  %304 = phi i32 [ 0, %214 ], [ 257, %226 ], [ 257, %226 ]
  br label %314

305:                                              ; preds = %226, %226, %226, %185
  br label %314

306:                                              ; preds = %226
  br label %314

307:                                              ; preds = %226
  br label %314

308:                                              ; preds = %226
  br label %314

309:                                              ; preds = %226
  br label %314

310:                                              ; preds = %226, %226
  br label %314

311:                                              ; preds = %226, %226
  br label %314

312:                                              ; preds = %226
  br label %314

313:                                              ; preds = %226
  br label %314

314:                                              ; preds = %313, %312, %311, %310, %309, %308, %307, %306, %305, %303, %294, %291, %289, %287, %285, %283, %281, %279, %277, %275, %273, %271, %269, %267, %265, %263, %261, %259, %257, %255, %253, %251, %249, %247, %245, %243, %241, %239, %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226
  %315 = phi i32 [ %299, %294 ], [ %293, %291 ], [ 283, %289 ], [ 282, %287 ], [ 276, %285 ], [ 289, %283 ], [ 288, %281 ], [ 287, %279 ], [ 286, %277 ], [ 286, %275 ], [ 293, %273 ], [ 285, %271 ], [ 284, %269 ], [ 292, %267 ], [ 276, %265 ], [ 281, %263 ], [ 280, %261 ], [ 280, %259 ], [ 279, %257 ], [ 291, %255 ], [ 278, %253 ], [ 278, %251 ], [ 277, %249 ], [ 276, %247 ], [ 276, %245 ], [ 275, %243 ], [ 274, %241 ], [ 274, %239 ], [ 290, %237 ], [ 260, %236 ], [ 262, %235 ], [ 273, %234 ], [ 272, %233 ], [ 271, %232 ], [ 271, %231 ], [ 270, %230 ], [ 270, %229 ], [ 269, %228 ], [ 269, %227 ], [ %304, %303 ], [ 0, %305 ], [ 258, %306 ], [ 259, %307 ], [ 261, %308 ], [ 263, %309 ], [ 264, %310 ], [ 265, %311 ], [ 266, %312 ], [ 268, %313 ], [ 267, %226 ]
  ret i32 %315
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @prompt() unnamed_addr #11 {
  %1 = load i32, ptr @OnATty, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 0
  %3 = load i1, ptr @Interactive, align 4
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  %6 = load i1, ptr @prompting, align 4
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr @progname, align 8, !tbaa !7
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %9) #18
  %11 = load ptr, ptr @stdout, align 8, !tbaa !7
  %12 = tail call i32 @fflush(ptr noundef %11) #18
  br label %13

13:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @dohelp() unnamed_addr #11 {
  %1 = load i1, ptr @CplusplusFlag, align 4
  %2 = select i1 %1, ptr @.str.98, ptr @.str.99
  br label %5

3:                                                ; preds = %14
  %4 = load i1, ptr @CplusplusFlag, align 4
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i1 [ %4, %3 ], [ %1, %0 ]
  %7 = phi ptr [ %18, %3 ], [ @.str.72, %0 ]
  %8 = phi ptr [ %17, %3 ], [ @helptext, %0 ]
  br i1 %6, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.helpstruct, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %5
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi ptr [ %7, %13 ], [ %11, %9 ]
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull %15) #18
  %17 = getelementptr inbounds %struct.helpstruct, ptr %8, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3

20:                                               ; preds = %14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @dodeclare(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load i8, ptr @prev, align 1, !tbaa !18
  %7 = icmp eq i8 %6, 118
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #18
  br label %9

9:                                                ; preds = %8, %5
  %10 = load i8, ptr %1, align 1, !tbaa !18
  %11 = icmp eq i8 %10, 114
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i8, ptr @prev, align 1, !tbaa !18
  switch i8 %13, label %26 [
    i8 102, label %16
    i8 65, label %14
    i8 97, label %14
    i8 115, label %15
  ]

14:                                               ; preds = %12, %12
  br label %16

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %15, %14, %12
  %17 = phi ptr [ @.str.132, %15 ], [ @.str.131, %14 ], [ @.str.130, %12 ]
  %18 = load i1, ptr @CplusplusFlag, align 4
  %19 = select i1 %18, ptr @.str.66, ptr @.str.15
  %20 = load ptr, ptr @stdout, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull %19, ptr noundef nonnull %17) #18
  %22 = load i8, ptr %1, align 1, !tbaa !18
  br label %23

23:                                               ; preds = %16, %9
  %24 = phi i8 [ %22, %16 ], [ %10, %9 ]
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %12
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, ptr noundef nonnull %1) #18
  br label %28

28:                                               ; preds = %26, %23
  %29 = icmp eq ptr %0, null
  %30 = load i8, ptr @prev, align 1
  %31 = icmp eq i8 %30, 102
  %32 = select i1 %31, ptr @.str.135, ptr @.str.136
  %33 = select i1 %29, ptr %32, ptr %0
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, ptr noundef %4, ptr noundef %2, ptr noundef nonnull %33, ptr noundef %3) #18
  %35 = load i1, ptr @MkProgramFlag, align 4
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i8, ptr @prev, align 1, !tbaa !18
  %38 = icmp eq i8 %37, 102
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i8, ptr %1, align 1, !tbaa !18
  %41 = icmp eq i8 %40, 101
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.178)
  br label %48

44:                                               ; preds = %39, %36
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %48

46:                                               ; preds = %28
  %47 = tail call i32 @putchar(i32 10)
  br label %48

48:                                               ; preds = %46, %44, %42
  tail call void @free(ptr noundef nonnull %1) #17
  tail call void @free(ptr noundef %2) #17
  tail call void @free(ptr noundef %3) #17
  tail call void @free(ptr noundef %4) #17
  br i1 %29, label %50, label %49

49:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %0) #17
  br label %50

50:                                               ; preds = %49, %48
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @docast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %6 = trunc i64 %5 to i32
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %8 = trunc i64 %7 to i32
  %9 = load i8, ptr @prev, align 1
  %10 = icmp eq i8 %9, 102
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123) #18
  br label %16

12:                                               ; preds = %4
  %13 = and i8 %9, -33
  %14 = icmp eq i8 %13, 65
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125) #18
  br label %16

16:                                               ; preds = %15, %12, %11
  %17 = sub i32 0, %8
  %18 = icmp eq i32 %6, %17
  %19 = add nsw i32 %6, 1
  %20 = select i1 %18, i32 0, i32 %19
  %21 = icmp eq ptr %0, null
  %22 = select i1 %21, ptr @.str.127, ptr %0
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.126, ptr noundef %3, i32 noundef %20, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %22) #18
  tail call void @free(ptr noundef %1) #17
  tail call void @free(ptr noundef %2) #17
  tail call void @free(ptr noundef %3) #17
  br i1 %21, label %25, label %24

24:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %0) #17
  br label %25

25:                                               ; preds = %24, %16
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @dodexplain(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #11 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(5) @.str.40) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i8, ptr @prev, align 1, !tbaa !18
  switch i8 %10, label %14 [
    i8 110, label %11
    i8 97, label %12
    i8 114, label %13
  ]

11:                                               ; preds = %9
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129) #18
  br label %14

12:                                               ; preds = %9
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #18
  br label %14

13:                                               ; preds = %9
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.31) #18
  br label %14

14:                                               ; preds = %13, %12, %11, %9, %6, %4
  %15 = load i8, ptr %0, align 1, !tbaa !18
  %16 = icmp eq i8 %15, 114
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i8, ptr @prev, align 1, !tbaa !18
  switch i8 %18, label %27 [
    i8 102, label %21
    i8 65, label %19
    i8 97, label %19
    i8 115, label %20
  ]

19:                                               ; preds = %17, %17
  br label %21

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %19, %17
  %22 = phi ptr [ @.str.131, %19 ], [ @.str.143, %20 ], [ @.str.130, %17 ]
  %23 = load i1, ptr @CplusplusFlag, align 4
  %24 = select i1 %23, ptr @.str.66, ptr @.str.15
  %25 = load ptr, ptr @stdout, align 8, !tbaa !7
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull %24, ptr noundef nonnull %22) #18
  br label %27

27:                                               ; preds = %21, %17, %14
  %28 = load ptr, ptr @savedname, align 8, !tbaa !7
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.144, ptr noundef %28) #18
  %30 = load i8, ptr %0, align 1, !tbaa !18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, ptr noundef nonnull %0) #18
  br label %34

34:                                               ; preds = %32, %27
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.145, ptr noundef %3) #18
  %36 = load i8, ptr %1, align 1, !tbaa !18
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, ptr noundef nonnull %1) #18
  br label %40

40:                                               ; preds = %38, %34
  %41 = select i1 %5, ptr @.str.52, ptr %2
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) %41)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @docexplain(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 {
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.40) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i8, ptr @prev, align 1, !tbaa !18
  switch i8 %8, label %11 [
    i8 97, label %9
    i8 114, label %10
  ]

9:                                                ; preds = %7
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #18
  br label %11

10:                                               ; preds = %7
  tail call fastcc void @unsupp(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.31) #18
  br label %11

11:                                               ; preds = %10, %9, %7, %4
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, ptr noundef %3, ptr noundef %2) #18
  %13 = load i8, ptr %0, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, ptr noundef nonnull %0) #18
  br label %17

17:                                               ; preds = %15, %11
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) %1)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @doset(ptr noundef %0) unnamed_addr #11 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.147) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i1 true, ptr @MkProgramFlag, align 4
  br label %75

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.148) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i1 false, ptr @MkProgramFlag, align 4
  br label %75

9:                                                ; preds = %5
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.149) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i1 true, ptr @Interactive, align 4
  br label %75

13:                                               ; preds = %9
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.150) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i1 false, ptr @Interactive, align 4
  store i32 0, ptr @OnATty, align 4, !tbaa !11
  br label %75

17:                                               ; preds = %13
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.151) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i1 false, ptr @CplusplusFlag, align 4
  store i1 true, ptr @RitchieFlag, align 4
  store i1 false, ptr @PreANSIFlag, align 4
  br label %75

21:                                               ; preds = %17
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.152) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i1 false, ptr @CplusplusFlag, align 4
  store i1 false, ptr @RitchieFlag, align 4
  store i1 true, ptr @PreANSIFlag, align 4
  br label %75

25:                                               ; preds = %21
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.153) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i1 false, ptr @CplusplusFlag, align 4
  store i1 false, ptr @RitchieFlag, align 4
  store i1 false, ptr @PreANSIFlag, align 4
  br label %75

29:                                               ; preds = %25
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.154) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i1 true, ptr @CplusplusFlag, align 4
  store i1 false, ptr @RitchieFlag, align 4
  store i1 false, ptr @PreANSIFlag, align 4
  br label %75

33:                                               ; preds = %29
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @unknown_name) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.155) #16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.156, ptr noundef %0) #18
  br label %41

41:                                               ; preds = %39, %36, %33
  %42 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.179)
  %43 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.180)
  %44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.181)
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.182)
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.183)
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.184)
  %48 = load i1, ptr @MkProgramFlag, align 4
  %49 = select i1 %48, ptr @.str.164, ptr @.str.165
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.163, ptr noundef nonnull %49) #18
  %51 = load i32, ptr @OnATty, align 4, !tbaa !11
  %52 = icmp ne i32 %51, 0
  %53 = load i1, ptr @Interactive, align 4
  %54 = select i1 %52, i1 true, i1 %53
  %55 = select i1 %54, ptr @.str.164, ptr @.str.165
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.166, ptr noundef nonnull %55) #18
  %57 = load i1, ptr @RitchieFlag, align 4
  %58 = select i1 %57, ptr @str.192, ptr @str.185
  %59 = tail call i32 @puts(ptr nonnull dereferenceable(1) %58)
  %60 = load i1, ptr @PreANSIFlag, align 4
  %61 = select i1 %60, ptr @str.191, ptr @str.186
  %62 = tail call i32 @puts(ptr nonnull dereferenceable(1) %61)
  %63 = load i1, ptr @RitchieFlag, align 4
  %64 = load i1, ptr @PreANSIFlag, align 4
  %65 = select i1 %63, i1 true, i1 %64
  %66 = load i1, ptr @CplusplusFlag, align 4
  %67 = select i1 %65, i1 true, i1 %66
  %68 = select i1 %67, ptr @str.190, ptr @str.187
  %69 = tail call i32 @puts(ptr nonnull dereferenceable(1) %68)
  %70 = load i1, ptr @CplusplusFlag, align 4
  br i1 %70, label %71, label %73

71:                                               ; preds = %41
  %72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.189)
  br label %75

73:                                               ; preds = %41
  %74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.188)
  br label %75

75:                                               ; preds = %73, %71, %32, %28, %24, %20, %16, %12, %8, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @ds(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  %3 = add i64 %2, 1
  %4 = and i64 %3, 4294967295
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %0) #17
  ret ptr %5

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = load ptr, ptr @progname, align 8, !tbaa !7
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.70, ptr noundef %11) #21
  tail call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cat(ptr noundef %0, ...) unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @llvm.va_start(ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 16
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 16
  %9 = load ptr, ptr %6, align 8
  br label %10

10:                                               ; preds = %25, %4
  %11 = phi ptr [ %9, %4 ], [ %26, %25 ]
  %12 = phi ptr [ %0, %4 ], [ %29, %25 ]
  %13 = phi i32 [ 1, %4 ], [ %17, %25 ]
  %14 = phi i32 [ %5, %4 ], [ %27, %25 ]
  %15 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #16
  %16 = trunc i64 %15 to i32
  %17 = add i32 %13, %16
  %18 = icmp ult i32 %14, 41
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = zext i32 %14 to i64
  %21 = getelementptr i8, ptr %8, i64 %20
  %22 = add nuw nsw i32 %14, 8
  store i32 %22, ptr %2, align 16
  br label %25

23:                                               ; preds = %10
  %24 = getelementptr i8, ptr %11, i64 8
  store ptr %24, ptr %6, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %11, %19 ], [ %24, %23 ]
  %27 = phi i32 [ %22, %19 ], [ %14, %23 ]
  %28 = phi ptr [ %21, %19 ], [ %11, %23 ]
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10

31:                                               ; preds = %25
  %.lcssa = phi i32 [ %17, %25 ]
  %32 = zext i32 %.lcssa to i64
  br label %33

33:                                               ; preds = %31, %1
  %34 = phi i64 [ 1, %1 ], [ %32, %31 ]
  call void @llvm.va_end(ptr nonnull %2)
  %35 = call noalias ptr @malloc(i64 noundef %34) #24
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load ptr, ptr @stderr, align 8, !tbaa !7
  %39 = load ptr, ptr @progname, align 8, !tbaa !7
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.69, ptr noundef %39) #21
  call void @exit(i32 noundef 1) #19
  unreachable

41:                                               ; preds = %33
  store i8 0, ptr %35, align 1, !tbaa !18
  call void @llvm.va_start(ptr nonnull %2)
  br i1 %3, label %62, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %44 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %45

45:                                               ; preds = %58, %42
  %46 = phi ptr [ %0, %42 ], [ %60, %58 ]
  %47 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %46) #17
  call void @free(ptr noundef nonnull %46) #17
  %48 = load i32, ptr %2, align 16
  %49 = icmp ult i32 %48, 41
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load ptr, ptr %44, align 16
  %52 = zext i32 %48 to i64
  %53 = getelementptr i8, ptr %51, i64 %52
  %54 = add nuw nsw i32 %48, 8
  store i32 %54, ptr %2, align 16
  br label %58

55:                                               ; preds = %45
  %56 = load ptr, ptr %43, align 8
  %57 = getelementptr i8, ptr %56, i64 8
  store ptr %57, ptr %43, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = phi ptr [ %53, %50 ], [ %56, %55 ]
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %45

62:                                               ; preds = %58, %41
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret ptr %35
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @unsupp(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i1, ptr @CplusplusFlag, align 4
  %4 = select i1 %3, ptr @.str.66, ptr @.str.15
  %5 = load ptr, ptr @stdout, align 8, !tbaa !7
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.15, ptr noundef nonnull %4, ptr noundef %0) #18
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.64, ptr noundef nonnull %1) #21
  br label %11

11:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mbcheck() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %55, %0
  %2 = phi i64 [ 1, %0 ], [ %56, %55 ]
  %3 = load i32, ptr @modbits, align 4, !tbaa !11
  %4 = getelementptr inbounds [9 x %struct.anon.0], ptr @crosstypes, i64 0, i64 %2
  %5 = getelementptr inbounds [9 x %struct.anon.0], ptr @crosstypes, i64 0, i64 %2, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = and i32 %6, %3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %52, %1
  %10 = phi i64 [ %53, %52 ], [ 0, %1 ]
  %11 = load i32, ptr @modbits, align 4, !tbaa !11
  %12 = getelementptr inbounds [9 x %struct.anon.0], ptr @crosstypes, i64 0, i64 %10
  %13 = getelementptr inbounds [9 x %struct.anon.0], ptr @crosstypes, i64 0, i64 %10, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !29
  %15 = and i32 %14, %11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds [9 x [9 x i8]], ptr @crosscheck, i64 0, i64 %2, i64 %10
  %19 = load i8, ptr %18, align 1, !tbaa !18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 16, !tbaa !31
  %23 = load ptr, ptr %12, align 16, !tbaa !31
  switch i8 %19, label %34 [
    i8 1, label %41
    i8 2, label %24
    i8 3, label %26
    i8 4, label %30
  ]

24:                                               ; preds = %21
  %25 = load i1, ptr @RitchieFlag, align 4
  br i1 %25, label %41, label %52

26:                                               ; preds = %21
  %27 = load i1, ptr @PreANSIFlag, align 4
  %28 = load i1, ptr @RitchieFlag, align 4
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %41, label %52

30:                                               ; preds = %21
  %31 = load i1, ptr @RitchieFlag, align 4
  %32 = load i1, ptr @PreANSIFlag, align 4
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %52, label %41

34:                                               ; preds = %21
  %.lcssa2 = phi i64 [ %2, %21 ]
  %.lcssa1 = phi i8 [ %19, %21 ]
  %.lcssa = phi i64 [ %10, %21 ]
  %35 = trunc i64 %.lcssa2 to i32
  %36 = trunc i64 %.lcssa to i32
  %37 = sext i8 %.lcssa1 to i32
  %38 = load ptr, ptr @stderr, align 8, !tbaa !7
  %39 = load ptr, ptr @progname, align 8, !tbaa !7
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.63, ptr noundef %39, i32 noundef %35, i32 noundef %36, i32 noundef %37) #21
  tail call void @exit(i32 noundef 1) #19
  unreachable

41:                                               ; preds = %30, %26, %24, %21
  %42 = phi ptr [ @.str.15, %21 ], [ @.str.47, %24 ], [ @.str.46, %26 ], [ @.str.62, %30 ]
  %43 = icmp eq ptr %23, null
  %44 = load i1, ptr @CplusplusFlag, align 4
  %45 = select i1 %44, ptr @.str.66, ptr @.str.15
  br i1 %43, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr @stderr, align 8, !tbaa !7
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.65, ptr noundef nonnull %42, ptr noundef nonnull %45, ptr noundef %22, ptr noundef nonnull %23) #21
  br label %52

49:                                               ; preds = %41
  %50 = load ptr, ptr @stdout, align 8, !tbaa !7
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.67, ptr noundef nonnull %42, ptr noundef nonnull %45, ptr noundef %22) #18
  br label %52

52:                                               ; preds = %49, %46, %30, %26, %24, %17, %9
  %53 = add nuw nsw i64 %10, 1
  %54 = icmp eq i64 %53, %2
  br i1 %54, label %55, label %9

55:                                               ; preds = %52, %1
  %56 = add nuw nsw i64 %2, 1
  %57 = icmp eq i64 %56, 9
  br i1 %57, label %58, label %1

58:                                               ; preds = %55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @visible(i32 noundef %0) unnamed_addr #11 {
  %2 = and i32 %0, 255
  %3 = tail call ptr @__ctype_b_loc() #20
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !14
  %8 = and i16 %7, 16384
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = trunc i32 %0 to i8
  store i8 %11, ptr @visible.buf, align 1, !tbaa !18
  store i8 0, ptr getelementptr inbounds ([5 x i8], ptr @visible.buf, i64 0, i64 1), align 1, !tbaa !18
  br label %14

12:                                               ; preds = %1
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @visible.buf, ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %2) #17
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(none) }
attributes #21 = { cold optsize }
attributes #22 = { cold }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize allocsize(0) }

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
!13 = !{i32 0, i32 2}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !9, i64 0}
!16 = !{i64 0, i64 8, !7, i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7}
!17 = !{i32 -128, i32 294}
!18 = !{!9, !9, i64 0}
!19 = !{!20, !8, i64 0}
!20 = !{!"yysvf", !8, i64 0, !8, i64 8, !8, i64 16}
!21 = !{!20, !8, i64 8}
!22 = !{!23, !9, i64 0}
!23 = !{!"yywork", !9, i64 0, !9, i64 1}
!24 = !{!23, !9, i64 1}
!25 = !{!20, !8, i64 16}
!26 = !{!27, !8, i64 8}
!27 = !{!"helpstruct", !8, i64 0, !8, i64 8}
!28 = !{!27, !8, i64 0}
!29 = !{!30, !12, i64 8}
!30 = !{!"", !8, i64 0, !12, i64 8}
!31 = !{!30, !8, i64 0}
