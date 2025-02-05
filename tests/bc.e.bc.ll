; ModuleID = 'bc.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.YYSTYPE = type { ptr, i8, i32, ptr }
%struct.program_counter = type { i32, i32 }
%struct.bc_struct = type { i32, i32, i32, i32, [1024 x i8] }
%struct.arg_list = type { i32, ptr }
%struct.bc_function = type { i8, [16 x ptr], i32, ptr, ptr, ptr }
%struct.bc_label_group = type { [64 x i64], ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.id_rec = type { ptr, i32, i32, i32, i16, ptr, ptr }
%struct.estack_rec = type { ptr, ptr }
%struct.bc_var_array = type { ptr, i8, ptr }
%struct.stk_rec = type { i64, ptr }
%struct.bc_array = type { ptr, i16 }
%struct.bc_array_node = type { [16 x ptr], [16 x ptr] }

@yyexca = internal unnamed_addr constant [10 x i16] [i16 -1, i16 1, i16 0, i16 -1, i16 257, i16 6, i16 59, i16 6, i16 -2, i16 0], align 16
@yyact = internal unnamed_addr constant [706 x i16] [i16 27, i16 65, i16 149, i16 145, i16 48, i16 25, i16 57, i16 45, i16 58, i16 46, i16 105, i16 135, i16 41, i16 125, i16 86, i16 86, i16 38, i16 66, i16 34, i16 35, i16 141, i16 109, i16 53, i16 54, i16 36, i16 6, i16 134, i16 11, i16 159, i16 88, i16 104, i16 48, i16 150, i16 27, i16 136, i16 62, i16 62, i16 62, i16 25, i16 142, i16 126, i16 63, i16 151, i16 127, i16 125, i16 118, i16 115, i16 162, i16 139, i16 124, i16 8, i16 117, i16 59, i16 60, i16 108, i16 61, i16 40, i16 102, i16 48, i16 84, i16 82, i16 72, i16 71, i16 70, i16 69, i16 68, i16 27, i16 67, i16 51, i16 49, i16 23, i16 25, i16 75, i16 76, i16 77, i16 78, i16 79, i16 81, i16 74, i16 83, i16 87, i16 73, i16 92, i16 21, i16 91, i16 163, i16 140, i16 119, i16 63, i16 153, i16 96, i16 98, i16 152, i16 89, i16 56, i16 99, i16 100, i16 101, i16 27, i16 129, i16 64, i16 106, i16 107, i16 25, i16 52, i16 144, i16 40, i16 128, i16 164, i16 113, i16 110, i16 155, i16 112, i16 137, i16 50, i16 4, i16 21, i16 3, i16 2, i16 95, i16 116, i16 94, i16 148, i16 103, i16 80, i16 1, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 130, i16 131, i16 98, i16 0, i16 21, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 27, i16 0, i16 0, i16 143, i16 0, i16 25, i16 0, i16 0, i16 0, i16 110, i16 27, i16 0, i16 98, i16 0, i16 0, i16 25, i16 0, i16 0, i16 47, i16 0, i16 157, i16 160, i16 0, i16 138, i16 154, i16 21, i16 0, i16 110, i16 0, i16 113, i16 0, i16 0, i16 0, i16 0, i16 146, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 27, i16 156, i16 0, i16 0, i16 0, i16 25, i16 0, i16 147, i16 21, i16 0, i16 85, i16 161, i16 37, i16 165, i16 55, i16 0, i16 0, i16 133, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 158, i16 29, i16 47, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 5, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 7, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 55, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 39, i16 0, i16 0, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 0, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 45, i16 33, i16 46, i16 0, i16 36, i16 24, i16 90, i16 28, i16 26, i16 123, i16 0, i16 45, i16 29, i16 46, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 122, i16 36, i16 45, i16 121, i16 46, i16 45, i16 45, i16 46, i16 46, i16 0, i16 0, i16 120, i16 48, i16 0, i16 111, i16 0, i16 45, i16 0, i16 46, i16 0, i16 45, i16 0, i16 46, i16 48, i16 0, i16 0, i16 24, i16 0, i16 132, i16 26, i16 93, i16 0, i16 45, i16 29, i16 46, i16 0, i16 45, i16 30, i16 46, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 0, i16 36, i16 0, i16 48, i16 0, i16 0, i16 48, i16 48, i16 0, i16 24, i16 0, i16 97, i16 26, i16 0, i16 0, i16 0, i16 29, i16 48, i16 0, i16 0, i16 30, i16 48, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 48, i16 36, i16 0, i16 0, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 42, i16 43, i16 0, i16 47, i16 0, i16 44, i16 47, i16 47, i16 44, i16 44, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 43, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 0, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44], align 16
@yypact = internal unnamed_addr constant [166 x i16] [i16 -1000, i16 -7, i16 -1000, i16 -43, i16 -1000, i16 58, i16 -1000, i16 -250, i16 -1000, i16 -1000, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 29, i16 -1000, i16 28, i16 -1000, i16 26, i16 -1000, i16 -259, i16 162, i16 162, i16 -1000, i16 162, i16 -3, i16 -261, i16 27, i16 25, i16 24, i16 23, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 26, i16 -1000, i16 -1000, i16 21, i16 -1000, i16 -1000, i16 162, i16 162, i16 162, i16 162, i16 162, i16 162, i16 20, i16 162, i16 19, i16 -45, i16 -1000, i16 87, i16 152, i16 -1000, i16 -1000, i16 409, i16 -1000, i16 435, i16 245, i16 162, i16 -1000, i16 -50, i16 -1000, i16 162, i16 162, i16 162, i16 16, i16 -1000, i16 -252, i16 162, i16 162, i16 -36, i16 -90, i16 -90, i16 -63, i16 -63, i16 13, i16 423, i16 162, i16 419, i16 162, i16 26, i16 87, i16 -1000, i16 -1000, i16 2, i16 -1000, i16 423, i16 162, i16 -1000, i16 10, i16 1, i16 423, i16 -4, i16 364, i16 408, i16 405, i16 375, i16 -1000, i16 8, i16 0, i16 -51, i16 409, i16 439, i16 -1000, i16 -16, i16 423, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 152, i16 -36, i16 -1000, i16 212, i16 126, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -97, i16 -251, i16 -59, i16 -1000, i16 87, i16 7, i16 -1000, i16 423, i16 -5, i16 -1000, i16 -237, i16 -52, i16 -1000, i16 162, i16 -274, i16 87, i16 116, i16 -279, i16 -61, i16 -17, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -252, i16 -1000, i16 -1000, i16 87, i16 26, i16 -31, i16 162, i16 -1000, i16 -44, i16 -1000, i16 -1000, i16 6, i16 -40, i16 -1000, i16 -1000, i16 87, i16 -1000], align 16
@yypgo = internal unnamed_addr constant [33 x i16] [i16 0, i16 125, i16 27, i16 124, i16 70, i16 21, i16 123, i16 122, i16 30, i16 121, i16 119, i16 118, i16 117, i16 22, i16 50, i16 115, i16 23, i16 114, i16 113, i16 111, i16 108, i16 107, i16 105, i16 104, i16 99, i16 94, i16 29, i16 93, i16 92, i16 89, i16 82, i16 81, i16 78], align 16
@yyr1 = internal unnamed_addr constant [98 x i16] [i16 0, i16 1, i16 1, i16 11, i16 11, i16 11, i16 12, i16 12, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 16, i16 16, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 17, i16 18, i16 19, i16 20, i16 14, i16 21, i16 14, i16 23, i16 24, i16 14, i16 14, i16 25, i16 14, i16 26, i16 26, i16 27, i16 27, i16 22, i16 28, i16 22, i16 29, i16 15, i16 6, i16 6, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 10, i16 10, i16 5, i16 5, i16 3, i16 3, i16 30, i16 2, i16 31, i16 2, i16 32, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 16
@yyr2 = internal unnamed_addr constant [98 x i16] [i16 0, i16 0, i16 2, i16 2, i16 1, i16 2, i16 0, i16 1, i16 3, i16 2, i16 0, i16 1, i16 2, i16 3, i16 2, i16 3, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 0, i16 0, i16 0, i16 0, i16 13, i16 0, i16 7, i16 0, i16 0, i16 7, i16 3, i16 0, i16 3, i16 1, i16 3, i16 1, i16 1, i16 0, i16 0, i16 3, i16 0, i16 12, i16 0, i16 1, i16 0, i16 3, i16 3, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 0, i16 1, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 2, i16 1, i16 1, i16 3, i16 4, i16 2, i16 2, i16 4, i16 4, i16 4, i16 3, i16 1, i16 4, i16 1, i16 1, i16 1, i16 1], align 16
@yychk = internal unnamed_addr constant [166 x i16] [i16 -1000, i16 -1, i16 -11, i16 -12, i16 -15, i16 256, i16 -16, i16 268, i16 -14, i16 283, i16 288, i16 -2, i16 261, i16 269, i16 286, i16 270, i16 284, i16 272, i16 273, i16 274, i16 275, i16 123, i16 287, i16 -4, i16 260, i16 45, i16 263, i16 40, i16 262, i16 267, i16 271, i16 276, i16 278, i16 282, i16 279, i16 280, i16 285, i16 257, i16 59, i16 257, i16 -14, i16 262, i16 258, i16 259, i16 266, i16 43, i16 45, i16 264, i16 94, i16 40, i16 -17, i16 40, i16 -23, i16 -13, i16 -16, i16 256, i16 -25, i16 265, i16 267, i16 -2, i16 -2, i16 -2, i16 40, i16 91, i16 -4, i16 262, i16 278, i16 40, i16 40, i16 40, i16 40, i16 -16, i16 40, i16 -31, i16 -32, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -3, i16 -2, i16 40, i16 -2, i16 40, i16 257, i16 59, i16 125, i16 -26, i16 -27, i16 261, i16 -2, i16 -30, i16 41, i16 -9, i16 -10, i16 -2, i16 262, i16 -2, i16 -2, i16 -2, i16 -2, i16 41, i16 -6, i16 -8, i16 262, i16 -2, i16 -2, i16 41, i16 -5, i16 -2, i16 41, i16 -2, i16 -16, i16 -14, i16 44, i16 -2, i16 41, i16 44, i16 91, i16 93, i16 41, i16 41, i16 41, i16 41, i16 44, i16 91, i16 59, i16 -21, i16 -24, i16 -26, i16 -2, i16 262, i16 93, i16 123, i16 262, i16 93, i16 -18, i16 -14, i16 41, i16 91, i16 257, i16 91, i16 -5, i16 -22, i16 277, i16 -14, i16 93, i16 -7, i16 281, i16 93, i16 59, i16 -28, i16 -29, i16 -8, i16 -19, i16 -14, i16 -13, i16 257, i16 59, i16 -5, i16 257, i16 41, i16 125, i16 -20, i16 -14], align 16
@yydef = internal unnamed_addr constant [166 x i16] [i16 1, i16 -2, i16 2, i16 0, i16 4, i16 0, i16 7, i16 0, i16 16, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 28, i16 0, i16 35, i16 10, i16 39, i16 82, i16 0, i16 0, i16 83, i16 0, i16 92, i16 0, i16 0, i16 0, i16 96, i16 0, i16 94, i16 95, i16 97, i16 3, i16 9, i16 5, i16 17, i16 0, i16 71, i16 73, i16 0, i16 0, i16 0, i16 0, i16 0, i16 67, i16 0, i16 0, i16 0, i16 0, i16 11, i16 0, i16 0, i16 69, i16 87, i16 75, i16 81, i16 0, i16 59, i16 0, i16 86, i16 92, i16 96, i16 0, i16 0, i16 0, i16 0, i16 8, i16 50, i16 0, i16 0, i16 76, i16 77, i16 78, i16 79, i16 80, i16 0, i16 68, i16 65, i16 0, i16 0, i16 12, i16 14, i16 38, i16 40, i16 41, i16 43, i16 44, i16 0, i16 84, i16 0, i16 60, i16 61, i16 92, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 51, i16 55, i16 72, i16 74, i16 27, i16 0, i16 66, i16 33, i16 36, i16 13, i16 15, i16 0, i16 70, i16 85, i16 0, i16 0, i16 93, i16 88, i16 89, i16 90, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 42, i16 63, i16 92, i16 62, i16 0, i16 57, i16 56, i16 65, i16 45, i16 0, i16 0, i16 52, i16 0, i16 0, i16 34, i16 46, i16 37, i16 64, i16 48, i16 0, i16 58, i16 30, i16 0, i16 10, i16 0, i16 65, i16 47, i16 0, i16 53, i16 54, i16 0, i16 12, i16 31, i16 49, i16 0, i16 32], align 16
@yychar = internal unnamed_addr global i32 -1, align 4
@yynerrs = internal unnamed_addr global i32 0, align 4
@yyerrflag = internal unnamed_addr global i16 0, align 2
@yyv = internal unnamed_addr global [150 x %struct.YYSTYPE] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yyval = internal unnamed_addr global %struct.YYSTYPE zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"comparison in expression\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Break outside a for/while\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"J%1d:\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Continue statement\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Continue outside a for\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"0R\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Comparison in first for expression\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"N%1d:\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pN%1d:\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"B%1d:J%1d:\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Comparison in third for expression\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"J%1d:N%1d:\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"pJ%1d:N%1d:\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Z%1d:\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"print statement\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"else clause in if statement\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"J%d:N%1d:\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"F%d,%s.%s[\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"0R]\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"comparison in argument\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"K%d:\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"Missing expression in for statement\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"comparison in return expresion\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"DL%d:\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"l%d:\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"comparison in assignment\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"S%d:\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"s%d:\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"&& operator\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"DZ%d:p\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"DZ%d:p1N%d:\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"|| operator\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"B%d:\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"B%d:0J%d:N%d:1N%d:\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"! operator\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"L%d:\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"C%d,%s:\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"C%d:\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"DA%d:L%d:\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"DM%d:L%d:\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"i%d:l%d:\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"d%d:l%d:\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"DL%d:x\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"A%d:\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"M%d:\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"i%d:\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"d%d:\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"cL\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"cR\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"cS\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"read function\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"cI\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"comparison in subscript\00", align 1
@had_sigint = internal unnamed_addr global i1 false, align 4
@.str.1.1 = private unnamed_addr constant [22 x i8] c"interrupted execution\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Function %s not defined.\00", align 1
@.str.3.2 = private unnamed_addr constant [26 x i8] c"Return from main program.\00", align 1
@.str.4.3 = private unnamed_addr constant [33 x i8] c"Square root of a negative number\00", align 1
@.str.5.4 = private unnamed_addr constant [15 x i8] c"Divide by zero\00", align 1
@.str.6.5 = private unnamed_addr constant [15 x i8] c"Modulo by zero\00", align 1
@.str.7.6 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.8.7 = private unnamed_addr constant [25 x i8] c"bad instruction: inst=%c\00", align 1
@str = private unnamed_addr constant [24 x i8] c"Interruption completed.\00", align 1
@switch.table.execute = private unnamed_addr constant [13 x i8] c"\\\0A\0A\07\0A\0C\0A\0A\0A\0A\0A\0D\09", align 1
@if_label = internal unnamed_addr global i32 0, align 4
@genstr = internal global [80 x i8] zeroinitializer, align 16
@load_adr = internal unnamed_addr global %struct.program_counter zeroinitializer, align 8
@load_str = internal unnamed_addr global i1 false, align 1
@load_const = internal unnamed_addr global i1 false, align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Function too big.\00", align 1
@.str.1.41 = private unnamed_addr constant [18 x i8] c"Program too big.\0A\00", align 1
@use_math = internal unnamed_addr global i1 false, align 1
@interactive = internal unnamed_addr global i8 0, align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"lcisvw\00", align 1
@first_file = internal unnamed_addr global i1 false, align 1
@.str.4.85 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5.86 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.6.87 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7.88 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.9.90 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@libmath = internal constant [2140 x i8] c"@iK20:s2:p@r@iF1,4.5,6,7,8,9,10,11,12[l4:0<Z0:1s10:pl4:ns4:pN0:l2:s12:pK4:l12:+K.44:l4:*+s2:pN1:l4:1>Z2:l8:1+s8:pl4:K2:/s4:pJ1:N2:1l4:+s11:pl4:s5:p1s6:pK2:s9:pN4:1B5:J3:N6:l9:i9:pJ4:N5:l5:l4:*s5:l6:l9:*s6:/s7:pl7:0=Z7:l8:0>Z8:N9:l8:d8:Z10:l11:l11:*s11:pJ9:N10:N8:l12:s2:pl10:Z11:1l11:/RN11:l11:1/RN7:l11:l7:+s11:pJ6:N3:0R]@r@iF2,4.7,8,9,10,13,11,12[l4:0{Z0:1K10:l2:^-RN0:l2:s12:pl2:K4:+s2:pK2:s8:p0s9:pN1:l4:K2:}Z2:l8:K2:*s8:pl4:cRs4:pJ1:N2:N3:l4:K.5:{Z4:l8:K2:*s8:pl4:cRs4:pJ3:N4:l4:1-l4:1+/s13:s11:pl13:l13:*s10:pK3:s9:pN6:1B7:J5:N8:l9:K2:+s9:pJ6:N7:l13:l10:*s13:l9:/s7:pl7:0=Z9:l8:l11:*s11:pl12:s2:pl11:1/RN9:l11:l7:+s11:pJ8:N5:0R]@r@iF3,4.7,9,10,13,14,11,12[l2:s12:pK1.1:l12:*1+s2:p1C4,0:s11:pl4:0<Z0:1s10:pl4:ns4:pN0:0s2:pl4:l11:/K2:+K4:/s13:pl4:K4:l13:*l11:*-s4:pl13:K2:%Z1:l4:ns4:pN1:l12:K2:+s2:pl4:s7:s11:pl4:nl4:*s14:pK3:s9:pN3:1B4:J2:N5:l9:K2:+s9:pJ3:N4:l7:l14:l9:l9:1-*/*s7:pl7:0=Z6:l12:s2:pl10:Z7:l11:n1/RN7:l11:1/RN6:l11:l7:+s11:pJ5:N2:0R]@r@iF5,4.11[l2:1+s2:pl4:1C4,0:K2:*+C3,0:s11:pl2:1-s2:pl11:1/R0R]@r@iF4,4.5,7,8,9,10,13,14,11,12[l4:1=Z0:l2:K25:{Z1:K.7853981633974483096156608:1/RN1:l2:K40:{Z2:K.7853981633974483096156608458198757210492:1/RN2:l2:K60:{Z3:K.785398163397448309615660845819875721049292349843776455243736:1/RN3:N0:l4:K.2:=Z4:l2:K25:{Z5:K.1973955598498807583700497:1/RN5:l2:K40:{Z6:K.1973955598498807583700497651947902934475:1/RN6:l2:K60:{Z7:K.197395559849880758370049765194790293447585103787852101517688:1/RN7:N4:l4:0<Z8:1s10:pl4:ns4:pN8:l2:s12:pl4:K.2:>Z9:l12:K4:+s2:pK.2:C4,0:s5:pN9:l12:K2:+s2:pN10:l4:K.2:>Z11:l8:1+s8:pl4:K.2:-1l4:K.2:*+/s4:pJ10:N11:l4:s13:s11:pl4:nl4:*s14:pK3:s9:pN13:1B14:J12:N15:l9:K2:+s9:pJ13:N14:l13:l14:*s13:l9:/s7:pl7:0=Z16:l12:s2:pl10:Z17:l8:l5:*l11:+1n/RN17:l8:l5:*l11:+1/RN16:l11:l7:+s11:pJ15:N12:0R]@r@iF6,13,4.5,6,7,8,9,10,14,11,12[l2:s12:p0s2:pl13:1/s13:pl13:0<Z0:l13:ns13:pl13:K2:%1=Z1:1s10:pN1:N0:1s8:pK2:s9:pN3:l9:l13:{B4:J2:N5:l9:i9:pJ3:N4:l8:l9:*s8:pJ5:N2:K1.5:l12:*s2:pl4:l13:^K2:l13:^/l8:/s8:p1s7:s11:pl4:nl4:*K4:/s14:pK1.5:l12:*s2:p1s9:pN7:1B8:J6:N9:l9:i9:pJ7:N8:l7:l14:*l9:/l13:l9:+/s7:pl7:0=Z10:l12:s2:pl10:Z11:l8:nl11:*1/RN11:l8:l11:*1/RN10:l11:l7:+s11:pJ9:N6:0R]@r\00", align 16
@str.93 = private unnamed_addr constant [31 x i8] c"\0A(interrupt) use quit to exit.\00", align 1
@_two_ = internal unnamed_addr global ptr null, align 8
@.str.126 = private unnamed_addr constant [27 x i8] c"non-zero scale in exponent\00", align 1
@.str.1.127 = private unnamed_addr constant [28 x i8] c"exponent too large in raise\00", align 1
@ref_str = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.2.130 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@yyin = internal unnamed_addr global ptr null, align 8
@yyout = internal unnamed_addr global ptr null, align 8
@yy_init = internal unnamed_addr global i1 false, align 4
@yy_start = internal unnamed_addr global i1 false, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@yy_current_buffer.init = internal unnamed_addr global i1 false
@yy_c_buf_p = internal unnamed_addr global ptr null, align 8
@yy_hold_char = internal unnamed_addr global i8 0, align 1
@yy_ec = internal unnamed_addr constant [256 x i8] c"\00\01\01\01\01\01\01\01\01\02\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\04\05\01\01\06\07\01\08\09\0A\0B\0C\0D\0E\0F\10\10\10\10\10\10\10\10\10\10\01\11\12\13\14\01\01\15\15\15\15\15\15\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\16\17\18\19\1A\01\1B\1C\1D\1E\1F !\22#$%&'()*+,-./$0$1$234\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@yy_accept = internal unnamed_addr constant [144 x i16] [i16 0, i16 0, i16 0, i16 40, i16 38, i16 33, i16 31, i16 25, i16 38, i16 26, i16 38, i16 22, i16 26, i16 22, i16 22, i16 38, i16 26, i16 37, i16 29, i16 27, i16 29, i16 38, i16 22, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 38, i16 33, i16 29, i16 0, i16 36, i16 27, i16 23, i16 30, i16 37, i16 0, i16 34, i16 37, i16 37, i16 0, i16 28, i16 32, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 7, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 24, i16 37, i16 0, i16 0, i16 37, i16 0, i16 35, i16 35, i16 35, i16 35, i16 35, i16 6, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 35, i16 13, i16 35, i16 35, i16 35, i16 14, i16 16, i16 35, i16 17, i16 35, i16 35, i16 35, i16 35, i16 3, i16 15, i16 35, i16 35, i16 9, i16 35, i16 35, i16 2, i16 35, i16 35, i16 11, i16 35, i16 35, i16 12, i16 20, i16 35, i16 10, i16 35, i16 8, i16 35, i16 1, i16 4, i16 21, i16 5, i16 35, i16 35, i16 35, i16 19, i16 18, i16 0], align 16
@yy_last_accepting_state = internal unnamed_addr global i32 0, align 4
@yy_last_accepting_cpos = internal unnamed_addr global ptr null, align 8
@yy_chk = internal unnamed_addr constant [247 x i16] [i16 0, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 13, i16 14, i16 31, i16 16, i16 15, i16 145, i16 31, i16 14, i16 13, i16 15, i16 38, i16 15, i16 16, i16 17, i16 19, i16 17, i16 37, i16 38, i16 19, i16 19, i16 17, i16 19, i16 17, i16 19, i16 32, i16 140, i16 71, i16 19, i16 32, i16 47, i16 37, i16 139, i16 32, i16 19, i16 47, i16 50, i16 47, i16 51, i16 138, i16 51, i16 50, i16 133, i16 50, i16 77, i16 51, i16 71, i16 51, i16 79, i16 77, i16 131, i16 77, i16 80, i16 79, i16 129, i16 79, i16 126, i16 80, i16 125, i16 80, i16 144, i16 144, i16 123, i16 122, i16 120, i16 119, i16 117, i16 116, i16 113, i16 112, i16 111, i16 110, i16 108, i16 105, i16 104, i16 103, i16 101, i16 100, i16 99, i16 98, i16 97, i16 96, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 86, i16 85, i16 84, i16 83, i16 82, i16 81, i16 78, i16 75, i16 74, i16 73, i16 72, i16 70, i16 69, i16 68, i16 67, i16 66, i16 65, i16 63, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 52, i16 48, i16 42, i16 40, i16 39, i16 36, i16 35, i16 34, i16 33, i16 30, i16 28, i16 27, i16 26, i16 25, i16 24, i16 23, i16 22, i16 21, i16 20, i16 18, i16 12, i16 10, i16 9, i16 8, i16 7, i16 5, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@yy_base = internal unnamed_addr constant [146 x i16] [i16 0, i16 0, i16 0, i16 193, i16 194, i16 190, i16 194, i16 172, i16 185, i16 170, i16 181, i16 194, i16 168, i16 42, i16 41, i16 41, i16 46, i16 52, i16 167, i16 61, i16 166, i16 181, i16 164, i16 135, i16 137, i16 139, i16 148, i16 140, i16 136, i16 0, i16 149, i16 27, i16 50, i16 147, i16 130, i16 126, i16 141, i16 40, i16 36, i16 120, i16 168, i16 194, i16 164, i16 194, i16 194, i16 194, i16 194, i16 66, i16 165, i16 194, i16 72, i16 76, i16 164, i16 194, i16 194, i16 0, i16 120, i16 134, i16 124, i16 131, i16 117, i16 117, i16 122, i16 132, i16 0, i16 113, i16 117, i16 117, i16 128, i16 119, i16 118, i16 52, i16 125, i16 107, i16 106, i16 114, i16 194, i16 80, i16 145, i16 84, i16 88, i16 144, i16 105, i16 118, i16 98, i16 108, i16 111, i16 0, i16 95, i16 95, i16 93, i16 105, i16 102, i16 91, i16 95, i16 88, i16 103, i16 85, i16 93, i16 84, i16 85, i16 90, i16 0, i16 90, i16 91, i16 85, i16 0, i16 0, i16 93, i16 0, i16 77, i16 76, i16 90, i16 74, i16 0, i16 0, i16 75, i16 87, i16 0, i16 90, i16 85, i16 0, i16 75, i16 83, i16 0, i16 76, i16 63, i16 0, i16 0, i16 66, i16 0, i16 62, i16 0, i16 47, i16 0, i16 0, i16 0, i16 0, i16 45, i16 53, i16 29, i16 0, i16 0, i16 194, i16 111, i16 56], align 16
@yy_def = internal unnamed_addr constant [146 x i16] [i16 0, i16 143, i16 1, i16 143, i16 143, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 144, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 145, i16 0, i16 143, i16 143], align 16
@yy_meta = internal unnamed_addr constant [53 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01", align 16
@yy_nxt = internal unnamed_addr constant [247 x i16] [i16 0, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 11, i16 12, i16 13, i16 11, i16 14, i16 15, i16 16, i16 17, i16 11, i16 18, i16 19, i16 20, i16 17, i16 11, i16 21, i16 11, i16 22, i16 4, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 29, i16 29, i16 32, i16 29, i16 29, i16 33, i16 34, i16 35, i16 36, i16 37, i16 29, i16 29, i16 38, i16 29, i16 11, i16 39, i16 11, i16 46, i16 46, i16 63, i16 49, i16 47, i16 55, i16 64, i16 44, i16 44, i16 47, i16 74, i16 48, i16 44, i16 50, i16 53, i16 51, i16 72, i16 75, i16 53, i16 53, i16 51, i16 53, i16 52, i16 53, i16 65, i16 142, i16 96, i16 41, i16 66, i16 77, i16 73, i16 141, i16 67, i16 53, i16 77, i16 80, i16 78, i16 50, i16 140, i16 51, i16 80, i16 139, i16 81, i16 77, i16 51, i16 97, i16 52, i16 47, i16 77, i16 138, i16 78, i16 80, i16 47, i16 137, i16 48, i16 136, i16 80, i16 135, i16 81, i16 42, i16 42, i16 134, i16 133, i16 132, i16 131, i16 130, i16 129, i16 128, i16 127, i16 126, i16 125, i16 124, i16 123, i16 122, i16 121, i16 120, i16 119, i16 118, i16 117, i16 116, i16 115, i16 114, i16 113, i16 112, i16 111, i16 110, i16 109, i16 108, i16 107, i16 106, i16 105, i16 104, i16 103, i16 102, i16 80, i16 77, i16 101, i16 100, i16 99, i16 98, i16 95, i16 94, i16 93, i16 92, i16 91, i16 90, i16 89, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 51, i16 79, i16 43, i16 40, i16 76, i16 71, i16 70, i16 69, i16 68, i16 62, i16 61, i16 60, i16 59, i16 58, i16 57, i16 56, i16 44, i16 54, i16 41, i16 41, i16 44, i16 45, i16 44, i16 43, i16 41, i16 40, i16 143, i16 3, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143, i16 143], align 16
@yytext = internal unnamed_addr global ptr null, align 8
@yyleng = internal unnamed_addr global i32 0, align 4
@yylval = internal unnamed_addr global %struct.YYSTYPE zeroinitializer, align 8
@.str.137 = private unnamed_addr constant [31 x i8] c"EOF encountered in a comment.\0A\00", align 1
@.str.1.138 = private unnamed_addr constant [25 x i8] c"NUL character in string.\00", align 1
@.str.2.139 = private unnamed_addr constant [23 x i8] c"illegal character: ^%c\00", align 1
@.str.3.140 = private unnamed_addr constant [24 x i8] c"illegal character: \\%3d\00", align 1
@.str.4.141 = private unnamed_addr constant [22 x i8] c"illegal character: %s\00", align 1
@yy_n_chars = internal unnamed_addr global i32 0, align 4
@.str.5.142 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.6.147 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.7.143 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.8.144 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.9.145 = private unnamed_addr constant [30 x i8] c"read() in flex scanner failed\00", align 1
@.str.10.146 = private unnamed_addr constant [33 x i8] c"unexpected last match in input()\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"(main)\00", align 1
@ex_stack = internal unnamed_addr global ptr null, align 8
@fn_stack = internal unnamed_addr global ptr null, align 8
@i_base = internal unnamed_addr global i32 0, align 4
@o_base = internal unnamed_addr global i32 0, align 4
@scale = internal unnamed_addr global i32 0, align 4
@c_code = internal unnamed_addr global i8 0, align 1
@functions = internal unnamed_addr global ptr null, align 8
@variables = internal unnamed_addr global ptr null, align 8
@arrays = internal unnamed_addr global ptr null, align 8
@.str.1.165 = private unnamed_addr constant [13 x i8] c"Stack error.\00", align 1
@_zero_ = internal unnamed_addr global ptr null, align 8
@.str.2.168 = private unnamed_addr constant [25 x i8] c"negative ibase, set to 2\00", align 1
@.str.3.169 = private unnamed_addr constant [25 x i8] c"negative obase, set to 2\00", align 1
@.str.4.170 = private unnamed_addr constant [25 x i8] c"negative scale, set to 0\00", align 1
@.str.5.171 = private unnamed_addr constant [26 x i8] c"ibase too small, set to 2\00", align 1
@.str.6.172 = private unnamed_addr constant [27 x i8] c"ibase too large, set to 16\00", align 1
@.str.7.173 = private unnamed_addr constant [26 x i8] c"obase too small, set to 2\00", align 1
@.str.8.174 = private unnamed_addr constant [27 x i8] c"obase too large, set to %d\00", align 1
@.str.9.175 = private unnamed_addr constant [27 x i8] c"scale too large, set to %d\00", align 1
@.str.10.178 = private unnamed_addr constant [34 x i8] c"Array %s subscript out of bounds.\00", align 1
@.str.11.185 = private unnamed_addr constant [22 x i8] c"ibase too small in --\00", align 1
@.str.12.186 = private unnamed_addr constant [22 x i8] c"obase too small in --\00", align 1
@.str.13.187 = private unnamed_addr constant [33 x i8] c"scale can not be negative in -- \00", align 1
@_one_ = internal unnamed_addr global ptr null, align 8
@.str.14.192 = private unnamed_addr constant [20 x i8] c"ibase too big in ++\00", align 1
@.str.15.193 = private unnamed_addr constant [20 x i8] c"obase too big in ++\00", align 1
@.str.16.194 = private unnamed_addr constant [20 x i8] c"Scale too big in ++\00", align 1
@.str.17.203 = private unnamed_addr constant [38 x i8] c"Parameter type mismatch parameter %s.\00", align 1
@.str.18.204 = private unnamed_addr constant [39 x i8] c"Parameter type mismatch, parameter %s.\00", align 1
@.str.19.205 = private unnamed_addr constant [26 x i8] c"Parameter number mismatch\00", align 1
@arglist2 = internal unnamed_addr global ptr null, align 8
@arglist1 = internal unnamed_addr global ptr null, align 8
@.str.218 = private unnamed_addr constant [26 x i8] c"duplicate parameter names\00", align 1
@.str.1.221 = private unnamed_addr constant [16 x i8] c"Array parameter\00", align 1
@.str.2.224 = private unnamed_addr constant [30 x i8] c"duplicate auto variable names\00", align 1
@.str.3.225 = private unnamed_addr constant [42 x i8] c"variable in both parameter and auto lists\00", align 1
@break_label = internal unnamed_addr global i32 0, align 4
@continue_label = internal unnamed_addr global i32 0, align 4
@next_label = internal unnamed_addr global i32 0, align 4
@out_count = internal unnamed_addr global i32 0, align 4
@compile_only = internal unnamed_addr global i1 false, align 1
@.str.4.231 = private unnamed_addr constant [3 x i8] c"@i\00", align 1
@had_error = internal unnamed_addr global i1 false, align 4
@did_gen = internal unnamed_addr global i1 false, align 1
@.str.5.234 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@out_col = internal unnamed_addr global i32 0, align 4
@name_tree = internal global ptr null, align 8
@next_array = internal unnamed_addr global i32 0, align 4
@next_func = internal unnamed_addr global i32 0, align 4
@next_var = internal unnamed_addr global i32 0, align 4
@.str.8.244 = private unnamed_addr constant [26 x i8] c"multiple letter name - %s\00", align 1
@a_names = internal unnamed_addr global ptr null, align 8
@a_count = internal unnamed_addr global i32 0, align 4
@.str.9.245 = private unnamed_addr constant [25 x i8] c"Too many array variables\00", align 1
@f_names = internal unnamed_addr global ptr null, align 8
@f_count = internal unnamed_addr global i32 0, align 4
@.str.10.246 = private unnamed_addr constant [19 x i8] c"Too many functions\00", align 1
@v_names = internal unnamed_addr global ptr null, align 8
@v_count = internal unnamed_addr global i32 0, align 4
@.str.11.247 = private unnamed_addr constant [19 x i8] c"Too many variables\00", align 1
@.str.14.252 = private unnamed_addr constant [8 x i8] c"\0A%s%s\0A\0A\00", align 1
@.str.15.253 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@.str.16.254 = private unnamed_addr constant [23 x i8] c"%s%s%s%s%s%s%s%s%s%s%s\00", align 1
@.str.17.255 = private unnamed_addr constant [74 x i8] c"    This program is free software; you can redistribute it and/or modify\0A\00", align 1
@.str.18.256 = private unnamed_addr constant [74 x i8] c"    it under the terms of the GNU General Public License as published by\0A\00", align 1
@.str.19.257 = private unnamed_addr constant [72 x i8] c"    the Free Software Foundation; either version 2 of the License , or\0A\00", align 1
@.str.20.258 = private unnamed_addr constant [42 x i8] c"    (at your option) any later version.\0A\0A\00", align 1
@.str.21.259 = private unnamed_addr constant [69 x i8] c"    This program is distributed in the hope that it will be useful,\0A\00", align 1
@.str.22.260 = private unnamed_addr constant [68 x i8] c"    but WITHOUT ANY WARRANTY; without even the implied warranty of\0A\00", align 1
@.str.23.261 = private unnamed_addr constant [67 x i8] c"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A\00", align 1
@.str.24.262 = private unnamed_addr constant [51 x i8] c"    GNU General Public License for more details.\0A\0A\00", align 1
@.str.25.263 = private unnamed_addr constant [71 x i8] c"    You should have received a copy of the GNU General Public License\0A\00", align 1
@.str.26.264 = private unnamed_addr constant [65 x i8] c"    along with this program. If not, write to the Free Software\0A\00", align 1
@.str.27.265 = private unnamed_addr constant [58 x i8] c"    Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.\0A\0A\00", align 1
@.str.28.268 = private unnamed_addr constant [22 x i8] c"BC_BASE_MAX     = %d\0A\00", align 1
@.str.29.269 = private unnamed_addr constant [23 x i8] c"BC_DIM_MAX      = %ld\0A\00", align 1
@.str.30.270 = private unnamed_addr constant [22 x i8] c"BC_SCALE_MAX    = %d\0A\00", align 1
@.str.31.271 = private unnamed_addr constant [22 x i8] c"BC_STRING_MAX   = %d\0A\00", align 1
@.str.32.272 = private unnamed_addr constant [23 x i8] c"MAX Exponent    = %ld\0A\00", align 1
@.str.33.273 = private unnamed_addr constant [23 x i8] c"MAX code        = %ld\0A\00", align 1
@.str.34.274 = private unnamed_addr constant [23 x i8] c"multiply digits = %ld\0A\00", align 1
@.str.35.275 = private unnamed_addr constant [23 x i8] c"Number of vars  = %ld\0A\00", align 1
@is_std_in = internal unnamed_addr global i1 false, align 1
@.str.36.226 = private unnamed_addr constant [14 x i8] c"(standard_in)\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.37.227 = private unnamed_addr constant [8 x i8] c"%s %d: \00", align 1
@line_no = internal unnamed_addr global i32 0, align 4
@std_only = internal unnamed_addr global i1 false, align 1
@warn_not_std = internal unnamed_addr global i1 false, align 1
@.str.38.228 = private unnamed_addr constant [18 x i8] c"%s %d: (Warning) \00", align 1
@.str.39.278 = private unnamed_addr constant [37 x i8] c"Runtime error (func=%s, adr=%d): %s\0A\00", align 1
@pc = internal unnamed_addr global %struct.program_counter zeroinitializer, align 8
@runtime_error = internal unnamed_addr global i1 false, align 1
@.str.40.281 = private unnamed_addr constant [39 x i8] c"Runtime warning (func=%s, adr=%d): %s\0A\00", align 1
@.str.41.212 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.42.213 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str.237 = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@str.43 = private unnamed_addr constant [51 x i8] c"This is free software with ABSOLUTELY NO WARRANTY.\00", align 1
@str.44 = private unnamed_addr constant [20 x i8] c"For details type . \00", align 1
@yy_current_buffer.body = internal global [40 x i8] undef

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [150 x i16], align 16
  store i1 false, ptr @compile_only, align 1
  store i1 false, ptr @use_math, align 1
  store i1 false, ptr @warn_not_std, align 1
  store i1 false, ptr @std_only, align 1
  %4 = tail call i32 @isatty(i32 noundef 0) #29
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @isatty(i32 noundef 1) #29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %2
  br label %10

10:                                               ; preds = %9, %6
  %11 = phi i8 [ 0, %9 ], [ 1, %6 ]
  store i8 %11, ptr @interactive, align 1, !tbaa !7
  br label %12

12:                                               ; preds = %21, %10
  %13 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.81) #29
  switch i32 %13, label %21 [
    i32 -1, label %22
    i32 99, label %14
    i32 108, label %15
    i32 105, label %16
    i32 119, label %17
    i32 115, label %18
    i32 118, label %19
  ]

14:                                               ; preds = %12
  store i1 true, ptr @compile_only, align 1
  br label %21

15:                                               ; preds = %12
  store i1 true, ptr @use_math, align 1
  br label %21

16:                                               ; preds = %12
  store i8 1, ptr @interactive, align 1, !tbaa !7
  br label %21

17:                                               ; preds = %12
  store i1 true, ptr @warn_not_std, align 1
  br label %21

18:                                               ; preds = %12
  store i1 true, ptr @std_only, align 1
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.15.253)
  br label %21

21:                                               ; preds = %19, %18, %17, %16, %15, %14, %12
  br label %12, !llvm.loop !10

22:                                               ; preds = %12
  store i32 0, ptr @f_count, align 4, !tbaa !12
  tail call fastcc void @more_functions() #30
  %23 = load ptr, ptr @f_names, align 8, !tbaa !14
  store ptr @.str.150, ptr %23, align 8, !tbaa !14
  store i32 0, ptr @v_count, align 4, !tbaa !12
  tail call fastcc void @more_variables() #30
  store i32 0, ptr @a_count, align 4, !tbaa !12
  tail call fastcc void @more_arrays() #30
  store ptr null, ptr @ex_stack, align 8, !tbaa !14
  store ptr null, ptr @fn_stack, align 8, !tbaa !14
  store i32 10, ptr @i_base, align 4, !tbaa !12
  store i32 10, ptr @o_base, align 4, !tbaa !12
  store i32 0, ptr @scale, align 4, !tbaa !12
  store i8 0, ptr @c_code, align 1, !tbaa !7
  %24 = tail call noalias dereferenceable_or_null(1041) ptr @malloc(i64 noundef 1041) #31
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %24, align 4, !tbaa !7
  %25 = getelementptr inbounds %struct.bc_struct, ptr %24, i64 0, i32 4
  store i8 0, ptr %25, align 4, !tbaa !7
  store ptr %24, ptr @_zero_, align 8, !tbaa !14
  %26 = tail call noalias dereferenceable_or_null(1041) ptr @malloc(i64 noundef 1041) #31
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %26, align 4, !tbaa !7
  %27 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 4
  store ptr %26, ptr @_one_, align 8, !tbaa !14
  store i8 1, ptr %27, align 4, !tbaa !7
  %28 = tail call noalias dereferenceable_or_null(1041) ptr @malloc(i64 noundef 1041) #31
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %28, align 4, !tbaa !7
  %29 = getelementptr inbounds %struct.bc_struct, ptr %28, i64 0, i32 4
  store ptr %28, ptr @_two_, align 8, !tbaa !14
  store i8 2, ptr %29, align 4, !tbaa !7
  tail call fastcc void @clear_func(i8 noundef signext 0) #29
  store i32 0, ptr @load_adr, align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !18
  store i1 false, ptr @load_str, align 1
  store i1 false, ptr @load_const, align 1
  %30 = load i8, ptr @interactive, align 1, !tbaa !7
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @use_quit) #29
  br label %34

34:                                               ; preds = %32, %22
  store ptr null, ptr @name_tree, align 8, !tbaa !14
  store i32 1, ptr @next_array, align 4, !tbaa !12
  store i32 1, ptr @next_func, align 4, !tbaa !12
  store i32 4, ptr @next_var, align 4, !tbaa !12
  tail call fastcc void @init_gen() #29
  store i1 false, ptr @is_std_in, align 1
  store i1 true, ptr @first_file, align 1
  %35 = tail call fastcc i32 @open_new_file() #30, !range !19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void @exit(i32 noundef 1) #32
  unreachable

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %3) #33
  store i32 -1, ptr @yychar, align 4, !tbaa !12
  store i32 0, ptr @yynerrs, align 4, !tbaa !12
  store i16 0, ptr @yyerrflag, align 2, !tbaa !20
  %39 = getelementptr inbounds [150 x i16], ptr %3, i64 0, i64 150
  br label %41

40:                                               ; preds = %82
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str) #29
  br label %737

41:                                               ; preds = %82, %38
  %42 = phi ptr [ %3, %38 ], [ %86, %82 ]
  %43 = phi i16 [ 0, %38 ], [ %85, %82 ]
  %44 = phi ptr [ getelementptr inbounds ([150 x %struct.YYSTYPE], ptr @yyv, i64 -1, i64 149), %38 ], [ %84, %82 ]
  store i16 %43, ptr %42, align 2, !tbaa !20
  %45 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef nonnull align 8 dereferenceable(24) @yyval, i64 24, i1 false), !tbaa.struct !22
  %46 = sext i16 %43 to i64
  %47 = getelementptr inbounds [166 x i16], ptr @yypact, i64 0, i64 %46
  %48 = getelementptr inbounds [166 x i16], ptr @yydef, i64 0, i64 %46
  %49 = load i16, ptr %47, align 2, !tbaa !20
  %50 = icmp slt i16 %49, -999
  %51 = icmp eq i16 %43, 1
  br label %52

52:                                               ; preds = %137, %41
  br i1 %50, label %88, label %53

53:                                               ; preds = %52
  %54 = load i32, ptr @yychar, align 4, !tbaa !12
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call fastcc i32 @yylex() #29, !range !23
  %58 = call i32 @llvm.smax.i32(i32 %57, i32 0)
  store i32 %58, ptr @yychar, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ %58, %56 ], [ %54, %53 ]
  %61 = trunc i32 %60 to i16
  %62 = add i16 %49, %61
  %63 = icmp ugt i16 %62, 705
  br i1 %63, label %88, label %64

64:                                               ; preds = %59
  %65 = zext i16 %62 to i64
  %66 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !20
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds [166 x i16], ptr @yychk, i64 0, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !20
  %71 = sext i16 %70 to i32
  %72 = icmp eq i32 %60, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %64
  %.lcssa1 = phi i16 [ %67, %64 ]
  store i32 -1, ptr @yychar, align 4, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @yyval, ptr noundef nonnull align 8 dereferenceable(24) @yylval, i64 24, i1 false), !tbaa.struct !22
  %74 = load i16, ptr @yyerrflag, align 2, !tbaa !20
  %75 = icmp sgt i16 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = add nsw i16 %74, -1
  store i16 %77, ptr @yyerrflag, align 2, !tbaa !20
  br label %82

78:                                               ; preds = %129, %129, %129
  %.lcssa7 = phi ptr [ %121, %129 ], [ %121, %129 ], [ %121, %129 ]
  %.lcssa6 = phi ptr [ %122, %129 ], [ %122, %129 ], [ %122, %129 ]
  %.lcssa5 = phi i16 [ %127, %129 ], [ %127, %129 ], [ %127, %129 ]
  %79 = zext i16 %.lcssa5 to i64
  %80 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !20
  br label %82

82:                                               ; preds = %736, %735, %734, %733, %729, %721, %720, %719, %718, %717, %716, %689, %670, %646, %643, %632, %620, %614, %606, %600, %594, %593, %592, %587, %586, %581, %580, %576, %573, %562, %557, %548, %543, %542, %522, %509, %508, %504, %503, %502, %492, %487, %474, %471, %465, %455, %446, %438, %431, %428, %425, %424, %423, %420, %417, %321, %320, %317, %316, %315, %308, %302, %297, %292, %286, %278, %269, %254, %243, %233, %232, %231, %230, %227, %226, %221, %220, %214, %213, %212, %192, %189, %186, %185, %184, %183, %182, %181, %177, %174, %172, %78, %76, %73
  %83 = phi ptr [ %42, %76 ], [ %42, %73 ], [ %145, %580 ], [ %145, %581 ], [ %145, %576 ], [ %145, %587 ], [ %145, %586 ], [ %145, %593 ], [ %145, %592 ], [ %145, %509 ], [ %145, %522 ], [ %145, %504 ], [ %145, %508 ], [ %145, %226 ], [ %145, %227 ], [ %145, %220 ], [ %145, %221 ], [ %145, %212 ], [ %145, %213 ], [ %145, %174 ], [ %145, %177 ], [ %145, %172 ], [ %145, %736 ], [ %145, %735 ], [ %145, %734 ], [ %145, %733 ], [ %145, %729 ], [ %145, %721 ], [ %145, %720 ], [ %145, %719 ], [ %145, %718 ], [ %145, %717 ], [ %145, %716 ], [ %145, %689 ], [ %145, %670 ], [ %145, %646 ], [ %145, %643 ], [ %145, %632 ], [ %145, %620 ], [ %145, %614 ], [ %145, %606 ], [ %145, %600 ], [ %145, %594 ], [ %145, %573 ], [ %145, %562 ], [ %145, %557 ], [ %145, %548 ], [ %145, %543 ], [ %145, %542 ], [ %145, %503 ], [ %145, %502 ], [ %145, %492 ], [ %145, %487 ], [ %145, %474 ], [ %145, %471 ], [ %145, %465 ], [ %145, %455 ], [ %145, %446 ], [ %145, %438 ], [ %145, %431 ], [ %145, %428 ], [ %145, %425 ], [ %145, %424 ], [ %145, %423 ], [ %145, %420 ], [ %145, %417 ], [ %145, %321 ], [ %145, %320 ], [ %145, %317 ], [ %145, %316 ], [ %145, %315 ], [ %145, %308 ], [ %145, %302 ], [ %145, %297 ], [ %145, %292 ], [ %145, %286 ], [ %145, %278 ], [ %145, %269 ], [ %145, %254 ], [ %145, %243 ], [ %145, %233 ], [ %145, %232 ], [ %145, %231 ], [ %145, %230 ], [ %145, %214 ], [ %145, %192 ], [ %145, %189 ], [ %145, %186 ], [ %145, %185 ], [ %145, %184 ], [ %145, %183 ], [ %145, %182 ], [ %145, %181 ], [ %.lcssa6, %78 ]
  %84 = phi ptr [ %45, %76 ], [ %45, %73 ], [ %146, %580 ], [ %146, %581 ], [ %146, %576 ], [ %146, %587 ], [ %146, %586 ], [ %146, %593 ], [ %146, %592 ], [ %146, %509 ], [ %146, %522 ], [ %146, %504 ], [ %146, %508 ], [ %146, %226 ], [ %146, %227 ], [ %146, %220 ], [ %146, %221 ], [ %146, %212 ], [ %146, %213 ], [ %146, %174 ], [ %146, %177 ], [ %146, %172 ], [ %146, %736 ], [ %146, %735 ], [ %146, %734 ], [ %146, %733 ], [ %146, %729 ], [ %146, %721 ], [ %146, %720 ], [ %146, %719 ], [ %146, %718 ], [ %146, %717 ], [ %146, %716 ], [ %146, %689 ], [ %146, %670 ], [ %146, %646 ], [ %146, %643 ], [ %146, %632 ], [ %146, %620 ], [ %146, %614 ], [ %146, %606 ], [ %146, %600 ], [ %146, %594 ], [ %146, %573 ], [ %146, %562 ], [ %146, %557 ], [ %146, %548 ], [ %146, %543 ], [ %146, %542 ], [ %146, %503 ], [ %146, %502 ], [ %146, %492 ], [ %146, %487 ], [ %146, %474 ], [ %146, %471 ], [ %146, %465 ], [ %146, %455 ], [ %146, %446 ], [ %146, %438 ], [ %146, %431 ], [ %146, %428 ], [ %146, %425 ], [ %146, %424 ], [ %146, %423 ], [ %146, %420 ], [ %146, %417 ], [ %146, %321 ], [ %146, %320 ], [ %146, %317 ], [ %146, %316 ], [ %146, %315 ], [ %146, %308 ], [ %146, %302 ], [ %146, %297 ], [ %146, %292 ], [ %146, %286 ], [ %146, %278 ], [ %146, %269 ], [ %146, %254 ], [ %146, %243 ], [ %146, %233 ], [ %146, %232 ], [ %146, %231 ], [ %146, %230 ], [ %146, %214 ], [ %146, %192 ], [ %146, %189 ], [ %146, %186 ], [ %146, %185 ], [ %146, %184 ], [ %146, %183 ], [ %146, %182 ], [ %146, %181 ], [ %.lcssa7, %78 ]
  %85 = phi i16 [ %.lcssa1, %76 ], [ %.lcssa1, %73 ], [ %173, %580 ], [ %173, %581 ], [ %173, %576 ], [ %173, %587 ], [ %173, %586 ], [ %173, %593 ], [ %173, %592 ], [ %173, %509 ], [ %173, %522 ], [ %173, %504 ], [ %173, %508 ], [ %173, %226 ], [ %173, %227 ], [ %173, %220 ], [ %173, %221 ], [ %173, %212 ], [ %173, %213 ], [ %173, %174 ], [ %173, %177 ], [ %173, %172 ], [ %173, %736 ], [ %173, %735 ], [ %173, %734 ], [ %173, %733 ], [ %173, %729 ], [ %173, %721 ], [ %173, %720 ], [ %173, %719 ], [ %173, %718 ], [ %173, %717 ], [ %173, %716 ], [ %173, %689 ], [ %173, %670 ], [ %173, %646 ], [ %173, %643 ], [ %173, %632 ], [ %173, %620 ], [ %173, %614 ], [ %173, %606 ], [ %173, %600 ], [ %173, %594 ], [ %173, %573 ], [ %173, %562 ], [ %173, %557 ], [ %173, %548 ], [ %173, %543 ], [ %173, %542 ], [ %173, %503 ], [ %173, %502 ], [ %173, %492 ], [ %173, %487 ], [ %173, %474 ], [ %173, %471 ], [ %173, %465 ], [ %173, %455 ], [ %173, %446 ], [ %173, %438 ], [ %173, %431 ], [ %173, %428 ], [ %173, %425 ], [ %173, %424 ], [ %173, %423 ], [ %173, %420 ], [ %173, %417 ], [ %173, %321 ], [ %173, %320 ], [ %173, %317 ], [ %173, %316 ], [ %173, %315 ], [ %173, %308 ], [ %173, %302 ], [ %173, %297 ], [ %173, %292 ], [ %173, %286 ], [ %173, %278 ], [ %173, %269 ], [ %173, %254 ], [ %173, %243 ], [ %173, %233 ], [ %173, %232 ], [ %173, %231 ], [ %173, %230 ], [ %173, %214 ], [ %173, %192 ], [ %173, %189 ], [ %173, %186 ], [ %173, %185 ], [ %173, %184 ], [ %173, %183 ], [ %173, %182 ], [ %173, %181 ], [ %81, %78 ]
  %86 = getelementptr inbounds i16, ptr %83, i64 1
  %87 = icmp ugt ptr %86, %39
  br i1 %87, label %40, label %41

88:                                               ; preds = %64, %59, %52
  %89 = load i16, ptr %48, align 2, !tbaa !20
  br i1 %51, label %90, label %110

90:                                               ; preds = %88
  %91 = load i32, ptr @yychar, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = call fastcc i32 @yylex() #29, !range !23
  %95 = call i32 @llvm.smax.i32(i32 %94, i32 0)
  store i32 %95, ptr @yychar, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i32 [ %95, %93 ], [ %91, %90 ]
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi ptr [ %100, %98 ], [ @yyexca, %96 ]
  %100 = getelementptr inbounds i16, ptr %99, i64 2
  %101 = load i16, ptr %100, align 2, !tbaa !20
  %102 = icmp slt i16 %101, 0
  %103 = sext i16 %101 to i32
  %104 = icmp eq i32 %97, %103
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %106, label %98, !llvm.loop !24

106:                                              ; preds = %98
  %.lcssa = phi ptr [ %99, %98 ]
  %107 = getelementptr inbounds i16, ptr %.lcssa, i64 3
  %108 = load i16, ptr %107, align 2, !tbaa !20
  %109 = icmp slt i16 %108, 0
  br i1 %109, label %737, label %110

110:                                              ; preds = %106, %88
  %111 = phi i16 [ %108, %106 ], [ %89, %88 ]
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %138

113:                                              ; preds = %110
  %114 = load i16, ptr @yyerrflag, align 2, !tbaa !20
  switch i16 %114, label %138 [
    i16 0, label %115
    i16 1, label %118
    i16 2, label %118
    i16 3, label %134
  ]

115:                                              ; preds = %113
  %.lcssa3 = phi i16 [ %111, %113 ]
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.1) #29
  %116 = load i32, ptr @yynerrs, align 4, !tbaa !12
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr @yynerrs, align 4, !tbaa !12
  br label %118

118:                                              ; preds = %115, %113, %113
  store i16 3, ptr @yyerrflag, align 2, !tbaa !20
  %119 = icmp ult ptr %42, %3
  br i1 %119, label %737, label %120

120:                                              ; preds = %130, %118
  %121 = phi ptr [ %132, %130 ], [ %45, %118 ]
  %122 = phi ptr [ %131, %130 ], [ %42, %118 ]
  %123 = load i16, ptr %122, align 2, !tbaa !20
  %124 = sext i16 %123 to i64
  %125 = getelementptr inbounds [166 x i16], ptr @yypact, i64 0, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !20
  %127 = add i16 %126, 256
  %128 = icmp ult i16 %127, 706
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  switch i16 %126, label %130 [
    i16 26, label %78
    i16 -7, label %78
    i16 -40, label %78
  ]

130:                                              ; preds = %129, %120
  %131 = getelementptr inbounds i16, ptr %122, i64 -1
  %132 = getelementptr inbounds %struct.YYSTYPE, ptr %121, i64 -1
  %133 = icmp ult ptr %131, %3
  br i1 %133, label %737, label %120, !llvm.loop !25

134:                                              ; preds = %113
  %135 = load i32, ptr @yychar, align 4, !tbaa !12
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %737, label %137

137:                                              ; preds = %134
  store i32 -1, ptr @yychar, align 4, !tbaa !12
  br label %52

138:                                              ; preds = %113, %110
  %.lcssa2 = phi i16 [ %111, %113 ], [ %111, %110 ]
  %139 = sext i16 %.lcssa2 to i32
  %140 = sext i16 %.lcssa2 to i64
  %141 = getelementptr inbounds [98 x i16], ptr @yyr2, i64 0, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !20
  %143 = sext i16 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i16, ptr %42, i64 %144
  %146 = getelementptr inbounds %struct.YYSTYPE, ptr %45, i64 %144
  %147 = getelementptr inbounds %struct.YYSTYPE, ptr %146, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @yyval, ptr noundef nonnull align 8 dereferenceable(24) %147, i64 24, i1 false), !tbaa.struct !22
  %148 = getelementptr inbounds [98 x i16], ptr @yyr1, i64 0, i64 %140
  %149 = load i16, ptr %148, align 2, !tbaa !20
  %150 = sext i16 %149 to i64
  %151 = getelementptr inbounds [33 x i16], ptr @yypgo, i64 0, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !20
  %153 = load i16, ptr %145, align 2, !tbaa !20
  %154 = add i16 %152, 1
  %155 = add i16 %154, %153
  %156 = icmp sgt i16 %155, 705
  br i1 %156, label %168, label %157

157:                                              ; preds = %138
  %158 = sext i16 %155 to i64
  %159 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %158
  %160 = load i16, ptr %159, align 2, !tbaa !20
  %161 = sext i16 %160 to i64
  %162 = getelementptr inbounds [166 x i16], ptr @yychk, i64 0, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !20
  %164 = sext i16 %163 to i32
  %165 = sext i16 %149 to i32
  %166 = sub nsw i32 0, %165
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %157, %138
  %169 = sext i16 %152 to i64
  %170 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %169
  %171 = load i16, ptr %170, align 2, !tbaa !20
  br label %172

172:                                              ; preds = %168, %157
  %173 = phi i16 [ %171, %168 ], [ %160, %157 ]
  switch i32 %139, label %82 [
    i32 1, label %174
    i32 3, label %181
    i32 4, label %182
    i32 5, label %183
    i32 6, label %184
    i32 10, label %185
    i32 17, label %186
    i32 18, label %189
    i32 19, label %192
    i32 20, label %201
    i32 21, label %214
    i32 22, label %217
    i32 23, label %223
    i32 24, label %229
    i32 25, label %230
    i32 26, label %231
    i32 27, label %232
    i32 28, label %233
    i32 29, label %238
    i32 30, label %249
    i32 31, label %263
    i32 32, label %278
    i32 33, label %286
    i32 34, label %292
    i32 35, label %297
    i32 36, label %302
    i32 37, label %308
    i32 38, label %315
    i32 39, label %316
    i32 43, label %317
    i32 44, label %320
    i32 46, label %321
    i32 48, label %328
    i32 49, label %420
    i32 50, label %423
    i32 52, label %424
    i32 53, label %425
    i32 54, label %428
    i32 55, label %431
    i32 56, label %438
    i32 57, label %446
    i32 58, label %455
    i32 59, label %465
    i32 61, label %466
    i32 62, label %474
    i32 63, label %482
    i32 64, label %492
    i32 65, label %502
    i32 67, label %503
    i32 68, label %504
    i32 69, label %509
    i32 70, label %523
    i32 71, label %543
    i32 72, label %548
    i32 73, label %557
    i32 74, label %562
    i32 75, label %573
    i32 76, label %576
    i32 77, label %594
    i32 78, label %600
    i32 79, label %606
    i32 80, label %614
    i32 81, label %620
    i32 82, label %623
    i32 83, label %633
    i32 84, label %646
    i32 85, label %650
    i32 86, label %671
    i32 87, label %690
    i32 88, label %717
    i32 89, label %718
    i32 90, label %719
    i32 91, label %720
    i32 92, label %721
    i32 93, label %724
    i32 94, label %733
    i32 95, label %734
    i32 96, label %735
    i32 97, label %736
  ]

174:                                              ; preds = %172
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %175 = load i8, ptr @interactive, align 1, !tbaa !7
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %82, label %177

177:                                              ; preds = %174
  %178 = call i32 @puts(ptr nonnull dereferenceable(1) @.str.15.253)
  %179 = call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %180 = call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  br label %82

181:                                              ; preds = %172
  call fastcc void @run_code() #29
  br label %82

182:                                              ; preds = %172
  call fastcc void @run_code() #29
  br label %82

183:                                              ; preds = %172
  store i16 0, ptr @yyerrflag, align 2, !tbaa !20
  call fastcc void @init_gen() #29
  br label %82

184:                                              ; preds = %172
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

185:                                              ; preds = %172
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

186:                                              ; preds = %172
  %187 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !26
  store i32 %188, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

189:                                              ; preds = %172
  %190 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14.252, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15.253) #30
  %191 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16.254, ptr noundef nonnull @.str.17.255, ptr noundef nonnull @.str.18.256, ptr noundef nonnull @.str.19.257, ptr noundef nonnull @.str.20.258, ptr noundef nonnull @.str.21.259, ptr noundef nonnull @.str.22.260, ptr noundef nonnull @.str.23.261, ptr noundef nonnull @.str.24.262, ptr noundef nonnull @.str.25.263, ptr noundef nonnull @.str.26.264, ptr noundef nonnull @.str.27.265) #30
  br label %82

192:                                              ; preds = %172
  %193 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28.268, i32 noundef 99) #30
  %194 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29.269, i64 noundef 2048) #30
  %195 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30.270, i32 noundef 99) #30
  %196 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31.271, i32 noundef 1000) #30
  %197 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32.272, i64 noundef 9223372036854775807) #30
  %198 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33.273, i64 noundef 16384) #30
  %199 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34.274, i64 noundef 102481911520608620) #30
  %200 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35.275, i64 noundef 32767) #30
  br label %82

201:                                              ; preds = %172
  %202 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !26
  %204 = and i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %201
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.5) #29
  %207 = load i32, ptr %202, align 4, !tbaa !26
  br label %208

208:                                              ; preds = %206, %201
  %209 = phi i32 [ %207, %206 ], [ %203, %201 ]
  %210 = and i32 %209, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %208
  call fastcc void @generate(ptr noundef nonnull @.str.6) #29
  br label %82

213:                                              ; preds = %208
  call fastcc void @generate(ptr noundef nonnull @.str.7) #29
  br label %82

214:                                              ; preds = %172
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  call fastcc void @generate(ptr noundef nonnull @.str.8) #29
  %215 = load ptr, ptr %45, align 8, !tbaa !28
  call fastcc void @generate(ptr noundef %215) #29
  %216 = load ptr, ptr %45, align 8, !tbaa !28
  call void @free(ptr noundef %216) #29
  br label %82

217:                                              ; preds = %172
  %218 = load i32, ptr @break_label, align 4, !tbaa !12
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.9) #29
  br label %82

221:                                              ; preds = %217
  %222 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %218) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

223:                                              ; preds = %172
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.11) #29
  %224 = load i32, ptr @continue_label, align 4, !tbaa !12
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.12) #29
  br label %82

227:                                              ; preds = %223
  %228 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %224) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

229:                                              ; preds = %172
  call void @exit(i32 noundef 0) #32
  unreachable

230:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.13) #29
  br label %82

231:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.14) #29
  br label %82

232:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.15) #29
  br label %82

233:                                              ; preds = %172
  %234 = load i32, ptr @break_label, align 4, !tbaa !12
  %235 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  store i32 %234, ptr %235, align 4, !tbaa !26
  %236 = load i32, ptr @next_label, align 4, !tbaa !12
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr @next_label, align 4, !tbaa !12
  store i32 %236, ptr @break_label, align 4, !tbaa !12
  br label %82

238:                                              ; preds = %172
  %239 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !26
  %241 = icmp sgt i32 %240, 1
  br i1 %241, label %242, label %243

242:                                              ; preds = %238
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.16) #29
  br label %243

243:                                              ; preds = %242, %238
  %244 = load i32, ptr @next_label, align 4, !tbaa !12
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr @next_label, align 4, !tbaa !12
  store i32 %244, ptr %239, align 4, !tbaa !26
  %246 = icmp slt i32 %244, 0
  %247 = select i1 %246, ptr @.str.17, ptr @.str.18
  %248 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) %247, i32 noundef %244) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

249:                                              ; preds = %172
  %250 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  %251 = load i32, ptr %250, align 4, !tbaa !26
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  call fastcc void @generate(ptr noundef nonnull @.str.19) #29
  br label %254

254:                                              ; preds = %253, %249
  %255 = load i32, ptr @next_label, align 4, !tbaa !12
  %256 = add nsw i32 %255, 1
  store i32 %256, ptr @next_label, align 4, !tbaa !12
  store i32 %255, ptr %250, align 4, !tbaa !26
  %257 = load i32, ptr @break_label, align 4, !tbaa !12
  %258 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %255, i32 noundef %257) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %259 = load i32, ptr @continue_label, align 4, !tbaa !12
  store i32 %259, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %260 = load i32, ptr @next_label, align 4, !tbaa !12
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr @next_label, align 4, !tbaa !12
  store i32 %260, ptr @continue_label, align 4, !tbaa !12
  %262 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %260) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

263:                                              ; preds = %172
  %264 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  %265 = load i32, ptr %264, align 4, !tbaa !26
  %266 = icmp sgt i32 %265, 1
  br i1 %266, label %267, label %269

267:                                              ; preds = %263
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.21) #29
  %268 = load i32, ptr %264, align 4, !tbaa !26
  br label %269

269:                                              ; preds = %267, %263
  %270 = phi i32 [ %268, %267 ], [ %265, %263 ]
  %271 = icmp slt i32 %270, 0
  %272 = getelementptr %struct.YYSTYPE, ptr %44, i64 -6, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !26
  %274 = getelementptr %struct.YYSTYPE, ptr %44, i64 -3, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !26
  %276 = select i1 %271, ptr @.str.22, ptr @.str.23
  %277 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) %276, i32 noundef %273, i32 noundef %275) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

278:                                              ; preds = %172
  %279 = load i32, ptr @continue_label, align 4, !tbaa !12
  %280 = load i32, ptr @break_label, align 4, !tbaa !12
  %281 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %279, i32 noundef %280) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %282 = getelementptr %struct.YYSTYPE, ptr %44, i64 -11, i32 2
  %283 = load i32, ptr %282, align 4, !tbaa !26
  store i32 %283, ptr @break_label, align 4, !tbaa !12
  %284 = getelementptr %struct.YYSTYPE, ptr %44, i64 -3, i32 2
  %285 = load i32, ptr %284, align 4, !tbaa !26
  store i32 %285, ptr @continue_label, align 4, !tbaa !12
  br label %82

286:                                              ; preds = %172
  %287 = load i32, ptr @if_label, align 4, !tbaa !12
  %288 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  store i32 %287, ptr %288, align 4, !tbaa !26
  %289 = load i32, ptr @next_label, align 4, !tbaa !12
  %290 = add nsw i32 %289, 1
  store i32 %290, ptr @next_label, align 4, !tbaa !12
  store i32 %289, ptr @if_label, align 4, !tbaa !12
  %291 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %289) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

292:                                              ; preds = %172
  %293 = load i32, ptr @if_label, align 4, !tbaa !12
  %294 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %293) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %295 = getelementptr %struct.YYSTYPE, ptr %44, i64 -3, i32 2
  %296 = load i32, ptr %295, align 4, !tbaa !26
  store i32 %296, ptr @if_label, align 4, !tbaa !12
  br label %82

297:                                              ; preds = %172
  %298 = load i32, ptr @next_label, align 4, !tbaa !12
  %299 = add nsw i32 %298, 1
  store i32 %299, ptr @next_label, align 4, !tbaa !12
  %300 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  store i32 %298, ptr %300, align 4, !tbaa !26
  %301 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %298) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

302:                                              ; preds = %172
  %303 = load i32, ptr @break_label, align 4, !tbaa !12
  %304 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  store i32 %303, ptr %304, align 4, !tbaa !26
  %305 = load i32, ptr @next_label, align 4, !tbaa !12
  %306 = add nsw i32 %305, 1
  store i32 %306, ptr @next_label, align 4, !tbaa !12
  store i32 %305, ptr @break_label, align 4, !tbaa !12
  %307 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %305) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

308:                                              ; preds = %172
  %309 = getelementptr %struct.YYSTYPE, ptr %44, i64 -5, i32 2
  %310 = load i32, ptr %309, align 4, !tbaa !26
  %311 = load i32, ptr @break_label, align 4, !tbaa !12
  %312 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %310, i32 noundef %311) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %313 = getelementptr %struct.YYSTYPE, ptr %44, i64 -2, i32 2
  %314 = load i32, ptr %313, align 4, !tbaa !26
  store i32 %314, ptr @break_label, align 4, !tbaa !12
  br label %82

315:                                              ; preds = %172
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

316:                                              ; preds = %172
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.25) #29
  br label %82

317:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.26) #29
  %318 = load ptr, ptr %45, align 8, !tbaa !28
  call fastcc void @generate(ptr noundef %318) #29
  %319 = load ptr, ptr %45, align 8, !tbaa !28
  call void @free(ptr noundef %319) #29
  br label %82

320:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.27) #29
  br label %82

321:                                              ; preds = %172
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.28) #29
  %322 = load i32, ptr @next_label, align 4, !tbaa !12
  %323 = add nsw i32 %322, 1
  store i32 %323, ptr @next_label, align 4, !tbaa !12
  %324 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  store i32 %322, ptr %324, align 4, !tbaa !26
  %325 = load i32, ptr @if_label, align 4, !tbaa !12
  %326 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %322, i32 noundef %325) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %327 = load i32, ptr %324, align 4, !tbaa !26
  store i32 %327, ptr @if_label, align 4, !tbaa !12
  br label %82

328:                                              ; preds = %172
  %329 = getelementptr %struct.YYSTYPE, ptr %44, i64 -3, i32 3
  %330 = load ptr, ptr %329, align 8, !tbaa !29
  %331 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !29
  %333 = icmp eq ptr %330, null
  br i1 %333, label %356, label %334

334:                                              ; preds = %353, %328
  %335 = phi ptr [ %354, %353 ], [ %330, %328 ]
  %336 = getelementptr inbounds %struct.arg_list, ptr %335, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !30
  %338 = icmp eq ptr %337, null
  br i1 %338, label %349, label %339

339:                                              ; preds = %345, %334
  %340 = phi ptr [ %347, %345 ], [ %337, %334 ]
  %341 = load i32, ptr %340, align 8, !tbaa !32
  %342 = load i32, ptr %335, align 8, !tbaa !32
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.218) #30
  br label %345

345:                                              ; preds = %344, %339
  %346 = getelementptr inbounds %struct.arg_list, ptr %340, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !30
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %339, !llvm.loop !33

349:                                              ; preds = %345, %334
  %350 = load i32, ptr %335, align 8, !tbaa !32
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.1.221) #30
  br label %353

353:                                              ; preds = %352, %349
  %354 = load ptr, ptr %336, align 8, !tbaa !30
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %334, !llvm.loop !34

356:                                              ; preds = %353, %328
  %357 = icmp eq ptr %332, null
  br i1 %357, label %393, label %358

358:                                              ; preds = %373, %356
  %359 = phi ptr [ %374, %373 ], [ %332, %356 ]
  %360 = getelementptr inbounds %struct.arg_list, ptr %359, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !30
  %362 = icmp eq ptr %361, null
  br i1 %362, label %376, label %363

363:                                              ; preds = %369, %358
  %364 = phi ptr [ %371, %369 ], [ %361, %358 ]
  %365 = load i32, ptr %364, align 8, !tbaa !32
  %366 = load i32, ptr %359, align 8, !tbaa !32
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.2.224) #30
  br label %369

369:                                              ; preds = %368, %363
  %370 = getelementptr inbounds %struct.arg_list, ptr %364, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !30
  %372 = icmp eq ptr %371, null
  br i1 %372, label %373, label %363, !llvm.loop !35

373:                                              ; preds = %369
  %374 = load ptr, ptr %360, align 8, !tbaa !30
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %358, !llvm.loop !36

376:                                              ; preds = %373, %358
  br i1 %333, label %393, label %377

377:                                              ; preds = %389, %376
  %378 = phi ptr [ %391, %389 ], [ %330, %376 ]
  br label %379

379:                                              ; preds = %385, %377
  %380 = phi ptr [ %332, %377 ], [ %387, %385 ]
  %381 = load i32, ptr %380, align 8, !tbaa !32
  %382 = load i32, ptr %378, align 8, !tbaa !32
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.3.225) #30
  br label %385

385:                                              ; preds = %384, %379
  %386 = getelementptr inbounds %struct.arg_list, ptr %380, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !30
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %379, !llvm.loop !37

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.arg_list, ptr %378, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !30
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %377, !llvm.loop !38

393:                                              ; preds = %389, %376, %356
  %394 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 -5
  %395 = load ptr, ptr %394, align 8, !tbaa !28
  %396 = call fastcc i32 @lookup(ptr noundef %395, i32 noundef 2) #29
  %397 = load ptr, ptr %329, align 8, !tbaa !29
  %398 = call fastcc ptr @arg_str(ptr noundef %397, i32 noundef 1) #29
  %399 = load ptr, ptr %331, align 8, !tbaa !29
  %400 = call fastcc ptr @arg_str(ptr noundef %399, i32 noundef 1) #29
  %401 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %396, ptr noundef %398, ptr noundef %400) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %402 = load ptr, ptr %329, align 8, !tbaa !29
  %403 = icmp eq ptr %402, null
  br i1 %403, label %409, label %404

404:                                              ; preds = %404, %393
  %405 = phi ptr [ %407, %404 ], [ %402, %393 ]
  %406 = getelementptr inbounds %struct.arg_list, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !30
  call void @free(ptr noundef nonnull %405) #29
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %404, !llvm.loop !39

409:                                              ; preds = %404, %393
  %410 = load ptr, ptr %331, align 8, !tbaa !29
  %411 = icmp eq ptr %410, null
  br i1 %411, label %417, label %412

412:                                              ; preds = %412, %409
  %413 = phi ptr [ %415, %412 ], [ %410, %409 ]
  %414 = getelementptr inbounds %struct.arg_list, ptr %413, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !30
  call void @free(ptr noundef nonnull %413) #29
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %412, !llvm.loop !39

417:                                              ; preds = %412, %409
  %418 = load i32, ptr @next_label, align 4, !tbaa !12
  %419 = getelementptr %struct.YYSTYPE, ptr %44, i64 -6, i32 2
  store i32 %418, ptr %419, align 4, !tbaa !26
  store i32 0, ptr @next_label, align 4, !tbaa !12
  br label %82

420:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.31) #29
  %421 = getelementptr %struct.YYSTYPE, ptr %44, i64 -10, i32 2
  %422 = load i32, ptr %421, align 4, !tbaa !26
  store i32 %422, ptr @next_label, align 4, !tbaa !12
  br label %82

423:                                              ; preds = %172
  store ptr null, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

424:                                              ; preds = %172
  store ptr null, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

425:                                              ; preds = %172
  %426 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 3
  %427 = load ptr, ptr %426, align 8, !tbaa !29
  store ptr %427, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

428:                                              ; preds = %172
  %429 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !29
  store ptr %430, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

431:                                              ; preds = %172
  %432 = load ptr, ptr %45, align 8, !tbaa !28
  %433 = call fastcc i32 @lookup(ptr noundef %432, i32 noundef 0) #29
  %434 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %435 = shl i32 %433, 24
  %436 = ashr exact i32 %435, 24
  store i32 %436, ptr %434, align 8, !tbaa !32
  %437 = getelementptr inbounds %struct.arg_list, ptr %434, i64 0, i32 1
  store ptr null, ptr %437, align 8, !tbaa !30
  store ptr %434, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

438:                                              ; preds = %172
  %439 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 -1
  %440 = load ptr, ptr %439, align 8, !tbaa !28
  %441 = call fastcc i32 @lookup(ptr noundef %440, i32 noundef 1) #29
  %442 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %443 = shl i32 %441, 24
  %444 = ashr exact i32 %443, 24
  store i32 %444, ptr %442, align 8, !tbaa !32
  %445 = getelementptr inbounds %struct.arg_list, ptr %442, i64 0, i32 1
  store ptr null, ptr %445, align 8, !tbaa !30
  store ptr %442, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

446:                                              ; preds = %172
  %447 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 3
  %448 = load ptr, ptr %447, align 8, !tbaa !29
  %449 = load ptr, ptr %45, align 8, !tbaa !28
  %450 = call fastcc i32 @lookup(ptr noundef %449, i32 noundef 0) #29
  %451 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %452 = shl i32 %450, 24
  %453 = ashr exact i32 %452, 24
  store i32 %453, ptr %451, align 8, !tbaa !32
  %454 = getelementptr inbounds %struct.arg_list, ptr %451, i64 0, i32 1
  store ptr %448, ptr %454, align 8, !tbaa !30
  store ptr %451, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

455:                                              ; preds = %172
  %456 = getelementptr %struct.YYSTYPE, ptr %44, i64 -3, i32 3
  %457 = load ptr, ptr %456, align 8, !tbaa !29
  %458 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 -1
  %459 = load ptr, ptr %458, align 8, !tbaa !28
  %460 = call fastcc i32 @lookup(ptr noundef %459, i32 noundef 1) #29
  %461 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %462 = shl i32 %460, 24
  %463 = ashr exact i32 %462, 24
  store i32 %463, ptr %461, align 8, !tbaa !32
  %464 = getelementptr inbounds %struct.arg_list, ptr %461, i64 0, i32 1
  store ptr %457, ptr %464, align 8, !tbaa !30
  store ptr %461, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

465:                                              ; preds = %172
  store ptr null, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

466:                                              ; preds = %172
  %467 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %468 = load i32, ptr %467, align 4, !tbaa !26
  %469 = icmp sgt i32 %468, 1
  br i1 %469, label %470, label %471

470:                                              ; preds = %466
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.32) #29
  br label %471

471:                                              ; preds = %470, %466
  %472 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store i32 0, ptr %472, align 8, !tbaa !32
  %473 = getelementptr inbounds %struct.arg_list, ptr %472, i64 0, i32 1
  store ptr null, ptr %473, align 8, !tbaa !30
  store ptr %472, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

474:                                              ; preds = %172
  %475 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 -1
  %476 = load ptr, ptr %475, align 8, !tbaa !28
  %477 = call fastcc i32 @lookup(ptr noundef %476, i32 noundef 1) #29
  %478 = sub nsw i32 0, %477
  %479 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %478) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %480 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store i32 1, ptr %480, align 8, !tbaa !32
  %481 = getelementptr inbounds %struct.arg_list, ptr %480, i64 0, i32 1
  store ptr null, ptr %481, align 8, !tbaa !30
  store ptr %480, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

482:                                              ; preds = %172
  %483 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %484 = load i32, ptr %483, align 4, !tbaa !26
  %485 = icmp sgt i32 %484, 1
  br i1 %485, label %486, label %487

486:                                              ; preds = %482
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.32) #29
  br label %487

487:                                              ; preds = %486, %482
  %488 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !29
  %490 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store i32 0, ptr %490, align 8, !tbaa !32
  %491 = getelementptr inbounds %struct.arg_list, ptr %490, i64 0, i32 1
  store ptr %489, ptr %491, align 8, !tbaa !30
  store ptr %490, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

492:                                              ; preds = %172
  %493 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 -1
  %494 = load ptr, ptr %493, align 8, !tbaa !28
  %495 = call fastcc i32 @lookup(ptr noundef %494, i32 noundef 1) #29
  %496 = sub nsw i32 0, %495
  %497 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %496) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %498 = getelementptr %struct.YYSTYPE, ptr %44, i64 -3, i32 3
  %499 = load ptr, ptr %498, align 8, !tbaa !29
  %500 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store i32 1, ptr %500, align 8, !tbaa !32
  %501 = getelementptr inbounds %struct.arg_list, ptr %500, i64 0, i32 1
  store ptr %499, ptr %501, align 8, !tbaa !30
  store ptr %500, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !29
  br label %82

502:                                              ; preds = %172
  store i32 -1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.34) #29
  br label %82

503:                                              ; preds = %172
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  call fastcc void @generate(ptr noundef nonnull @.str.35) #29
  br label %82

504:                                              ; preds = %172
  %505 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %506 = load i32, ptr %505, align 4, !tbaa !26
  %507 = icmp sgt i32 %506, 1
  br i1 %507, label %508, label %82

508:                                              ; preds = %504
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.36) #29
  br label %82

509:                                              ; preds = %172
  %510 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 1
  %511 = load i8, ptr %510, align 8, !tbaa !40
  %512 = icmp eq i8 %511, 61
  br i1 %512, label %82, label %513

513:                                              ; preds = %509
  %514 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  %515 = load i32, ptr %514, align 4, !tbaa !26
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %517, label %520

517:                                              ; preds = %513
  %518 = sub nsw i32 0, %515
  %519 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %518) #29
  br label %522

520:                                              ; preds = %513
  %521 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %515) #29
  br label %522

522:                                              ; preds = %520, %517
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

523:                                              ; preds = %172
  %524 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %525 = load i32, ptr %524, align 4, !tbaa !26
  %526 = icmp sgt i32 %525, 1
  br i1 %526, label %527, label %528

527:                                              ; preds = %523
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.39) #29
  br label %528

528:                                              ; preds = %527, %523
  %529 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 1
  %530 = load i8, ptr %529, align 8, !tbaa !40
  %531 = icmp eq i8 %530, 61
  br i1 %531, label %533, label %532

532:                                              ; preds = %528
  store i8 %530, ptr @genstr, align 16
  store i8 0, ptr getelementptr inbounds ([80 x i8], ptr @genstr, i64 0, i64 1), align 1
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %533

533:                                              ; preds = %532, %528
  %534 = getelementptr %struct.YYSTYPE, ptr %44, i64 -2, i32 2
  %535 = load i32, ptr %534, align 4, !tbaa !26
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %533
  %538 = sub nsw i32 0, %535
  %539 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %538) #29
  br label %542

540:                                              ; preds = %533
  %541 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %535) #29
  br label %542

542:                                              ; preds = %540, %537
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

543:                                              ; preds = %172
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.43) #29
  %544 = load i32, ptr @next_label, align 4, !tbaa !12
  %545 = add nsw i32 %544, 1
  store i32 %545, ptr @next_label, align 4, !tbaa !12
  %546 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  store i32 %544, ptr %546, align 4, !tbaa !26
  %547 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %544) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

548:                                              ; preds = %172
  %549 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 2
  %550 = load i32, ptr %549, align 4, !tbaa !26
  %551 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %550, i32 noundef %550) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %552 = getelementptr %struct.YYSTYPE, ptr %44, i64 -2, i32 2
  %553 = load i32, ptr %552, align 4, !tbaa !26
  %554 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %555 = load i32, ptr %554, align 4, !tbaa !26
  %556 = or i32 %555, %553
  store i32 %556, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

557:                                              ; preds = %172
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.46) #29
  %558 = load i32, ptr @next_label, align 4, !tbaa !12
  %559 = add nsw i32 %558, 1
  store i32 %559, ptr @next_label, align 4, !tbaa !12
  %560 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  store i32 %558, ptr %560, align 4, !tbaa !26
  %561 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %558) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

562:                                              ; preds = %172
  %563 = load i32, ptr @next_label, align 4, !tbaa !12
  %564 = add nsw i32 %563, 1
  store i32 %564, ptr @next_label, align 4, !tbaa !12
  %565 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 2
  %566 = load i32, ptr %565, align 4, !tbaa !26
  %567 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %566, i32 noundef %563, i32 noundef %566, i32 noundef %563) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %568 = getelementptr %struct.YYSTYPE, ptr %44, i64 -2, i32 2
  %569 = load i32, ptr %568, align 4, !tbaa !26
  %570 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %571 = load i32, ptr %570, align 4, !tbaa !26
  %572 = or i32 %571, %569
  store i32 %572, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

573:                                              ; preds = %172
  %574 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %575 = load i32, ptr %574, align 4, !tbaa !26
  store i32 %575, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.49) #29
  call fastcc void @generate(ptr noundef nonnull @.str.50) #29
  br label %82

576:                                              ; preds = %172
  store i32 3, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %577 = load ptr, ptr %44, align 8, !tbaa !28
  %578 = load i8, ptr %577, align 1, !tbaa !7
  %579 = sext i8 %578 to i32
  switch i32 %579, label %82 [
    i32 61, label %580
    i32 33, label %581
    i32 60, label %582
    i32 62, label %588
  ]

580:                                              ; preds = %576
  call fastcc void @generate(ptr noundef nonnull @.str.51) #29
  br label %82

581:                                              ; preds = %576
  call fastcc void @generate(ptr noundef nonnull @.str.52) #29
  br label %82

582:                                              ; preds = %576
  %583 = getelementptr inbounds i8, ptr %577, i64 1
  %584 = load i8, ptr %583, align 1, !tbaa !7
  %585 = icmp eq i8 %584, 61
  br i1 %585, label %586, label %587

586:                                              ; preds = %582
  call fastcc void @generate(ptr noundef nonnull @.str.53) #29
  br label %82

587:                                              ; preds = %582
  call fastcc void @generate(ptr noundef nonnull @.str.54) #29
  br label %82

588:                                              ; preds = %576
  %589 = getelementptr inbounds i8, ptr %577, i64 1
  %590 = load i8, ptr %589, align 1, !tbaa !7
  %591 = icmp eq i8 %590, 61
  br i1 %591, label %592, label %593

592:                                              ; preds = %588
  call fastcc void @generate(ptr noundef nonnull @.str.55) #29
  br label %82

593:                                              ; preds = %588
  call fastcc void @generate(ptr noundef nonnull @.str.56) #29
  br label %82

594:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.57) #29
  %595 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 2
  %596 = load i32, ptr %595, align 4, !tbaa !26
  %597 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %598 = load i32, ptr %597, align 4, !tbaa !26
  %599 = or i32 %598, %596
  store i32 %599, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

600:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.58) #29
  %601 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 2
  %602 = load i32, ptr %601, align 4, !tbaa !26
  %603 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %604 = load i32, ptr %603, align 4, !tbaa !26
  %605 = or i32 %604, %602
  store i32 %605, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

606:                                              ; preds = %172
  %607 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 1
  %608 = load i8, ptr %607, align 8, !tbaa !40
  store i8 %608, ptr @genstr, align 16, !tbaa !7
  store i8 0, ptr getelementptr inbounds ([80 x i8], ptr @genstr, i64 0, i64 1), align 1, !tbaa !7
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %609 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 2
  %610 = load i32, ptr %609, align 4, !tbaa !26
  %611 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %612 = load i32, ptr %611, align 4, !tbaa !26
  %613 = or i32 %612, %610
  store i32 %613, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

614:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.59) #29
  %615 = getelementptr %struct.YYSTYPE, ptr %44, i64 -1, i32 2
  %616 = load i32, ptr %615, align 4, !tbaa !26
  %617 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %618 = load i32, ptr %617, align 4, !tbaa !26
  %619 = or i32 %618, %616
  store i32 %619, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

620:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.60) #29
  %621 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %622 = load i32, ptr %621, align 4, !tbaa !26
  store i32 %622, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

623:                                              ; preds = %172
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %624 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %625 = load i32, ptr %624, align 4, !tbaa !26
  %626 = icmp slt i32 %625, 0
  br i1 %626, label %627, label %630

627:                                              ; preds = %623
  %628 = sub nsw i32 0, %625
  %629 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %628) #29
  br label %632

630:                                              ; preds = %623
  %631 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %625) #29
  br label %632

632:                                              ; preds = %630, %627
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

633:                                              ; preds = %172
  %634 = load ptr, ptr %45, align 8, !tbaa !28
  %635 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %634) #34
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %636 = and i64 %635, 4294967295
  %637 = icmp eq i64 %636, 1
  br i1 %637, label %638, label %641

638:                                              ; preds = %633
  %639 = load i8, ptr %634, align 1, !tbaa !7
  switch i8 %639, label %641 [
    i8 48, label %643
    i8 49, label %640
  ]

640:                                              ; preds = %638
  br label %643

641:                                              ; preds = %638, %633
  call fastcc void @generate(ptr noundef nonnull @.str.62) #29
  %642 = load ptr, ptr %45, align 8, !tbaa !28
  call fastcc void @generate(ptr noundef %642) #29
  br label %643

643:                                              ; preds = %641, %640, %638
  %644 = phi ptr [ @.str.19, %640 ], [ @.str.63, %641 ], [ @.str.35, %638 ]
  call fastcc void @generate(ptr noundef nonnull %644) #29
  %645 = load ptr, ptr %45, align 8, !tbaa !28
  call void @free(ptr noundef %645) #29
  br label %82

646:                                              ; preds = %172
  %647 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  %648 = load i32, ptr %647, align 4, !tbaa !26
  %649 = or i32 %648, 1
  store i32 %649, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

650:                                              ; preds = %172
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %651 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 3
  %652 = load ptr, ptr %651, align 8, !tbaa !29
  %653 = icmp eq ptr %652, null
  %654 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 -2
  %655 = load ptr, ptr %654, align 8, !tbaa !28
  %656 = call fastcc i32 @lookup(ptr noundef %655, i32 noundef 2) #29
  br i1 %653, label %668, label %657

657:                                              ; preds = %650
  %658 = load ptr, ptr %651, align 8, !tbaa !29
  %659 = call fastcc ptr @arg_str(ptr noundef %658, i32 noundef 0) #29
  %660 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %656, ptr noundef %659) #29
  %661 = load ptr, ptr %651, align 8, !tbaa !29
  %662 = icmp eq ptr %661, null
  br i1 %662, label %670, label %663

663:                                              ; preds = %663, %657
  %664 = phi ptr [ %666, %663 ], [ %661, %657 ]
  %665 = getelementptr inbounds %struct.arg_list, ptr %664, i64 0, i32 1
  %666 = load ptr, ptr %665, align 8, !tbaa !30
  call void @free(ptr noundef nonnull %664) #29
  %667 = icmp eq ptr %666, null
  br i1 %667, label %670, label %663, !llvm.loop !39

668:                                              ; preds = %650
  %669 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %656) #29
  br label %670

670:                                              ; preds = %668, %663, %657
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

671:                                              ; preds = %172
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %672 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 2
  %673 = load i32, ptr %672, align 4, !tbaa !26
  %674 = icmp slt i32 %673, 0
  %675 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 1
  %676 = load i8, ptr %675, align 8, !tbaa !40
  %677 = icmp eq i8 %676, 43
  br i1 %674, label %678, label %684

678:                                              ; preds = %671
  %679 = sub nsw i32 0, %673
  br i1 %677, label %680, label %682

680:                                              ; preds = %678
  %681 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %679, i32 noundef %679) #29
  br label %689

682:                                              ; preds = %678
  %683 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %679, i32 noundef %679) #29
  br label %689

684:                                              ; preds = %671
  br i1 %677, label %685, label %687

685:                                              ; preds = %684
  %686 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %673, i32 noundef %673) #29
  br label %689

687:                                              ; preds = %684
  %688 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %673, i32 noundef %673) #29
  br label %689

689:                                              ; preds = %687, %685, %682, %680
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

690:                                              ; preds = %172
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  %691 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  %692 = load i32, ptr %691, align 4, !tbaa !26
  %693 = icmp slt i32 %692, 0
  br i1 %693, label %694, label %706

694:                                              ; preds = %690
  %695 = sub nsw i32 0, %692
  %696 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %695) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %697 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 1
  %698 = load i8, ptr %697, align 8, !tbaa !40
  %699 = icmp eq i8 %698, 43
  %700 = load i32, ptr %691, align 4, !tbaa !26
  %701 = sub nsw i32 0, %700
  br i1 %699, label %702, label %704

702:                                              ; preds = %694
  %703 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %701) #29
  br label %716

704:                                              ; preds = %694
  %705 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %701) #29
  br label %716

706:                                              ; preds = %690
  %707 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %692) #29
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  %708 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 1, i32 1
  %709 = load i8, ptr %708, align 8, !tbaa !40
  %710 = icmp eq i8 %709, 43
  %711 = load i32, ptr %691, align 4, !tbaa !26
  br i1 %710, label %712, label %714

712:                                              ; preds = %706
  %713 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %711) #29
  br label %716

714:                                              ; preds = %706
  %715 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %711) #29
  br label %716

716:                                              ; preds = %714, %712, %704, %702
  call fastcc void @generate(ptr noundef nonnull @genstr) #29
  br label %82

717:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.75) #29
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

718:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.76) #29
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

719:                                              ; preds = %172
  call fastcc void @generate(ptr noundef nonnull @.str.77) #29
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

720:                                              ; preds = %172
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.78) #29
  call fastcc void @generate(ptr noundef nonnull @.str.79) #29
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

721:                                              ; preds = %172
  %722 = load ptr, ptr %45, align 8, !tbaa !28
  %723 = call fastcc i32 @lookup(ptr noundef %722, i32 noundef 0) #29
  store i32 %723, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

724:                                              ; preds = %172
  %725 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 0, i32 2
  %726 = load i32, ptr %725, align 4, !tbaa !26
  %727 = icmp sgt i32 %726, 1
  br i1 %727, label %728, label %729

728:                                              ; preds = %724
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.80) #29
  br label %729

729:                                              ; preds = %728, %724
  %730 = getelementptr inbounds %struct.YYSTYPE, ptr %44, i64 -2
  %731 = load ptr, ptr %730, align 8, !tbaa !28
  %732 = call fastcc i32 @lookup(ptr noundef %731, i32 noundef 1) #29
  store i32 %732, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

733:                                              ; preds = %172
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

734:                                              ; preds = %172
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

735:                                              ; preds = %172
  store i32 2, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

736:                                              ; preds = %172
  store i32 3, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !26
  br label %82

737:                                              ; preds = %134, %130, %118, %106, %40
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %3) #33
  %738 = load i1, ptr @compile_only, align 1
  br i1 %738, label %739, label %741

739:                                              ; preds = %737
  %740 = tail call i32 @putchar(i32 10)
  br label %741

741:                                              ; preds = %739, %737
  tail call void @exit(i32 noundef 0) #32
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @more_functions() unnamed_addr #3 {
  %1 = load i32, ptr @f_count, align 4, !tbaa !12
  %2 = load ptr, ptr @functions, align 8, !tbaa !14
  %3 = load ptr, ptr @f_names, align 8, !tbaa !14
  %4 = add nsw i32 %1, 32
  store i32 %4, ptr @f_count, align 4, !tbaa !12
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 %5, 168
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #31
  store ptr %7, ptr @functions, align 8, !tbaa !14
  %8 = shl nsw i64 %5, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #31
  store ptr %9, ptr @f_names, align 8, !tbaa !14
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = zext i32 %1 to i64
  br label %19

13:                                               ; preds = %0
  %14 = icmp sgt i32 %1, -32
  br i1 %14, label %17, label %44

15:                                               ; preds = %19
  %16 = zext i32 %1 to i64
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i64 [ %16, %15 ], [ 0, %13 ]
  br label %28

19:                                               ; preds = %19, %11
  %20 = phi i64 [ 0, %11 ], [ %26, %19 ]
  %21 = getelementptr inbounds %struct.bc_function, ptr %7, i64 %20
  %22 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %21, ptr noundef nonnull align 8 dereferenceable(168) %22, i64 168, i1 false), !tbaa.struct !41
  %23 = getelementptr inbounds ptr, ptr %3, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = getelementptr inbounds ptr, ptr %9, i64 %20
  store ptr %24, ptr %25, align 8, !tbaa !14
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %12
  br i1 %27, label %15, label %19, !llvm.loop !42

28:                                               ; preds = %28, %17
  %29 = phi i64 [ %18, %17 ], [ %38, %28 ]
  %30 = phi i64 [ 0, %17 ], [ %41, %28 ]
  %31 = add nuw nsw i64 %30, %18
  %32 = mul nuw nsw i64 %31, 168
  %33 = add nuw nsw i64 %32, 8
  %34 = getelementptr inbounds %struct.bc_function, ptr %7, i64 %29
  store i8 0, ptr %34, align 8, !tbaa !43
  %35 = getelementptr i8, ptr %7, i64 %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %35, i8 0, i64 128, i1 false), !tbaa !14
  %36 = getelementptr inbounds %struct.bc_function, ptr %7, i64 %29, i32 2
  store i32 0, ptr %36, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.bc_function, ptr %7, i64 %29, i32 3
  %38 = add nuw nsw i64 %29, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  %39 = trunc i64 %38 to i32
  %40 = icmp sgt i32 %4, %39
  %41 = add nuw nsw i64 %30, 1
  br i1 %40, label %28, label %42, !llvm.loop !46

42:                                               ; preds = %28
  %43 = icmp eq i32 %1, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %42, %13
  tail call void @free(ptr noundef %2) #29
  tail call void @free(ptr noundef %3) #29
  br label %45

45:                                               ; preds = %44, %42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @more_variables() unnamed_addr #3 {
  %1 = load i32, ptr @v_count, align 4, !tbaa !12
  %2 = load ptr, ptr @variables, align 8, !tbaa !14
  %3 = load ptr, ptr @v_names, align 8, !tbaa !14
  %4 = add nsw i32 %1, 32
  store i32 %4, ptr @v_count, align 4, !tbaa !12
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #31
  store ptr %7, ptr @variables, align 8, !tbaa !14
  %8 = tail call noalias ptr @malloc(i64 noundef %6) #31
  store ptr %8, ptr @v_names, align 8, !tbaa !14
  %9 = icmp sgt i32 %1, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = zext i32 %1 to i64
  br label %23

12:                                               ; preds = %0
  %13 = icmp sgt i32 %1, -29
  br i1 %13, label %16, label %30

14:                                               ; preds = %23
  %15 = shl nuw nsw i64 %11, 3
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ 24, %12 ], [ %15, %14 ]
  %18 = zext i32 %4 to i64
  %19 = getelementptr i8, ptr %7, i64 %17
  %20 = shl nuw nsw i64 %18, 3
  %21 = sub nsw i64 %20, %17
  tail call void @llvm.memset.p0.i64(ptr align 8 %19, i8 0, i64 %21, i1 false), !tbaa !14
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %31, label %30

23:                                               ; preds = %23, %10
  %24 = phi i64 [ 3, %10 ], [ %28, %23 ]
  %25 = getelementptr inbounds ptr, ptr %2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = getelementptr inbounds ptr, ptr %7, i64 %24
  store ptr %26, ptr %27, align 8, !tbaa !14
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %14, label %23, !llvm.loop !47

30:                                               ; preds = %16, %12
  tail call void @free(ptr noundef %2) #29
  tail call void @free(ptr noundef %3) #29
  br label %31

31:                                               ; preds = %30, %16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @more_arrays() unnamed_addr #3 {
  %1 = load i32, ptr @a_count, align 4, !tbaa !12
  %2 = load ptr, ptr @arrays, align 8, !tbaa !14
  %3 = load ptr, ptr @a_names, align 8, !tbaa !14
  %4 = add nsw i32 %1, 32
  store i32 %4, ptr @a_count, align 4, !tbaa !12
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #31
  store ptr %7, ptr @arrays, align 8, !tbaa !14
  %8 = tail call noalias ptr @malloc(i64 noundef %6) #31
  store ptr %8, ptr @a_names, align 8, !tbaa !14
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = zext i32 %1 to i64
  br label %23

12:                                               ; preds = %23, %0
  %13 = phi i32 [ 1, %0 ], [ %1, %23 ]
  %14 = load i32, ptr @v_count, align 4, !tbaa !12
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = zext i32 %13 to i64
  %18 = zext i32 %14 to i64
  %19 = shl nuw nsw i64 %17, 3
  %20 = getelementptr i8, ptr %7, i64 %19
  %21 = sub nsw i64 %18, %17
  %22 = shl nsw i64 %21, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %22, i1 false), !tbaa !14
  br label %30

23:                                               ; preds = %23, %10
  %24 = phi i64 [ 1, %10 ], [ %28, %23 ]
  %25 = getelementptr inbounds ptr, ptr %2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = getelementptr inbounds ptr, ptr %7, i64 %24
  store ptr %26, ptr %27, align 8, !tbaa !14
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %12, label %23, !llvm.loop !48

30:                                               ; preds = %16, %12
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void @free(ptr noundef %2) #29
  tail call void @free(ptr noundef %3) #29
  br label %33

33:                                               ; preds = %32, %30
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @clear_func(i8 noundef signext %0) unnamed_addr #3 {
  %2 = load ptr, ptr @functions, align 8, !tbaa !14
  %3 = sext i8 %0 to i64
  %4 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3
  store i8 0, ptr %4, align 8, !tbaa !43
  br label %5

5:                                                ; preds = %11, %1
  %6 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %7 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 1, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %8) #29
  store ptr null, ptr %7, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %10, %5
  %12 = add nuw nsw i64 %6, 1
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %14, label %5, !llvm.loop !49

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 2
  store i32 0, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %22, %19 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.arg_list, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  tail call void @free(ptr noundef nonnull %20) #29
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !39

24:                                               ; preds = %19
  store ptr null, ptr %16, align 8, !tbaa !50
  br label %25

25:                                               ; preds = %24, %14
  %26 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %32, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.arg_list, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  tail call void @free(ptr noundef nonnull %30) #29
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !39

34:                                               ; preds = %29
  store ptr null, ptr %26, align 8, !tbaa !51
  br label %35

35:                                               ; preds = %34, %25
  %36 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %39, %35
  %40 = phi ptr [ %42, %39 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.bc_label_group, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !53
  tail call void @free(ptr noundef nonnull %40) #29
  store ptr %42, ptr %36, align 8, !tbaa !52
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %39, !llvm.loop !55

44:                                               ; preds = %39, %35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @use_quit(i32 %0) #3 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.93)
  %3 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @use_quit) #29
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_gen() unnamed_addr #3 {
  store i32 0, ptr @break_label, align 4, !tbaa !12
  store i32 0, ptr @continue_label, align 4, !tbaa !12
  store i32 1, ptr @next_label, align 4, !tbaa !12
  store i32 2, ptr @out_count, align 4, !tbaa !12
  %1 = load i1, ptr @compile_only, align 1
  br i1 %1, label %2, label %4

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.231) #30
  br label %5

4:                                                ; preds = %0
  tail call fastcc void @clear_func(i8 noundef signext 0) #29
  store i32 0, ptr @load_adr, align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !18
  store i1 false, ptr @load_str, align 1
  store i1 false, ptr @load_const, align 1
  br label %5

5:                                                ; preds = %4, %2
  store i1 false, ptr @had_error, align 4
  store i1 false, ptr @did_gen, align 1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @open_new_file() unnamed_addr #3 {
  store i32 1, ptr @line_no, align 4, !tbaa !12
  %1 = load i1, ptr @is_std_in, align 1
  br i1 %1, label %27, label %2

2:                                                ; preds = %0
  %3 = load i1, ptr @use_math, align 1
  %4 = load i1, ptr @first_file, align 1
  %5 = select i1 %3, i1 %4, i1 false
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @lookup(ptr noundef nonnull @.str.4.85, i32 noundef 2) #29
  %8 = tail call fastcc i32 @lookup(ptr noundef nonnull @.str.5.86, i32 noundef 2) #29
  %9 = tail call fastcc i32 @lookup(ptr noundef nonnull @.str.6.87, i32 noundef 2) #29
  %10 = tail call fastcc i32 @lookup(ptr noundef nonnull @.str.7.88, i32 noundef 2) #29
  %11 = tail call fastcc i32 @lookup(ptr noundef nonnull @.str.8.89, i32 noundef 2) #29
  %12 = tail call fastcc i32 @lookup(ptr noundef nonnull @.str.9.90, i32 noundef 2) #29
  tail call fastcc void @load_code(ptr noundef nonnull @libmath) #29
  %13 = load i1, ptr @first_file, align 1
  %14 = load i32, ptr @optind, align 4, !tbaa !12
  %15 = icmp sgt i32 %14, -1
  tail call void @llvm.assume(i1 %15)
  %16 = load ptr, ptr @stdin, align 8, !tbaa !14
  br i1 %13, label %25, label %21

17:                                               ; preds = %2
  %18 = load i32, ptr @optind, align 4, !tbaa !12
  %19 = icmp sgt i32 %18, -1
  tail call void @llvm.assume(i1 %19)
  %20 = load ptr, ptr @stdin, align 8, !tbaa !14
  br i1 %4, label %25, label %21

21:                                               ; preds = %17, %6
  %22 = phi ptr [ %16, %6 ], [ %20, %17 ]
  %23 = load ptr, ptr @yyin, align 8, !tbaa !14
  %24 = tail call i32 @fclose(ptr noundef %23) #30
  br label %25

25:                                               ; preds = %21, %17, %6
  %26 = phi ptr [ %16, %6 ], [ %22, %21 ], [ %20, %17 ]
  store ptr %26, ptr @yyin, align 8, !tbaa !14
  store i1 false, ptr @first_file, align 1
  store i1 true, ptr @is_std_in, align 1
  br label %27

27:                                               ; preds = %25, %0
  %28 = phi i32 [ 1, %25 ], [ 0, %0 ]
  ret i32 %28
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @yyerror(ptr nocapture noundef readonly %0, ...) unnamed_addr #7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #33
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i1, ptr @is_std_in, align 1
  call void @llvm.assume(i1 %3)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !14
  %5 = load i32, ptr @line_no, align 4, !tbaa !12
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.37.227, ptr noundef nonnull @.str.36.226, i32 noundef %5) #35
  %7 = load ptr, ptr @stderr, align 8, !tbaa !14
  %8 = call i32 @vfprintf(ptr noundef %7, ptr noundef %0, ptr noundef nonnull %2) #35
  %9 = load ptr, ptr @stderr, align 8, !tbaa !14
  %10 = call i32 @fputc(i32 10, ptr %9)
  store i1 true, ptr @had_error, align 4
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #33
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @yylex() unnamed_addr #3 {
  %1 = load i1, ptr @yy_init, align 4
  br i1 %1, label %43, label %2

2:                                                ; preds = %0
  %3 = load i1, ptr @yy_start, align 4
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store i1 true, ptr @yy_start, align 4
  br label %5

5:                                                ; preds = %4, %2
  %6 = load ptr, ptr @yyin, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load ptr, ptr @stdin, align 8, !tbaa !14
  store ptr %9, ptr @yyin, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %12 = load ptr, ptr @yyout, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr @stdout, align 8, !tbaa !14
  store ptr %15, ptr @yyout, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i1, ptr @yy_current_buffer.init, align 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  store ptr %11, ptr @yy_current_buffer.body, align 16, !tbaa !56
  %19 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  store i8 10, ptr %19, align 1, !tbaa !7
  store i32 1, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 28), align 4, !tbaa !59
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 0, ptr %20, align 1, !tbaa !7
  %21 = getelementptr inbounds i8, ptr %19, i64 2
  store i8 0, ptr %21, align 1, !tbaa !7
  %22 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %23, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 16), align 16, !tbaa !60
  store i32 0, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 32), align 16, !tbaa !61
  %24 = load i32, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 28), align 4, !tbaa !59
  %25 = load ptr, ptr @yy_current_buffer.body, align 16, !tbaa !56
  %26 = load i8, ptr %23, align 1, !tbaa !7
  br label %38

27:                                               ; preds = %16
  store i32 16384, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 24), align 8, !tbaa !62
  %28 = tail call noalias dereferenceable_or_null(16386) ptr @malloc(i64 noundef 16386) #31
  store ptr %28, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load ptr, ptr @stderr, align 8, !tbaa !14
  %32 = tail call i32 @fputs(ptr noundef nonnull @.str.6.147, ptr noundef %31) #35
  %33 = load ptr, ptr @stderr, align 8, !tbaa !14
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %33) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

35:                                               ; preds = %27
  store ptr %11, ptr @yy_current_buffer.body, align 16, !tbaa !56
  store i8 10, ptr %28, align 1, !tbaa !7
  store i32 1, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 28), align 4, !tbaa !59
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 0, ptr %36, align 1, !tbaa !7
  %37 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 0, ptr %37, align 1, !tbaa !7
  store ptr %36, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 16), align 16, !tbaa !60
  store i32 0, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 32), align 16, !tbaa !61
  store i1 true, ptr @yy_current_buffer.init, align 1
  br label %38

38:                                               ; preds = %35, %18
  %39 = phi i8 [ 0, %35 ], [ %26, %18 ]
  %40 = phi ptr [ %11, %35 ], [ %25, %18 ]
  %41 = phi i32 [ 1, %35 ], [ %24, %18 ]
  %42 = phi ptr [ %36, %35 ], [ %23, %18 ]
  store i32 %41, ptr @yy_n_chars, align 4, !tbaa !12
  store ptr %42, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %42, ptr @yytext, align 8, !tbaa !14
  store ptr %40, ptr @yyin, align 8, !tbaa !14
  store i8 %39, ptr @yy_hold_char, align 1, !tbaa !7
  store i1 true, ptr @yy_init, align 4
  br label %43

43:                                               ; preds = %38, %0
  br label %44

44:                                               ; preds = %330, %43
  %45 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %46 = load i8, ptr @yy_hold_char, align 1, !tbaa !7
  store i8 %46, ptr %45, align 1, !tbaa !7
  %47 = load i1, ptr @yy_start, align 4
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %340, %44
  %50 = phi ptr [ %45, %44 ], [ %341, %340 ]
  %51 = phi ptr [ %45, %44 ], [ %342, %340 ]
  %52 = phi i32 [ %48, %44 ], [ %343, %340 ]
  br label %53

53:                                               ; preds = %96, %49
  %54 = phi ptr [ %51, %49 ], [ %101, %96 ]
  %55 = phi i32 [ %52, %49 ], [ %100, %96 ]
  %56 = load i8, ptr %54, align 1, !tbaa !7
  %57 = sext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !7
  %60 = sext i32 %55 to i64
  %61 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !20
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %53
  store i32 %55, ptr @yy_last_accepting_state, align 4, !tbaa !12
  store ptr %54, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  br label %65

65:                                               ; preds = %64, %53
  %66 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %60
  %67 = load i16, ptr %66, align 2, !tbaa !20
  %68 = sext i16 %67 to i64
  %69 = sext i8 %59 to i64
  %70 = add nsw i64 %68, %69
  %71 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !20
  %73 = sext i16 %72 to i32
  %74 = icmp eq i32 %55, %73
  br i1 %74, label %96, label %75

75:                                               ; preds = %85, %65
  %76 = phi i64 [ %91, %85 ], [ %69, %65 ]
  %77 = phi i64 [ %87, %85 ], [ %60, %65 ]
  %78 = phi i8 [ %86, %85 ], [ %59, %65 ]
  %79 = getelementptr inbounds [146 x i16], ptr @yy_def, i64 0, i64 %77
  %80 = load i16, ptr %79, align 2, !tbaa !20
  %81 = icmp sgt i16 %80, 143
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = getelementptr inbounds [53 x i8], ptr @yy_meta, i64 0, i64 %76
  %84 = load i8, ptr %83, align 1, !tbaa !7
  br label %85

85:                                               ; preds = %82, %75
  %86 = phi i8 [ %84, %82 ], [ %78, %75 ]
  %87 = sext i16 %80 to i64
  %88 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !20
  %90 = sext i16 %89 to i64
  %91 = sext i8 %86 to i64
  %92 = add nsw i64 %90, %91
  %93 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !20
  %95 = icmp eq i16 %80, %94
  br i1 %95, label %96, label %75, !llvm.loop !63

96:                                               ; preds = %85, %65
  %97 = phi i64 [ %70, %65 ], [ %92, %85 ]
  %98 = getelementptr inbounds [247 x i16], ptr @yy_nxt, i64 0, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !20
  %100 = sext i16 %99 to i32
  %101 = getelementptr inbounds i8, ptr %54, i64 1
  %102 = sext i16 %99 to i64
  %103 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !20
  %105 = icmp eq i16 %104, 194
  br i1 %105, label %106, label %53, !llvm.loop !64

106:                                              ; preds = %351, %96
  %107 = phi ptr [ %352, %351 ], [ %50, %96 ]
  %108 = phi ptr [ %353, %351 ], [ %101, %96 ]
  %109 = phi i32 [ %354, %351 ], [ %100, %96 ]
  %110 = ptrtoint ptr %107 to i64
  br label %111

111:                                              ; preds = %125, %106
  %112 = phi ptr [ %127, %125 ], [ %108, %106 ]
  %113 = phi i32 [ %128, %125 ], [ %109, %106 ]
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !20
  %117 = sext i16 %116 to i32
  store ptr %107, ptr @yytext, align 8, !tbaa !14
  %118 = ptrtoint ptr %112 to i64
  %119 = sub i64 %118, %110
  %120 = trunc i64 %119 to i32
  store i32 %120, ptr @yyleng, align 4, !tbaa !12
  %121 = load i8, ptr %112, align 1, !tbaa !7
  store i8 %121, ptr @yy_hold_char, align 1, !tbaa !7
  store i8 0, ptr %112, align 1, !tbaa !7
  br label %122

122:                                              ; preds = %355, %111
  %123 = phi ptr [ %356, %355 ], [ %112, %111 ]
  %124 = phi i32 [ 41, %355 ], [ %117, %111 ]
  store ptr %123, ptr @yy_c_buf_p, align 8, !tbaa !14
  switch i32 %124, label %357 [
    i32 0, label %125
    i32 1, label %362
    i32 2, label %363
    i32 3, label %364
    i32 4, label %365
    i32 5, label %366
    i32 6, label %367
    i32 7, label %368
    i32 8, label %369
    i32 9, label %370
    i32 10, label %371
    i32 11, label %372
    i32 12, label %129
    i32 13, label %130
    i32 14, label %131
    i32 15, label %132
    i32 16, label %133
    i32 17, label %134
    i32 18, label %135
    i32 19, label %136
    i32 20, label %137
    i32 21, label %138
    i32 22, label %139
    i32 23, label %143
    i32 24, label %144
    i32 25, label %145
    i32 26, label %146
    i32 27, label %149
    i32 28, label %152
    i32 29, label %156
    i32 30, label %159
    i32 31, label %162
    i32 32, label %165
    i32 33, label %330
    i32 34, label %171
    i32 35, label %179
    i32 36, label %182
    i32 37, label %203
    i32 38, label %240
    i32 39, label %251
    i32 41, label %257
    i32 40, label %258
  ]

125:                                              ; preds = %122
  %126 = load i8, ptr @yy_hold_char, align 1, !tbaa !7
  store i8 %126, ptr %112, align 1, !tbaa !7
  %127 = load ptr, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  %128 = load i32, ptr @yy_last_accepting_state, align 4, !tbaa !12
  br label %111

129:                                              ; preds = %122
  %.lcssa119 = phi ptr [ %107, %122 ]
  %.lcssa71 = phi ptr [ %112, %122 ]
  %.lcssa26 = phi i64 [ %118, %122 ]
  br label %372

130:                                              ; preds = %122
  %.lcssa120 = phi ptr [ %107, %122 ]
  %.lcssa72 = phi ptr [ %112, %122 ]
  %.lcssa27 = phi i64 [ %118, %122 ]
  br label %372

131:                                              ; preds = %122
  %.lcssa121 = phi ptr [ %107, %122 ]
  %.lcssa73 = phi ptr [ %112, %122 ]
  %.lcssa28 = phi i64 [ %118, %122 ]
  br label %372

132:                                              ; preds = %122
  %.lcssa122 = phi ptr [ %107, %122 ]
  %.lcssa74 = phi ptr [ %112, %122 ]
  %.lcssa29 = phi i64 [ %118, %122 ]
  br label %372

133:                                              ; preds = %122
  %.lcssa123 = phi ptr [ %107, %122 ]
  %.lcssa75 = phi ptr [ %112, %122 ]
  %.lcssa30 = phi i64 [ %118, %122 ]
  br label %372

134:                                              ; preds = %122
  %.lcssa124 = phi ptr [ %107, %122 ]
  %.lcssa76 = phi ptr [ %112, %122 ]
  %.lcssa31 = phi i64 [ %118, %122 ]
  br label %372

135:                                              ; preds = %122
  %.lcssa125 = phi ptr [ %107, %122 ]
  %.lcssa77 = phi ptr [ %112, %122 ]
  %.lcssa32 = phi i64 [ %118, %122 ]
  br label %372

136:                                              ; preds = %122
  %.lcssa126 = phi ptr [ %107, %122 ]
  %.lcssa78 = phi ptr [ %112, %122 ]
  %.lcssa33 = phi i64 [ %118, %122 ]
  br label %372

137:                                              ; preds = %122
  %.lcssa127 = phi ptr [ %107, %122 ]
  %.lcssa79 = phi ptr [ %112, %122 ]
  %.lcssa34 = phi i64 [ %118, %122 ]
  br label %372

138:                                              ; preds = %122
  %.lcssa128 = phi ptr [ %107, %122 ]
  %.lcssa80 = phi ptr [ %112, %122 ]
  %.lcssa35 = phi i64 [ %118, %122 ]
  br label %372

139:                                              ; preds = %122
  %.lcssa129 = phi ptr [ %107, %122 ]
  %.lcssa81 = phi ptr [ %112, %122 ]
  %.lcssa36 = phi i64 [ %118, %122 ]
  %140 = load ptr, ptr @yytext, align 8, !tbaa !14
  %141 = load i8, ptr %140, align 1, !tbaa !7
  store i8 %141, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !40
  %142 = sext i8 %141 to i32
  br label %372

143:                                              ; preds = %122
  %.lcssa130 = phi ptr [ %107, %122 ]
  %.lcssa82 = phi ptr [ %112, %122 ]
  %.lcssa37 = phi i64 [ %118, %122 ]
  br label %372

144:                                              ; preds = %122
  %.lcssa131 = phi ptr [ %107, %122 ]
  %.lcssa83 = phi ptr [ %112, %122 ]
  %.lcssa38 = phi i64 [ %118, %122 ]
  br label %372

145:                                              ; preds = %122
  %.lcssa132 = phi ptr [ %107, %122 ]
  %.lcssa84 = phi ptr [ %112, %122 ]
  %.lcssa39 = phi i64 [ %118, %122 ]
  br label %372

146:                                              ; preds = %122
  %.lcssa133 = phi ptr [ %107, %122 ]
  %.lcssa85 = phi ptr [ %112, %122 ]
  %.lcssa40 = phi i64 [ %118, %122 ]
  %147 = load ptr, ptr @yytext, align 8, !tbaa !14
  %148 = load i8, ptr %147, align 1, !tbaa !7
  store i8 %148, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !40
  br label %372

149:                                              ; preds = %122
  %.lcssa134 = phi ptr [ %107, %122 ]
  %.lcssa86 = phi ptr [ %112, %122 ]
  %.lcssa41 = phi i64 [ %118, %122 ]
  %150 = load ptr, ptr @yytext, align 8, !tbaa !14
  %151 = load i8, ptr %150, align 1, !tbaa !7
  store i8 %151, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !40
  br label %372

152:                                              ; preds = %122
  %.lcssa135 = phi ptr [ %107, %122 ]
  %.lcssa87 = phi ptr [ %112, %122 ]
  %.lcssa42 = phi i64 [ %118, %122 ]
  store i8 61, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !40
  %153 = load i8, ptr @yy_hold_char, align 1, !tbaa !7
  store i8 %153, ptr %.lcssa87, align 1, !tbaa !7
  %154 = getelementptr inbounds i8, ptr %.lcssa135, i64 1
  store ptr %154, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %.lcssa135, ptr @yytext, align 8, !tbaa !14
  store i32 1, ptr @yyleng, align 4, !tbaa !12
  %155 = load i8, ptr %154, align 1, !tbaa !7
  store i8 %155, ptr @yy_hold_char, align 1, !tbaa !7
  store i8 0, ptr %154, align 1, !tbaa !7
  store ptr %154, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %372

156:                                              ; preds = %122
  %.lcssa136 = phi ptr [ %107, %122 ]
  %.lcssa88 = phi ptr [ %112, %122 ]
  %.lcssa43 = phi i64 [ %118, %122 ]
  %157 = load ptr, ptr @yytext, align 8, !tbaa !14
  %158 = tail call fastcc ptr @strcopyof(ptr noundef %157) #29
  store ptr %158, ptr @yylval, align 8, !tbaa !28
  br label %372

159:                                              ; preds = %122
  %.lcssa137 = phi ptr [ %107, %122 ]
  %.lcssa89 = phi ptr [ %112, %122 ]
  %.lcssa44 = phi i64 [ %118, %122 ]
  %160 = load ptr, ptr @yytext, align 8, !tbaa !14
  %161 = load i8, ptr %160, align 1, !tbaa !7
  store i8 %161, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !40
  br label %372

162:                                              ; preds = %122
  %.lcssa138 = phi ptr [ %107, %122 ]
  %.lcssa90 = phi ptr [ %112, %122 ]
  %.lcssa45 = phi i64 [ %118, %122 ]
  %163 = load i32, ptr @line_no, align 4, !tbaa !12
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr @line_no, align 4, !tbaa !12
  br label %372

165:                                              ; preds = %122
  %.lcssa139 = phi ptr [ %107, %122 ]
  %.lcssa91 = phi ptr [ %112, %122 ]
  %.lcssa46 = phi i64 [ %118, %122 ]
  %166 = load i32, ptr @line_no, align 4, !tbaa !12
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr @line_no, align 4, !tbaa !12
  br label %330

168:                                              ; preds = %174, %171
  %169 = load i32, ptr @line_no, align 4, !tbaa !12
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr @line_no, align 4, !tbaa !12
  br label %173

171:                                              ; preds = %173, %122
  %.lcssa141 = phi ptr [ %.lcssa141, %173 ], [ %107, %122 ]
  %.lcssa93 = phi ptr [ %.lcssa93, %173 ], [ %112, %122 ]
  %.lcssa48 = phi i64 [ %.lcssa48, %173 ], [ %118, %122 ]
  %172 = tail call fastcc i32 @input() #30, !range !65
  switch i32 %172, label %173 [
    i32 10, label %168
    i32 42, label %174
    i32 -1, label %176
  ], !llvm.loop !66

173:                                              ; preds = %174, %171, %168
  br label %171, !llvm.loop !66

174:                                              ; preds = %174, %171
  %175 = tail call fastcc i32 @input() #30, !range !65
  switch i32 %175, label %173 [
    i32 42, label %174
    i32 47, label %330
    i32 10, label %168
    i32 -1, label %176
  ]

176:                                              ; preds = %174, %171
  %.lcssa141.lcssa = phi ptr [ %.lcssa141, %174 ], [ %.lcssa141, %171 ]
  %.lcssa93.lcssa = phi ptr [ %.lcssa93, %174 ], [ %.lcssa93, %171 ]
  %.lcssa48.lcssa = phi i64 [ %.lcssa48, %174 ], [ %.lcssa48, %171 ]
  %177 = load ptr, ptr @stderr, align 8, !tbaa !14
  %178 = tail call i64 @fwrite(ptr nonnull @.str.137, i64 30, i64 1, ptr %177) #36
  br label %330

179:                                              ; preds = %122
  %.lcssa142 = phi ptr [ %107, %122 ]
  %.lcssa94 = phi ptr [ %112, %122 ]
  %.lcssa49 = phi i64 [ %118, %122 ]
  %180 = load ptr, ptr @yytext, align 8, !tbaa !14
  %181 = tail call fastcc ptr @strcopyof(ptr noundef %180) #29
  store ptr %181, ptr @yylval, align 8, !tbaa !28
  br label %372

182:                                              ; preds = %122
  %.lcssa143 = phi ptr [ %107, %122 ]
  %.lcssa95 = phi ptr [ %112, %122 ]
  %.lcssa50 = phi i64 [ %118, %122 ]
  %183 = load ptr, ptr @yytext, align 8, !tbaa !14
  %184 = tail call fastcc ptr @strcopyof(ptr noundef %183) #29
  store ptr %184, ptr @yylval, align 8, !tbaa !28
  %185 = load ptr, ptr @yytext, align 8, !tbaa !14
  %186 = load i32, ptr @line_no, align 4, !tbaa !12
  br label %187

187:                                              ; preds = %194, %182
  %188 = phi i32 [ %186, %182 ], [ %195, %194 ]
  %189 = phi ptr [ %185, %182 ], [ %199, %194 ]
  %190 = phi i32 [ 0, %182 ], [ %198, %194 ]
  %191 = load i8, ptr %189, align 1, !tbaa !7
  switch i8 %191, label %194 [
    i8 0, label %200
    i8 10, label %192
  ]

192:                                              ; preds = %187
  %193 = add nsw i32 %188, 1
  store i32 %193, ptr @line_no, align 4, !tbaa !12
  br label %194

194:                                              ; preds = %192, %187
  %195 = phi i32 [ %188, %187 ], [ %193, %192 ]
  %196 = icmp eq i8 %191, 34
  %197 = zext i1 %196 to i32
  %198 = add nuw nsw i32 %190, %197
  %199 = getelementptr inbounds i8, ptr %189, i64 1
  br label %187, !llvm.loop !67

200:                                              ; preds = %187
  %.lcssa = phi i32 [ %190, %187 ]
  %201 = icmp eq i32 %.lcssa, 2
  br i1 %201, label %372, label %202

202:                                              ; preds = %200
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.1.138) #29
  br label %372

203:                                              ; preds = %122
  %.lcssa144 = phi ptr [ %107, %122 ]
  %.lcssa96 = phi ptr [ %112, %122 ]
  %.lcssa51 = phi i64 [ %118, %122 ]
  %204 = load ptr, ptr @yytext, align 8, !tbaa !14
  %205 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %204) #34
  %206 = shl i64 %205, 32
  %207 = add i64 %206, -4294967296
  %208 = ashr exact i64 %207, 32
  %209 = getelementptr inbounds i8, ptr %204, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !7
  %211 = icmp eq i8 %210, 46
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  store i8 0, ptr %209, align 1, !tbaa !7
  br label %213

213:                                              ; preds = %212, %203
  br label %214

214:                                              ; preds = %217, %213
  %215 = phi ptr [ %218, %217 ], [ %204, %213 ]
  %216 = load i8, ptr %215, align 1, !tbaa !7
  switch i8 %216, label %221 [
    i8 48, label %217
    i8 0, label %219
  ]

217:                                              ; preds = %214
  %218 = getelementptr inbounds i8, ptr %215, i64 1
  br label %214, !llvm.loop !68

219:                                              ; preds = %214
  %.lcssa9 = phi ptr [ %215, %214 ]
  %220 = getelementptr inbounds i8, ptr %.lcssa9, i64 -1
  br label %221

221:                                              ; preds = %219, %214
  %222 = phi ptr [ %220, %219 ], [ %215, %214 ]
  %223 = load i32, ptr @line_no, align 4, !tbaa !12
  br label %224

224:                                              ; preds = %235, %221
  %225 = phi i32 [ %223, %221 ], [ %.lcssa5, %235 ]
  %226 = phi ptr [ %222, %221 ], [ %236, %235 ]
  %227 = phi ptr [ %204, %221 ], [ %237, %235 ]
  br label %228

228:                                              ; preds = %232, %224
  %229 = phi i32 [ %234, %232 ], [ %225, %224 ]
  %230 = phi ptr [ %233, %232 ], [ %226, %224 ]
  %231 = load i8, ptr %230, align 1, !tbaa !7
  switch i8 %231, label %235 [
    i8 0, label %238
    i8 92, label %232
  ]

232:                                              ; preds = %228
  %233 = getelementptr inbounds i8, ptr %230, i64 2
  %234 = add nsw i32 %229, 1
  store i32 %234, ptr @line_no, align 4, !tbaa !12
  br label %228, !llvm.loop !69

235:                                              ; preds = %228
  %.lcssa5 = phi i32 [ %229, %228 ]
  %.lcssa3 = phi ptr [ %230, %228 ]
  %.lcssa1 = phi i8 [ %231, %228 ]
  %236 = getelementptr inbounds i8, ptr %.lcssa3, i64 1
  %237 = getelementptr inbounds i8, ptr %227, i64 1
  store i8 %.lcssa1, ptr %227, align 1, !tbaa !7
  br label %224, !llvm.loop !69

238:                                              ; preds = %228
  %.lcssa7 = phi ptr [ %227, %228 ]
  store i8 0, ptr %.lcssa7, align 1, !tbaa !7
  %239 = tail call fastcc ptr @strcopyof(ptr noundef %204) #29
  store ptr %239, ptr @yylval, align 8, !tbaa !28
  br label %372

240:                                              ; preds = %122
  %.lcssa145 = phi ptr [ %107, %122 ]
  %.lcssa97 = phi ptr [ %112, %122 ]
  %.lcssa52 = phi i64 [ %118, %122 ]
  %241 = load ptr, ptr @yytext, align 8, !tbaa !14
  %242 = load i8, ptr %241, align 1, !tbaa !7
  %243 = icmp slt i8 %242, 32
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = sext i8 %242 to i32
  %246 = add nsw i32 %245, 64
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.2.139, i32 noundef %246) #29
  br label %330

247:                                              ; preds = %240
  %248 = icmp eq i8 %242, 127
  br i1 %248, label %249, label %250

249:                                              ; preds = %247
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.3.140, i32 noundef 127) #29
  br label %330

250:                                              ; preds = %247
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.4.141, ptr noundef nonnull %241) #29
  br label %330

251:                                              ; preds = %122
  %.lcssa146 = phi ptr [ %107, %122 ]
  %.lcssa98 = phi ptr [ %112, %122 ]
  %.lcssa53 = phi i64 [ %118, %122 ]
  %252 = load ptr, ptr @yytext, align 8, !tbaa !14
  %253 = load i32, ptr @yyleng, align 4, !tbaa !12
  %254 = sext i32 %253 to i64
  %255 = load ptr, ptr @yyout, align 8, !tbaa !14
  %256 = tail call i64 @fwrite(ptr noundef %252, i64 noundef %254, i64 noundef 1, ptr noundef %255) #30
  br label %330

257:                                              ; preds = %122
  %.lcssa147 = phi ptr [ %107, %122 ]
  %.lcssa99 = phi ptr [ %112, %122 ]
  %.lcssa54 = phi i64 [ %118, %122 ]
  br label %372

258:                                              ; preds = %122
  %259 = load ptr, ptr @yytext, align 8, !tbaa !14
  %260 = load i8, ptr @yy_hold_char, align 1, !tbaa !7
  store i8 %260, ptr %112, align 1, !tbaa !7
  %261 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %262 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %263 = load i32, ptr @yy_n_chars, align 4, !tbaa !12
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, ptr %262, i64 %264
  %266 = icmp ugt ptr %261, %265
  br i1 %266, label %315, label %267

267:                                              ; preds = %258
  %.lcssa100 = phi ptr [ %112, %258 ]
  %.lcssa55 = phi i64 [ %118, %258 ]
  %.lcssa10 = phi ptr [ %259, %258 ]
  %268 = ptrtoint ptr %.lcssa10 to i64
  %269 = xor i64 %268, -1
  %270 = add i64 %269, %.lcssa55
  %271 = load ptr, ptr @yytext, align 8, !tbaa !14
  %272 = shl i64 %270, 32
  %273 = ashr exact i64 %272, 32
  %274 = getelementptr inbounds i8, ptr %271, i64 %273
  store ptr %274, ptr @yy_c_buf_p, align 8, !tbaa !14
  %275 = tail call fastcc i32 @yy_get_previous_state() #30, !range !70
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %276
  %278 = load i16, ptr %277, align 2, !tbaa !20
  %279 = icmp eq i16 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %267
  store i32 %275, ptr @yy_last_accepting_state, align 4, !tbaa !12
  store ptr %274, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  br label %281

281:                                              ; preds = %280, %267
  %282 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %276
  %283 = load i16, ptr %282, align 2, !tbaa !20
  %284 = sext i16 %283 to i64
  %285 = add nsw i64 %284, 1
  %286 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %285
  %287 = load i16, ptr %286, align 2, !tbaa !20
  %288 = sext i16 %287 to i32
  %289 = icmp eq i32 %275, %288
  br i1 %289, label %302, label %290

290:                                              ; preds = %290, %281
  %291 = phi i64 [ %294, %290 ], [ %276, %281 ]
  %292 = getelementptr inbounds [146 x i16], ptr @yy_def, i64 0, i64 %291
  %293 = load i16, ptr %292, align 2, !tbaa !20
  %294 = sext i16 %293 to i64
  %295 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !20
  %297 = sext i16 %296 to i64
  %298 = add nsw i64 %297, 1
  %299 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %298
  %300 = load i16, ptr %299, align 2, !tbaa !20
  %301 = icmp eq i16 %293, %300
  br i1 %301, label %302, label %290, !llvm.loop !71

302:                                              ; preds = %290, %281
  %303 = phi i64 [ %285, %281 ], [ %298, %290 ]
  %304 = getelementptr inbounds [247 x i16], ptr @yy_nxt, i64 0, i64 %303
  %305 = load i16, ptr %304, align 2, !tbaa !20
  %306 = sext i16 %305 to i64
  %307 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !20
  %309 = icmp eq i16 %308, 194
  %310 = icmp eq i64 %303, 0
  %311 = or i1 %310, %309
  br i1 %311, label %351, label %312

312:                                              ; preds = %302
  %.lcssa106 = phi i16 [ %305, %302 ]
  %.lcssa105 = phi ptr [ %271, %302 ]
  %.lcssa104 = phi ptr [ %274, %302 ]
  %313 = sext i16 %.lcssa106 to i32
  %314 = getelementptr inbounds i8, ptr %.lcssa104, i64 1
  store ptr %314, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %340

315:                                              ; preds = %258
  %316 = tail call fastcc i32 @yy_get_next_buffer() #30, !range !72
  switch i32 %316, label %330 [
    i32 1, label %317
    i32 0, label %331
    i32 2, label %344
  ]

317:                                              ; preds = %315
  %318 = tail call fastcc i32 @open_new_file() #29, !range !19
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %355, label %320

320:                                              ; preds = %317
  %.lcssa150 = phi ptr [ %107, %317 ]
  %.lcssa103 = phi ptr [ %112, %317 ]
  %.lcssa58 = phi i64 [ %118, %317 ]
  %321 = load ptr, ptr @yyin, align 8, !tbaa !14
  store ptr %321, ptr @yy_current_buffer.body, align 16, !tbaa !56
  %322 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  store i8 10, ptr %322, align 1, !tbaa !7
  store i32 1, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 28), align 4, !tbaa !59
  %323 = getelementptr inbounds i8, ptr %322, i64 1
  store i8 0, ptr %323, align 1, !tbaa !7
  %324 = getelementptr inbounds i8, ptr %322, i64 2
  store i8 0, ptr %324, align 1, !tbaa !7
  %325 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %326 = getelementptr inbounds i8, ptr %325, i64 1
  store ptr %326, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 16), align 16, !tbaa !60
  store i32 0, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 32), align 16, !tbaa !61
  %327 = load i32, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 28), align 4, !tbaa !59
  store i32 %327, ptr @yy_n_chars, align 4, !tbaa !12
  store ptr %326, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %326, ptr @yytext, align 8, !tbaa !14
  %328 = load ptr, ptr @yy_current_buffer.body, align 16, !tbaa !56
  store ptr %328, ptr @yyin, align 8, !tbaa !14
  %329 = load i8, ptr %326, align 1, !tbaa !7
  store i8 %329, ptr @yy_hold_char, align 1, !tbaa !7
  br label %330

330:                                              ; preds = %320, %315, %251, %250, %249, %244, %176, %174, %165, %122
  br label %44

331:                                              ; preds = %315
  %.lcssa56 = phi i64 [ %118, %315 ]
  %.lcssa11 = phi ptr [ %259, %315 ]
  %332 = ptrtoint ptr %.lcssa11 to i64
  %333 = xor i64 %332, -1
  %334 = add i64 %333, %.lcssa56
  %335 = load ptr, ptr @yytext, align 8, !tbaa !14
  %336 = shl i64 %334, 32
  %337 = ashr exact i64 %336, 32
  %338 = getelementptr inbounds i8, ptr %335, i64 %337
  store ptr %338, ptr @yy_c_buf_p, align 8, !tbaa !14
  %339 = tail call fastcc i32 @yy_get_previous_state() #30, !range !70
  br label %340

340:                                              ; preds = %331, %312
  %341 = phi ptr [ %.lcssa105, %312 ], [ %335, %331 ]
  %342 = phi ptr [ %314, %312 ], [ %338, %331 ]
  %343 = phi i32 [ %313, %312 ], [ %339, %331 ]
  br label %49

344:                                              ; preds = %315
  %345 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %346 = load i32, ptr @yy_n_chars, align 4, !tbaa !12
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, ptr %345, i64 %347
  store ptr %348, ptr @yy_c_buf_p, align 8, !tbaa !14
  %349 = tail call fastcc i32 @yy_get_previous_state() #30, !range !70
  %350 = load ptr, ptr @yytext, align 8, !tbaa !14
  br label %351

351:                                              ; preds = %344, %302
  %352 = phi ptr [ %350, %344 ], [ %271, %302 ]
  %353 = phi ptr [ %348, %344 ], [ %.lcssa100, %302 ]
  %354 = phi i32 [ %349, %344 ], [ %275, %302 ]
  br label %106

355:                                              ; preds = %317
  %356 = load ptr, ptr @yytext, align 8, !tbaa !14
  br label %122

357:                                              ; preds = %122
  %358 = load ptr, ptr @stderr, align 8, !tbaa !14
  %359 = tail call i32 @fputs(ptr noundef nonnull @.str.5.142, ptr noundef %358) #35
  %360 = load ptr, ptr @stderr, align 8, !tbaa !14
  %361 = tail call i32 @putc(i32 noundef 10, ptr noundef %360) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

362:                                              ; preds = %122
  %.lcssa108 = phi ptr [ %107, %122 ]
  %.lcssa60 = phi ptr [ %112, %122 ]
  %.lcssa15 = phi i64 [ %118, %122 ]
  br label %372

363:                                              ; preds = %122
  %.lcssa109 = phi ptr [ %107, %122 ]
  %.lcssa61 = phi ptr [ %112, %122 ]
  %.lcssa16 = phi i64 [ %118, %122 ]
  br label %372

364:                                              ; preds = %122
  %.lcssa110 = phi ptr [ %107, %122 ]
  %.lcssa62 = phi ptr [ %112, %122 ]
  %.lcssa17 = phi i64 [ %118, %122 ]
  br label %372

365:                                              ; preds = %122
  %.lcssa111 = phi ptr [ %107, %122 ]
  %.lcssa63 = phi ptr [ %112, %122 ]
  %.lcssa18 = phi i64 [ %118, %122 ]
  br label %372

366:                                              ; preds = %122
  %.lcssa112 = phi ptr [ %107, %122 ]
  %.lcssa64 = phi ptr [ %112, %122 ]
  %.lcssa19 = phi i64 [ %118, %122 ]
  br label %372

367:                                              ; preds = %122
  %.lcssa113 = phi ptr [ %107, %122 ]
  %.lcssa65 = phi ptr [ %112, %122 ]
  %.lcssa20 = phi i64 [ %118, %122 ]
  br label %372

368:                                              ; preds = %122
  %.lcssa114 = phi ptr [ %107, %122 ]
  %.lcssa66 = phi ptr [ %112, %122 ]
  %.lcssa21 = phi i64 [ %118, %122 ]
  br label %372

369:                                              ; preds = %122
  %.lcssa115 = phi ptr [ %107, %122 ]
  %.lcssa67 = phi ptr [ %112, %122 ]
  %.lcssa22 = phi i64 [ %118, %122 ]
  br label %372

370:                                              ; preds = %122
  %.lcssa116 = phi ptr [ %107, %122 ]
  %.lcssa68 = phi ptr [ %112, %122 ]
  %.lcssa23 = phi i64 [ %118, %122 ]
  br label %372

371:                                              ; preds = %122
  %.lcssa117 = phi ptr [ %107, %122 ]
  %.lcssa69 = phi ptr [ %112, %122 ]
  %.lcssa24 = phi i64 [ %118, %122 ]
  br label %372

372:                                              ; preds = %371, %370, %369, %368, %367, %366, %365, %364, %363, %362, %257, %238, %202, %200, %179, %162, %159, %156, %152, %149, %146, %145, %144, %143, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %122
  %373 = phi i32 [ 0, %257 ], [ 263, %238 ], [ 262, %179 ], [ 257, %162 ], [ 267, %159 ], [ 266, %156 ], [ 265, %152 ], [ 265, %149 ], [ 264, %146 ], [ 260, %145 ], [ 259, %144 ], [ 258, %143 ], [ %142, %139 ], [ 288, %138 ], [ 287, %137 ], [ 286, %136 ], [ 283, %135 ], [ 285, %134 ], [ 284, %133 ], [ 282, %132 ], [ 277, %131 ], [ 281, %130 ], [ 280, %129 ], [ 261, %202 ], [ 261, %200 ], [ 268, %362 ], [ 269, %363 ], [ 270, %364 ], [ 271, %365 ], [ 272, %366 ], [ 273, %367 ], [ 274, %368 ], [ 275, %369 ], [ 276, %370 ], [ 278, %371 ], [ 279, %122 ]
  ret i32 %373
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @run_code() unnamed_addr #3 {
  %1 = load i1, ptr @had_error, align 4
  %2 = xor i1 %1, true
  %3 = load i1, ptr @did_gen, align 1
  %4 = select i1 %2, i1 %3, i1 false
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i1, ptr @compile_only, align 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.237)
  store i32 0, ptr @out_count, align 4, !tbaa !12
  br label %10

9:                                                ; preds = %5
  tail call fastcc void @execute() #29
  br label %10

10:                                               ; preds = %9, %7
  %11 = load i1, ptr @did_gen, align 1
  br i1 %11, label %13, label %14

12:                                               ; preds = %0
  br i1 %3, label %13, label %14

13:                                               ; preds = %12, %10
  tail call fastcc void @init_gen() #30
  br label %15

14:                                               ; preds = %12, %10
  store i1 false, ptr @had_error, align 4
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize uwtable
define dso_local void @warn(ptr nocapture noundef readonly %0, ...) #7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #33
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i1, ptr @std_only, align 1
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = load i1, ptr @is_std_in, align 1
  call void @llvm.assume(i1 %5)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !14
  %7 = load i32, ptr @line_no, align 4, !tbaa !12
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.37.227, ptr noundef nonnull @.str.36.226, i32 noundef %7) #35
  %9 = load ptr, ptr @stderr, align 8, !tbaa !14
  %10 = call i32 @vfprintf(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %2) #35
  %11 = load ptr, ptr @stderr, align 8, !tbaa !14
  %12 = call i32 @fputc(i32 10, ptr %11)
  store i1 true, ptr @had_error, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i1, ptr @warn_not_std, align 1
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load i1, ptr @is_std_in, align 1
  call void @llvm.assume(i1 %16)
  %17 = load ptr, ptr @stderr, align 8, !tbaa !14
  %18 = load i32, ptr @line_no, align 4, !tbaa !12
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.38.228, ptr noundef nonnull @.str.36.226, i32 noundef %18) #35
  %20 = load ptr, ptr @stderr, align 8, !tbaa !14
  %21 = call i32 @vfprintf(ptr noundef %20, ptr noundef %0, ptr noundef nonnull %2) #35
  %22 = load ptr, ptr @stderr, align 8, !tbaa !14
  %23 = call i32 @fputc(i32 10, ptr %22)
  br label %24

24:                                               ; preds = %15, %13, %4
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @generate(ptr noundef %0) unnamed_addr #3 {
  store i1 true, ptr @did_gen, align 1
  %2 = load i1, ptr @compile_only, align 1
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.234, ptr noundef %0) #30
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %6 = load i32, ptr @out_count, align 4, !tbaa !12
  %7 = trunc i64 %5 to i32
  %8 = add i32 %6, %7
  store i32 %8, ptr @out_count, align 4, !tbaa !12
  %9 = icmp sgt i32 %8, 60
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call i32 @putchar(i32 10)
  store i32 0, ptr @out_count, align 4, !tbaa !12
  br label %13

12:                                               ; preds = %1
  tail call fastcc void @load_code(ptr noundef %0) #29
  br label %13

13:                                               ; preds = %12, %10, %3
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @lookup(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void (ptr, ...) @warn(ptr noundef nonnull @.str.8.244, ptr noundef %0) #30
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr @name_tree, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %14, %6
  %10 = phi ptr [ %19, %14 ], [ %7, %6 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %11) #34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = icmp slt i32 %12, 0
  %16 = getelementptr inbounds %struct.id_rec, ptr %10, i64 0, i32 5
  %17 = getelementptr inbounds %struct.id_rec, ptr %10, i64 0, i32 6
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9

21:                                               ; preds = %14, %6
  %22 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #31
  %23 = tail call fastcc ptr @strcopyof(ptr noundef %0) #30
  store ptr %23, ptr %22, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct.id_rec, ptr %22, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.id_rec, ptr %22, i64 0, i32 2
  store i32 0, ptr %25, align 4, !tbaa !76
  %26 = getelementptr inbounds %struct.id_rec, ptr %22, i64 0, i32 3
  store i32 0, ptr %26, align 8, !tbaa !77
  %27 = tail call fastcc i32 @insert_id_rec(ptr noundef nonnull @name_tree, ptr noundef nonnull %22) #30, !range !19
  br label %28

28:                                               ; preds = %21, %9
  %29 = phi ptr [ %22, %21 ], [ %10, %9 ]
  switch i32 %1, label %92 [
    i32 1, label %30
    i32 2, label %53
    i32 0, label %72
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.id_rec, ptr %29, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !75
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  tail call void @free(ptr noundef %0) #29
  %35 = load i32, ptr %31, align 8, !tbaa !75
  %36 = sub nsw i32 0, %35
  br label %92

37:                                               ; preds = %30
  %38 = load i32, ptr @next_array, align 4, !tbaa !12
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr @next_array, align 4, !tbaa !12
  store i32 %38, ptr %31, align 8, !tbaa !75
  %40 = load ptr, ptr @a_names, align 8, !tbaa !14
  %41 = sext i32 %38 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  store ptr %0, ptr %42, align 8, !tbaa !14
  %43 = icmp slt i32 %38, 32767
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, ptr @a_count, align 4, !tbaa !12
  %46 = icmp slt i32 %38, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  tail call fastcc void @more_arrays() #29
  %48 = load i32, ptr %31, align 8, !tbaa !75
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ %48, %47 ], [ %38, %44 ]
  %51 = sub nsw i32 0, %50
  br label %92

52:                                               ; preds = %37
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.9.245) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

53:                                               ; preds = %28
  %54 = getelementptr inbounds %struct.id_rec, ptr %29, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !76
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  tail call void @free(ptr noundef %0) #29
  %58 = load i32, ptr %54, align 4, !tbaa !76
  br label %92

59:                                               ; preds = %53
  %60 = load i32, ptr @next_func, align 4, !tbaa !12
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr @next_func, align 4, !tbaa !12
  store i32 %60, ptr %54, align 4, !tbaa !76
  %62 = load ptr, ptr @f_names, align 8, !tbaa !14
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr %0, ptr %64, align 8, !tbaa !14
  %65 = icmp slt i32 %60, 32767
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32, ptr @f_count, align 4, !tbaa !12
  %68 = icmp slt i32 %60, %67
  br i1 %68, label %92, label %69

69:                                               ; preds = %66
  tail call fastcc void @more_functions() #29
  %70 = load i32, ptr %54, align 4, !tbaa !76
  br label %92

71:                                               ; preds = %59
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.10.246) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

72:                                               ; preds = %28
  %73 = getelementptr inbounds %struct.id_rec, ptr %29, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !77
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  tail call void @free(ptr noundef %0) #29
  %77 = load i32, ptr %73, align 8, !tbaa !77
  br label %92

78:                                               ; preds = %72
  %79 = load i32, ptr @next_var, align 4, !tbaa !12
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr @next_var, align 4, !tbaa !12
  store i32 %79, ptr %73, align 8, !tbaa !77
  %81 = load ptr, ptr @v_names, align 8, !tbaa !14
  %82 = add nsw i32 %79, -1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %81, i64 %83
  store ptr %0, ptr %84, align 8, !tbaa !14
  %85 = icmp slt i32 %79, 32768
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i32, ptr @v_count, align 4, !tbaa !12
  %88 = icmp slt i32 %79, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  tail call fastcc void @more_variables() #29
  %90 = load i32, ptr %73, align 8, !tbaa !77
  br label %92

91:                                               ; preds = %78
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.11.247) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

92:                                               ; preds = %89, %86, %76, %69, %66, %57, %49, %34, %28
  %93 = phi i32 [ %77, %76 ], [ %58, %57 ], [ %36, %34 ], [ %51, %49 ], [ undef, %28 ], [ %70, %69 ], [ %60, %66 ], [ %90, %89 ], [ %79, %86 ]
  ret i32 %93
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @arg_str(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr @arglist2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #29
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr @arglist1, align 8, !tbaa !14
  store ptr %7, ptr @arglist2, align 8, !tbaa !14
  %8 = tail call fastcc ptr @make_arg_str(ptr noundef %0, i32 noundef 1, i32 noundef %1) #30
  store ptr %8, ptr @arglist1, align 8, !tbaa !14
  ret ptr %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @make_arg_str(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #33
  %5 = icmp eq ptr %0, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.arg_list, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = add nsw i32 %1, 11
  %10 = tail call fastcc ptr @make_arg_str(ptr noundef %8, i32 noundef %9, i32 noundef %2) #30
  %11 = icmp ne i32 %1, 1
  %12 = icmp ne i32 %2, 0
  %13 = and i1 %11, %12
  %14 = load i32, ptr %0, align 8, !tbaa !32
  %15 = select i1 %13, ptr @.str.41.212, ptr @.str.42.213
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %15, i32 noundef %14) #29
  %17 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %4) #29
  br label %21

18:                                               ; preds = %3
  %19 = sext i32 %1 to i64
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #31
  store i8 0, ptr %20, align 1, !tbaa !7
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi ptr [ %10, %6 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #33
  ret ptr %22
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc ptr @strcopyof(ptr nocapture noundef readonly %0) unnamed_addr #14 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #34
  %3 = add i64 %2, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #31
  %5 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #29
  ret ptr %4
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @insert_id_rec(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.id_rec, ptr %1, i64 0, i32 5
  %7 = getelementptr inbounds %struct.id_rec, ptr %1, i64 0, i32 4
  store i16 0, ptr %7, align 4, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %99

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !73
  %10 = load ptr, ptr %3, align 8, !tbaa !73
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %10) #34
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.id_rec, ptr %3, i64 0, i32 5
  %15 = tail call fastcc i32 @insert_id_rec(ptr noundef nonnull %14, ptr noundef nonnull %1) #30, !range !19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %99, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.id_rec, ptr %18, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !78
  %21 = add i16 %20, -1
  store i16 %21, ptr %19, align 4, !tbaa !78
  %22 = icmp eq i16 %21, -2
  br i1 %22, label %23, label %99

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.id_rec, ptr %18, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !79
  %26 = getelementptr inbounds %struct.id_rec, ptr %25, i64 0, i32 4
  %27 = load i16, ptr %26, align 4, !tbaa !78
  %28 = icmp slt i16 %27, 1
  %29 = getelementptr inbounds %struct.id_rec, ptr %25, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !80
  br i1 %28, label %31, label %32

31:                                               ; preds = %23
  store ptr %30, ptr %24, align 8, !tbaa !79
  store ptr %18, ptr %29, align 8, !tbaa !80
  store ptr %25, ptr %0, align 8, !tbaa !14
  store i16 0, ptr %19, align 4, !tbaa !78
  store i16 0, ptr %26, align 4, !tbaa !78
  br label %99

32:                                               ; preds = %23
  store ptr %30, ptr %0, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.id_rec, ptr %30, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  store ptr %34, ptr %29, align 8, !tbaa !80
  %35 = load ptr, ptr %0, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.id_rec, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  store ptr %37, ptr %24, align 8, !tbaa !79
  %38 = load ptr, ptr %0, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.id_rec, ptr %38, i64 0, i32 5
  store ptr %25, ptr %39, align 8, !tbaa !79
  %40 = load ptr, ptr %0, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.id_rec, ptr %40, i64 0, i32 6
  store ptr %18, ptr %41, align 8, !tbaa !80
  %42 = load ptr, ptr %0, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.id_rec, ptr %42, i64 0, i32 4
  %44 = load i16, ptr %43, align 4, !tbaa !78
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %48, label %55

48:                                               ; preds = %32
  %49 = zext i32 %46 to i48
  %50 = shl nuw nsw i48 %49, 4
  %51 = lshr i48 1, %50
  %52 = trunc i48 %51 to i16
  %53 = lshr i48 -4294967296, %50
  %54 = trunc i48 %53 to i16
  store i16 %52, ptr %19, align 4, !tbaa !78
  store i16 %54, ptr %26, align 4, !tbaa !78
  br label %55

55:                                               ; preds = %48, %32
  store i16 0, ptr %43, align 4, !tbaa !78
  br label %99

56:                                               ; preds = %8
  %57 = getelementptr inbounds %struct.id_rec, ptr %3, i64 0, i32 6
  %58 = tail call fastcc i32 @insert_id_rec(ptr noundef nonnull %57, ptr noundef nonnull %1) #30, !range !19
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %99, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %0, align 8, !tbaa !14
  %62 = getelementptr inbounds %struct.id_rec, ptr %61, i64 0, i32 4
  %63 = load i16, ptr %62, align 4, !tbaa !78
  %64 = add i16 %63, 1
  store i16 %64, ptr %62, align 4, !tbaa !78
  %65 = icmp eq i16 %64, 2
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.id_rec, ptr %61, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !80
  %69 = getelementptr inbounds %struct.id_rec, ptr %68, i64 0, i32 4
  %70 = load i16, ptr %69, align 4, !tbaa !78
  %71 = icmp sgt i16 %70, -1
  %72 = getelementptr inbounds %struct.id_rec, ptr %68, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !79
  br i1 %71, label %74, label %75

74:                                               ; preds = %66
  store ptr %73, ptr %67, align 8, !tbaa !80
  store ptr %61, ptr %72, align 8, !tbaa !79
  store ptr %68, ptr %0, align 8, !tbaa !14
  store i16 0, ptr %62, align 4, !tbaa !78
  store i16 0, ptr %69, align 4, !tbaa !78
  br label %99

75:                                               ; preds = %66
  store ptr %73, ptr %0, align 8, !tbaa !14
  %76 = getelementptr inbounds %struct.id_rec, ptr %73, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !80
  store ptr %77, ptr %72, align 8, !tbaa !79
  %78 = load ptr, ptr %0, align 8, !tbaa !14
  %79 = getelementptr inbounds %struct.id_rec, ptr %78, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !79
  store ptr %80, ptr %67, align 8, !tbaa !80
  %81 = load ptr, ptr %0, align 8, !tbaa !14
  %82 = getelementptr inbounds %struct.id_rec, ptr %81, i64 0, i32 5
  store ptr %61, ptr %82, align 8, !tbaa !79
  %83 = load ptr, ptr %0, align 8, !tbaa !14
  %84 = getelementptr inbounds %struct.id_rec, ptr %83, i64 0, i32 6
  store ptr %68, ptr %84, align 8, !tbaa !80
  %85 = load ptr, ptr %0, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.id_rec, ptr %85, i64 0, i32 4
  %87 = load i16, ptr %86, align 4, !tbaa !78
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %88, 1
  %90 = icmp ult i32 %89, 3
  br i1 %90, label %91, label %98

91:                                               ; preds = %75
  %92 = zext i32 %89 to i48
  %93 = shl nuw nsw i48 %92, 4
  %94 = lshr i48 -4294967296, %93
  %95 = trunc i48 %94 to i16
  %96 = lshr i48 1, %93
  %97 = trunc i48 %96 to i16
  store i16 %95, ptr %62, align 4, !tbaa !78
  store i16 %97, ptr %69, align 4, !tbaa !78
  br label %98

98:                                               ; preds = %91, %75
  store i16 0, ptr %86, align 4, !tbaa !78
  br label %99

99:                                               ; preds = %98, %74, %60, %56, %55, %31, %17, %13, %5
  %100 = phi i32 [ 1, %5 ], [ 0, %56 ], [ 0, %74 ], [ 0, %98 ], [ 0, %60 ], [ 0, %13 ], [ 0, %31 ], [ 0, %55 ], [ 0, %17 ]
  ret i32 %100
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @load_code(ptr noundef %0) unnamed_addr #3 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !14
  %3 = load i8, ptr %0, align 1, !tbaa !7
  %4 = icmp eq i8 %3, 0
  %5 = load i1, ptr @had_error, align 4
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %217, label %7

7:                                                ; preds = %210, %1
  %8 = phi i8 [ %213, %210 ], [ %3, %1 ]
  %9 = phi ptr [ %211, %210 ], [ %0, %1 ]
  %10 = phi i64 [ %212, %210 ], [ undef, %1 ]
  %11 = sext i8 %8 to i32
  %12 = load i1, ptr @load_str, align 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = icmp eq i8 %8, 34
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  store i1 false, ptr @load_str, align 1
  %16 = load i8, ptr %9, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi i32 [ %17, %15 ], [ %11, %13 ]
  %20 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %20, ptr %2, align 8, !tbaa !14
  tail call fastcc void @addbyte(i32 noundef %19) #30
  br label %210

21:                                               ; preds = %7
  %22 = load i1, ptr @load_const, align 1
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  switch i8 %8, label %32 [
    i8 10, label %24
    i8 58, label %26
    i8 46, label %30
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %25, ptr %2, align 8, !tbaa !14
  br label %210

26:                                               ; preds = %23
  store i1 false, ptr @load_const, align 1
  %27 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %27, ptr %2, align 8, !tbaa !14
  %28 = load i8, ptr %9, align 1, !tbaa !7
  %29 = sext i8 %28 to i32
  tail call fastcc void @addbyte(i32 noundef %29) #30
  br label %210

30:                                               ; preds = %23
  %31 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %31, ptr %2, align 8, !tbaa !14
  tail call fastcc void @addbyte(i32 noundef %11) #30
  br label %210

32:                                               ; preds = %23
  %33 = icmp sgt i8 %8, 64
  %34 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %34, ptr %2, align 8, !tbaa !14
  br i1 %33, label %35, label %37

35:                                               ; preds = %32
  %36 = add nsw i32 %11, -55
  tail call fastcc void @addbyte(i32 noundef %36) #30
  br label %210

37:                                               ; preds = %32
  %38 = add nsw i32 %11, -48
  tail call fastcc void @addbyte(i32 noundef %38) #30
  br label %210

39:                                               ; preds = %21
  switch i32 %11, label %205 [
    i32 34, label %40
    i32 78, label %41
    i32 66, label %79
    i32 74, label %79
    i32 90, label %79
    i32 70, label %91
    i32 93, label %144
    i32 67, label %149
    i32 99, label %183
    i32 75, label %187
    i32 100, label %188
    i32 105, label %188
    i32 108, label %188
    i32 115, label %188
    i32 65, label %188
    i32 77, label %188
    i32 76, label %188
    i32 83, label %188
    i32 64, label %199
    i32 10, label %206
  ]

40:                                               ; preds = %39
  store i1 true, ptr @load_str, align 1
  br label %206

41:                                               ; preds = %39
  %42 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %42, ptr %2, align 8, !tbaa !14
  %43 = call fastcc i64 @long_val(ptr noundef nonnull %2) #30, !range !81
  %44 = lshr i64 %43, 6
  %45 = trunc i64 %44 to i32
  %46 = load i32, ptr @load_adr, align 8, !tbaa !16
  %47 = load ptr, ptr @functions, align 8, !tbaa !14
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds %struct.bc_function, ptr %47, i64 %48, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !14
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #31
  store ptr %53, ptr %49, align 8, !tbaa !52
  %54 = getelementptr inbounds %struct.bc_label_group, ptr %53, i64 0, i32 1
  store ptr null, ptr %54, align 8, !tbaa !53
  %55 = load ptr, ptr %49, align 8, !tbaa !14
  br label %56

56:                                               ; preds = %52, %41
  %57 = phi ptr [ %55, %52 ], [ %50, %41 ]
  %58 = icmp sgt i32 %45, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %69, %56
  %60 = phi ptr [ %70, %69 ], [ %57, %56 ]
  %61 = phi i32 [ %71, %69 ], [ %45, %56 ]
  %62 = getelementptr inbounds %struct.bc_label_group, ptr %60, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #31
  store ptr %66, ptr %62, align 8, !tbaa !53
  %67 = getelementptr inbounds %struct.bc_label_group, ptr %66, i64 0, i32 1
  store ptr null, ptr %67, align 8, !tbaa !53
  %68 = load ptr, ptr %62, align 8, !tbaa !14
  br label %69

69:                                               ; preds = %65, %59
  %70 = phi ptr [ %68, %65 ], [ %63, %59 ]
  %71 = add nsw i32 %61, -1
  %72 = icmp sgt i32 %61, 1
  br i1 %72, label %59, label %73, !llvm.loop !82

73:                                               ; preds = %69, %56
  %74 = phi ptr [ %57, %56 ], [ %70, %69 ]
  %75 = srem i64 %43, 64
  %76 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !18
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [64 x i64], ptr %74, i64 0, i64 %75
  store i64 %77, ptr %78, align 8, !tbaa !83
  br label %206

79:                                               ; preds = %39, %39, %39
  %80 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %80, ptr %2, align 8, !tbaa !14
  tail call fastcc void @addbyte(i32 noundef %11) #30
  %81 = call fastcc i64 @long_val(ptr noundef nonnull %2) #30, !range !81
  %82 = icmp sgt i64 %81, 65535
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load ptr, ptr @stderr, align 8, !tbaa !14
  %85 = tail call i64 @fwrite(ptr nonnull @.str.1.41, i64 17, i64 1, ptr %84) #36
  tail call void @exit(i32 noundef 1) #32
  unreachable

86:                                               ; preds = %79
  %87 = trunc i64 %81 to i32
  %88 = shl i32 %87, 24
  %89 = and i32 %87, 255
  tail call fastcc void @addbyte(i32 noundef %89) #30
  %90 = ashr i32 %88, 31
  tail call fastcc void @addbyte(i32 noundef %90) #30
  br label %206

91:                                               ; preds = %39
  %92 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %92, ptr %2, align 8, !tbaa !14
  %93 = call fastcc i64 @long_val(ptr noundef nonnull %2) #30, !range !81
  %94 = trunc i64 %93 to i8
  tail call fastcc void @clear_func(i8 noundef signext %94) #29
  %95 = load ptr, ptr %2, align 8, !tbaa !14
  %96 = getelementptr inbounds i8, ptr %95, i64 1
  store ptr %96, ptr %2, align 8, !tbaa !14
  %97 = load i8, ptr %95, align 1, !tbaa !7
  %98 = icmp eq i8 %97, 46
  br i1 %98, label %123, label %99

99:                                               ; preds = %91
  %100 = load i8, ptr %96, align 1, !tbaa !7
  %101 = icmp eq i8 %100, 46
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load ptr, ptr @functions, align 8
  %104 = getelementptr inbounds %struct.bc_function, ptr %103, i64 %93, i32 4
  br label %111

105:                                              ; preds = %111
  %106 = load i8, ptr %120, align 1, !tbaa !7
  %107 = icmp eq i8 %106, 46
  br i1 %107, label %108, label %111, !llvm.loop !85

108:                                              ; preds = %105, %99
  %109 = phi ptr [ %95, %99 ], [ %119, %105 ]
  %110 = getelementptr inbounds i8, ptr %109, i64 2
  store ptr %110, ptr %2, align 8, !tbaa !14
  br label %123

111:                                              ; preds = %105, %102
  %112 = call fastcc i64 @long_val(ptr noundef nonnull %2) #30, !range !81
  %113 = load ptr, ptr %104, align 8, !tbaa !51
  %114 = trunc i64 %112 to i32
  %115 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %116 = shl i32 %114, 24
  %117 = ashr exact i32 %116, 24
  store i32 %117, ptr %115, align 8, !tbaa !32
  %118 = getelementptr inbounds %struct.arg_list, ptr %115, i64 0, i32 1
  store ptr %113, ptr %118, align 8, !tbaa !30
  store ptr %115, ptr %104, align 8, !tbaa !51
  %119 = load ptr, ptr %2, align 8, !tbaa !14
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  store ptr %120, ptr %2, align 8, !tbaa !14
  %121 = load i8, ptr %119, align 1, !tbaa !7
  %122 = icmp eq i8 %121, 46
  br i1 %122, label %123, label %105, !llvm.loop !85

123:                                              ; preds = %111, %108, %91
  %124 = phi ptr [ %96, %91 ], [ %110, %108 ], [ %120, %111 ]
  %125 = load ptr, ptr @functions, align 8
  %126 = getelementptr inbounds %struct.bc_function, ptr %125, i64 %93, i32 5
  br label %127

127:                                              ; preds = %132, %123
  %128 = phi ptr [ %140, %132 ], [ %124, %123 ]
  %129 = load i8, ptr %128, align 1, !tbaa !7
  switch i8 %129, label %132 [
    i8 91, label %141
    i8 44, label %130
  ]

130:                                              ; preds = %127
  %131 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %131, ptr %2, align 8, !tbaa !14
  br label %132

132:                                              ; preds = %130, %127
  %133 = call fastcc i64 @long_val(ptr noundef nonnull %2) #30, !range !81
  %134 = load ptr, ptr %126, align 8, !tbaa !50
  %135 = trunc i64 %133 to i32
  %136 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %137 = shl i32 %135, 24
  %138 = ashr exact i32 %137, 24
  store i32 %138, ptr %136, align 8, !tbaa !32
  %139 = getelementptr inbounds %struct.arg_list, ptr %136, i64 0, i32 1
  store ptr %134, ptr %139, align 8, !tbaa !30
  store ptr %136, ptr %126, align 8, !tbaa !50
  %140 = load ptr, ptr %2, align 8, !tbaa !14
  br label %127, !llvm.loop !86

141:                                              ; preds = %127
  %142 = load i64, ptr @load_adr, align 8
  %143 = trunc i64 %93 to i32
  store i32 %143, ptr @load_adr, align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !18
  br label %206

144:                                              ; preds = %39
  %145 = load ptr, ptr @functions, align 8, !tbaa !14
  %146 = load i32, ptr @load_adr, align 8, !tbaa !16
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.bc_function, ptr %145, i64 %147
  store i8 1, ptr %148, align 8, !tbaa !43
  store i64 %10, ptr @load_adr, align 8
  br label %206

149:                                              ; preds = %39
  %150 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %150, ptr %2, align 8, !tbaa !14
  tail call fastcc void @addbyte(i32 noundef 67) #30
  %151 = call fastcc i64 @long_val(ptr noundef nonnull %2) #30, !range !81
  %152 = icmp slt i64 %151, 128
  %153 = trunc i64 %151 to i32
  br i1 %152, label %154, label %157

154:                                              ; preds = %149
  %155 = shl i32 %153, 24
  %156 = ashr exact i32 %155, 24
  br label %162

157:                                              ; preds = %149
  %158 = lshr i32 %153, 8
  %159 = and i32 %158, 127
  %160 = or i32 %159, 128
  tail call fastcc void @addbyte(i32 noundef %160) #30
  %161 = and i32 %153, 255
  br label %162

162:                                              ; preds = %157, %154
  %163 = phi i32 [ %161, %157 ], [ %156, %154 ]
  tail call fastcc void @addbyte(i32 noundef %163) #30
  %164 = load ptr, ptr %2, align 8, !tbaa !14
  %165 = load i8, ptr %164, align 1, !tbaa !7
  %166 = icmp eq i8 %165, 44
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = getelementptr inbounds i8, ptr %164, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !7
  br label %170

170:                                              ; preds = %167, %162
  %171 = phi i8 [ %169, %167 ], [ %165, %162 ]
  %172 = phi ptr [ %168, %167 ], [ %164, %162 ]
  %173 = icmp eq i8 %171, 58
  br i1 %173, label %181, label %174

174:                                              ; preds = %174, %170
  %175 = phi i8 [ %179, %174 ], [ %171, %170 ]
  %176 = phi ptr [ %177, %174 ], [ %172, %170 ]
  %177 = getelementptr inbounds i8, ptr %176, i64 1
  %178 = sext i8 %175 to i32
  tail call fastcc void @addbyte(i32 noundef %178) #30
  %179 = load i8, ptr %177, align 1, !tbaa !7
  %180 = icmp eq i8 %179, 58
  br i1 %180, label %181, label %174, !llvm.loop !87

181:                                              ; preds = %174, %170
  %182 = phi ptr [ %172, %170 ], [ %177, %174 ]
  store ptr %182, ptr %2, align 8, !tbaa !14
  tail call fastcc void @addbyte(i32 noundef 58) #30
  br label %206

183:                                              ; preds = %39
  %184 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %184, ptr %2, align 8, !tbaa !14
  tail call fastcc void @addbyte(i32 noundef 99) #30
  %185 = load i8, ptr %184, align 1, !tbaa !7
  %186 = sext i8 %185 to i32
  tail call fastcc void @addbyte(i32 noundef %186) #30
  br label %206

187:                                              ; preds = %39
  tail call fastcc void @addbyte(i32 noundef 75) #30
  store i1 true, ptr @load_const, align 1
  br label %206

188:                                              ; preds = %39, %39, %39, %39, %39, %39, %39, %39
  %189 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %189, ptr %2, align 8, !tbaa !14
  tail call fastcc void @addbyte(i32 noundef %11) #30
  %190 = call fastcc i64 @long_val(ptr noundef nonnull %2) #30, !range !81
  %191 = icmp slt i64 %190, 128
  %192 = trunc i64 %190 to i32
  br i1 %191, label %193, label %194

193:                                              ; preds = %188
  tail call fastcc void @addbyte(i32 noundef %192) #30
  br label %206

194:                                              ; preds = %188
  %195 = lshr i32 %192, 8
  %196 = and i32 %195, 127
  %197 = or i32 %196, 128
  tail call fastcc void @addbyte(i32 noundef %197) #30
  %198 = and i32 %192, 255
  tail call fastcc void @addbyte(i32 noundef %198) #30
  br label %206

199:                                              ; preds = %39
  %200 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %200, ptr %2, align 8, !tbaa !14
  %201 = load i8, ptr %200, align 1, !tbaa !7
  %202 = sext i8 %201 to i32
  switch i32 %202, label %206 [
    i32 105, label %203
    i32 114, label %204
  ]

203:                                              ; preds = %199
  tail call fastcc void @clear_func(i8 noundef signext 0) #29
  store i32 0, ptr @load_adr, align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !18
  store i1 false, ptr @load_str, align 1
  store i1 false, ptr @load_const, align 1
  br label %206

204:                                              ; preds = %199
  tail call fastcc void @execute() #29
  br label %206

205:                                              ; preds = %39
  tail call fastcc void @addbyte(i32 noundef %11) #30
  br label %206

206:                                              ; preds = %205, %204, %203, %199, %194, %193, %187, %183, %181, %144, %141, %86, %73, %40, %39
  %207 = phi i64 [ %10, %205 ], [ %10, %39 ], [ %10, %199 ], [ %10, %204 ], [ %10, %203 ], [ %10, %193 ], [ %10, %194 ], [ %10, %187 ], [ %10, %183 ], [ %10, %181 ], [ %10, %144 ], [ %142, %141 ], [ %10, %86 ], [ %10, %73 ], [ %10, %40 ]
  %208 = load ptr, ptr %2, align 8, !tbaa !14
  %209 = getelementptr inbounds i8, ptr %208, i64 1
  store ptr %209, ptr %2, align 8, !tbaa !14
  br label %210

210:                                              ; preds = %206, %37, %35, %30, %26, %24, %18
  %211 = phi ptr [ %209, %206 ], [ %34, %35 ], [ %34, %37 ], [ %31, %30 ], [ %27, %26 ], [ %25, %24 ], [ %20, %18 ]
  %212 = phi i64 [ %207, %206 ], [ %10, %35 ], [ %10, %37 ], [ %10, %30 ], [ %10, %26 ], [ %10, %24 ], [ %10, %18 ]
  %213 = load i8, ptr %211, align 1, !tbaa !7
  %214 = icmp eq i8 %213, 0
  %215 = load i1, ptr @had_error, align 4
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %217, label %7, !llvm.loop !88

217:                                              ; preds = %210, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @addbyte(i32 noundef %0) unnamed_addr #7 {
  %2 = load i1, ptr @had_error, align 4
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !18
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !18
  %6 = srem i32 %4, 1024
  %7 = icmp sgt i32 %4, 16383
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.40) #29
  br label %28

9:                                                ; preds = %3
  %10 = ashr i32 %4, 10
  %11 = load i32, ptr @load_adr, align 8, !tbaa !16
  %12 = load ptr, ptr @functions, align 8, !tbaa !14
  %13 = sext i32 %11 to i64
  %14 = sext i32 %10 to i64
  %15 = getelementptr inbounds %struct.bc_function, ptr %12, i64 %13, i32 1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #31
  store ptr %19, ptr %15, align 8, !tbaa !14
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi ptr [ %19, %18 ], [ %16, %9 ]
  %22 = trunc i32 %0 to i8
  %23 = sext i32 %6 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  store i8 %22, ptr %24, align 1, !tbaa !7
  %25 = getelementptr inbounds %struct.bc_function, ptr %12, i64 %13, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !45
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !45
  br label %28

28:                                               ; preds = %20, %8, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @long_val(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = load i8, ptr %2, align 1, !tbaa !7
  %4 = icmp eq i8 %3, 45
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %6, ptr %0, align 8, !tbaa !14
  %7 = load i8, ptr %6, align 1, !tbaa !7
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ %7, %5 ], [ %3, %1 ]
  %10 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %11 = tail call ptr @__ctype_b_loc() #37
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = sext i8 %9 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !20
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %18, %8
  %19 = phi ptr [ %22, %18 ], [ %10, %8 ]
  %20 = phi i32 [ %26, %18 ], [ 0, %8 ]
  %21 = mul nsw i32 %20, 10
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %22, ptr %0, align 8, !tbaa !14
  %23 = load i8, ptr %19, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  %25 = add i32 %21, -48
  %26 = add i32 %25, %24
  %27 = load ptr, ptr %11, align 8, !tbaa !14
  %28 = load i8, ptr %22, align 1, !tbaa !7
  %29 = sext i8 %28 to i64
  %30 = getelementptr inbounds i16, ptr %27, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !20
  %32 = and i16 %31, 2048
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %18, !llvm.loop !89

34:                                               ; preds = %18, %8
  %35 = phi i32 [ 0, %8 ], [ %26, %18 ]
  %36 = sub nsw i32 0, %35
  %37 = select i1 %4, i32 %36, i32 %35
  %38 = sext i32 %37 to i64
  ret i64 %38
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @execute() unnamed_addr #3 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #33
  store i32 0, ptr @pc, align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  store i1 false, ptr @runtime_error, align 1
  %11 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.bc_struct, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !90
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !90
  store ptr %11, ptr %10, align 8, !tbaa !14
  %15 = load i8, ptr @interactive, align 1, !tbaa !7
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %0
  %18 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @stop_execution) #29
  store i1 false, ptr @had_sigint, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %20 = load i32, ptr @pc, align 8, !tbaa !16
  %21 = load i1, ptr @runtime_error, align 1
  br label %22

22:                                               ; preds = %17, %0
  %23 = phi i1 [ %21, %17 ], [ false, %0 ]
  %24 = phi i32 [ %20, %17 ], [ 0, %0 ]
  %25 = phi i32 [ %19, %17 ], [ 0, %0 ]
  %26 = load ptr, ptr @functions, align 8, !tbaa !14
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.bc_function, ptr %26, i64 %27, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !45
  %30 = icmp sge i32 %25, %29
  %31 = select i1 %30, i1 true, i1 %23
  br i1 %31, label %2093, label %32

32:                                               ; preds = %2083, %22
  %33 = phi i64 [ %2087, %2083 ], [ %27, %22 ]
  %34 = phi i32 [ %2086, %2083 ], [ %24, %22 ]
  %35 = phi ptr [ %2085, %2083 ], [ %26, %22 ]
  %36 = phi i32 [ %2084, %2083 ], [ %25, %22 ]
  %37 = ashr i32 %36, 10
  %38 = add nsw i32 %36, 1
  store i32 %38, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %39 = srem i32 %36, 1024
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !14
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !7
  %46 = sext i8 %45 to i32
  switch i32 %46, label %2082 [
    i32 65, label %47
    i32 66, label %114
    i32 90, label %114
    i32 74, label %147
    i32 67, label %204
    i32 68, label %356
    i32 75, label %364
    i32 76, label %530
    i32 77, label %602
    i32 79, label %711
    i32 82, label %722
    i32 83, label %750
    i32 84, label %851
    i32 87, label %894
    i32 80, label %894
    i32 99, label %1130
    i32 100, label %1287
    i32 104, label %1335
    i32 105, label %1336
    i32 108, label %1384
    i32 110, label %1456
    i32 112, label %1460
    i32 115, label %1461
    i32 119, label %1485
    i32 120, label %1510
    i32 48, label %1519
    i32 49, label %1527
    i32 33, label %1535
    i32 38, label %1578
    i32 124, label %1657
    i32 43, label %1736
    i32 45, label %1753
    i32 42, label %1770
    i32 47, label %1788
    i32 37, label %1810
    i32 94, label %1852
    i32 61, label %1902
    i32 35, label %1932
    i32 60, label %1962
    i32 123, label %1992
    i32 62, label %2022
    i32 125, label %2052
  ]

47:                                               ; preds = %32
  %48 = ashr i32 %38, 10
  %49 = add nsw i32 %36, 2
  store i32 %49, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %50 = srem i32 %38, 1024
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !14
  %54 = sext i32 %50 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !7
  %57 = icmp sgt i8 %56, -1
  br i1 %57, label %68, label %58

58:                                               ; preds = %47
  %59 = ashr i32 %49, 10
  %60 = add nsw i32 %36, 3
  store i32 %60, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %61 = srem i32 %49, 1024
  %62 = sext i32 %59 to i64
  %63 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !7
  br label %68

68:                                               ; preds = %58, %47
  %69 = phi i8 [ %67, %58 ], [ %56, %47 ]
  %70 = zext i8 %69 to i32
  %71 = tail call fastcc signext i8 @check_stack(i32 noundef 1) #30, !range !92
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %2083, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %75 = load ptr, ptr %74, align 8, !tbaa !93
  %76 = tail call fastcc i64 @num2long(ptr noundef %75) #29
  %77 = icmp ugt i64 %76, 2048
  br i1 %77, label %103, label %78

78:                                               ; preds = %73
  %79 = icmp ne i64 %76, 0
  %80 = load ptr, ptr @_zero_, align 8
  %81 = icmp eq ptr %80, %75
  %82 = select i1 %79, i1 true, i1 %81
  br i1 %82, label %108, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.bc_struct, ptr %75, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !95
  %86 = getelementptr inbounds %struct.bc_struct, ptr %75, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !96
  %88 = add nsw i32 %87, %85
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.bc_struct, ptr %75, i64 0, i32 4
  br label %92

92:                                               ; preds = %97, %90
  %93 = phi ptr [ %98, %97 ], [ %91, %90 ]
  %94 = phi i32 [ %99, %97 ], [ %88, %90 ]
  %95 = load i8, ptr %93, align 1, !tbaa !7
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = getelementptr inbounds i8, ptr %93, i64 1
  %99 = add nsw i32 %94, -1
  %100 = icmp sgt i32 %94, 1
  br i1 %100, label %92, label %108, !llvm.loop !97

101:                                              ; preds = %83
  %102 = icmp eq i32 %88, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %101, %92, %73
  %104 = load ptr, ptr @a_names, align 8, !tbaa !14
  %105 = zext i8 %69 to i64
  %106 = getelementptr inbounds ptr, ptr %104, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %107) #29
  br label %2083

108:                                              ; preds = %101, %97, %78
  %109 = tail call fastcc ptr @get_array_num(i32 noundef %70, i64 noundef %76) #30
  %110 = icmp eq ptr %109, null
  br i1 %110, label %2083, label %111

111:                                              ; preds = %108
  tail call fastcc void @pop() #30
  %112 = load ptr, ptr %109, align 8, !tbaa !14
  %113 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call fastcc void @bc_add(ptr noundef %112, ptr noundef %113, ptr noundef nonnull %109) #29
  br label %2083

114:                                              ; preds = %32, %32
  %115 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %116 = load ptr, ptr %115, align 8, !tbaa !93
  %117 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %118 = icmp eq ptr %117, %116
  br i1 %118, label %141, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.bc_struct, ptr %116, i64 0, i32 1
  %121 = load i32, ptr %120, align 4, !tbaa !95
  %122 = getelementptr inbounds %struct.bc_struct, ptr %116, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !96
  %124 = add nsw i32 %123, %121
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.bc_struct, ptr %116, i64 0, i32 4
  br label %128

128:                                              ; preds = %133, %126
  %129 = phi ptr [ %134, %133 ], [ %127, %126 ]
  %130 = phi i32 [ %135, %133 ], [ %124, %126 ]
  %131 = load i8, ptr %129, align 1, !tbaa !7
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = getelementptr inbounds i8, ptr %129, i64 1
  %135 = add nsw i32 %130, -1
  %136 = icmp sgt i32 %130, 1
  br i1 %136, label %128, label %137, !llvm.loop !97

137:                                              ; preds = %133, %128, %119
  %138 = phi i32 [ %124, %119 ], [ 0, %133 ], [ %130, %128 ]
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i8
  br label %141

141:                                              ; preds = %137, %114
  %142 = phi i8 [ 1, %114 ], [ %140, %137 ]
  %143 = xor i8 %142, 1
  store i8 %143, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %144 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %145 = load ptr, ptr @functions, align 8, !tbaa !14
  %146 = load i32, ptr @pc, align 8, !tbaa !16
  br label %147

147:                                              ; preds = %141, %32
  %148 = phi i32 [ %34, %32 ], [ %146, %141 ]
  %149 = phi ptr [ %35, %32 ], [ %145, %141 ]
  %150 = phi i32 [ %38, %32 ], [ %144, %141 ]
  %151 = ashr i32 %150, 10
  %152 = add nsw i32 %150, 1
  store i32 %152, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %153 = srem i32 %150, 1024
  %154 = sext i32 %148 to i64
  %155 = sext i32 %151 to i64
  %156 = getelementptr inbounds %struct.bc_function, ptr %149, i64 %154, i32 1, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !14
  %158 = sext i32 %153 to i64
  %159 = getelementptr inbounds i8, ptr %157, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !7
  %161 = zext i8 %160 to i32
  %162 = ashr i32 %152, 10
  %163 = add nsw i32 %150, 2
  store i32 %163, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %164 = srem i32 %152, 1024
  %165 = sext i32 %162 to i64
  %166 = getelementptr inbounds %struct.bc_function, ptr %149, i64 %154, i32 1, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !14
  %168 = sext i32 %164 to i64
  %169 = getelementptr inbounds i8, ptr %167, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !7
  %171 = zext i8 %170 to i32
  %172 = shl nuw nsw i32 %171, 8
  %173 = or i32 %172, %161
  %174 = icmp eq i8 %45, 74
  br i1 %174, label %184, label %175

175:                                              ; preds = %147
  %176 = icmp eq i8 %45, 66
  %177 = load i8, ptr @c_code, align 1
  %178 = icmp ne i8 %177, 0
  %179 = select i1 %176, i1 %178, i1 false
  %180 = xor i1 %179, true
  %181 = icmp ne i8 %45, 90
  %182 = select i1 %181, i1 true, i1 %178
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %2083, label %184

184:                                              ; preds = %175, %147
  %185 = getelementptr inbounds %struct.bc_function, ptr %149, i64 %154, i32 3
  %186 = and i32 %161, 63
  %187 = load ptr, ptr %185, align 8, !tbaa !14
  %188 = icmp ult i32 %173, 64
  br i1 %188, label %198, label %189

189:                                              ; preds = %184
  %190 = lshr i32 %173, 6
  br label %191

191:                                              ; preds = %191, %189
  %192 = phi ptr [ %196, %191 ], [ %187, %189 ]
  %193 = phi i32 [ %194, %191 ], [ %190, %189 ]
  %194 = add nsw i32 %193, -1
  %195 = getelementptr inbounds %struct.bc_label_group, ptr %192, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !14
  %197 = icmp ugt i32 %193, 1
  br i1 %197, label %191, label %198, !llvm.loop !98

198:                                              ; preds = %191, %184
  %199 = phi ptr [ %187, %184 ], [ %196, %191 ]
  %200 = zext i32 %186 to i64
  %201 = getelementptr inbounds [64 x i64], ptr %199, i64 0, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !83
  %203 = trunc i64 %202 to i32
  store i32 %203, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  br label %2083

204:                                              ; preds = %32
  %205 = ashr i32 %38, 10
  %206 = add nsw i32 %36, 2
  store i32 %206, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %207 = srem i32 %38, 1024
  %208 = sext i32 %205 to i64
  %209 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !14
  %211 = sext i32 %207 to i64
  %212 = getelementptr inbounds i8, ptr %210, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !7
  %214 = icmp sgt i8 %213, -1
  br i1 %214, label %225, label %215

215:                                              ; preds = %204
  %216 = ashr i32 %206, 10
  %217 = add nsw i32 %36, 3
  store i32 %217, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %218 = srem i32 %206, 1024
  %219 = sext i32 %216 to i64
  %220 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !14
  %222 = sext i32 %218 to i64
  %223 = getelementptr inbounds i8, ptr %221, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !7
  br label %225

225:                                              ; preds = %215, %204
  %226 = phi i32 [ %217, %215 ], [ %206, %204 ]
  %227 = phi i8 [ %224, %215 ], [ %213, %204 ]
  %228 = zext i8 %227 to i32
  %229 = zext i8 %227 to i64
  %230 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %229
  %231 = load i8, ptr %230, align 8, !tbaa !43
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %225
  %234 = load ptr, ptr @f_names, align 8, !tbaa !14
  %235 = getelementptr inbounds ptr, ptr %234, i64 %229
  %236 = load ptr, ptr %235, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.2, ptr noundef %236) #29
  br label %2083

237:                                              ; preds = %225
  %238 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %229, i32 4
  br label %239

239:                                              ; preds = %325, %237
  %240 = phi i32 [ %226, %237 ], [ %330, %325 ]
  %241 = phi ptr [ %35, %237 ], [ %329, %325 ]
  %242 = phi i8 [ 0, %237 ], [ %326, %325 ]
  %243 = phi ptr [ %238, %237 ], [ %328, %325 ]
  %244 = load ptr, ptr %243, align 8, !tbaa !14
  %245 = ashr i32 %240, 10
  %246 = add nsw i32 %240, 1
  store i32 %246, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %247 = srem i32 %240, 1024
  %248 = load i32, ptr @pc, align 8, !tbaa !16
  %249 = sext i32 %248 to i64
  %250 = sext i32 %245 to i64
  %251 = getelementptr inbounds %struct.bc_function, ptr %241, i64 %249, i32 1, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !14
  %253 = sext i32 %247 to i64
  %254 = getelementptr inbounds i8, ptr %252, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !7
  %256 = icmp eq i8 %255, 58
  %257 = icmp eq ptr %244, null
  br i1 %256, label %331, label %258

258:                                              ; preds = %239
  br i1 %257, label %322, label %259

259:                                              ; preds = %258
  switch i8 %255, label %304 [
    i8 48, label %260
    i8 49, label %276
  ]

260:                                              ; preds = %259
  %261 = load i32, ptr %244, align 8, !tbaa !32
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %306

263:                                              ; preds = %260
  %264 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %265 = load ptr, ptr @variables, align 8, !tbaa !14
  %266 = zext i32 %261 to i64
  %267 = getelementptr inbounds ptr, ptr %265, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !14
  %269 = getelementptr inbounds %struct.estack_rec, ptr %264, i64 0, i32 1
  store ptr %268, ptr %269, align 8, !tbaa !99
  %270 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %271 = load ptr, ptr %270, align 8, !tbaa !93
  store ptr %271, ptr %264, align 8, !tbaa !101
  %272 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %273 = getelementptr inbounds %struct.bc_struct, ptr %272, i64 0, i32 3
  %274 = load i32, ptr %273, align 4, !tbaa !90
  %275 = add nsw i32 %274, 1
  store i32 %275, ptr %273, align 4, !tbaa !90
  store ptr %272, ptr %270, align 8, !tbaa !14
  store ptr %264, ptr %267, align 8, !tbaa !14
  br label %320

276:                                              ; preds = %259
  %277 = load i32, ptr %244, align 8, !tbaa !32
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %311

279:                                              ; preds = %276
  %280 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %281 = load ptr, ptr %280, align 8, !tbaa !93
  %282 = tail call fastcc i64 @num2long(ptr noundef %281) #29
  %283 = trunc i64 %282 to i32
  %284 = tail call fastcc ptr @get_array_num(i32 noundef %283, i64 noundef 0) #30
  %285 = load i32, ptr %244, align 8, !tbaa !32
  tail call fastcc void @auto_var(i32 noundef %285) #30
  %286 = load i32, ptr %244, align 8, !tbaa !32
  %287 = sub nsw i32 0, %286
  %288 = icmp eq i32 %283, %287
  %289 = load ptr, ptr @arrays, align 8, !tbaa !14
  %290 = shl i64 %282, 32
  %291 = ashr exact i64 %290, 32
  %292 = getelementptr inbounds ptr, ptr %289, i64 %291
  br i1 %288, label %293, label %296

293:                                              ; preds = %279
  %294 = load ptr, ptr %292, align 8, !tbaa !14
  %295 = getelementptr inbounds %struct.bc_var_array, ptr %294, i64 0, i32 2
  br label %296

296:                                              ; preds = %293, %279
  %297 = phi ptr [ %295, %293 ], [ %292, %279 ]
  %298 = load ptr, ptr %297, align 8, !tbaa !14
  %299 = sext i32 %287 to i64
  %300 = getelementptr inbounds ptr, ptr %289, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !14
  %302 = getelementptr inbounds %struct.bc_var_array, ptr %301, i64 0, i32 1
  store i8 1, ptr %302, align 8, !tbaa !102
  %303 = load ptr, ptr %298, align 8, !tbaa !104
  store ptr %303, ptr %301, align 8, !tbaa !104
  br label %320

304:                                              ; preds = %259
  %305 = load i32, ptr %244, align 8, !tbaa !32
  br label %306

306:                                              ; preds = %304, %260
  %307 = phi i32 [ %305, %304 ], [ %261, %260 ]
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %306
  %310 = sub nsw i32 0, %307
  br label %311

311:                                              ; preds = %309, %306, %276
  %312 = phi i32 [ %310, %309 ], [ %307, %306 ], [ %277, %276 ]
  %313 = phi ptr [ @a_names, %309 ], [ @v_names, %306 ], [ @v_names, %276 ]
  %314 = phi ptr [ @.str.17.203, %309 ], [ @.str.18.204, %306 ], [ @.str.18.204, %276 ]
  %315 = load ptr, ptr %313, align 8, !tbaa !14
  %316 = zext i32 %312 to i64
  %317 = getelementptr inbounds ptr, ptr %315, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull %314, ptr noundef %318) #29
  %319 = getelementptr inbounds %struct.arg_list, ptr %244, i64 1
  br label %320

320:                                              ; preds = %311, %296, %263
  %321 = phi ptr [ %244, %263 ], [ %244, %296 ], [ %319, %311 ]
  tail call fastcc void @pop() #30
  br label %325

322:                                              ; preds = %258
  %323 = icmp eq i8 %242, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %322
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.19.205) #29
  br label %325

325:                                              ; preds = %324, %322, %320
  %326 = phi i8 [ %242, %320 ], [ 1, %322 ], [ 1, %324 ]
  %327 = phi ptr [ %321, %320 ], [ null, %322 ], [ null, %324 ]
  %328 = getelementptr inbounds %struct.arg_list, ptr %327, i64 0, i32 1
  %329 = load ptr, ptr @functions, align 8, !tbaa !14
  %330 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  br label %239, !llvm.loop !105

331:                                              ; preds = %239
  %.lcssa18 = phi ptr [ %241, %239 ]
  %.lcssa17 = phi i1 [ %257, %239 ]
  br i1 %.lcssa17, label %334, label %332

332:                                              ; preds = %331
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.19.205) #29
  %333 = load ptr, ptr @functions, align 8, !tbaa !14
  br label %334

334:                                              ; preds = %332, %331
  %335 = phi ptr [ %.lcssa18, %331 ], [ %333, %332 ]
  %336 = getelementptr inbounds %struct.bc_function, ptr %335, i64 %229, i32 5
  %337 = load ptr, ptr %336, align 8, !tbaa !14
  %338 = icmp eq ptr %337, null
  br i1 %338, label %345, label %339

339:                                              ; preds = %339, %334
  %340 = phi ptr [ %343, %339 ], [ %337, %334 ]
  %341 = load i32, ptr %340, align 8, !tbaa !32
  tail call fastcc void @auto_var(i32 noundef %341) #29
  %342 = getelementptr inbounds %struct.arg_list, ptr %340, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !14
  %344 = icmp eq ptr %343, null
  br i1 %344, label %345, label %339, !llvm.loop !106

345:                                              ; preds = %339, %334
  %346 = load i32, ptr @pc, align 8, !tbaa !16
  %347 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %348 = load ptr, ptr @fn_stack, align 8, !tbaa !14
  %349 = getelementptr inbounds %struct.arg_list, ptr %347, i64 0, i32 1
  store ptr %348, ptr %349, align 8, !tbaa !107
  store i32 %346, ptr %347, align 8, !tbaa !109
  %350 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %351 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %352 = getelementptr inbounds %struct.arg_list, ptr %351, i64 0, i32 1
  store ptr %347, ptr %352, align 8, !tbaa !107
  store i32 %350, ptr %351, align 8, !tbaa !109
  %353 = load i32, ptr @i_base, align 4, !tbaa !12
  %354 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %355 = getelementptr inbounds %struct.arg_list, ptr %354, i64 0, i32 1
  store ptr %351, ptr %355, align 8, !tbaa !107
  store i32 %353, ptr %354, align 8, !tbaa !109
  store ptr %354, ptr @fn_stack, align 8, !tbaa !14
  store i32 %228, ptr @pc, align 8, !tbaa !16
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  br label %2083

356:                                              ; preds = %32
  %357 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %358 = load ptr, ptr %357, align 8, !tbaa !93
  %359 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %360 = getelementptr inbounds %struct.bc_struct, ptr %358, i64 0, i32 3
  %361 = load i32, ptr %360, align 4, !tbaa !90
  %362 = add nsw i32 %361, 1
  store i32 %362, ptr %360, align 4, !tbaa !90
  store ptr %358, ptr %359, align 8, !tbaa !93
  %363 = getelementptr inbounds %struct.estack_rec, ptr %359, i64 0, i32 1
  store ptr %357, ptr %363, align 8, !tbaa !110
  store ptr %359, ptr @ex_stack, align 8, !tbaa !14
  br label %2083

364:                                              ; preds = %32
  %365 = icmp eq i32 %34, 0
  %366 = load ptr, ptr @fn_stack, align 8
  %367 = select i1 %365, ptr @i_base, ptr %366
  %368 = load i32, ptr %367, align 4, !tbaa !12
  %369 = icmp eq i32 %368, 10
  br i1 %369, label %370, label %529

370:                                              ; preds = %364
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #33
  %371 = load i64, ptr @pc, align 8
  %372 = lshr i64 %371, 32
  %373 = trunc i64 %372 to i32
  %374 = ashr i32 %373, 10
  %375 = srem i32 %373, 1024
  %376 = shl i64 %371, 32
  %377 = ashr exact i64 %376, 32
  %378 = sext i32 %374 to i64
  %379 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %377, i32 1, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !14
  %381 = sext i32 %375 to i64
  %382 = getelementptr inbounds i8, ptr %380, i64 %381
  %383 = trunc i64 %371 to i32
  br label %384

384:                                              ; preds = %390, %370
  %385 = phi i32 [ %373, %370 ], [ %389, %390 ]
  %386 = phi i32 [ 0, %370 ], [ %391, %390 ]
  %387 = phi ptr [ %382, %370 ], [ %398, %390 ]
  %388 = load i8, ptr %387, align 1, !tbaa !7
  %389 = add nsw i32 %385, 1
  switch i8 %388, label %390 [
    i8 46, label %399
    i8 58, label %428
  ]

390:                                              ; preds = %384
  %391 = add nuw nsw i32 %386, 1
  %392 = ashr i32 %389, 10
  %393 = srem i32 %389, 1024
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %377, i32 1, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !14
  %397 = sext i32 %393 to i64
  %398 = getelementptr inbounds i8, ptr %396, i64 %397
  br label %384, !llvm.loop !111

399:                                              ; preds = %384
  %.lcssa14 = phi i32 [ %385, %384 ]
  %.lcssa12 = phi i32 [ %386, %384 ]
  %.lcssa10 = phi i32 [ %389, %384 ]
  %400 = ashr i32 %.lcssa10, 10
  %401 = srem i32 %.lcssa10, 1024
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %377, i32 1, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !14
  %405 = sext i32 %401 to i64
  %406 = getelementptr inbounds i8, ptr %404, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !7
  %408 = icmp eq i8 %407, 58
  br i1 %408, label %428, label %409

409:                                              ; preds = %399
  %410 = add nsw i32 %.lcssa14, 2
  br label %411

411:                                              ; preds = %411, %409
  %412 = phi i32 [ %414, %411 ], [ 0, %409 ]
  %413 = phi i32 [ %416, %411 ], [ %410, %409 ]
  %414 = add nuw nsw i32 %412, 1
  %415 = ashr i32 %413, 10
  %416 = add nsw i32 %413, 1
  %417 = srem i32 %413, 1024
  %418 = sext i32 %415 to i64
  %419 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %377, i32 1, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !14
  %421 = sext i32 %417 to i64
  %422 = getelementptr inbounds i8, ptr %420, i64 %421
  %423 = load i8, ptr %422, align 1, !tbaa !7
  %424 = icmp eq i8 %423, 58
  br i1 %424, label %425, label %411, !llvm.loop !112

425:                                              ; preds = %411
  %.lcssa16 = phi i32 [ %414, %411 ]
  %426 = add nsw i32 %373, 1
  store i32 %426, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %427 = load i8, ptr %382, align 1, !tbaa !7
  br label %465

428:                                              ; preds = %399, %384
  %.lcssa13 = phi i32 [ %.lcssa12, %399 ], [ %386, %384 ]
  %429 = add nsw i32 %373, 1
  store i32 %429, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %430 = load i8, ptr %382, align 1, !tbaa !7
  %431 = icmp eq i32 %.lcssa13, 1
  br i1 %431, label %432, label %465

432:                                              ; preds = %428
  %433 = sext i8 %430 to i32
  switch i8 %430, label %452 [
    i8 0, label %434
    i8 1, label %443
  ]

434:                                              ; preds = %432
  %435 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %436 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %437 = getelementptr inbounds %struct.bc_struct, ptr %435, i64 0, i32 3
  %438 = load i32, ptr %437, align 4, !tbaa !90
  %439 = add nsw i32 %438, 1
  store i32 %439, ptr %437, align 4, !tbaa !90
  store ptr %435, ptr %436, align 8, !tbaa !93
  %440 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %441 = getelementptr inbounds %struct.estack_rec, ptr %436, i64 0, i32 1
  store ptr %440, ptr %441, align 8, !tbaa !110
  store ptr %436, ptr @ex_stack, align 8, !tbaa !14
  %442 = add nsw i32 %373, 2
  store i32 %442, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  br label %528

443:                                              ; preds = %432
  %444 = load ptr, ptr @_one_, align 8, !tbaa !14
  %445 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %446 = getelementptr inbounds %struct.bc_struct, ptr %444, i64 0, i32 3
  %447 = load i32, ptr %446, align 4, !tbaa !90
  %448 = add nsw i32 %447, 1
  store i32 %448, ptr %446, align 4, !tbaa !90
  store ptr %444, ptr %445, align 8, !tbaa !93
  %449 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %450 = getelementptr inbounds %struct.estack_rec, ptr %445, i64 0, i32 1
  store ptr %449, ptr %450, align 8, !tbaa !110
  store ptr %445, ptr @ex_stack, align 8, !tbaa !14
  %451 = add nsw i32 %373, 2
  store i32 %451, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  br label %528

452:                                              ; preds = %432
  %453 = icmp sgt i8 %430, 9
  br i1 %453, label %454, label %480

454:                                              ; preds = %452
  %455 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %456 = getelementptr inbounds %struct.bc_struct, ptr %455, i64 0, i32 3
  %457 = load i32, ptr %456, align 4, !tbaa !90
  %458 = add nsw i32 %457, 1
  store i32 %458, ptr %456, align 4, !tbaa !90
  store ptr %455, ptr %9, align 8, !tbaa !14
  call fastcc void @int2num(ptr noundef nonnull %9, i32 noundef %433) #29
  %459 = load ptr, ptr %9, align 8, !tbaa !14
  %460 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %459, ptr %460, align 8, !tbaa !93
  %461 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %462 = getelementptr inbounds %struct.estack_rec, ptr %460, i64 0, i32 1
  store ptr %461, ptr %462, align 8, !tbaa !110
  store ptr %460, ptr @ex_stack, align 8, !tbaa !14
  %463 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %464 = add nsw i32 %463, 1
  store i32 %464, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  br label %528

465:                                              ; preds = %428, %425
  %466 = phi i32 [ %.lcssa12, %425 ], [ %.lcssa13, %428 ]
  %467 = phi i32 [ %426, %425 ], [ %429, %428 ]
  %468 = phi i8 [ %427, %425 ], [ %430, %428 ]
  %469 = phi i32 [ %.lcssa16, %425 ], [ 0, %428 ]
  %470 = icmp eq i32 %466, 0
  br i1 %470, label %471, label %480

471:                                              ; preds = %465
  %472 = sext i32 %469 to i64
  %473 = add nsw i64 %472, 1041
  %474 = tail call noalias ptr @malloc(i64 noundef %473) #31
  store i32 0, ptr %474, align 4, !tbaa !113
  %475 = getelementptr inbounds %struct.bc_struct, ptr %474, i64 0, i32 1
  store i32 1, ptr %475, align 4, !tbaa !95
  %476 = getelementptr inbounds %struct.bc_struct, ptr %474, i64 0, i32 2
  store i32 %469, ptr %476, align 4, !tbaa !96
  %477 = getelementptr inbounds %struct.bc_struct, ptr %474, i64 0, i32 3
  store i32 1, ptr %477, align 4, !tbaa !90
  %478 = getelementptr inbounds %struct.bc_struct, ptr %474, i64 0, i32 4
  store ptr %474, ptr %9, align 8, !tbaa !14
  %479 = getelementptr inbounds %struct.bc_struct, ptr %474, i64 0, i32 4, i64 1
  store i8 0, ptr %478, align 1, !tbaa !7
  br label %494

480:                                              ; preds = %465, %452
  %481 = phi i32 [ %467, %465 ], [ %429, %452 ]
  %482 = phi i32 [ %466, %465 ], [ 1, %452 ]
  %483 = phi i8 [ %468, %465 ], [ %430, %452 ]
  %484 = phi i32 [ %469, %465 ], [ 0, %452 ]
  %485 = add nuw i32 %482, 1040
  %486 = zext i32 %485 to i64
  %487 = sext i32 %484 to i64
  %488 = add nsw i64 %487, %486
  %489 = tail call noalias ptr @malloc(i64 noundef %488) #31
  store i32 0, ptr %489, align 4, !tbaa !113
  %490 = getelementptr inbounds %struct.bc_struct, ptr %489, i64 0, i32 1
  store i32 %482, ptr %490, align 4, !tbaa !95
  %491 = getelementptr inbounds %struct.bc_struct, ptr %489, i64 0, i32 2
  store i32 %484, ptr %491, align 4, !tbaa !96
  %492 = getelementptr inbounds %struct.bc_struct, ptr %489, i64 0, i32 3
  store i32 1, ptr %492, align 4, !tbaa !90
  %493 = getelementptr inbounds %struct.bc_struct, ptr %489, i64 0, i32 4
  store i8 0, ptr %493, align 4, !tbaa !7
  store ptr %489, ptr %9, align 8, !tbaa !14
  br label %494

494:                                              ; preds = %480, %471
  %495 = phi i32 [ %467, %471 ], [ %481, %480 ]
  %496 = phi i8 [ %468, %471 ], [ %483, %480 ]
  %497 = phi ptr [ %479, %471 ], [ %493, %480 ]
  %498 = load i32, ptr @pc, align 8
  %499 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  br label %500

500:                                              ; preds = %509, %494
  %501 = phi i32 [ %514, %509 ], [ %499, %494 ]
  %502 = phi i32 [ %510, %509 ], [ %383, %494 ]
  %503 = phi i32 [ %514, %509 ], [ %495, %494 ]
  %504 = phi i8 [ %522, %509 ], [ %496, %494 ]
  %505 = phi ptr [ %512, %509 ], [ %497, %494 ]
  switch i8 %504, label %506 [
    i8 58, label %523
    i8 46, label %509
  ]

506:                                              ; preds = %500
  %507 = getelementptr inbounds i8, ptr %505, i64 1
  %508 = tail call i8 @llvm.smin.i8(i8 %504, i8 9)
  store i8 %508, ptr %505, align 1, !tbaa !7
  br label %509

509:                                              ; preds = %506, %500
  %510 = phi i32 [ %502, %500 ], [ %498, %506 ]
  %511 = phi i32 [ %503, %500 ], [ %501, %506 ]
  %512 = phi ptr [ %505, %500 ], [ %507, %506 ]
  %513 = ashr i32 %511, 10
  %514 = add nsw i32 %511, 1
  store i32 %514, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %515 = srem i32 %511, 1024
  %516 = sext i32 %510 to i64
  %517 = sext i32 %513 to i64
  %518 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %516, i32 1, i64 %517
  %519 = load ptr, ptr %518, align 8, !tbaa !14
  %520 = sext i32 %515 to i64
  %521 = getelementptr inbounds i8, ptr %519, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !7
  br label %500, !llvm.loop !114

523:                                              ; preds = %500
  %524 = load ptr, ptr %9, align 8, !tbaa !14
  %525 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %524, ptr %525, align 8, !tbaa !93
  %526 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %527 = getelementptr inbounds %struct.estack_rec, ptr %525, i64 0, i32 1
  store ptr %526, ptr %527, align 8, !tbaa !110
  store ptr %525, ptr @ex_stack, align 8, !tbaa !14
  br label %528

528:                                              ; preds = %523, %454, %443, %434
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #33
  br label %2083

529:                                              ; preds = %364
  tail call fastcc void @push_constant(ptr noundef nonnull @prog_char, i32 noundef %368) #30
  br label %2083

530:                                              ; preds = %32
  %531 = ashr i32 %38, 10
  %532 = add nsw i32 %36, 2
  store i32 %532, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %533 = srem i32 %38, 1024
  %534 = sext i32 %531 to i64
  %535 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !14
  %537 = sext i32 %533 to i64
  %538 = getelementptr inbounds i8, ptr %536, i64 %537
  %539 = load i8, ptr %538, align 1, !tbaa !7
  %540 = icmp sgt i8 %539, -1
  br i1 %540, label %551, label %541

541:                                              ; preds = %530
  %542 = ashr i32 %532, 10
  %543 = add nsw i32 %36, 3
  store i32 %543, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %544 = srem i32 %532, 1024
  %545 = sext i32 %542 to i64
  %546 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %545
  %547 = load ptr, ptr %546, align 8, !tbaa !14
  %548 = sext i32 %544 to i64
  %549 = getelementptr inbounds i8, ptr %547, i64 %548
  %550 = load i8, ptr %549, align 1, !tbaa !7
  br label %551

551:                                              ; preds = %541, %530
  %552 = phi i8 [ %550, %541 ], [ %539, %530 ]
  %553 = zext i8 %552 to i32
  %554 = tail call fastcc signext i8 @check_stack(i32 noundef 1) #30, !range !92
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %2083, label %556

556:                                              ; preds = %551
  %557 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %558 = load ptr, ptr %557, align 8, !tbaa !93
  %559 = tail call fastcc i64 @num2long(ptr noundef %558) #29
  %560 = icmp ugt i64 %559, 2048
  br i1 %560, label %586, label %561

561:                                              ; preds = %556
  %562 = icmp ne i64 %559, 0
  %563 = load ptr, ptr @_zero_, align 8
  %564 = icmp eq ptr %563, %558
  %565 = select i1 %562, i1 true, i1 %564
  br i1 %565, label %591, label %566

566:                                              ; preds = %561
  %567 = getelementptr inbounds %struct.bc_struct, ptr %558, i64 0, i32 1
  %568 = load i32, ptr %567, align 4, !tbaa !95
  %569 = getelementptr inbounds %struct.bc_struct, ptr %558, i64 0, i32 2
  %570 = load i32, ptr %569, align 4, !tbaa !96
  %571 = add nsw i32 %570, %568
  %572 = icmp sgt i32 %571, 0
  br i1 %572, label %573, label %584

573:                                              ; preds = %566
  %574 = getelementptr inbounds %struct.bc_struct, ptr %558, i64 0, i32 4
  br label %575

575:                                              ; preds = %580, %573
  %576 = phi ptr [ %581, %580 ], [ %574, %573 ]
  %577 = phi i32 [ %582, %580 ], [ %571, %573 ]
  %578 = load i8, ptr %576, align 1, !tbaa !7
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %580, label %586

580:                                              ; preds = %575
  %581 = getelementptr inbounds i8, ptr %576, i64 1
  %582 = add nsw i32 %577, -1
  %583 = icmp sgt i32 %577, 1
  br i1 %583, label %575, label %591, !llvm.loop !97

584:                                              ; preds = %566
  %585 = icmp eq i32 %571, 0
  br i1 %585, label %591, label %586

586:                                              ; preds = %584, %575, %556
  %587 = load ptr, ptr @a_names, align 8, !tbaa !14
  %588 = zext i8 %552 to i64
  %589 = getelementptr inbounds ptr, ptr %587, i64 %588
  %590 = load ptr, ptr %589, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %590) #29
  br label %2083

591:                                              ; preds = %584, %580, %561
  %592 = tail call fastcc ptr @get_array_num(i32 noundef %553, i64 noundef %559) #30
  %593 = icmp eq ptr %592, null
  br i1 %593, label %2083, label %594

594:                                              ; preds = %591
  tail call fastcc void @pop() #30
  %595 = load ptr, ptr %592, align 8, !tbaa !14
  %596 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %597 = getelementptr inbounds %struct.bc_struct, ptr %595, i64 0, i32 3
  %598 = load i32, ptr %597, align 4, !tbaa !90
  %599 = add nsw i32 %598, 1
  store i32 %599, ptr %597, align 4, !tbaa !90
  store ptr %595, ptr %596, align 8, !tbaa !93
  %600 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %601 = getelementptr inbounds %struct.estack_rec, ptr %596, i64 0, i32 1
  store ptr %600, ptr %601, align 8, !tbaa !110
  store ptr %596, ptr @ex_stack, align 8, !tbaa !14
  br label %2083

602:                                              ; preds = %32
  %603 = ashr i32 %38, 10
  %604 = add nsw i32 %36, 2
  store i32 %604, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %605 = srem i32 %38, 1024
  %606 = sext i32 %603 to i64
  %607 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !14
  %609 = sext i32 %605 to i64
  %610 = getelementptr inbounds i8, ptr %608, i64 %609
  %611 = load i8, ptr %610, align 1, !tbaa !7
  %612 = icmp sgt i8 %611, -1
  br i1 %612, label %623, label %613

613:                                              ; preds = %602
  %614 = ashr i32 %604, 10
  %615 = add nsw i32 %36, 3
  store i32 %615, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %616 = srem i32 %604, 1024
  %617 = sext i32 %614 to i64
  %618 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %617
  %619 = load ptr, ptr %618, align 8, !tbaa !14
  %620 = sext i32 %616 to i64
  %621 = getelementptr inbounds i8, ptr %619, i64 %620
  %622 = load i8, ptr %621, align 1, !tbaa !7
  br label %623

623:                                              ; preds = %613, %602
  %624 = phi i8 [ %622, %613 ], [ %611, %602 ]
  %625 = tail call fastcc signext i8 @check_stack(i32 noundef 1) #30, !range !92
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %2083, label %627

627:                                              ; preds = %623
  %628 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %629 = load ptr, ptr %628, align 8, !tbaa !93
  %630 = tail call fastcc i64 @num2long(ptr noundef %629) #29
  %631 = icmp ugt i64 %630, 2048
  br i1 %631, label %657, label %632

632:                                              ; preds = %627
  %633 = icmp ne i64 %630, 0
  %634 = load ptr, ptr @_zero_, align 8
  %635 = icmp eq ptr %634, %629
  %636 = select i1 %633, i1 true, i1 %635
  br i1 %636, label %662, label %637

637:                                              ; preds = %632
  %638 = getelementptr inbounds %struct.bc_struct, ptr %629, i64 0, i32 1
  %639 = load i32, ptr %638, align 4, !tbaa !95
  %640 = getelementptr inbounds %struct.bc_struct, ptr %629, i64 0, i32 2
  %641 = load i32, ptr %640, align 4, !tbaa !96
  %642 = add nsw i32 %641, %639
  %643 = icmp sgt i32 %642, 0
  br i1 %643, label %644, label %655

644:                                              ; preds = %637
  %645 = getelementptr inbounds %struct.bc_struct, ptr %629, i64 0, i32 4
  br label %646

646:                                              ; preds = %651, %644
  %647 = phi ptr [ %652, %651 ], [ %645, %644 ]
  %648 = phi i32 [ %653, %651 ], [ %642, %644 ]
  %649 = load i8, ptr %647, align 1, !tbaa !7
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %651, label %657

651:                                              ; preds = %646
  %652 = getelementptr inbounds i8, ptr %647, i64 1
  %653 = add nsw i32 %648, -1
  %654 = icmp sgt i32 %648, 1
  br i1 %654, label %646, label %662, !llvm.loop !97

655:                                              ; preds = %637
  %656 = icmp eq i32 %642, 0
  br i1 %656, label %662, label %657

657:                                              ; preds = %655, %646, %627
  %658 = load ptr, ptr @a_names, align 8, !tbaa !14
  %659 = sext i8 %624 to i64
  %660 = getelementptr inbounds ptr, ptr %658, i64 %659
  %661 = load ptr, ptr %660, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %661) #29
  br label %2083

662:                                              ; preds = %655, %651, %632
  %663 = sext i8 %624 to i32
  %664 = tail call fastcc ptr @get_array_num(i32 noundef %663, i64 noundef %630) #30
  %665 = icmp eq ptr %664, null
  br i1 %665, label %2083, label %666

666:                                              ; preds = %662
  tail call fastcc void @pop() #30
  %667 = load ptr, ptr %664, align 8, !tbaa !14
  %668 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call fastcc void @bc_sub(ptr noundef %667, ptr noundef %668, ptr noundef nonnull %664) #29
  br label %2083

669:                                              ; preds = %711, %701
  %670 = phi i32 [ %714, %711 ], [ %682, %701 ]
  %671 = ashr i32 %670, 10
  %672 = add nsw i32 %670, 1
  store i32 %672, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %673 = srem i32 %670, 1024
  %674 = sext i32 %671 to i64
  %675 = getelementptr inbounds %struct.bc_function, ptr %713, i64 %715, i32 1, i64 %674
  %676 = load ptr, ptr %675, align 8, !tbaa !14
  %677 = sext i32 %673 to i64
  %678 = getelementptr inbounds i8, ptr %676, i64 %677
  %679 = load i8, ptr %678, align 1, !tbaa !7
  switch i8 %679, label %706 [
    i8 34, label %716
    i8 92, label %680
  ]

680:                                              ; preds = %669
  %681 = ashr i32 %672, 10
  %682 = add nsw i32 %670, 2
  store i32 %682, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %683 = srem i32 %672, 1024
  %684 = sext i32 %681 to i64
  %685 = getelementptr inbounds %struct.bc_function, ptr %713, i64 %715, i32 1, i64 %684
  %686 = load ptr, ptr %685, align 8, !tbaa !14
  %687 = sext i32 %683 to i64
  %688 = getelementptr inbounds i8, ptr %686, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !7
  %690 = icmp eq i8 %689, 34
  br i1 %690, label %716, label %691

691:                                              ; preds = %680
  %692 = sext i8 %689 to i32
  %693 = add nsw i32 %692, -92
  %694 = tail call i32 @llvm.fshl.i32(i32 %692, i32 %693, i32 31)
  %695 = icmp ult i32 %694, 13
  br i1 %695, label %696, label %701

696:                                              ; preds = %691
  %697 = trunc i32 %694 to i16
  %698 = lshr i16 6697, %697
  %699 = and i16 %698, 1
  %700 = icmp eq i16 %699, 0
  br i1 %700, label %701, label %702

701:                                              ; preds = %696, %691
  br label %669, !llvm.loop !115

702:                                              ; preds = %696
  %.lcssa9 = phi i32 [ %694, %696 ]
  %703 = zext i32 %.lcssa9 to i64
  %704 = getelementptr inbounds [13 x i8], ptr @switch.table.execute, i64 0, i64 %703
  %705 = load i8, ptr %704, align 1
  br label %706

706:                                              ; preds = %702, %669
  %707 = phi i8 [ %705, %702 ], [ %679, %669 ]
  tail call void @out_char(i8 noundef signext %707) #29
  %708 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %709 = load ptr, ptr @functions, align 8, !tbaa !14
  %710 = load i32, ptr @pc, align 8, !tbaa !16
  br label %711, !llvm.loop !115

711:                                              ; preds = %706, %32
  %712 = phi i32 [ %710, %706 ], [ %34, %32 ]
  %713 = phi ptr [ %709, %706 ], [ %35, %32 ]
  %714 = phi i32 [ %708, %706 ], [ %38, %32 ]
  %715 = sext i32 %712 to i64
  br label %669

716:                                              ; preds = %680, %669
  %717 = load i8, ptr @interactive, align 1, !tbaa !7
  %718 = icmp eq i8 %717, 0
  br i1 %718, label %2083, label %719

719:                                              ; preds = %716
  %720 = load ptr, ptr @stdout, align 8, !tbaa !14
  %721 = tail call i32 @fflush(ptr noundef %720) #30
  br label %2083

722:                                              ; preds = %32
  %723 = icmp eq i32 %34, 0
  br i1 %723, label %749, label %724

724:                                              ; preds = %722
  %725 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 5
  %726 = load ptr, ptr %725, align 8, !tbaa !50
  tail call fastcc void @pop_vars(ptr noundef %726) #29
  %727 = load ptr, ptr @functions, align 8, !tbaa !14
  %728 = load i32, ptr @pc, align 8, !tbaa !16
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds %struct.bc_function, ptr %727, i64 %729, i32 4
  %731 = load ptr, ptr %730, align 8, !tbaa !51
  tail call fastcc void @pop_vars(ptr noundef %731) #29
  %732 = load ptr, ptr @fn_stack, align 8, !tbaa !14
  %733 = icmp eq ptr %732, null
  br i1 %733, label %747, label %734

734:                                              ; preds = %724
  %735 = getelementptr inbounds %struct.arg_list, ptr %732, i64 0, i32 1
  %736 = load ptr, ptr %735, align 8, !tbaa !107
  store ptr %736, ptr @fn_stack, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %732) #29
  %737 = icmp eq ptr %736, null
  br i1 %737, label %747, label %738

738:                                              ; preds = %734
  %739 = getelementptr inbounds %struct.arg_list, ptr %736, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !107
  store ptr %740, ptr @fn_stack, align 8, !tbaa !14
  %741 = load i32, ptr %736, align 8, !tbaa !109
  tail call void @free(ptr noundef nonnull %736) #29
  store i32 %741, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %742 = icmp eq ptr %740, null
  br i1 %742, label %747, label %743

743:                                              ; preds = %738
  %744 = getelementptr inbounds %struct.arg_list, ptr %740, i64 0, i32 1
  %745 = load ptr, ptr %744, align 8, !tbaa !107
  store ptr %745, ptr @fn_stack, align 8, !tbaa !14
  %746 = load i32, ptr %740, align 8, !tbaa !109
  tail call void @free(ptr noundef nonnull %740) #29
  br label %747

747:                                              ; preds = %743, %738, %734, %724
  %748 = phi i32 [ %746, %743 ], [ undef, %738 ], [ undef, %734 ], [ undef, %724 ]
  store i32 %748, ptr @pc, align 8, !tbaa !16
  br label %2083

749:                                              ; preds = %722
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.3.2) #29
  br label %2083

750:                                              ; preds = %32
  %751 = ashr i32 %38, 10
  %752 = add nsw i32 %36, 2
  store i32 %752, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %753 = srem i32 %38, 1024
  %754 = sext i32 %751 to i64
  %755 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %754
  %756 = load ptr, ptr %755, align 8, !tbaa !14
  %757 = sext i32 %753 to i64
  %758 = getelementptr inbounds i8, ptr %756, i64 %757
  %759 = load i8, ptr %758, align 1, !tbaa !7
  %760 = icmp sgt i8 %759, -1
  br i1 %760, label %771, label %761

761:                                              ; preds = %750
  %762 = ashr i32 %752, 10
  %763 = add nsw i32 %36, 3
  store i32 %763, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %764 = srem i32 %752, 1024
  %765 = sext i32 %762 to i64
  %766 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %765
  %767 = load ptr, ptr %766, align 8, !tbaa !14
  %768 = sext i32 %764 to i64
  %769 = getelementptr inbounds i8, ptr %767, i64 %768
  %770 = load i8, ptr %769, align 1, !tbaa !7
  br label %771

771:                                              ; preds = %761, %750
  %772 = phi i8 [ %770, %761 ], [ %759, %750 ]
  %773 = zext i8 %772 to i32
  %774 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #30, !range !92
  %775 = icmp eq i8 %774, 0
  br i1 %775, label %2083, label %776

776:                                              ; preds = %771
  %777 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %778 = getelementptr inbounds %struct.estack_rec, ptr %777, i64 0, i32 1
  %779 = load ptr, ptr %778, align 8, !tbaa !110
  %780 = load ptr, ptr %779, align 8, !tbaa !93
  %781 = tail call fastcc i64 @num2long(ptr noundef %780) #29
  %782 = icmp ugt i64 %781, 2048
  br i1 %782, label %808, label %783

783:                                              ; preds = %776
  %784 = icmp ne i64 %781, 0
  %785 = load ptr, ptr @_zero_, align 8
  %786 = icmp eq ptr %785, %780
  %787 = select i1 %784, i1 true, i1 %786
  br i1 %787, label %813, label %788

788:                                              ; preds = %783
  %789 = getelementptr inbounds %struct.bc_struct, ptr %780, i64 0, i32 1
  %790 = load i32, ptr %789, align 4, !tbaa !95
  %791 = getelementptr inbounds %struct.bc_struct, ptr %780, i64 0, i32 2
  %792 = load i32, ptr %791, align 4, !tbaa !96
  %793 = add nsw i32 %792, %790
  %794 = icmp sgt i32 %793, 0
  br i1 %794, label %795, label %806

795:                                              ; preds = %788
  %796 = getelementptr inbounds %struct.bc_struct, ptr %780, i64 0, i32 4
  br label %797

797:                                              ; preds = %802, %795
  %798 = phi ptr [ %803, %802 ], [ %796, %795 ]
  %799 = phi i32 [ %804, %802 ], [ %793, %795 ]
  %800 = load i8, ptr %798, align 1, !tbaa !7
  %801 = icmp eq i8 %800, 0
  br i1 %801, label %802, label %808

802:                                              ; preds = %797
  %803 = getelementptr inbounds i8, ptr %798, i64 1
  %804 = add nsw i32 %799, -1
  %805 = icmp sgt i32 %799, 1
  br i1 %805, label %797, label %813, !llvm.loop !97

806:                                              ; preds = %788
  %807 = icmp eq i32 %793, 0
  br i1 %807, label %813, label %808

808:                                              ; preds = %806, %797, %776
  %809 = load ptr, ptr @a_names, align 8, !tbaa !14
  %810 = zext i8 %772 to i64
  %811 = getelementptr inbounds ptr, ptr %809, i64 %810
  %812 = load ptr, ptr %811, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %812) #29
  br label %2083

813:                                              ; preds = %806, %802, %783
  %814 = tail call fastcc ptr @get_array_num(i32 noundef %773, i64 noundef %781) #30
  %815 = icmp eq ptr %814, null
  br i1 %815, label %2083, label %816

816:                                              ; preds = %813
  %817 = load ptr, ptr %814, align 8, !tbaa !14
  %818 = icmp eq ptr %817, null
  br i1 %818, label %826, label %819

819:                                              ; preds = %816
  %820 = getelementptr inbounds %struct.bc_struct, ptr %817, i64 0, i32 3
  %821 = load i32, ptr %820, align 4, !tbaa !90
  %822 = add nsw i32 %821, -1
  store i32 %822, ptr %820, align 4, !tbaa !90
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %824, label %825

824:                                              ; preds = %819
  tail call void @free(ptr noundef nonnull %817) #29
  br label %825

825:                                              ; preds = %824, %819
  store ptr null, ptr %814, align 8, !tbaa !14
  br label %826

826:                                              ; preds = %825, %816
  %827 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %828 = load ptr, ptr %827, align 8, !tbaa !93
  %829 = getelementptr inbounds %struct.bc_struct, ptr %828, i64 0, i32 3
  %830 = load i32, ptr %829, align 4, !tbaa !90
  %831 = add nsw i32 %830, 1
  store i32 %831, ptr %829, align 4, !tbaa !90
  store ptr %828, ptr %814, align 8, !tbaa !14
  %832 = getelementptr inbounds %struct.estack_rec, ptr %827, i64 0, i32 1
  %833 = load ptr, ptr %832, align 8, !tbaa !110
  %834 = load ptr, ptr %833, align 8, !tbaa !14
  %835 = icmp eq ptr %834, null
  br i1 %835, label %844, label %836

836:                                              ; preds = %826
  %837 = getelementptr inbounds %struct.bc_struct, ptr %834, i64 0, i32 3
  %838 = load i32, ptr %837, align 4, !tbaa !90
  %839 = add nsw i32 %838, -1
  store i32 %839, ptr %837, align 4, !tbaa !90
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %842

841:                                              ; preds = %836
  tail call void @free(ptr noundef nonnull %834) #29
  br label %842

842:                                              ; preds = %841, %836
  store ptr null, ptr %833, align 8, !tbaa !14
  %843 = load ptr, ptr %832, align 8, !tbaa !110
  br label %844

844:                                              ; preds = %842, %826
  %845 = phi ptr [ %833, %826 ], [ %843, %842 ]
  %846 = load ptr, ptr %827, align 8, !tbaa !93
  store ptr %846, ptr %845, align 8, !tbaa !93
  %847 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %848 = getelementptr inbounds %struct.bc_struct, ptr %847, i64 0, i32 3
  %849 = load i32, ptr %848, align 4, !tbaa !90
  %850 = add nsw i32 %849, 1
  store i32 %850, ptr %848, align 4, !tbaa !90
  store ptr %847, ptr %827, align 8, !tbaa !14
  tail call fastcc void @pop() #30
  br label %2083

851:                                              ; preds = %32
  %852 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %853 = load ptr, ptr %852, align 8, !tbaa !14
  %854 = load ptr, ptr @_zero_, align 8
  %855 = icmp eq ptr %854, %853
  br i1 %855, label %878, label %856

856:                                              ; preds = %851
  %857 = getelementptr inbounds %struct.bc_struct, ptr %853, i64 0, i32 1
  %858 = load i32, ptr %857, align 4, !tbaa !95
  %859 = getelementptr inbounds %struct.bc_struct, ptr %853, i64 0, i32 2
  %860 = load i32, ptr %859, align 4, !tbaa !96
  %861 = add nsw i32 %860, %858
  %862 = icmp sgt i32 %861, 0
  br i1 %862, label %863, label %874

863:                                              ; preds = %856
  %864 = getelementptr inbounds %struct.bc_struct, ptr %853, i64 0, i32 4
  br label %865

865:                                              ; preds = %870, %863
  %866 = phi ptr [ %871, %870 ], [ %864, %863 ]
  %867 = phi i32 [ %872, %870 ], [ %861, %863 ]
  %868 = load i8, ptr %866, align 1, !tbaa !7
  %869 = icmp eq i8 %868, 0
  br i1 %869, label %870, label %874

870:                                              ; preds = %865
  %871 = getelementptr inbounds i8, ptr %866, i64 1
  %872 = add nsw i32 %867, -1
  %873 = icmp sgt i32 %867, 1
  br i1 %873, label %865, label %874, !llvm.loop !97

874:                                              ; preds = %870, %865, %856
  %875 = phi i32 [ %861, %856 ], [ 0, %870 ], [ %867, %865 ]
  %876 = icmp eq i32 %875, 0
  %877 = zext i1 %876 to i8
  br label %878

878:                                              ; preds = %874, %851
  %879 = phi i8 [ 1, %851 ], [ %877, %874 ]
  store i8 %879, ptr @c_code, align 1, !tbaa !7
  %880 = icmp eq ptr %853, null
  br i1 %880, label %887, label %881

881:                                              ; preds = %878
  %882 = getelementptr inbounds %struct.bc_struct, ptr %853, i64 0, i32 3
  %883 = load i32, ptr %882, align 4, !tbaa !90
  %884 = add nsw i32 %883, -1
  store i32 %884, ptr %882, align 4, !tbaa !90
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %887

886:                                              ; preds = %881
  tail call void @free(ptr noundef nonnull %853) #29
  br label %887

887:                                              ; preds = %886, %881, %878
  %888 = icmp eq i8 %879, 0
  %889 = load ptr, ptr @_one_, align 8
  %890 = select i1 %888, ptr %854, ptr %889
  %891 = getelementptr inbounds %struct.bc_struct, ptr %890, i64 0, i32 3
  %892 = load i32, ptr %891, align 4, !tbaa !90
  %893 = add nsw i32 %892, 1
  store i32 %893, ptr %891, align 4, !tbaa !90
  store ptr %890, ptr %852, align 8, !tbaa !93
  br label %2083

894:                                              ; preds = %32, %32
  %895 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %896 = load ptr, ptr %895, align 8, !tbaa !93
  %897 = load i32, ptr @o_base, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #33
  %898 = load i32, ptr %896, align 4, !tbaa !113
  %899 = icmp eq i32 %898, 1
  br i1 %899, label %900, label %901

900:                                              ; preds = %894
  tail call void @out_char(i32 noundef 45) #29, !callees !116
  br label %901

901:                                              ; preds = %900, %894
  %902 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %903 = icmp eq ptr %902, %896
  br i1 %903, label %924, label %904

904:                                              ; preds = %901
  %905 = getelementptr inbounds %struct.bc_struct, ptr %896, i64 0, i32 1
  %906 = load i32, ptr %905, align 4, !tbaa !95
  %907 = getelementptr inbounds %struct.bc_struct, ptr %896, i64 0, i32 2
  %908 = load i32, ptr %907, align 4, !tbaa !96
  %909 = add nsw i32 %908, %906
  %910 = icmp sgt i32 %909, 0
  br i1 %910, label %911, label %922

911:                                              ; preds = %904
  %912 = getelementptr inbounds %struct.bc_struct, ptr %896, i64 0, i32 4
  br label %913

913:                                              ; preds = %918, %911
  %914 = phi ptr [ %919, %918 ], [ %912, %911 ]
  %915 = phi i32 [ %920, %918 ], [ %909, %911 ]
  %916 = load i8, ptr %914, align 1, !tbaa !7
  %917 = icmp eq i8 %916, 0
  br i1 %917, label %918, label %925

918:                                              ; preds = %913
  %919 = getelementptr inbounds i8, ptr %914, i64 1
  %920 = add nsw i32 %915, -1
  %921 = icmp sgt i32 %915, 1
  br i1 %921, label %913, label %924, !llvm.loop !97

922:                                              ; preds = %904
  %923 = icmp eq i32 %909, 0
  br i1 %923, label %924, label %925

924:                                              ; preds = %922, %918, %901
  tail call void @out_char(i32 noundef 48) #29, !callees !116
  br label %1120

925:                                              ; preds = %922, %913
  %926 = icmp eq i32 %897, 10
  br i1 %926, label %927, label %966

927:                                              ; preds = %925
  %928 = getelementptr inbounds %struct.bc_struct, ptr %896, i64 0, i32 4
  %929 = icmp sgt i32 %906, 1
  br i1 %929, label %935, label %930

930:                                              ; preds = %927
  %931 = load i8, ptr %928, align 1, !tbaa !7
  %932 = icmp eq i8 %931, 0
  br i1 %932, label %945, label %933

933:                                              ; preds = %930
  %934 = icmp sgt i32 %906, 0
  br i1 %934, label %935, label %949

935:                                              ; preds = %933, %927
  br label %936

936:                                              ; preds = %936, %935
  %937 = phi ptr [ %939, %936 ], [ %928, %935 ]
  %938 = phi i32 [ %943, %936 ], [ %906, %935 ]
  %939 = getelementptr inbounds i8, ptr %937, i64 1
  %940 = load i8, ptr %937, align 1, !tbaa !7
  %941 = sext i8 %940 to i32
  %942 = add nsw i32 %941, 48
  tail call void @out_char(i32 noundef %942) #29, !callees !116
  %943 = add nsw i32 %938, -1
  %944 = icmp ugt i32 %938, 1
  br i1 %944, label %936, label %947, !llvm.loop !117

945:                                              ; preds = %930
  %946 = getelementptr inbounds %struct.bc_struct, ptr %896, i64 0, i32 4, i64 1
  br label %949

947:                                              ; preds = %936
  %.lcssa8 = phi ptr [ %939, %936 ]
  %948 = load i32, ptr %907, align 4, !tbaa !96
  br label %949

949:                                              ; preds = %947, %945, %933
  %950 = phi i32 [ %908, %945 ], [ %908, %933 ], [ %948, %947 ]
  %951 = phi ptr [ %946, %945 ], [ %928, %933 ], [ %.lcssa8, %947 ]
  %952 = icmp sgt i32 %950, 0
  br i1 %952, label %953, label %1120

953:                                              ; preds = %949
  tail call void @out_char(i32 noundef 46) #29, !callees !116
  %954 = load i32, ptr %907, align 4, !tbaa !96
  %955 = icmp sgt i32 %954, 0
  br i1 %955, label %956, label %1120

956:                                              ; preds = %956, %953
  %957 = phi ptr [ %959, %956 ], [ %951, %953 ]
  %958 = phi i32 [ %963, %956 ], [ 0, %953 ]
  %959 = getelementptr inbounds i8, ptr %957, i64 1
  %960 = load i8, ptr %957, align 1, !tbaa !7
  %961 = sext i8 %960 to i32
  %962 = add nsw i32 %961, 48
  tail call void @out_char(i32 noundef %962) #29, !callees !116
  %963 = add nuw nsw i32 %958, 1
  %964 = load i32, ptr %907, align 4, !tbaa !96
  %965 = icmp slt i32 %963, %964
  br i1 %965, label %956, label %1120, !llvm.loop !118

966:                                              ; preds = %925
  %967 = getelementptr inbounds %struct.bc_struct, ptr %902, i64 0, i32 3
  %968 = load i32, ptr %967, align 4, !tbaa !90
  %969 = add nsw i32 %968, 1
  store i32 %969, ptr %967, align 4, !tbaa !90
  store ptr %902, ptr %3, align 8, !tbaa !14
  %970 = load ptr, ptr @_one_, align 8, !tbaa !14
  %971 = call fastcc i32 @bc_divide(ptr noundef nonnull %896, ptr noundef %970, ptr noundef nonnull %3, i32 noundef 0) #30, !range !119
  %972 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %973 = getelementptr inbounds %struct.bc_struct, ptr %972, i64 0, i32 3
  %974 = load i32, ptr %973, align 4, !tbaa !90
  store ptr %972, ptr %4, align 8, !tbaa !14
  store ptr %972, ptr %6, align 8, !tbaa !14
  %975 = add nsw i32 %974, 3
  store i32 %975, ptr %973, align 4, !tbaa !90
  store ptr %972, ptr %5, align 8, !tbaa !14
  %976 = load ptr, ptr %3, align 8, !tbaa !14
  call fastcc void @bc_sub(ptr noundef nonnull %896, ptr noundef %976, ptr noundef nonnull %4) #30
  call fastcc void @int2num(ptr noundef nonnull %5, i32 noundef %897) #30
  %977 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %978 = getelementptr inbounds %struct.bc_struct, ptr %977, i64 0, i32 3
  %979 = load i32, ptr %978, align 4, !tbaa !90
  %980 = add nsw i32 %979, 1
  store i32 %980, ptr %978, align 4, !tbaa !90
  store ptr %977, ptr %8, align 8, !tbaa !14
  %981 = add nsw i32 %897, -1
  call fastcc void @int2num(ptr noundef nonnull %8, i32 noundef %981) #30
  %982 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %983 = icmp eq ptr %982, %976
  br i1 %983, label %1042, label %984

984:                                              ; preds = %966
  %985 = load ptr, ptr %5, align 8
  br label %986

986:                                              ; preds = %1009, %984
  %987 = phi ptr [ %972, %984 ], [ %1011, %1009 ]
  %988 = phi ptr [ %976, %984 ], [ %1015, %1009 ]
  %989 = phi ptr [ null, %984 ], [ %1010, %1009 ]
  %990 = getelementptr inbounds %struct.bc_struct, ptr %988, i64 0, i32 1
  %991 = load i32, ptr %990, align 4, !tbaa !95
  %992 = getelementptr inbounds %struct.bc_struct, ptr %988, i64 0, i32 2
  %993 = load i32, ptr %992, align 4, !tbaa !96
  %994 = add nsw i32 %993, %991
  %995 = icmp sgt i32 %994, 0
  br i1 %995, label %996, label %1007

996:                                              ; preds = %986
  %997 = getelementptr inbounds %struct.bc_struct, ptr %988, i64 0, i32 4
  br label %998

998:                                              ; preds = %1003, %996
  %999 = phi ptr [ %1004, %1003 ], [ %997, %996 ]
  %1000 = phi i32 [ %1005, %1003 ], [ %994, %996 ]
  %1001 = load i8, ptr %999, align 1, !tbaa !7
  %1002 = icmp eq i8 %1001, 0
  br i1 %1002, label %1003, label %1009

1003:                                             ; preds = %998
  %1004 = getelementptr inbounds i8, ptr %999, i64 1
  %1005 = add nsw i32 %1000, -1
  %1006 = icmp sgt i32 %1000, 1
  br i1 %1006, label %998, label %1018, !llvm.loop !97

1007:                                             ; preds = %986
  %1008 = icmp eq i32 %994, 0
  br i1 %1008, label %1018, label %1009

1009:                                             ; preds = %1007, %998
  call fastcc void @bc_modulo(ptr noundef %988, ptr noundef %985, ptr noundef nonnull %6, i32 noundef 0) #30
  %1010 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1011 = load ptr, ptr %6, align 8, !tbaa !14
  %1012 = tail call fastcc i64 @num2long(ptr noundef %1011) #30
  store i64 %1012, ptr %1010, align 8, !tbaa !120
  %1013 = getelementptr inbounds %struct.stk_rec, ptr %1010, i64 0, i32 1
  store ptr %989, ptr %1013, align 8, !tbaa !122
  %1014 = call fastcc i32 @bc_divide(ptr noundef %988, ptr noundef %985, ptr noundef nonnull %3, i32 noundef 0) #30, !range !119
  %1015 = load ptr, ptr %3, align 8, !tbaa !14
  %1016 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1017 = icmp eq ptr %1016, %1015
  br i1 %1017, label %1020, label %986, !llvm.loop !123

1018:                                             ; preds = %1007, %1003
  %.lcssa6 = phi ptr [ %987, %1007 ], [ %987, %1003 ]
  %.lcssa4 = phi ptr [ %988, %1007 ], [ %988, %1003 ]
  %.lcssa2 = phi ptr [ %989, %1007 ], [ %989, %1003 ]
  %1019 = icmp eq ptr %.lcssa2, null
  br i1 %1019, label %1042, label %1020

1020:                                             ; preds = %1018, %1009
  %1021 = phi ptr [ %.lcssa2, %1018 ], [ %1010, %1009 ]
  %1022 = phi ptr [ %.lcssa4, %1018 ], [ %1015, %1009 ]
  %1023 = phi ptr [ %.lcssa6, %1018 ], [ %1011, %1009 ]
  %1024 = icmp slt i32 %897, 17
  %1025 = load ptr, ptr %8, align 8
  %1026 = getelementptr inbounds %struct.bc_struct, ptr %1025, i64 0, i32 1
  br label %1027

1027:                                             ; preds = %1040, %1020
  %1028 = phi ptr [ %1030, %1040 ], [ %1021, %1020 ]
  %1029 = getelementptr inbounds %struct.stk_rec, ptr %1028, i64 0, i32 1
  %1030 = load ptr, ptr %1029, align 8, !tbaa !122
  %1031 = load i64, ptr %1028, align 8, !tbaa !120
  br i1 %1024, label %1032, label %1038

1032:                                             ; preds = %1027
  %1033 = shl i64 %1031, 32
  %1034 = ashr exact i64 %1033, 32
  %1035 = getelementptr inbounds [17 x i8], ptr @ref_str, i64 0, i64 %1034
  %1036 = load i8, ptr %1035, align 1, !tbaa !7
  %1037 = sext i8 %1036 to i32
  tail call void @out_char(i32 noundef %1037) #29, !callees !116
  br label %1040

1038:                                             ; preds = %1027
  %1039 = load i32, ptr %1026, align 4, !tbaa !95
  tail call fastcc void @out_long(i64 noundef %1031, i32 noundef %1039, i32 noundef 1) #30
  br label %1040

1040:                                             ; preds = %1038, %1032
  tail call void @free(ptr noundef nonnull %1028) #29
  %1041 = icmp eq ptr %1030, null
  br i1 %1041, label %1042, label %1027

1042:                                             ; preds = %1040, %1018, %966
  %1043 = phi ptr [ %.lcssa4, %1018 ], [ %976, %966 ], [ %1022, %1040 ]
  %1044 = phi ptr [ %.lcssa6, %1018 ], [ %972, %966 ], [ %1023, %1040 ]
  %1045 = load i32, ptr %907, align 4, !tbaa !96
  %1046 = icmp sgt i32 %1045, 0
  br i1 %1046, label %1047, label %1085

1047:                                             ; preds = %1042
  tail call void @out_char(i32 noundef 46) #29, !callees !116
  %1048 = load ptr, ptr @_one_, align 8, !tbaa !14
  %1049 = getelementptr inbounds %struct.bc_struct, ptr %1048, i64 0, i32 3
  %1050 = load i32, ptr %1049, align 4, !tbaa !90
  %1051 = add nsw i32 %1050, 1
  store i32 %1051, ptr %1049, align 4, !tbaa !90
  store ptr %1048, ptr %7, align 8, !tbaa !14
  %1052 = getelementptr inbounds %struct.bc_struct, ptr %1048, i64 0, i32 1
  %1053 = load i32, ptr %1052, align 4, !tbaa !95
  %1054 = load i32, ptr %907, align 4, !tbaa !96
  %1055 = icmp sgt i32 %1053, %1054
  br i1 %1055, label %1085, label %1056

1056:                                             ; preds = %1047
  %1057 = load ptr, ptr %5, align 8, !tbaa !14
  %1058 = icmp slt i32 %897, 17
  %1059 = load ptr, ptr %8, align 8
  %1060 = getelementptr inbounds %struct.bc_struct, ptr %1059, i64 0, i32 1
  br label %1061

1061:                                             ; preds = %1078, %1056
  %1062 = phi i32 [ %1054, %1056 ], [ %1083, %1078 ]
  %1063 = phi ptr [ %1048, %1056 ], [ %1080, %1078 ]
  %1064 = phi i32 [ 0, %1056 ], [ %1079, %1078 ]
  %1065 = load ptr, ptr %4, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %1065, ptr noundef %1057, ptr noundef nonnull %4, i32 noundef %1062) #30
  %1066 = load ptr, ptr %4, align 8, !tbaa !14
  %1067 = tail call fastcc i64 @num2long(ptr noundef %1066) #30
  %1068 = trunc i64 %1067 to i32
  call fastcc void @int2num(ptr noundef nonnull %3, i32 noundef %1068) #30
  %1069 = load ptr, ptr %3, align 8, !tbaa !14
  call fastcc void @bc_sub(ptr noundef %1066, ptr noundef %1069, ptr noundef nonnull %4) #30
  %1070 = shl i64 %1067, 32
  %1071 = ashr exact i64 %1070, 32
  br i1 %1058, label %1072, label %1076

1072:                                             ; preds = %1061
  %1073 = getelementptr inbounds [17 x i8], ptr @ref_str, i64 0, i64 %1071
  %1074 = load i8, ptr %1073, align 1, !tbaa !7
  %1075 = sext i8 %1074 to i32
  tail call void @out_char(i32 noundef %1075) #29, !callees !116
  br label %1078

1076:                                             ; preds = %1061
  %1077 = load i32, ptr %1060, align 4, !tbaa !95
  tail call fastcc void @out_long(i64 noundef %1071, i32 noundef %1077, i32 noundef %1064) #30
  br label %1078

1078:                                             ; preds = %1076, %1072
  %1079 = phi i32 [ %1064, %1072 ], [ 1, %1076 ]
  call fastcc void @bc_multiply(ptr noundef nonnull %1063, ptr noundef %1057, ptr noundef nonnull %7, i32 noundef 0) #30
  %1080 = load ptr, ptr %7, align 8, !tbaa !14
  %1081 = getelementptr inbounds %struct.bc_struct, ptr %1080, i64 0, i32 1
  %1082 = load i32, ptr %1081, align 4, !tbaa !95
  %1083 = load i32, ptr %907, align 4, !tbaa !96
  %1084 = icmp sgt i32 %1082, %1083
  br i1 %1084, label %1085, label %1061, !llvm.loop !124

1085:                                             ; preds = %1078, %1047, %1042
  %1086 = phi ptr [ %1043, %1047 ], [ %1043, %1042 ], [ %1069, %1078 ]
  %1087 = icmp eq ptr %1086, null
  br i1 %1087, label %1094, label %1088

1088:                                             ; preds = %1085
  %1089 = getelementptr inbounds %struct.bc_struct, ptr %1086, i64 0, i32 3
  %1090 = load i32, ptr %1089, align 4, !tbaa !90
  %1091 = add nsw i32 %1090, -1
  store i32 %1091, ptr %1089, align 4, !tbaa !90
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1093, label %1094

1093:                                             ; preds = %1088
  tail call void @free(ptr noundef nonnull %1086) #29
  br label %1094

1094:                                             ; preds = %1093, %1088, %1085
  %1095 = load ptr, ptr %4, align 8, !tbaa !14
  %1096 = icmp eq ptr %1095, null
  br i1 %1096, label %1103, label %1097

1097:                                             ; preds = %1094
  %1098 = getelementptr inbounds %struct.bc_struct, ptr %1095, i64 0, i32 3
  %1099 = load i32, ptr %1098, align 4, !tbaa !90
  %1100 = add nsw i32 %1099, -1
  store i32 %1100, ptr %1098, align 4, !tbaa !90
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1102, label %1103

1102:                                             ; preds = %1097
  tail call void @free(ptr noundef nonnull %1095) #29
  br label %1103

1103:                                             ; preds = %1102, %1097, %1094
  %1104 = load ptr, ptr %5, align 8, !tbaa !14
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %1112, label %1106

1106:                                             ; preds = %1103
  %1107 = getelementptr inbounds %struct.bc_struct, ptr %1104, i64 0, i32 3
  %1108 = load i32, ptr %1107, align 4, !tbaa !90
  %1109 = add nsw i32 %1108, -1
  store i32 %1109, ptr %1107, align 4, !tbaa !90
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1112

1111:                                             ; preds = %1106
  tail call void @free(ptr noundef nonnull %1104) #29
  br label %1112

1112:                                             ; preds = %1111, %1106, %1103
  %1113 = icmp eq ptr %1044, null
  br i1 %1113, label %1120, label %1114

1114:                                             ; preds = %1112
  %1115 = getelementptr inbounds %struct.bc_struct, ptr %1044, i64 0, i32 3
  %1116 = load i32, ptr %1115, align 4, !tbaa !90
  %1117 = add nsw i32 %1116, -1
  store i32 %1117, ptr %1115, align 4, !tbaa !90
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1119, label %1120

1119:                                             ; preds = %1114
  tail call void @free(ptr noundef nonnull %1044) #29
  br label %1120

1120:                                             ; preds = %1119, %1114, %1112, %956, %953, %949, %924
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  %1121 = icmp eq i8 %45, 87
  br i1 %1121, label %1122, label %1124

1122:                                             ; preds = %1120
  store i32 0, ptr @out_col, align 4, !tbaa !12
  %1123 = tail call i32 @putchar(i32 noundef 10) #30
  br label %1124

1124:                                             ; preds = %1122, %1120
  tail call fastcc void @store_var(i32 noundef 3) #29
  %1125 = load i8, ptr @interactive, align 1, !tbaa !7
  %1126 = icmp eq i8 %1125, 0
  br i1 %1126, label %2083, label %1127

1127:                                             ; preds = %1124
  %1128 = load ptr, ptr @stdout, align 8, !tbaa !14
  %1129 = tail call i32 @fflush(ptr noundef %1128) #30
  br label %2083

1130:                                             ; preds = %32
  %1131 = ashr i32 %38, 10
  %1132 = add nsw i32 %36, 2
  store i32 %1132, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1133 = srem i32 %38, 1024
  %1134 = sext i32 %1131 to i64
  %1135 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1134
  %1136 = load ptr, ptr %1135, align 8, !tbaa !14
  %1137 = sext i32 %1133 to i64
  %1138 = getelementptr inbounds i8, ptr %1136, i64 %1137
  %1139 = load i8, ptr %1138, align 1, !tbaa !7
  switch i8 %1139, label %2083 [
    i8 76, label %1140
    i8 83, label %1158
    i8 82, label %1163
    i8 73, label %1285
  ]

1140:                                             ; preds = %1130
  %1141 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1142 = load ptr, ptr %1141, align 8, !tbaa !93
  %1143 = getelementptr inbounds %struct.bc_struct, ptr %1142, i64 0, i32 1
  %1144 = load i32, ptr %1143, align 4, !tbaa !95
  %1145 = icmp eq i32 %1144, 1
  %1146 = getelementptr inbounds %struct.bc_struct, ptr %1142, i64 0, i32 2
  %1147 = load i32, ptr %1146, align 4, !tbaa !96
  br i1 %1145, label %1148, label %1155

1148:                                             ; preds = %1140
  %1149 = icmp eq i32 %1147, 0
  br i1 %1149, label %1155, label %1150

1150:                                             ; preds = %1148
  %1151 = getelementptr inbounds %struct.bc_struct, ptr %1142, i64 0, i32 4
  %1152 = load i8, ptr %1151, align 4, !tbaa !7
  %1153 = icmp eq i8 %1152, 0
  br i1 %1153, label %1154, label %1155

1154:                                             ; preds = %1150
  tail call fastcc void @int2num(ptr noundef nonnull %1141, i32 noundef %1147) #29
  br label %2083

1155:                                             ; preds = %1150, %1148, %1140
  %1156 = phi i32 [ %1147, %1150 ], [ 0, %1148 ], [ %1147, %1140 ]
  %1157 = add nsw i32 %1156, %1144
  tail call fastcc void @int2num(ptr noundef nonnull %1141, i32 noundef %1157) #29
  br label %2083

1158:                                             ; preds = %1130
  %1159 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1160 = load ptr, ptr %1159, align 8, !tbaa !93
  %1161 = getelementptr inbounds %struct.bc_struct, ptr %1160, i64 0, i32 2
  %1162 = load i32, ptr %1161, align 4, !tbaa !96
  tail call fastcc void @int2num(ptr noundef nonnull %1159, i32 noundef %1162) #29
  br label %2083

1163:                                             ; preds = %1130
  %1164 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1165 = load i32, ptr @scale, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #33
  %1166 = load ptr, ptr %1164, align 8, !tbaa !14
  %1167 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1168 = tail call fastcc i32 @_do_compare(ptr noundef %1166, ptr noundef %1167, i32 noundef 1, i32 noundef 0) #30, !range !125
  %1169 = icmp slt i32 %1168, 0
  br i1 %1169, label %1284, label %1170

1170:                                             ; preds = %1163
  %1171 = icmp eq i32 %1168, 0
  br i1 %1171, label %1172, label %1184

1172:                                             ; preds = %1170
  %1173 = icmp eq ptr %1166, null
  br i1 %1173, label %1180, label %1174

1174:                                             ; preds = %1172
  %1175 = getelementptr inbounds %struct.bc_struct, ptr %1166, i64 0, i32 3
  %1176 = load i32, ptr %1175, align 4, !tbaa !90
  %1177 = add nsw i32 %1176, -1
  store i32 %1177, ptr %1175, align 4, !tbaa !90
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1180

1179:                                             ; preds = %1174
  tail call void @free(ptr noundef nonnull %1166) #29
  br label %1180

1180:                                             ; preds = %1179, %1174, %1172
  %1181 = getelementptr inbounds %struct.bc_struct, ptr %1167, i64 0, i32 3
  %1182 = load i32, ptr %1181, align 4, !tbaa !90
  %1183 = add nsw i32 %1182, 1
  store i32 %1183, ptr %1181, align 4, !tbaa !90
  store ptr %1167, ptr %1164, align 8, !tbaa !14
  br label %1283

1184:                                             ; preds = %1170
  %1185 = load ptr, ptr @_one_, align 8, !tbaa !14
  %1186 = tail call fastcc i32 @_do_compare(ptr noundef %1166, ptr noundef %1185, i32 noundef 1, i32 noundef 0) #30, !range !125
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1188, label %1200

1188:                                             ; preds = %1184
  %1189 = icmp eq ptr %1166, null
  br i1 %1189, label %1196, label %1190

1190:                                             ; preds = %1188
  %1191 = getelementptr inbounds %struct.bc_struct, ptr %1166, i64 0, i32 3
  %1192 = load i32, ptr %1191, align 4, !tbaa !90
  %1193 = add nsw i32 %1192, -1
  store i32 %1193, ptr %1191, align 4, !tbaa !90
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1195, label %1196

1195:                                             ; preds = %1190
  tail call void @free(ptr noundef nonnull %1166) #29
  br label %1196

1196:                                             ; preds = %1195, %1190, %1188
  %1197 = getelementptr inbounds %struct.bc_struct, ptr %1185, i64 0, i32 3
  %1198 = load i32, ptr %1197, align 4, !tbaa !90
  %1199 = add nsw i32 %1198, 1
  store i32 %1199, ptr %1197, align 4, !tbaa !90
  store ptr %1185, ptr %1164, align 8, !tbaa !14
  br label %1283

1200:                                             ; preds = %1184
  %1201 = getelementptr inbounds %struct.bc_struct, ptr %1166, i64 0, i32 2
  %1202 = load i32, ptr %1201, align 4, !tbaa !96
  %1203 = tail call i32 @llvm.smax.i32(i32 %1202, i32 %1165)
  %1204 = add nsw i32 %1203, 2
  %1205 = getelementptr inbounds %struct.bc_struct, ptr %1167, i64 0, i32 3
  %1206 = load i32, ptr %1205, align 4, !tbaa !90
  store ptr %1167, ptr %1, align 8, !tbaa !14
  %1207 = add nsw i32 %1206, 2
  store i32 %1207, ptr %1205, align 4, !tbaa !90
  store ptr %1167, ptr %2, align 8, !tbaa !14
  %1208 = tail call noalias dereferenceable_or_null(1042) ptr @malloc(i64 noundef 1042) #31
  %1209 = getelementptr inbounds %struct.bc_struct, ptr %1208, i64 0, i32 3
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %1208, align 4, !tbaa !7
  %1210 = getelementptr inbounds %struct.bc_struct, ptr %1208, i64 0, i32 4
  store i8 0, ptr %1210, align 4, !tbaa !7
  %1211 = getelementptr inbounds %struct.bc_struct, ptr %1208, i64 0, i32 4, i64 1
  store i8 5, ptr %1211, align 1, !tbaa !7
  %1212 = icmp slt i32 %1186, 0
  br i1 %1212, label %1213, label %1217

1213:                                             ; preds = %1200
  %1214 = getelementptr inbounds %struct.bc_struct, ptr %1185, i64 0, i32 3
  %1215 = load i32, ptr %1214, align 4, !tbaa !90
  %1216 = add nsw i32 %1215, 1
  store i32 %1216, ptr %1214, align 4, !tbaa !90
  store ptr %1185, ptr %1, align 8, !tbaa !14
  br label %1230

1217:                                             ; preds = %1200
  call fastcc void @int2num(ptr noundef nonnull %1, i32 noundef 10) #30
  %1218 = load ptr, ptr %1164, align 8, !tbaa !14
  %1219 = getelementptr inbounds %struct.bc_struct, ptr %1218, i64 0, i32 1
  %1220 = load i32, ptr %1219, align 4, !tbaa !95
  call fastcc void @int2num(ptr noundef nonnull %2, i32 noundef %1220) #30
  %1221 = load ptr, ptr %2, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %1221, ptr noundef nonnull %1208, ptr noundef nonnull %2, i32 noundef %1203) #30
  %1222 = load ptr, ptr %2, align 8, !tbaa !14
  %1223 = getelementptr inbounds %struct.bc_struct, ptr %1222, i64 0, i32 2
  store i32 0, ptr %1223, align 4, !tbaa !96
  %1224 = load ptr, ptr %1, align 8, !tbaa !14
  call fastcc void @bc_raise(ptr noundef %1224, ptr noundef %1222, ptr noundef nonnull %1, i32 noundef %1203) #30
  %1225 = getelementptr inbounds %struct.bc_struct, ptr %1222, i64 0, i32 3
  %1226 = load i32, ptr %1225, align 4, !tbaa !90
  %1227 = add nsw i32 %1226, -1
  store i32 %1227, ptr %1225, align 4, !tbaa !90
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1229, label %1230

1229:                                             ; preds = %1217
  tail call void @free(ptr noundef nonnull %1222) #29
  br label %1230

1230:                                             ; preds = %1229, %1217, %1213
  %1231 = phi ptr [ %1167, %1213 ], [ null, %1217 ], [ null, %1229 ]
  br label %1232

1232:                                             ; preds = %1241, %1230
  %1233 = phi ptr [ %1242, %1241 ], [ %1231, %1230 ]
  %1234 = icmp eq ptr %1233, null
  br i1 %1234, label %1241, label %1235

1235:                                             ; preds = %1232
  %1236 = getelementptr inbounds %struct.bc_struct, ptr %1233, i64 0, i32 3
  %1237 = load i32, ptr %1236, align 4, !tbaa !90
  %1238 = add nsw i32 %1237, -1
  store i32 %1238, ptr %1236, align 4, !tbaa !90
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1240, label %1241

1240:                                             ; preds = %1235
  tail call void @free(ptr noundef nonnull %1233) #29
  br label %1241

1241:                                             ; preds = %1240, %1235, %1232
  %1242 = load ptr, ptr %1, align 8, !tbaa !14
  %1243 = getelementptr inbounds %struct.bc_struct, ptr %1242, i64 0, i32 3
  %1244 = load i32, ptr %1243, align 4, !tbaa !90
  %1245 = add nsw i32 %1244, 1
  store i32 %1245, ptr %1243, align 4, !tbaa !90
  %1246 = load ptr, ptr %1164, align 8, !tbaa !14
  %1247 = call fastcc i32 @bc_divide(ptr noundef %1246, ptr noundef %1242, ptr noundef nonnull %1, i32 noundef %1204) #30, !range !119
  %1248 = load ptr, ptr %1, align 8, !tbaa !14
  call fastcc void @bc_add(ptr noundef %1248, ptr noundef %1242, ptr noundef nonnull %1) #30
  %1249 = load ptr, ptr %1, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %1249, ptr noundef nonnull %1208, ptr noundef nonnull %1, i32 noundef %1204) #30
  %1250 = load ptr, ptr %1, align 8, !tbaa !14
  %1251 = tail call fastcc i32 @_do_compare(ptr noundef %1250, ptr noundef %1242, i32 noundef 0, i32 noundef 1) #30, !range !125
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1232

1253:                                             ; preds = %1241
  %.lcssa1 = phi ptr [ %1242, %1241 ]
  %.lcssa = phi ptr [ %1250, %1241 ]
  %1254 = getelementptr inbounds %struct.bc_struct, ptr %.lcssa1, i64 0, i32 3
  %1255 = load ptr, ptr %1164, align 8, !tbaa !14
  %1256 = icmp eq ptr %1255, null
  br i1 %1256, label %1264, label %1257

1257:                                             ; preds = %1253
  %1258 = getelementptr inbounds %struct.bc_struct, ptr %1255, i64 0, i32 3
  %1259 = load i32, ptr %1258, align 4, !tbaa !90
  %1260 = add nsw i32 %1259, -1
  store i32 %1260, ptr %1258, align 4, !tbaa !90
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1262, label %1263

1262:                                             ; preds = %1257
  tail call void @free(ptr noundef nonnull %1255) #29
  br label %1263

1263:                                             ; preds = %1262, %1257
  store ptr null, ptr %1164, align 8, !tbaa !14
  br label %1264

1264:                                             ; preds = %1263, %1253
  %1265 = load ptr, ptr @_one_, align 8, !tbaa !14
  %1266 = tail call fastcc i32 @bc_divide(ptr noundef %.lcssa, ptr noundef %1265, ptr noundef nonnull %1164, i32 noundef %1203) #30, !range !119
  %1267 = icmp eq ptr %.lcssa, null
  br i1 %1267, label %1274, label %1268

1268:                                             ; preds = %1264
  %1269 = getelementptr inbounds %struct.bc_struct, ptr %.lcssa, i64 0, i32 3
  %1270 = load i32, ptr %1269, align 4, !tbaa !90
  %1271 = add nsw i32 %1270, -1
  store i32 %1271, ptr %1269, align 4, !tbaa !90
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1273, label %1274

1273:                                             ; preds = %1268
  tail call void @free(ptr noundef nonnull %.lcssa) #29
  br label %1274

1274:                                             ; preds = %1273, %1268, %1264
  %1275 = load i32, ptr %1254, align 4, !tbaa !90
  %1276 = add nsw i32 %1275, -1
  store i32 %1276, ptr %1254, align 4, !tbaa !90
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1278, label %1279

1278:                                             ; preds = %1274
  tail call void @free(ptr noundef nonnull %.lcssa1) #29
  br label %1279

1279:                                             ; preds = %1278, %1274
  %1280 = load i32, ptr %1209, align 4, !tbaa !90
  %1281 = icmp eq i32 %1280, 1
  br i1 %1281, label %1282, label %1283

1282:                                             ; preds = %1279
  tail call void @free(ptr noundef nonnull %1208) #29
  br label %1283

1283:                                             ; preds = %1282, %1279, %1196, %1180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #33
  br label %2083

1284:                                             ; preds = %1163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #33
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.4.3) #29
  br label %2083

1285:                                             ; preds = %1130
  %1286 = load i32, ptr @i_base, align 4, !tbaa !12
  tail call fastcc void @push_constant(ptr noundef nonnull @input_char, i32 noundef %1286) #30
  br label %2083

1287:                                             ; preds = %32
  %1288 = ashr i32 %38, 10
  %1289 = add nsw i32 %36, 2
  store i32 %1289, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1290 = srem i32 %38, 1024
  %1291 = sext i32 %1288 to i64
  %1292 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1291
  %1293 = load ptr, ptr %1292, align 8, !tbaa !14
  %1294 = sext i32 %1290 to i64
  %1295 = getelementptr inbounds i8, ptr %1293, i64 %1294
  %1296 = load i8, ptr %1295, align 1, !tbaa !7
  %1297 = icmp sgt i8 %1296, -1
  br i1 %1297, label %1308, label %1298

1298:                                             ; preds = %1287
  %1299 = ashr i32 %1289, 10
  %1300 = add nsw i32 %36, 3
  store i32 %1300, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1301 = srem i32 %1289, 1024
  %1302 = sext i32 %1299 to i64
  %1303 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1302
  %1304 = load ptr, ptr %1303, align 8, !tbaa !14
  %1305 = sext i32 %1301 to i64
  %1306 = getelementptr inbounds i8, ptr %1304, i64 %1305
  %1307 = load i8, ptr %1306, align 1, !tbaa !7
  br label %1308

1308:                                             ; preds = %1298, %1287
  %1309 = phi i8 [ %1307, %1298 ], [ %1296, %1287 ]
  switch i8 %1309, label %1328 [
    i8 0, label %1310
    i8 1, label %1316
    i8 2, label %1322
  ]

1310:                                             ; preds = %1308
  %1311 = load i32, ptr @i_base, align 4, !tbaa !12
  %1312 = icmp sgt i32 %1311, 2
  br i1 %1312, label %1313, label %1315

1313:                                             ; preds = %1310
  %1314 = add nsw i32 %1311, -1
  store i32 %1314, ptr @i_base, align 4, !tbaa !12
  br label %2083

1315:                                             ; preds = %1310
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.11.185) #29
  br label %2083

1316:                                             ; preds = %1308
  %1317 = load i32, ptr @o_base, align 4, !tbaa !12
  %1318 = icmp sgt i32 %1317, 2
  br i1 %1318, label %1319, label %1321

1319:                                             ; preds = %1316
  %1320 = add nsw i32 %1317, -1
  store i32 %1320, ptr @o_base, align 4, !tbaa !12
  br label %2083

1321:                                             ; preds = %1316
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.12.186) #29
  br label %2083

1322:                                             ; preds = %1308
  %1323 = load i32, ptr @scale, align 4, !tbaa !12
  %1324 = icmp sgt i32 %1323, 0
  br i1 %1324, label %1325, label %1327

1325:                                             ; preds = %1322
  %1326 = add nsw i32 %1323, -1
  store i32 %1326, ptr @scale, align 4, !tbaa !12
  br label %2083

1327:                                             ; preds = %1322
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.13.187) #29
  br label %2083

1328:                                             ; preds = %1308
  %1329 = zext i8 %1309 to i32
  %1330 = tail call fastcc ptr @get_var(i32 noundef %1329) #30
  %1331 = icmp eq ptr %1330, null
  br i1 %1331, label %2083, label %1332

1332:                                             ; preds = %1328
  %1333 = load ptr, ptr %1330, align 8, !tbaa !101
  %1334 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call fastcc void @bc_sub(ptr noundef %1333, ptr noundef %1334, ptr noundef nonnull %1330) #29
  br label %2083

1335:                                             ; preds = %32
  tail call void @exit(i32 noundef 0) #32
  unreachable

1336:                                             ; preds = %32
  %1337 = ashr i32 %38, 10
  %1338 = add nsw i32 %36, 2
  store i32 %1338, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1339 = srem i32 %38, 1024
  %1340 = sext i32 %1337 to i64
  %1341 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1340
  %1342 = load ptr, ptr %1341, align 8, !tbaa !14
  %1343 = sext i32 %1339 to i64
  %1344 = getelementptr inbounds i8, ptr %1342, i64 %1343
  %1345 = load i8, ptr %1344, align 1, !tbaa !7
  %1346 = icmp sgt i8 %1345, -1
  br i1 %1346, label %1357, label %1347

1347:                                             ; preds = %1336
  %1348 = ashr i32 %1338, 10
  %1349 = add nsw i32 %36, 3
  store i32 %1349, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1350 = srem i32 %1338, 1024
  %1351 = sext i32 %1348 to i64
  %1352 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1351
  %1353 = load ptr, ptr %1352, align 8, !tbaa !14
  %1354 = sext i32 %1350 to i64
  %1355 = getelementptr inbounds i8, ptr %1353, i64 %1354
  %1356 = load i8, ptr %1355, align 1, !tbaa !7
  br label %1357

1357:                                             ; preds = %1347, %1336
  %1358 = phi i8 [ %1356, %1347 ], [ %1345, %1336 ]
  switch i8 %1358, label %1377 [
    i8 0, label %1359
    i8 1, label %1365
    i8 2, label %1371
  ]

1359:                                             ; preds = %1357
  %1360 = load i32, ptr @i_base, align 4, !tbaa !12
  %1361 = icmp slt i32 %1360, 16
  br i1 %1361, label %1362, label %1364

1362:                                             ; preds = %1359
  %1363 = add nsw i32 %1360, 1
  store i32 %1363, ptr @i_base, align 4, !tbaa !12
  br label %2083

1364:                                             ; preds = %1359
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.14.192) #29
  br label %2083

1365:                                             ; preds = %1357
  %1366 = load i32, ptr @o_base, align 4, !tbaa !12
  %1367 = icmp slt i32 %1366, 99
  br i1 %1367, label %1368, label %1370

1368:                                             ; preds = %1365
  %1369 = add nsw i32 %1366, 1
  store i32 %1369, ptr @o_base, align 4, !tbaa !12
  br label %2083

1370:                                             ; preds = %1365
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.15.193) #29
  br label %2083

1371:                                             ; preds = %1357
  %1372 = load i32, ptr @scale, align 4, !tbaa !12
  %1373 = icmp slt i32 %1372, 99
  br i1 %1373, label %1374, label %1376

1374:                                             ; preds = %1371
  %1375 = add nsw i32 %1372, 1
  store i32 %1375, ptr @scale, align 4, !tbaa !12
  br label %2083

1376:                                             ; preds = %1371
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.16.194) #29
  br label %2083

1377:                                             ; preds = %1357
  %1378 = zext i8 %1358 to i32
  %1379 = tail call fastcc ptr @get_var(i32 noundef %1378) #30
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %2083, label %1381

1381:                                             ; preds = %1377
  %1382 = load ptr, ptr %1379, align 8, !tbaa !101
  %1383 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call fastcc void @bc_add(ptr noundef %1382, ptr noundef %1383, ptr noundef nonnull %1379) #29
  br label %2083

1384:                                             ; preds = %32
  %1385 = ashr i32 %38, 10
  %1386 = add nsw i32 %36, 2
  store i32 %1386, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1387 = srem i32 %38, 1024
  %1388 = sext i32 %1385 to i64
  %1389 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1388
  %1390 = load ptr, ptr %1389, align 8, !tbaa !14
  %1391 = sext i32 %1387 to i64
  %1392 = getelementptr inbounds i8, ptr %1390, i64 %1391
  %1393 = load i8, ptr %1392, align 1, !tbaa !7
  %1394 = icmp sgt i8 %1393, -1
  br i1 %1394, label %1405, label %1395

1395:                                             ; preds = %1384
  %1396 = ashr i32 %1386, 10
  %1397 = add nsw i32 %36, 3
  store i32 %1397, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1398 = srem i32 %1386, 1024
  %1399 = sext i32 %1396 to i64
  %1400 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1399
  %1401 = load ptr, ptr %1400, align 8, !tbaa !14
  %1402 = sext i32 %1398 to i64
  %1403 = getelementptr inbounds i8, ptr %1401, i64 %1402
  %1404 = load i8, ptr %1403, align 1, !tbaa !7
  br label %1405

1405:                                             ; preds = %1395, %1384
  %1406 = phi i8 [ %1404, %1395 ], [ %1393, %1384 ]
  switch i8 %1406, label %1434 [
    i8 0, label %1407
    i8 1, label %1416
    i8 2, label %1425
  ]

1407:                                             ; preds = %1405
  %1408 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1409 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1410 = getelementptr inbounds %struct.bc_struct, ptr %1408, i64 0, i32 3
  %1411 = load i32, ptr %1410, align 4, !tbaa !90
  %1412 = add nsw i32 %1411, 1
  store i32 %1412, ptr %1410, align 4, !tbaa !90
  store ptr %1408, ptr %1409, align 8, !tbaa !93
  %1413 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1414 = getelementptr inbounds %struct.estack_rec, ptr %1409, i64 0, i32 1
  store ptr %1413, ptr %1414, align 8, !tbaa !110
  store ptr %1409, ptr @ex_stack, align 8, !tbaa !14
  %1415 = load i32, ptr @i_base, align 4, !tbaa !12
  tail call fastcc void @int2num(ptr noundef nonnull %1409, i32 noundef %1415) #29
  br label %2083

1416:                                             ; preds = %1405
  %1417 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1418 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1419 = getelementptr inbounds %struct.bc_struct, ptr %1417, i64 0, i32 3
  %1420 = load i32, ptr %1419, align 4, !tbaa !90
  %1421 = add nsw i32 %1420, 1
  store i32 %1421, ptr %1419, align 4, !tbaa !90
  store ptr %1417, ptr %1418, align 8, !tbaa !93
  %1422 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1423 = getelementptr inbounds %struct.estack_rec, ptr %1418, i64 0, i32 1
  store ptr %1422, ptr %1423, align 8, !tbaa !110
  store ptr %1418, ptr @ex_stack, align 8, !tbaa !14
  %1424 = load i32, ptr @o_base, align 4, !tbaa !12
  tail call fastcc void @int2num(ptr noundef nonnull %1418, i32 noundef %1424) #29
  br label %2083

1425:                                             ; preds = %1405
  %1426 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1427 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1428 = getelementptr inbounds %struct.bc_struct, ptr %1426, i64 0, i32 3
  %1429 = load i32, ptr %1428, align 4, !tbaa !90
  %1430 = add nsw i32 %1429, 1
  store i32 %1430, ptr %1428, align 4, !tbaa !90
  store ptr %1426, ptr %1427, align 8, !tbaa !93
  %1431 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1432 = getelementptr inbounds %struct.estack_rec, ptr %1427, i64 0, i32 1
  store ptr %1431, ptr %1432, align 8, !tbaa !110
  store ptr %1427, ptr @ex_stack, align 8, !tbaa !14
  %1433 = load i32, ptr @scale, align 4, !tbaa !12
  tail call fastcc void @int2num(ptr noundef nonnull %1427, i32 noundef %1433) #29
  br label %2083

1434:                                             ; preds = %1405
  %1435 = load ptr, ptr @variables, align 8, !tbaa !14
  %1436 = zext i8 %1406 to i64
  %1437 = getelementptr inbounds ptr, ptr %1435, i64 %1436
  %1438 = load ptr, ptr %1437, align 8, !tbaa !14
  %1439 = icmp eq ptr %1438, null
  br i1 %1439, label %1448, label %1440

1440:                                             ; preds = %1434
  %1441 = load ptr, ptr %1438, align 8, !tbaa !101
  %1442 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1443 = getelementptr inbounds %struct.bc_struct, ptr %1441, i64 0, i32 3
  %1444 = load i32, ptr %1443, align 4, !tbaa !90
  %1445 = add nsw i32 %1444, 1
  store i32 %1445, ptr %1443, align 4, !tbaa !90
  store ptr %1441, ptr %1442, align 8, !tbaa !93
  %1446 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1447 = getelementptr inbounds %struct.estack_rec, ptr %1442, i64 0, i32 1
  store ptr %1446, ptr %1447, align 8, !tbaa !110
  store ptr %1442, ptr @ex_stack, align 8, !tbaa !14
  br label %2083

1448:                                             ; preds = %1434
  %1449 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1450 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1451 = getelementptr inbounds %struct.bc_struct, ptr %1449, i64 0, i32 3
  %1452 = load i32, ptr %1451, align 4, !tbaa !90
  %1453 = add nsw i32 %1452, 1
  store i32 %1453, ptr %1451, align 4, !tbaa !90
  store ptr %1449, ptr %1450, align 8, !tbaa !93
  %1454 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1455 = getelementptr inbounds %struct.estack_rec, ptr %1450, i64 0, i32 1
  store ptr %1454, ptr %1455, align 8, !tbaa !110
  store ptr %1450, ptr @ex_stack, align 8, !tbaa !14
  br label %2083

1456:                                             ; preds = %32
  %1457 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1458 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1459 = load ptr, ptr %1458, align 8, !tbaa !93
  tail call fastcc void @bc_sub(ptr noundef %1457, ptr noundef %1459, ptr noundef nonnull %1458) #29
  br label %2083

1460:                                             ; preds = %32
  tail call fastcc void @pop() #29
  br label %2083

1461:                                             ; preds = %32
  %1462 = ashr i32 %38, 10
  %1463 = add nsw i32 %36, 2
  store i32 %1463, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1464 = srem i32 %38, 1024
  %1465 = sext i32 %1462 to i64
  %1466 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1465
  %1467 = load ptr, ptr %1466, align 8, !tbaa !14
  %1468 = sext i32 %1464 to i64
  %1469 = getelementptr inbounds i8, ptr %1467, i64 %1468
  %1470 = load i8, ptr %1469, align 1, !tbaa !7
  %1471 = icmp sgt i8 %1470, -1
  br i1 %1471, label %1482, label %1472

1472:                                             ; preds = %1461
  %1473 = ashr i32 %1463, 10
  %1474 = add nsw i32 %36, 3
  store i32 %1474, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1475 = srem i32 %1463, 1024
  %1476 = sext i32 %1473 to i64
  %1477 = getelementptr inbounds %struct.bc_function, ptr %35, i64 %33, i32 1, i64 %1476
  %1478 = load ptr, ptr %1477, align 8, !tbaa !14
  %1479 = sext i32 %1475 to i64
  %1480 = getelementptr inbounds i8, ptr %1478, i64 %1479
  %1481 = load i8, ptr %1480, align 1, !tbaa !7
  br label %1482

1482:                                             ; preds = %1472, %1461
  %1483 = phi i8 [ %1481, %1472 ], [ %1470, %1461 ]
  %1484 = zext i8 %1483 to i32
  tail call fastcc void @store_var(i32 noundef %1484) #29
  br label %2083

1485:                                             ; preds = %1500, %32
  %1486 = phi i32 [ %1503, %1500 ], [ %34, %32 ]
  %1487 = phi ptr [ %1502, %1500 ], [ %35, %32 ]
  %1488 = phi i32 [ %1501, %1500 ], [ %38, %32 ]
  %1489 = ashr i32 %1488, 10
  %1490 = add nsw i32 %1488, 1
  store i32 %1490, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1491 = srem i32 %1488, 1024
  %1492 = sext i32 %1486 to i64
  %1493 = sext i32 %1489 to i64
  %1494 = getelementptr inbounds %struct.bc_function, ptr %1487, i64 %1492, i32 1, i64 %1493
  %1495 = load ptr, ptr %1494, align 8, !tbaa !14
  %1496 = sext i32 %1491 to i64
  %1497 = getelementptr inbounds i8, ptr %1495, i64 %1496
  %1498 = load i8, ptr %1497, align 1, !tbaa !7
  %1499 = icmp eq i8 %1498, 34
  br i1 %1499, label %1504, label %1500

1500:                                             ; preds = %1485
  tail call void @out_char(i8 noundef signext %1498) #29
  %1501 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %1502 = load ptr, ptr @functions, align 8, !tbaa !14
  %1503 = load i32, ptr @pc, align 8, !tbaa !16
  br label %1485, !llvm.loop !126

1504:                                             ; preds = %1485
  %1505 = load i8, ptr @interactive, align 1, !tbaa !7
  %1506 = icmp eq i8 %1505, 0
  br i1 %1506, label %2083, label %1507

1507:                                             ; preds = %1504
  %1508 = load ptr, ptr @stdout, align 8, !tbaa !14
  %1509 = tail call i32 @fflush(ptr noundef %1508) #30
  br label %2083

1510:                                             ; preds = %32
  %1511 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1512 = icmp eq i8 %1511, 0
  br i1 %1512, label %2083, label %1513

1513:                                             ; preds = %1510
  %1514 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1515 = load ptr, ptr %1514, align 8, !tbaa !93
  %1516 = getelementptr inbounds %struct.estack_rec, ptr %1514, i64 0, i32 1
  %1517 = load ptr, ptr %1516, align 8, !tbaa !110
  %1518 = load ptr, ptr %1517, align 8, !tbaa !93
  store ptr %1518, ptr %1514, align 8, !tbaa !93
  store ptr %1515, ptr %1517, align 8, !tbaa !93
  br label %2083

1519:                                             ; preds = %32
  %1520 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1521 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1522 = getelementptr inbounds %struct.bc_struct, ptr %1520, i64 0, i32 3
  %1523 = load i32, ptr %1522, align 4, !tbaa !90
  %1524 = add nsw i32 %1523, 1
  store i32 %1524, ptr %1522, align 4, !tbaa !90
  store ptr %1520, ptr %1521, align 8, !tbaa !93
  %1525 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1526 = getelementptr inbounds %struct.estack_rec, ptr %1521, i64 0, i32 1
  store ptr %1525, ptr %1526, align 8, !tbaa !110
  store ptr %1521, ptr @ex_stack, align 8, !tbaa !14
  br label %2083

1527:                                             ; preds = %32
  %1528 = load ptr, ptr @_one_, align 8, !tbaa !14
  %1529 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %1530 = getelementptr inbounds %struct.bc_struct, ptr %1528, i64 0, i32 3
  %1531 = load i32, ptr %1530, align 4, !tbaa !90
  %1532 = add nsw i32 %1531, 1
  store i32 %1532, ptr %1530, align 4, !tbaa !90
  store ptr %1528, ptr %1529, align 8, !tbaa !93
  %1533 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1534 = getelementptr inbounds %struct.estack_rec, ptr %1529, i64 0, i32 1
  store ptr %1533, ptr %1534, align 8, !tbaa !110
  store ptr %1529, ptr @ex_stack, align 8, !tbaa !14
  br label %2083

1535:                                             ; preds = %32
  %1536 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1537 = load ptr, ptr %1536, align 8, !tbaa !14
  %1538 = load ptr, ptr @_zero_, align 8
  %1539 = icmp eq ptr %1538, %1537
  br i1 %1539, label %1562, label %1540

1540:                                             ; preds = %1535
  %1541 = getelementptr inbounds %struct.bc_struct, ptr %1537, i64 0, i32 1
  %1542 = load i32, ptr %1541, align 4, !tbaa !95
  %1543 = getelementptr inbounds %struct.bc_struct, ptr %1537, i64 0, i32 2
  %1544 = load i32, ptr %1543, align 4, !tbaa !96
  %1545 = add nsw i32 %1544, %1542
  %1546 = icmp sgt i32 %1545, 0
  br i1 %1546, label %1547, label %1558

1547:                                             ; preds = %1540
  %1548 = getelementptr inbounds %struct.bc_struct, ptr %1537, i64 0, i32 4
  br label %1549

1549:                                             ; preds = %1554, %1547
  %1550 = phi ptr [ %1555, %1554 ], [ %1548, %1547 ]
  %1551 = phi i32 [ %1556, %1554 ], [ %1545, %1547 ]
  %1552 = load i8, ptr %1550, align 1, !tbaa !7
  %1553 = icmp eq i8 %1552, 0
  br i1 %1553, label %1554, label %1558

1554:                                             ; preds = %1549
  %1555 = getelementptr inbounds i8, ptr %1550, i64 1
  %1556 = add nsw i32 %1551, -1
  %1557 = icmp sgt i32 %1551, 1
  br i1 %1557, label %1549, label %1558, !llvm.loop !97

1558:                                             ; preds = %1554, %1549, %1540
  %1559 = phi i32 [ %1545, %1540 ], [ 0, %1554 ], [ %1551, %1549 ]
  %1560 = icmp eq i32 %1559, 0
  %1561 = zext i1 %1560 to i8
  br label %1562

1562:                                             ; preds = %1558, %1535
  %1563 = phi i8 [ 1, %1535 ], [ %1561, %1558 ]
  store i8 %1563, ptr @c_code, align 1, !tbaa !7
  %1564 = icmp eq ptr %1537, null
  br i1 %1564, label %1571, label %1565

1565:                                             ; preds = %1562
  %1566 = getelementptr inbounds %struct.bc_struct, ptr %1537, i64 0, i32 3
  %1567 = load i32, ptr %1566, align 4, !tbaa !90
  %1568 = add nsw i32 %1567, -1
  store i32 %1568, ptr %1566, align 4, !tbaa !90
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1570, label %1571

1570:                                             ; preds = %1565
  tail call void @free(ptr noundef nonnull %1537) #29
  br label %1571

1571:                                             ; preds = %1570, %1565, %1562
  %1572 = icmp eq i8 %1563, 0
  %1573 = load ptr, ptr @_one_, align 8
  %1574 = select i1 %1572, ptr %1538, ptr %1573
  %1575 = getelementptr inbounds %struct.bc_struct, ptr %1574, i64 0, i32 3
  %1576 = load i32, ptr %1575, align 4, !tbaa !90
  %1577 = add nsw i32 %1576, 1
  store i32 %1577, ptr %1575, align 4, !tbaa !90
  store ptr %1574, ptr %1536, align 8, !tbaa !93
  br label %2083

1578:                                             ; preds = %32
  %1579 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1580 = icmp eq i8 %1579, 0
  br i1 %1580, label %2083, label %1581

1581:                                             ; preds = %1578
  %1582 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1583 = getelementptr inbounds %struct.estack_rec, ptr %1582, i64 0, i32 1
  %1584 = load ptr, ptr %1583, align 8, !tbaa !110
  %1585 = load ptr, ptr %1584, align 8, !tbaa !93
  %1586 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1587 = icmp eq ptr %1586, %1585
  br i1 %1587, label %1636, label %1588

1588:                                             ; preds = %1581
  %1589 = getelementptr inbounds %struct.bc_struct, ptr %1585, i64 0, i32 1
  %1590 = load i32, ptr %1589, align 4, !tbaa !95
  %1591 = getelementptr inbounds %struct.bc_struct, ptr %1585, i64 0, i32 2
  %1592 = load i32, ptr %1591, align 4, !tbaa !96
  %1593 = add nsw i32 %1592, %1590
  %1594 = icmp sgt i32 %1593, 0
  br i1 %1594, label %1595, label %1606

1595:                                             ; preds = %1588
  %1596 = getelementptr inbounds %struct.bc_struct, ptr %1585, i64 0, i32 4
  br label %1597

1597:                                             ; preds = %1602, %1595
  %1598 = phi ptr [ %1603, %1602 ], [ %1596, %1595 ]
  %1599 = phi i32 [ %1604, %1602 ], [ %1593, %1595 ]
  %1600 = load i8, ptr %1598, align 1, !tbaa !7
  %1601 = icmp eq i8 %1600, 0
  br i1 %1601, label %1602, label %1608

1602:                                             ; preds = %1597
  %1603 = getelementptr inbounds i8, ptr %1598, i64 1
  %1604 = add nsw i32 %1599, -1
  %1605 = icmp sgt i32 %1599, 1
  br i1 %1605, label %1597, label %1636, !llvm.loop !97

1606:                                             ; preds = %1588
  %1607 = icmp eq i32 %1593, 0
  br i1 %1607, label %1636, label %1608

1608:                                             ; preds = %1606, %1597
  %1609 = load ptr, ptr %1582, align 8, !tbaa !93
  %1610 = icmp eq ptr %1586, %1609
  br i1 %1610, label %1633, label %1611

1611:                                             ; preds = %1608
  %1612 = getelementptr inbounds %struct.bc_struct, ptr %1609, i64 0, i32 1
  %1613 = load i32, ptr %1612, align 4, !tbaa !95
  %1614 = getelementptr inbounds %struct.bc_struct, ptr %1609, i64 0, i32 2
  %1615 = load i32, ptr %1614, align 4, !tbaa !96
  %1616 = add nsw i32 %1615, %1613
  %1617 = icmp sgt i32 %1616, 0
  br i1 %1617, label %1618, label %1629

1618:                                             ; preds = %1611
  %1619 = getelementptr inbounds %struct.bc_struct, ptr %1609, i64 0, i32 4
  br label %1620

1620:                                             ; preds = %1625, %1618
  %1621 = phi ptr [ %1626, %1625 ], [ %1619, %1618 ]
  %1622 = phi i32 [ %1627, %1625 ], [ %1616, %1618 ]
  %1623 = load i8, ptr %1621, align 1, !tbaa !7
  %1624 = icmp eq i8 %1623, 0
  br i1 %1624, label %1625, label %1629

1625:                                             ; preds = %1620
  %1626 = getelementptr inbounds i8, ptr %1621, i64 1
  %1627 = add nsw i32 %1622, -1
  %1628 = icmp sgt i32 %1622, 1
  br i1 %1628, label %1620, label %1629, !llvm.loop !97

1629:                                             ; preds = %1625, %1620, %1611
  %1630 = phi i32 [ %1616, %1611 ], [ 0, %1625 ], [ %1622, %1620 ]
  %1631 = icmp eq i32 %1630, 0
  %1632 = zext i1 %1631 to i8
  br label %1633

1633:                                             ; preds = %1629, %1608
  %1634 = phi i8 [ 1, %1608 ], [ %1632, %1629 ]
  %1635 = icmp eq i8 %1634, 0
  br label %1636

1636:                                             ; preds = %1633, %1606, %1602, %1581
  %1637 = phi i1 [ false, %1606 ], [ %1635, %1633 ], [ false, %1581 ], [ false, %1602 ]
  %1638 = zext i1 %1637 to i8
  store i8 %1638, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %1639 = load i8, ptr @c_code, align 1, !tbaa !7
  %1640 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1641 = load ptr, ptr %1640, align 8, !tbaa !14
  %1642 = icmp eq ptr %1641, null
  br i1 %1642, label %1649, label %1643

1643:                                             ; preds = %1636
  %1644 = getelementptr inbounds %struct.bc_struct, ptr %1641, i64 0, i32 3
  %1645 = load i32, ptr %1644, align 4, !tbaa !90
  %1646 = add nsw i32 %1645, -1
  store i32 %1646, ptr %1644, align 4, !tbaa !90
  %1647 = icmp eq i32 %1646, 0
  br i1 %1647, label %1648, label %1649

1648:                                             ; preds = %1643
  tail call void @free(ptr noundef nonnull %1641) #29
  br label %1649

1649:                                             ; preds = %1648, %1643, %1636
  %1650 = icmp eq i8 %1639, 0
  %1651 = load ptr, ptr @_zero_, align 8
  %1652 = load ptr, ptr @_one_, align 8
  %1653 = select i1 %1650, ptr %1651, ptr %1652
  %1654 = getelementptr inbounds %struct.bc_struct, ptr %1653, i64 0, i32 3
  %1655 = load i32, ptr %1654, align 4, !tbaa !90
  %1656 = add nsw i32 %1655, 1
  store i32 %1656, ptr %1654, align 4, !tbaa !90
  store ptr %1653, ptr %1640, align 8, !tbaa !93
  br label %2083

1657:                                             ; preds = %32
  %1658 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1659 = icmp eq i8 %1658, 0
  br i1 %1659, label %2083, label %1660

1660:                                             ; preds = %1657
  %1661 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1662 = getelementptr inbounds %struct.estack_rec, ptr %1661, i64 0, i32 1
  %1663 = load ptr, ptr %1662, align 8, !tbaa !110
  %1664 = load ptr, ptr %1663, align 8, !tbaa !93
  %1665 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1666 = icmp eq ptr %1665, %1664
  br i1 %1666, label %1687, label %1667

1667:                                             ; preds = %1660
  %1668 = getelementptr inbounds %struct.bc_struct, ptr %1664, i64 0, i32 1
  %1669 = load i32, ptr %1668, align 4, !tbaa !95
  %1670 = getelementptr inbounds %struct.bc_struct, ptr %1664, i64 0, i32 2
  %1671 = load i32, ptr %1670, align 4, !tbaa !96
  %1672 = add nsw i32 %1671, %1669
  %1673 = icmp sgt i32 %1672, 0
  br i1 %1673, label %1674, label %1685

1674:                                             ; preds = %1667
  %1675 = getelementptr inbounds %struct.bc_struct, ptr %1664, i64 0, i32 4
  br label %1676

1676:                                             ; preds = %1681, %1674
  %1677 = phi ptr [ %1682, %1681 ], [ %1675, %1674 ]
  %1678 = phi i32 [ %1683, %1681 ], [ %1672, %1674 ]
  %1679 = load i8, ptr %1677, align 1, !tbaa !7
  %1680 = icmp eq i8 %1679, 0
  br i1 %1680, label %1681, label %1715

1681:                                             ; preds = %1676
  %1682 = getelementptr inbounds i8, ptr %1677, i64 1
  %1683 = add nsw i32 %1678, -1
  %1684 = icmp sgt i32 %1678, 1
  br i1 %1684, label %1676, label %1687, !llvm.loop !97

1685:                                             ; preds = %1667
  %1686 = icmp eq i32 %1672, 0
  br i1 %1686, label %1687, label %1715

1687:                                             ; preds = %1685, %1681, %1660
  %1688 = load ptr, ptr %1661, align 8, !tbaa !93
  %1689 = icmp eq ptr %1665, %1688
  br i1 %1689, label %1712, label %1690

1690:                                             ; preds = %1687
  %1691 = getelementptr inbounds %struct.bc_struct, ptr %1688, i64 0, i32 1
  %1692 = load i32, ptr %1691, align 4, !tbaa !95
  %1693 = getelementptr inbounds %struct.bc_struct, ptr %1688, i64 0, i32 2
  %1694 = load i32, ptr %1693, align 4, !tbaa !96
  %1695 = add nsw i32 %1694, %1692
  %1696 = icmp sgt i32 %1695, 0
  br i1 %1696, label %1697, label %1708

1697:                                             ; preds = %1690
  %1698 = getelementptr inbounds %struct.bc_struct, ptr %1688, i64 0, i32 4
  br label %1699

1699:                                             ; preds = %1704, %1697
  %1700 = phi ptr [ %1705, %1704 ], [ %1698, %1697 ]
  %1701 = phi i32 [ %1706, %1704 ], [ %1695, %1697 ]
  %1702 = load i8, ptr %1700, align 1, !tbaa !7
  %1703 = icmp eq i8 %1702, 0
  br i1 %1703, label %1704, label %1708

1704:                                             ; preds = %1699
  %1705 = getelementptr inbounds i8, ptr %1700, i64 1
  %1706 = add nsw i32 %1701, -1
  %1707 = icmp sgt i32 %1701, 1
  br i1 %1707, label %1699, label %1708, !llvm.loop !97

1708:                                             ; preds = %1704, %1699, %1690
  %1709 = phi i32 [ %1695, %1690 ], [ 0, %1704 ], [ %1701, %1699 ]
  %1710 = icmp eq i32 %1709, 0
  %1711 = zext i1 %1710 to i8
  br label %1712

1712:                                             ; preds = %1708, %1687
  %1713 = phi i8 [ 1, %1687 ], [ %1711, %1708 ]
  %1714 = icmp eq i8 %1713, 0
  br label %1715

1715:                                             ; preds = %1712, %1685, %1676
  %1716 = phi i1 [ true, %1685 ], [ %1714, %1712 ], [ true, %1676 ]
  %1717 = zext i1 %1716 to i8
  store i8 %1717, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %1718 = load i8, ptr @c_code, align 1, !tbaa !7
  %1719 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1720 = load ptr, ptr %1719, align 8, !tbaa !14
  %1721 = icmp eq ptr %1720, null
  br i1 %1721, label %1728, label %1722

1722:                                             ; preds = %1715
  %1723 = getelementptr inbounds %struct.bc_struct, ptr %1720, i64 0, i32 3
  %1724 = load i32, ptr %1723, align 4, !tbaa !90
  %1725 = add nsw i32 %1724, -1
  store i32 %1725, ptr %1723, align 4, !tbaa !90
  %1726 = icmp eq i32 %1725, 0
  br i1 %1726, label %1727, label %1728

1727:                                             ; preds = %1722
  tail call void @free(ptr noundef nonnull %1720) #29
  br label %1728

1728:                                             ; preds = %1727, %1722, %1715
  %1729 = icmp eq i8 %1718, 0
  %1730 = load ptr, ptr @_zero_, align 8
  %1731 = load ptr, ptr @_one_, align 8
  %1732 = select i1 %1729, ptr %1730, ptr %1731
  %1733 = getelementptr inbounds %struct.bc_struct, ptr %1732, i64 0, i32 3
  %1734 = load i32, ptr %1733, align 4, !tbaa !90
  %1735 = add nsw i32 %1734, 1
  store i32 %1735, ptr %1733, align 4, !tbaa !90
  store ptr %1732, ptr %1719, align 8, !tbaa !93
  br label %2083

1736:                                             ; preds = %32
  %1737 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1738 = icmp eq i8 %1737, 0
  br i1 %1738, label %2083, label %1739

1739:                                             ; preds = %1736
  %1740 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1741 = getelementptr inbounds %struct.estack_rec, ptr %1740, i64 0, i32 1
  %1742 = load ptr, ptr %1741, align 8, !tbaa !110
  %1743 = load ptr, ptr %1742, align 8, !tbaa !93
  %1744 = load ptr, ptr %1740, align 8, !tbaa !93
  call fastcc void @bc_add(ptr noundef %1743, ptr noundef %1744, ptr noundef nonnull %10) #29
  tail call fastcc void @pop() #29
  tail call fastcc void @pop() #29
  %1745 = load ptr, ptr %10, align 8, !tbaa !14
  %1746 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %1745, ptr %1746, align 8, !tbaa !93
  %1747 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1748 = getelementptr inbounds %struct.estack_rec, ptr %1746, i64 0, i32 1
  store ptr %1747, ptr %1748, align 8, !tbaa !110
  store ptr %1746, ptr @ex_stack, align 8, !tbaa !14
  %1749 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1750 = getelementptr inbounds %struct.bc_struct, ptr %1749, i64 0, i32 3
  %1751 = load i32, ptr %1750, align 4, !tbaa !90
  %1752 = add nsw i32 %1751, 1
  store i32 %1752, ptr %1750, align 4, !tbaa !90
  store ptr %1749, ptr %10, align 8, !tbaa !14
  br label %2083

1753:                                             ; preds = %32
  %1754 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1755 = icmp eq i8 %1754, 0
  br i1 %1755, label %2083, label %1756

1756:                                             ; preds = %1753
  %1757 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1758 = getelementptr inbounds %struct.estack_rec, ptr %1757, i64 0, i32 1
  %1759 = load ptr, ptr %1758, align 8, !tbaa !110
  %1760 = load ptr, ptr %1759, align 8, !tbaa !93
  %1761 = load ptr, ptr %1757, align 8, !tbaa !93
  call fastcc void @bc_sub(ptr noundef %1760, ptr noundef %1761, ptr noundef nonnull %10) #29
  tail call fastcc void @pop() #29
  tail call fastcc void @pop() #29
  %1762 = load ptr, ptr %10, align 8, !tbaa !14
  %1763 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %1762, ptr %1763, align 8, !tbaa !93
  %1764 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1765 = getelementptr inbounds %struct.estack_rec, ptr %1763, i64 0, i32 1
  store ptr %1764, ptr %1765, align 8, !tbaa !110
  store ptr %1763, ptr @ex_stack, align 8, !tbaa !14
  %1766 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1767 = getelementptr inbounds %struct.bc_struct, ptr %1766, i64 0, i32 3
  %1768 = load i32, ptr %1767, align 4, !tbaa !90
  %1769 = add nsw i32 %1768, 1
  store i32 %1769, ptr %1767, align 4, !tbaa !90
  store ptr %1766, ptr %10, align 8, !tbaa !14
  br label %2083

1770:                                             ; preds = %32
  %1771 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1772 = icmp eq i8 %1771, 0
  br i1 %1772, label %2083, label %1773

1773:                                             ; preds = %1770
  %1774 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1775 = getelementptr inbounds %struct.estack_rec, ptr %1774, i64 0, i32 1
  %1776 = load ptr, ptr %1775, align 8, !tbaa !110
  %1777 = load ptr, ptr %1776, align 8, !tbaa !93
  %1778 = load ptr, ptr %1774, align 8, !tbaa !93
  %1779 = load i32, ptr @scale, align 4, !tbaa !12
  call fastcc void @bc_multiply(ptr noundef %1777, ptr noundef %1778, ptr noundef nonnull %10, i32 noundef %1779) #29
  tail call fastcc void @pop() #29
  tail call fastcc void @pop() #29
  %1780 = load ptr, ptr %10, align 8, !tbaa !14
  %1781 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %1780, ptr %1781, align 8, !tbaa !93
  %1782 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1783 = getelementptr inbounds %struct.estack_rec, ptr %1781, i64 0, i32 1
  store ptr %1782, ptr %1783, align 8, !tbaa !110
  store ptr %1781, ptr @ex_stack, align 8, !tbaa !14
  %1784 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1785 = getelementptr inbounds %struct.bc_struct, ptr %1784, i64 0, i32 3
  %1786 = load i32, ptr %1785, align 4, !tbaa !90
  %1787 = add nsw i32 %1786, 1
  store i32 %1787, ptr %1785, align 4, !tbaa !90
  store ptr %1784, ptr %10, align 8, !tbaa !14
  br label %2083

1788:                                             ; preds = %32
  %1789 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1790 = icmp eq i8 %1789, 0
  br i1 %1790, label %2083, label %1791

1791:                                             ; preds = %1788
  %1792 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1793 = getelementptr inbounds %struct.estack_rec, ptr %1792, i64 0, i32 1
  %1794 = load ptr, ptr %1793, align 8, !tbaa !110
  %1795 = load ptr, ptr %1794, align 8, !tbaa !93
  %1796 = load ptr, ptr %1792, align 8, !tbaa !93
  %1797 = load i32, ptr @scale, align 4, !tbaa !12
  %1798 = call fastcc i32 @bc_divide(ptr noundef %1795, ptr noundef %1796, ptr noundef nonnull %10, i32 noundef %1797) #29, !range !119
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1800, label %1809

1800:                                             ; preds = %1791
  tail call fastcc void @pop() #29
  tail call fastcc void @pop() #29
  %1801 = load ptr, ptr %10, align 8, !tbaa !14
  %1802 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %1801, ptr %1802, align 8, !tbaa !93
  %1803 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1804 = getelementptr inbounds %struct.estack_rec, ptr %1802, i64 0, i32 1
  store ptr %1803, ptr %1804, align 8, !tbaa !110
  store ptr %1802, ptr @ex_stack, align 8, !tbaa !14
  %1805 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1806 = getelementptr inbounds %struct.bc_struct, ptr %1805, i64 0, i32 3
  %1807 = load i32, ptr %1806, align 4, !tbaa !90
  %1808 = add nsw i32 %1807, 1
  store i32 %1808, ptr %1806, align 4, !tbaa !90
  store ptr %1805, ptr %10, align 8, !tbaa !14
  br label %2083

1809:                                             ; preds = %1791
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.5.4) #29
  br label %2083

1810:                                             ; preds = %32
  %1811 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1812 = icmp eq i8 %1811, 0
  br i1 %1812, label %2083, label %1813

1813:                                             ; preds = %1810
  %1814 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1815 = load ptr, ptr %1814, align 8, !tbaa !93
  %1816 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1817 = icmp eq ptr %1816, %1815
  br i1 %1817, label %1838, label %1818

1818:                                             ; preds = %1813
  %1819 = getelementptr inbounds %struct.bc_struct, ptr %1815, i64 0, i32 1
  %1820 = load i32, ptr %1819, align 4, !tbaa !95
  %1821 = getelementptr inbounds %struct.bc_struct, ptr %1815, i64 0, i32 2
  %1822 = load i32, ptr %1821, align 4, !tbaa !96
  %1823 = add nsw i32 %1822, %1820
  %1824 = icmp sgt i32 %1823, 0
  br i1 %1824, label %1825, label %1836

1825:                                             ; preds = %1818
  %1826 = getelementptr inbounds %struct.bc_struct, ptr %1815, i64 0, i32 4
  br label %1827

1827:                                             ; preds = %1832, %1825
  %1828 = phi ptr [ %1833, %1832 ], [ %1826, %1825 ]
  %1829 = phi i32 [ %1834, %1832 ], [ %1823, %1825 ]
  %1830 = load i8, ptr %1828, align 1, !tbaa !7
  %1831 = icmp eq i8 %1830, 0
  br i1 %1831, label %1832, label %1839

1832:                                             ; preds = %1827
  %1833 = getelementptr inbounds i8, ptr %1828, i64 1
  %1834 = add nsw i32 %1829, -1
  %1835 = icmp sgt i32 %1829, 1
  br i1 %1835, label %1827, label %1838, !llvm.loop !97

1836:                                             ; preds = %1818
  %1837 = icmp eq i32 %1823, 0
  br i1 %1837, label %1838, label %1839

1838:                                             ; preds = %1836, %1832, %1813
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.6.5) #29
  br label %2083

1839:                                             ; preds = %1836, %1827
  %1840 = getelementptr inbounds %struct.estack_rec, ptr %1814, i64 0, i32 1
  %1841 = load ptr, ptr %1840, align 8, !tbaa !110
  %1842 = load ptr, ptr %1841, align 8, !tbaa !93
  %1843 = load i32, ptr @scale, align 4, !tbaa !12
  call fastcc void @bc_modulo(ptr noundef %1842, ptr noundef %1815, ptr noundef nonnull %10, i32 noundef %1843) #29
  tail call fastcc void @pop() #29
  tail call fastcc void @pop() #29
  %1844 = load ptr, ptr %10, align 8, !tbaa !14
  %1845 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %1844, ptr %1845, align 8, !tbaa !93
  %1846 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1847 = getelementptr inbounds %struct.estack_rec, ptr %1845, i64 0, i32 1
  store ptr %1846, ptr %1847, align 8, !tbaa !110
  store ptr %1845, ptr @ex_stack, align 8, !tbaa !14
  %1848 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1849 = getelementptr inbounds %struct.bc_struct, ptr %1848, i64 0, i32 3
  %1850 = load i32, ptr %1849, align 4, !tbaa !90
  %1851 = add nsw i32 %1850, 1
  store i32 %1851, ptr %1849, align 4, !tbaa !90
  store ptr %1848, ptr %10, align 8, !tbaa !14
  br label %2083

1852:                                             ; preds = %32
  %1853 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1854 = icmp eq i8 %1853, 0
  br i1 %1854, label %2083, label %1855

1855:                                             ; preds = %1852
  %1856 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1857 = getelementptr inbounds %struct.estack_rec, ptr %1856, i64 0, i32 1
  %1858 = load ptr, ptr %1857, align 8, !tbaa !110
  %1859 = load ptr, ptr %1858, align 8, !tbaa !93
  %1860 = load ptr, ptr %1856, align 8, !tbaa !93
  %1861 = load i32, ptr @scale, align 4, !tbaa !12
  call fastcc void @bc_raise(ptr noundef %1859, ptr noundef %1860, ptr noundef nonnull %10, i32 noundef %1861) #29
  %1862 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1863 = getelementptr inbounds %struct.estack_rec, ptr %1862, i64 0, i32 1
  %1864 = load ptr, ptr %1863, align 8, !tbaa !110
  %1865 = load ptr, ptr %1864, align 8, !tbaa !93
  %1866 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1867 = icmp eq ptr %1866, %1865
  br i1 %1867, label %1888, label %1868

1868:                                             ; preds = %1855
  %1869 = getelementptr inbounds %struct.bc_struct, ptr %1865, i64 0, i32 1
  %1870 = load i32, ptr %1869, align 4, !tbaa !95
  %1871 = getelementptr inbounds %struct.bc_struct, ptr %1865, i64 0, i32 2
  %1872 = load i32, ptr %1871, align 4, !tbaa !96
  %1873 = add nsw i32 %1872, %1870
  %1874 = icmp sgt i32 %1873, 0
  br i1 %1874, label %1875, label %1886

1875:                                             ; preds = %1868
  %1876 = getelementptr inbounds %struct.bc_struct, ptr %1865, i64 0, i32 4
  br label %1877

1877:                                             ; preds = %1882, %1875
  %1878 = phi ptr [ %1883, %1882 ], [ %1876, %1875 ]
  %1879 = phi i32 [ %1884, %1882 ], [ %1873, %1875 ]
  %1880 = load i8, ptr %1878, align 1, !tbaa !7
  %1881 = icmp eq i8 %1880, 0
  br i1 %1881, label %1882, label %1893

1882:                                             ; preds = %1877
  %1883 = getelementptr inbounds i8, ptr %1878, i64 1
  %1884 = add nsw i32 %1879, -1
  %1885 = icmp sgt i32 %1879, 1
  br i1 %1885, label %1877, label %1888, !llvm.loop !97

1886:                                             ; preds = %1868
  %1887 = icmp eq i32 %1873, 0
  br i1 %1887, label %1888, label %1893

1888:                                             ; preds = %1886, %1882, %1855
  %1889 = load ptr, ptr %1862, align 8, !tbaa !93
  %1890 = load i32, ptr %1889, align 4, !tbaa !113
  %1891 = icmp eq i32 %1890, 1
  br i1 %1891, label %1892, label %1893

1892:                                             ; preds = %1888
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.7.6) #29
  br label %1893

1893:                                             ; preds = %1892, %1888, %1886, %1877
  tail call fastcc void @pop() #29
  tail call fastcc void @pop() #29
  %1894 = load ptr, ptr %10, align 8, !tbaa !14
  %1895 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %1894, ptr %1895, align 8, !tbaa !93
  %1896 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1897 = getelementptr inbounds %struct.estack_rec, ptr %1895, i64 0, i32 1
  store ptr %1896, ptr %1897, align 8, !tbaa !110
  store ptr %1895, ptr @ex_stack, align 8, !tbaa !14
  %1898 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %1899 = getelementptr inbounds %struct.bc_struct, ptr %1898, i64 0, i32 3
  %1900 = load i32, ptr %1899, align 4, !tbaa !90
  %1901 = add nsw i32 %1900, 1
  store i32 %1901, ptr %1899, align 4, !tbaa !90
  store ptr %1898, ptr %10, align 8, !tbaa !14
  br label %2083

1902:                                             ; preds = %32
  %1903 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1904 = icmp eq i8 %1903, 0
  br i1 %1904, label %2083, label %1905

1905:                                             ; preds = %1902
  %1906 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1907 = getelementptr inbounds %struct.estack_rec, ptr %1906, i64 0, i32 1
  %1908 = load ptr, ptr %1907, align 8, !tbaa !110
  %1909 = load ptr, ptr %1908, align 8, !tbaa !93
  %1910 = load ptr, ptr %1906, align 8, !tbaa !93
  %1911 = tail call fastcc i32 @_do_compare(ptr noundef %1909, ptr noundef %1910, i32 noundef 1, i32 noundef 0) #30, !range !125
  %1912 = icmp eq i32 %1911, 0
  %1913 = zext i1 %1912 to i8
  store i8 %1913, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %1914 = load i8, ptr @c_code, align 1, !tbaa !7
  %1915 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1916 = load ptr, ptr %1915, align 8, !tbaa !14
  %1917 = icmp eq ptr %1916, null
  br i1 %1917, label %1924, label %1918

1918:                                             ; preds = %1905
  %1919 = getelementptr inbounds %struct.bc_struct, ptr %1916, i64 0, i32 3
  %1920 = load i32, ptr %1919, align 4, !tbaa !90
  %1921 = add nsw i32 %1920, -1
  store i32 %1921, ptr %1919, align 4, !tbaa !90
  %1922 = icmp eq i32 %1921, 0
  br i1 %1922, label %1923, label %1924

1923:                                             ; preds = %1918
  tail call void @free(ptr noundef nonnull %1916) #29
  br label %1924

1924:                                             ; preds = %1923, %1918, %1905
  %1925 = icmp eq i8 %1914, 0
  %1926 = load ptr, ptr @_zero_, align 8
  %1927 = load ptr, ptr @_one_, align 8
  %1928 = select i1 %1925, ptr %1926, ptr %1927
  %1929 = getelementptr inbounds %struct.bc_struct, ptr %1928, i64 0, i32 3
  %1930 = load i32, ptr %1929, align 4, !tbaa !90
  %1931 = add nsw i32 %1930, 1
  store i32 %1931, ptr %1929, align 4, !tbaa !90
  store ptr %1928, ptr %1915, align 8, !tbaa !93
  br label %2083

1932:                                             ; preds = %32
  %1933 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1934 = icmp eq i8 %1933, 0
  br i1 %1934, label %2083, label %1935

1935:                                             ; preds = %1932
  %1936 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1937 = getelementptr inbounds %struct.estack_rec, ptr %1936, i64 0, i32 1
  %1938 = load ptr, ptr %1937, align 8, !tbaa !110
  %1939 = load ptr, ptr %1938, align 8, !tbaa !93
  %1940 = load ptr, ptr %1936, align 8, !tbaa !93
  %1941 = tail call fastcc i32 @_do_compare(ptr noundef %1939, ptr noundef %1940, i32 noundef 1, i32 noundef 0) #30, !range !125
  %1942 = icmp ne i32 %1941, 0
  %1943 = zext i1 %1942 to i8
  store i8 %1943, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %1944 = load i8, ptr @c_code, align 1, !tbaa !7
  %1945 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1946 = load ptr, ptr %1945, align 8, !tbaa !14
  %1947 = icmp eq ptr %1946, null
  br i1 %1947, label %1954, label %1948

1948:                                             ; preds = %1935
  %1949 = getelementptr inbounds %struct.bc_struct, ptr %1946, i64 0, i32 3
  %1950 = load i32, ptr %1949, align 4, !tbaa !90
  %1951 = add nsw i32 %1950, -1
  store i32 %1951, ptr %1949, align 4, !tbaa !90
  %1952 = icmp eq i32 %1951, 0
  br i1 %1952, label %1953, label %1954

1953:                                             ; preds = %1948
  tail call void @free(ptr noundef nonnull %1946) #29
  br label %1954

1954:                                             ; preds = %1953, %1948, %1935
  %1955 = icmp eq i8 %1944, 0
  %1956 = load ptr, ptr @_zero_, align 8
  %1957 = load ptr, ptr @_one_, align 8
  %1958 = select i1 %1955, ptr %1956, ptr %1957
  %1959 = getelementptr inbounds %struct.bc_struct, ptr %1958, i64 0, i32 3
  %1960 = load i32, ptr %1959, align 4, !tbaa !90
  %1961 = add nsw i32 %1960, 1
  store i32 %1961, ptr %1959, align 4, !tbaa !90
  store ptr %1958, ptr %1945, align 8, !tbaa !93
  br label %2083

1962:                                             ; preds = %32
  %1963 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1964 = icmp eq i8 %1963, 0
  br i1 %1964, label %2083, label %1965

1965:                                             ; preds = %1962
  %1966 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1967 = getelementptr inbounds %struct.estack_rec, ptr %1966, i64 0, i32 1
  %1968 = load ptr, ptr %1967, align 8, !tbaa !110
  %1969 = load ptr, ptr %1968, align 8, !tbaa !93
  %1970 = load ptr, ptr %1966, align 8, !tbaa !93
  %1971 = tail call fastcc i32 @_do_compare(ptr noundef %1969, ptr noundef %1970, i32 noundef 1, i32 noundef 0) #30, !range !125
  %1972 = icmp eq i32 %1971, -1
  %1973 = zext i1 %1972 to i8
  store i8 %1973, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %1974 = load i8, ptr @c_code, align 1, !tbaa !7
  %1975 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1976 = load ptr, ptr %1975, align 8, !tbaa !14
  %1977 = icmp eq ptr %1976, null
  br i1 %1977, label %1984, label %1978

1978:                                             ; preds = %1965
  %1979 = getelementptr inbounds %struct.bc_struct, ptr %1976, i64 0, i32 3
  %1980 = load i32, ptr %1979, align 4, !tbaa !90
  %1981 = add nsw i32 %1980, -1
  store i32 %1981, ptr %1979, align 4, !tbaa !90
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %1983, label %1984

1983:                                             ; preds = %1978
  tail call void @free(ptr noundef nonnull %1976) #29
  br label %1984

1984:                                             ; preds = %1983, %1978, %1965
  %1985 = icmp eq i8 %1974, 0
  %1986 = load ptr, ptr @_zero_, align 8
  %1987 = load ptr, ptr @_one_, align 8
  %1988 = select i1 %1985, ptr %1986, ptr %1987
  %1989 = getelementptr inbounds %struct.bc_struct, ptr %1988, i64 0, i32 3
  %1990 = load i32, ptr %1989, align 4, !tbaa !90
  %1991 = add nsw i32 %1990, 1
  store i32 %1991, ptr %1989, align 4, !tbaa !90
  store ptr %1988, ptr %1975, align 8, !tbaa !93
  br label %2083

1992:                                             ; preds = %32
  %1993 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %1994 = icmp eq i8 %1993, 0
  br i1 %1994, label %2083, label %1995

1995:                                             ; preds = %1992
  %1996 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %1997 = getelementptr inbounds %struct.estack_rec, ptr %1996, i64 0, i32 1
  %1998 = load ptr, ptr %1997, align 8, !tbaa !110
  %1999 = load ptr, ptr %1998, align 8, !tbaa !93
  %2000 = load ptr, ptr %1996, align 8, !tbaa !93
  %2001 = tail call fastcc i32 @_do_compare(ptr noundef %1999, ptr noundef %2000, i32 noundef 1, i32 noundef 0) #30, !range !125
  %2002 = icmp slt i32 %2001, 1
  %2003 = zext i1 %2002 to i8
  store i8 %2003, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %2004 = load i8, ptr @c_code, align 1, !tbaa !7
  %2005 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2006 = load ptr, ptr %2005, align 8, !tbaa !14
  %2007 = icmp eq ptr %2006, null
  br i1 %2007, label %2014, label %2008

2008:                                             ; preds = %1995
  %2009 = getelementptr inbounds %struct.bc_struct, ptr %2006, i64 0, i32 3
  %2010 = load i32, ptr %2009, align 4, !tbaa !90
  %2011 = add nsw i32 %2010, -1
  store i32 %2011, ptr %2009, align 4, !tbaa !90
  %2012 = icmp eq i32 %2011, 0
  br i1 %2012, label %2013, label %2014

2013:                                             ; preds = %2008
  tail call void @free(ptr noundef nonnull %2006) #29
  br label %2014

2014:                                             ; preds = %2013, %2008, %1995
  %2015 = icmp eq i8 %2004, 0
  %2016 = load ptr, ptr @_zero_, align 8
  %2017 = load ptr, ptr @_one_, align 8
  %2018 = select i1 %2015, ptr %2016, ptr %2017
  %2019 = getelementptr inbounds %struct.bc_struct, ptr %2018, i64 0, i32 3
  %2020 = load i32, ptr %2019, align 4, !tbaa !90
  %2021 = add nsw i32 %2020, 1
  store i32 %2021, ptr %2019, align 4, !tbaa !90
  store ptr %2018, ptr %2005, align 8, !tbaa !93
  br label %2083

2022:                                             ; preds = %32
  %2023 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %2024 = icmp eq i8 %2023, 0
  br i1 %2024, label %2083, label %2025

2025:                                             ; preds = %2022
  %2026 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2027 = getelementptr inbounds %struct.estack_rec, ptr %2026, i64 0, i32 1
  %2028 = load ptr, ptr %2027, align 8, !tbaa !110
  %2029 = load ptr, ptr %2028, align 8, !tbaa !93
  %2030 = load ptr, ptr %2026, align 8, !tbaa !93
  %2031 = tail call fastcc i32 @_do_compare(ptr noundef %2029, ptr noundef %2030, i32 noundef 1, i32 noundef 0) #30, !range !125
  %2032 = icmp eq i32 %2031, 1
  %2033 = zext i1 %2032 to i8
  store i8 %2033, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %2034 = load i8, ptr @c_code, align 1, !tbaa !7
  %2035 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2036 = load ptr, ptr %2035, align 8, !tbaa !14
  %2037 = icmp eq ptr %2036, null
  br i1 %2037, label %2044, label %2038

2038:                                             ; preds = %2025
  %2039 = getelementptr inbounds %struct.bc_struct, ptr %2036, i64 0, i32 3
  %2040 = load i32, ptr %2039, align 4, !tbaa !90
  %2041 = add nsw i32 %2040, -1
  store i32 %2041, ptr %2039, align 4, !tbaa !90
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2043, label %2044

2043:                                             ; preds = %2038
  tail call void @free(ptr noundef nonnull %2036) #29
  br label %2044

2044:                                             ; preds = %2043, %2038, %2025
  %2045 = icmp eq i8 %2034, 0
  %2046 = load ptr, ptr @_zero_, align 8
  %2047 = load ptr, ptr @_one_, align 8
  %2048 = select i1 %2045, ptr %2046, ptr %2047
  %2049 = getelementptr inbounds %struct.bc_struct, ptr %2048, i64 0, i32 3
  %2050 = load i32, ptr %2049, align 4, !tbaa !90
  %2051 = add nsw i32 %2050, 1
  store i32 %2051, ptr %2049, align 4, !tbaa !90
  store ptr %2048, ptr %2035, align 8, !tbaa !93
  br label %2083

2052:                                             ; preds = %32
  %2053 = tail call fastcc signext i8 @check_stack(i32 noundef 2) #29, !range !92
  %2054 = icmp eq i8 %2053, 0
  br i1 %2054, label %2083, label %2055

2055:                                             ; preds = %2052
  %2056 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2057 = getelementptr inbounds %struct.estack_rec, ptr %2056, i64 0, i32 1
  %2058 = load ptr, ptr %2057, align 8, !tbaa !110
  %2059 = load ptr, ptr %2058, align 8, !tbaa !93
  %2060 = load ptr, ptr %2056, align 8, !tbaa !93
  %2061 = tail call fastcc i32 @_do_compare(ptr noundef %2059, ptr noundef %2060, i32 noundef 1, i32 noundef 0) #30, !range !125
  %2062 = icmp sgt i32 %2061, -1
  %2063 = zext i1 %2062 to i8
  store i8 %2063, ptr @c_code, align 1, !tbaa !7
  tail call fastcc void @pop() #29
  %2064 = load i8, ptr @c_code, align 1, !tbaa !7
  %2065 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2066 = load ptr, ptr %2065, align 8, !tbaa !14
  %2067 = icmp eq ptr %2066, null
  br i1 %2067, label %2074, label %2068

2068:                                             ; preds = %2055
  %2069 = getelementptr inbounds %struct.bc_struct, ptr %2066, i64 0, i32 3
  %2070 = load i32, ptr %2069, align 4, !tbaa !90
  %2071 = add nsw i32 %2070, -1
  store i32 %2071, ptr %2069, align 4, !tbaa !90
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2073, label %2074

2073:                                             ; preds = %2068
  tail call void @free(ptr noundef nonnull %2066) #29
  br label %2074

2074:                                             ; preds = %2073, %2068, %2055
  %2075 = icmp eq i8 %2064, 0
  %2076 = load ptr, ptr @_zero_, align 8
  %2077 = load ptr, ptr @_one_, align 8
  %2078 = select i1 %2075, ptr %2076, ptr %2077
  %2079 = getelementptr inbounds %struct.bc_struct, ptr %2078, i64 0, i32 3
  %2080 = load i32, ptr %2079, align 4, !tbaa !90
  %2081 = add nsw i32 %2080, 1
  store i32 %2081, ptr %2079, align 4, !tbaa !90
  store ptr %2078, ptr %2065, align 8, !tbaa !93
  br label %2083

2082:                                             ; preds = %32
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.8.7, i32 noundef %46) #29
  br label %2083

2083:                                             ; preds = %2082, %2074, %2052, %2044, %2022, %2014, %1992, %1984, %1962, %1954, %1932, %1924, %1902, %1893, %1852, %1839, %1838, %1810, %1809, %1800, %1788, %1773, %1770, %1756, %1753, %1739, %1736, %1728, %1657, %1649, %1578, %1571, %1527, %1519, %1513, %1510, %1507, %1504, %1482, %1460, %1456, %1448, %1440, %1425, %1416, %1407, %1381, %1377, %1376, %1374, %1370, %1368, %1364, %1362, %1332, %1328, %1327, %1325, %1321, %1319, %1315, %1313, %1285, %1284, %1283, %1158, %1155, %1154, %1130, %1127, %1124, %887, %844, %813, %808, %771, %749, %747, %719, %716, %666, %662, %657, %623, %594, %591, %586, %551, %529, %528, %356, %345, %233, %198, %175, %111, %108, %103, %68
  %2084 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %2085 = load ptr, ptr @functions, align 8, !tbaa !14
  %2086 = load i32, ptr @pc, align 8, !tbaa !16
  %2087 = sext i32 %2086 to i64
  %2088 = getelementptr inbounds %struct.bc_function, ptr %2085, i64 %2087, i32 2
  %2089 = load i32, ptr %2088, align 8, !tbaa !45
  %2090 = icmp sge i32 %2084, %2089
  %2091 = load i1, ptr @runtime_error, align 1
  %2092 = select i1 %2090, i1 true, i1 %2091
  br i1 %2092, label %2093, label %32, !llvm.loop !127

2093:                                             ; preds = %2083, %22
  %2094 = phi i32 [ %24, %22 ], [ %2086, %2083 ]
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2096, label %2099

2096:                                             ; preds = %2121, %2116, %2112, %2099, %2093
  %2097 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2098 = icmp eq ptr %2097, null
  br i1 %2098, label %2129, label %2126

2099:                                             ; preds = %2121, %2093
  %2100 = phi i32 [ %2124, %2121 ], [ %2094, %2093 ]
  %2101 = load ptr, ptr @functions, align 8, !tbaa !14
  %2102 = sext i32 %2100 to i64
  %2103 = getelementptr inbounds %struct.bc_function, ptr %2101, i64 %2102, i32 5
  %2104 = load ptr, ptr %2103, align 8, !tbaa !50
  tail call fastcc void @pop_vars(ptr noundef %2104) #29
  %2105 = load ptr, ptr @functions, align 8, !tbaa !14
  %2106 = load i32, ptr @pc, align 8, !tbaa !16
  %2107 = sext i32 %2106 to i64
  %2108 = getelementptr inbounds %struct.bc_function, ptr %2105, i64 %2107, i32 4
  %2109 = load ptr, ptr %2108, align 8, !tbaa !51
  tail call fastcc void @pop_vars(ptr noundef %2109) #29
  %2110 = load ptr, ptr @fn_stack, align 8, !tbaa !14
  %2111 = icmp eq ptr %2110, null
  br i1 %2111, label %2096, label %2112

2112:                                             ; preds = %2099
  %2113 = getelementptr inbounds %struct.arg_list, ptr %2110, i64 0, i32 1
  %2114 = load ptr, ptr %2113, align 8, !tbaa !107
  store ptr %2114, ptr @fn_stack, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %2110) #29
  %2115 = icmp eq ptr %2114, null
  br i1 %2115, label %2096, label %2116

2116:                                             ; preds = %2112
  %2117 = getelementptr inbounds %struct.arg_list, ptr %2114, i64 0, i32 1
  %2118 = load ptr, ptr %2117, align 8, !tbaa !107
  store ptr %2118, ptr @fn_stack, align 8, !tbaa !14
  %2119 = load i32, ptr %2114, align 8, !tbaa !109
  tail call void @free(ptr noundef nonnull %2114) #29
  store i32 %2119, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %2120 = icmp eq ptr %2118, null
  br i1 %2120, label %2096, label %2121

2121:                                             ; preds = %2116
  %2122 = getelementptr inbounds %struct.arg_list, ptr %2118, i64 0, i32 1
  %2123 = load ptr, ptr %2122, align 8, !tbaa !107
  store ptr %2123, ptr @fn_stack, align 8, !tbaa !14
  %2124 = load i32, ptr %2118, align 8, !tbaa !109
  tail call void @free(ptr noundef nonnull %2118) #29
  store i32 %2124, ptr @pc, align 8, !tbaa !16
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2096, label %2099, !llvm.loop !128

2126:                                             ; preds = %2126, %2096
  tail call fastcc void @pop() #29
  %2127 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2128 = icmp eq ptr %2127, null
  br i1 %2128, label %2129, label %2126, !llvm.loop !129

2129:                                             ; preds = %2126, %2096
  %2130 = load i8, ptr @interactive, align 1, !tbaa !7
  %2131 = icmp eq i8 %2130, 0
  br i1 %2131, label %2137, label %2132

2132:                                             ; preds = %2129
  %2133 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @use_quit) #29
  %2134 = load i1, ptr @had_sigint, align 4
  br i1 %2134, label %2135, label %2137

2135:                                             ; preds = %2132
  %2136 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %2137

2137:                                             ; preds = %2135, %2132, %2129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #33
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @stop_execution(i32 %0) #7 {
  store i1 true, ptr @had_sigint, align 4
  %2 = tail call i32 @putchar(i32 10)
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1.1) #29
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc signext i8 @check_stack(i32 noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %9, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %8, %4 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.estack_rec, ptr %5, i64 0, i32 1
  %8 = add nsw i32 %6, -1
  %9 = load ptr, ptr %7, align 8, !tbaa !14
  %10 = icmp ne ptr %9, null
  %11 = icmp ugt i32 %6, 1
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %4, label %13, !llvm.loop !130

13:                                               ; preds = %4
  %.lcssa = phi i1 [ %11, %4 ]
  br i1 %.lcssa, label %14, label %15

14:                                               ; preds = %13, %1
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1.165) #29
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i8 [ 0, %14 ], [ 1, %13 ]
  ret i8 %16
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @num2long(ptr nocapture noundef readonly %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = freeze i32 %3
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i32 [ %17, %8 ], [ %4, %6 ]
  %10 = phi ptr [ %13, %8 ], [ %7, %6 ]
  %11 = phi i64 [ %16, %8 ], [ 0, %6 ]
  %12 = mul nsw i64 %11, 10
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = load i8, ptr %10, align 1, !tbaa !7
  %15 = sext i8 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = add i32 %9, -1
  %18 = icmp ugt i32 %9, 1
  %19 = icmp slt i64 %16, 922337203685477581
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %8, label %21, !llvm.loop !131

21:                                               ; preds = %8
  %.lcssa1 = phi i64 [ %16, %8 ]
  %.lcssa = phi i1 [ %18, %8 ]
  %22 = tail call i64 @llvm.smax.i64(i64 %.lcssa1, i64 0)
  %23 = select i1 %.lcssa, i64 0, i64 %22
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i64 [ 0, %1 ], [ %23, %21 ]
  %26 = load i32, ptr %0, align 4, !tbaa !113
  %27 = icmp eq i32 %26, 0
  %28 = sub nsw i64 0, %25
  %29 = select i1 %27, i64 %25, i64 %28
  ret i64 %29
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @rt_error(ptr nocapture noundef readonly %0, ...) unnamed_addr #7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #33
  call void @llvm.va_start(ptr nonnull %2)
  %4 = call i32 @vsprintf(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #29
  call void @llvm.va_end(ptr nonnull %2)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = load ptr, ptr @f_names, align 8, !tbaa !14
  %7 = load i32, ptr @pc, align 8, !tbaa !16
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.39.278, ptr noundef %10, i32 noundef %11, ptr noundef nonnull %3) #35
  store i1 true, ptr @runtime_error, align 1
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #33
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @get_array_num(i32 noundef %0, i64 noundef %1) unnamed_addr #7 {
  %3 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #33
  %4 = load ptr, ptr @arrays, align 8, !tbaa !14
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  store ptr %10, ptr %6, align 8, !tbaa !14
  store ptr null, ptr %10, align 8, !tbaa !104
  %11 = getelementptr inbounds %struct.bc_var_array, ptr %10, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !132
  %12 = getelementptr inbounds %struct.bc_var_array, ptr %10, i64 0, i32 1
  store i8 0, ptr %12, align 8, !tbaa !102
  br label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %7, align 8, !tbaa !104
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %10, %9 ], [ %7, %13 ]
  %18 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %18, ptr %17, align 8, !tbaa !104
  store ptr null, ptr %18, align 8, !tbaa !133
  %19 = getelementptr inbounds %struct.bc_array, ptr %18, i64 0, i32 1
  store i16 0, ptr %19, align 8, !tbaa !135
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi ptr [ %18, %16 ], [ %14, %13 ]
  %22 = trunc i64 %1 to i32
  %23 = and i32 %22, 15
  store i32 %23, ptr %3, align 16, !tbaa !12
  %24 = lshr i64 %1, 4
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.bc_array, ptr %21, i64 0, i32 1
  br label %27

27:                                               ; preds = %46, %20
  %28 = phi i64 [ %50, %46 ], [ 1, %20 ]
  %29 = phi i32 [ %49, %46 ], [ %25, %20 ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %26, align 8, !tbaa !135
  %33 = sext i16 %32 to i64
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %.lcssa3 = phi i16 [ %32, %31 ]
  %.lcssa2 = phi i64 [ %28, %31 ]
  %36 = sext i16 %.lcssa3 to i32
  %37 = trunc i64 %.lcssa2 to i32
  %38 = icmp sgt i32 %37, %36
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr @_zero_, align 8
  %41 = getelementptr inbounds %struct.bc_struct, ptr %40, i64 0, i32 3
  %42 = insertelement <2 x ptr> poison, ptr %40, i64 0
  %43 = shufflevector <2 x ptr> %42, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %51

44:                                               ; preds = %35
  %45 = load ptr, ptr %21, align 8, !tbaa !133
  br label %74

46:                                               ; preds = %31, %27
  %47 = and i32 %29, 15
  %48 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %28
  store i32 %47, ptr %48, align 4, !tbaa !12
  %49 = lshr i32 %29, 4
  %50 = add nuw i64 %28, 1
  br label %27, !llvm.loop !136

51:                                               ; preds = %68, %39
  %52 = phi i16 [ %70, %68 ], [ %.lcssa3, %39 ]
  %53 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #31
  %54 = icmp eq i16 %52, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, ptr %41, align 4, !tbaa !90
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i64 [ 0, %55 ], [ %60, %57 ]
  %59 = getelementptr inbounds [16 x ptr], ptr %53, i64 0, i64 %58
  store <2 x ptr> %43, ptr %59, align 8, !tbaa !14
  %60 = add nuw i64 %58, 2
  %61 = icmp eq i64 %60, 16
  br i1 %61, label %66, label %57, !llvm.loop !137

62:                                               ; preds = %51
  %63 = load ptr, ptr %21, align 8, !tbaa !133
  %64 = getelementptr inbounds %struct.bc_array_node, ptr %53, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !14
  %65 = getelementptr i8, ptr %53, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %65, i8 0, i64 120, i1 false), !tbaa !14
  br label %68

66:                                               ; preds = %57
  %67 = add i32 %56, 16
  store i32 %67, ptr %41, align 4, !tbaa !90
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i16 [ %52, %62 ], [ 0, %66 ]
  store ptr %53, ptr %21, align 8, !tbaa !133
  %70 = add i16 %69, 1
  %71 = sext i16 %70 to i32
  %72 = icmp sgt i32 %37, %71
  br i1 %72, label %51, label %73, !llvm.loop !140

73:                                               ; preds = %68
  %.lcssa1 = phi i16 [ %70, %68 ]
  %.lcssa = phi ptr [ %53, %68 ]
  store i16 %.lcssa1, ptr %26, align 8, !tbaa !135
  br label %74

74:                                               ; preds = %73, %44
  %75 = phi ptr [ %45, %44 ], [ %.lcssa, %73 ]
  %76 = icmp ugt i32 %37, 1
  br i1 %76, label %77, label %109

77:                                               ; preds = %106, %74
  %78 = phi i64 [ %80, %106 ], [ %.lcssa2, %74 ]
  %79 = phi ptr [ %107, %106 ], [ %75, %74 ]
  %80 = add nsw i64 %78, -1
  %81 = and i64 %80, 4294967295
  %82 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !12
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.bc_array_node, ptr %79, i64 0, i32 1, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %106

88:                                               ; preds = %77
  %89 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #31
  store ptr %89, ptr %85, align 8, !tbaa !14
  %90 = icmp ugt i64 %78, 2
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %93 = getelementptr inbounds %struct.bc_struct, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !90
  %95 = insertelement <2 x ptr> poison, ptr %92, i64 0
  %96 = shufflevector <2 x ptr> %95, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %97, %91
  %98 = phi i64 [ 0, %91 ], [ %100, %97 ]
  %99 = getelementptr inbounds [16 x ptr], ptr %89, i64 0, i64 %98
  store <2 x ptr> %96, ptr %99, align 8, !tbaa !14
  %100 = add nuw i64 %98, 2
  %101 = icmp eq i64 %100, 16
  br i1 %101, label %104, label %97, !llvm.loop !141

102:                                              ; preds = %88
  %103 = getelementptr i8, ptr %89, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %103, i8 0, i64 128, i1 false), !tbaa !14
  br label %106

104:                                              ; preds = %97
  %105 = add i32 %94, 16
  store i32 %105, ptr %93, align 4, !tbaa !90
  br label %106

106:                                              ; preds = %104, %102, %77
  %107 = phi ptr [ %86, %77 ], [ %89, %102 ], [ %89, %104 ]
  %108 = icmp sgt i64 %78, 2
  br i1 %108, label %77, label %109, !llvm.loop !142

109:                                              ; preds = %106, %74
  %110 = phi ptr [ %75, %74 ], [ %107, %106 ]
  %111 = and i64 %1, 15
  %112 = getelementptr inbounds [16 x ptr], ptr %110, i64 0, i64 %111
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #33
  ret ptr %112
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal fastcc void @pop() unnamed_addr #19 {
  %1 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.estack_rec, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  store ptr %5, ptr @ex_stack, align 8, !tbaa !14
  %6 = load ptr, ptr %1, align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.bc_struct, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !90
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %9, align 4, !tbaa !90
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %6) #29
  br label %14

14:                                               ; preds = %13, %8, %3
  tail call void @free(ptr noundef nonnull %1) #29
  br label %15

15:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bc_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = load i32, ptr %0, align 4, !tbaa !113
  %5 = load i32, ptr %1, align 4, !tbaa !113
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @_do_add(ptr noundef nonnull %0, ptr noundef nonnull %1) #30
  %9 = load i32, ptr %0, align 4, !tbaa !113
  store i32 %9, ptr %8, align 4, !tbaa !113
  br label %23

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #30, !range !125
  switch i32 %11, label %23 [
    i32 -1, label %12
    i32 0, label %15
    i32 1, label %20
  ]

12:                                               ; preds = %10
  %13 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %1, ptr noundef nonnull %0) #30
  %14 = load i32, ptr %1, align 4, !tbaa !113
  store i32 %14, ptr %13, align 4, !tbaa !113
  br label %23

15:                                               ; preds = %10
  %16 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.bc_struct, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !90
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !90
  br label %23

20:                                               ; preds = %10
  %21 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %0, ptr noundef nonnull %1) #30
  %22 = load i32, ptr %0, align 4, !tbaa !113
  store i32 %22, ptr %21, align 4, !tbaa !113
  br label %23

23:                                               ; preds = %20, %15, %12, %10, %7
  %24 = phi ptr [ %8, %7 ], [ undef, %10 ], [ %21, %20 ], [ %16, %15 ], [ %13, %12 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bc_struct, ptr %25, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !90
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %28, align 4, !tbaa !90
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %25) #29
  br label %33

33:                                               ; preds = %32, %27, %23
  store ptr %24, ptr %2, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc void @auto_var(i32 noundef %0) unnamed_addr #14 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %14

3:                                                ; preds = %1
  %4 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %5 = load ptr, ptr @variables, align 8, !tbaa !14
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.estack_rec, ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !99
  %10 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.bc_struct, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !90
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !90
  store ptr %10, ptr %4, align 8, !tbaa !14
  store ptr %4, ptr %7, align 8, !tbaa !14
  br label %23

14:                                               ; preds = %1
  %15 = sub nsw i32 0, %0
  %16 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  %17 = load ptr, ptr @arrays, align 8, !tbaa !14
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.bc_var_array, ptr %16, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !132
  store ptr null, ptr %16, align 8, !tbaa !104
  %22 = getelementptr inbounds %struct.bc_var_array, ptr %16, i64 0, i32 1
  store i8 0, ptr %22, align 8, !tbaa !102
  store ptr %16, ptr %19, align 8, !tbaa !14
  br label %23

23:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @int2num(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca [30 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #33
  %4 = icmp sgt i32 %1, -1
  %5 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %6 = urem i32 %5, 10
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %3, align 16, !tbaa !7
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  %9 = icmp ult i32 %5, 10
  br i1 %9, label %20, label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %18, %10 ], [ %8, %2 ]
  %12 = phi i32 [ %17, %10 ], [ 1, %2 ]
  %13 = phi i32 [ %14, %10 ], [ %5, %2 ]
  %14 = udiv i32 %13, 10
  %15 = urem i32 %14, 10
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %11, align 1, !tbaa !7
  %17 = add nuw nsw i32 %12, 1
  %18 = getelementptr inbounds i8, ptr %11, i64 1
  %19 = icmp ult i32 %13, 100
  br i1 %19, label %20, label %10, !llvm.loop !143

20:                                               ; preds = %10, %2
  %21 = phi i32 [ 1, %2 ], [ %17, %10 ]
  %22 = phi ptr [ %8, %2 ], [ %18, %10 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bc_struct, ptr %23, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !90
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !90
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @free(ptr noundef nonnull %23) #29
  br label %31

31:                                               ; preds = %30, %25, %20
  %32 = add nuw i32 %21, 1040
  %33 = zext i32 %32 to i64
  %34 = tail call noalias ptr @malloc(i64 noundef %33) #31
  store i32 0, ptr %34, align 4, !tbaa !113
  %35 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 1
  store i32 %21, ptr %35, align 4, !tbaa !95
  %36 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 2
  store i32 0, ptr %36, align 4, !tbaa !96
  %37 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 3
  store i32 1, ptr %37, align 4, !tbaa !90
  %38 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 4
  store i8 0, ptr %38, align 4, !tbaa !7
  store ptr %34, ptr %0, align 8, !tbaa !14
  br i1 %4, label %40, label %39

39:                                               ; preds = %31
  store i32 1, ptr %34, align 4, !tbaa !113
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %41, %40
  %42 = phi i32 [ %45, %41 ], [ %21, %40 ]
  %43 = phi ptr [ %48, %41 ], [ %38, %40 ]
  %44 = phi ptr [ %46, %41 ], [ %22, %40 ]
  %45 = add nsw i32 %42, -1
  %46 = getelementptr inbounds i8, ptr %44, i64 -1
  %47 = load i8, ptr %46, align 1, !tbaa !7
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 %47, ptr %43, align 1, !tbaa !7
  %49 = icmp sgt i32 %42, 1
  br i1 %49, label %41, label %50, !llvm.loop !144

50:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal signext i8 @prog_char() #20 {
  %1 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %2 = ashr i32 %1, 10
  %3 = add nsw i32 %1, 1
  store i32 %3, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %4 = srem i32 %1, 1024
  %5 = load ptr, ptr @functions, align 8, !tbaa !14
  %6 = load i32, ptr @pc, align 8, !tbaa !16
  %7 = sext i32 %6 to i64
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.bc_function, ptr %5, i64 %7, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !7
  ret i8 %13
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @push_constant(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #33
  %8 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.bc_struct, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !90
  store ptr %8, ptr %4, align 8, !tbaa !14
  store ptr %8, ptr %5, align 8, !tbaa !14
  store ptr %8, ptr %6, align 8, !tbaa !14
  %11 = add nsw i32 %10, 4
  store i32 %11, ptr %9, align 4, !tbaa !90
  store ptr %8, ptr %3, align 8, !tbaa !14
  call fastcc void @int2num(ptr noundef nonnull %6, i32 noundef %1) #29
  br label %12

12:                                               ; preds = %12, %2
  %13 = tail call signext i8 %0() #29, !callees !145
  switch i8 %13, label %18 [
    i8 32, label %12
    i8 43, label %14
    i8 45, label %15
  ], !llvm.loop !146

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i1 [ true, %14 ], [ false, %12 ]
  %17 = tail call signext i8 %0() #29, !callees !145
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i8 [ %17, %15 ], [ %13, %12 ]
  %20 = phi i1 [ %16, %15 ], [ true, %12 ]
  %21 = icmp slt i8 %19, 16
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = sext i8 %19 to i32
  %24 = tail call signext i8 %0() #29, !callees !145
  %25 = icmp sgt i8 %24, 15
  %26 = icmp slt i32 %23, %1
  %27 = or i1 %26, %25
  %28 = trunc i32 %1 to i8
  %29 = add i8 %28, -1
  %30 = select i1 %27, i8 %19, i8 %29
  %31 = sext i8 %30 to i32
  call fastcc void @int2num(ptr noundef nonnull %3, i32 noundef %31) #29
  %32 = icmp slt i8 %24, 16
  br i1 %32, label %33, label %46

33:                                               ; preds = %22
  %34 = load ptr, ptr %6, align 8, !tbaa !14
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi i8 [ %44, %35 ], [ %24, %33 ]
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, %1
  %39 = select i1 %38, i8 %36, i8 %29
  %40 = load ptr, ptr %3, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %40, ptr noundef %34, ptr noundef nonnull %5, i32 noundef 0) #29
  %41 = sext i8 %39 to i32
  call fastcc void @int2num(ptr noundef nonnull %4, i32 noundef %41) #29
  %42 = load ptr, ptr %5, align 8, !tbaa !14
  %43 = load ptr, ptr %4, align 8, !tbaa !14
  call fastcc void @bc_add(ptr noundef %42, ptr noundef %43, ptr noundef nonnull %3) #29
  %44 = tail call signext i8 %0() #29, !callees !145
  %45 = icmp slt i8 %44, 16
  br i1 %45, label %35, label %46, !llvm.loop !147

46:                                               ; preds = %35, %22, %18
  %47 = phi ptr [ %8, %22 ], [ %8, %18 ], [ %43, %35 ]
  %48 = phi ptr [ %8, %22 ], [ %8, %18 ], [ %42, %35 ]
  %49 = phi i8 [ %24, %22 ], [ %19, %18 ], [ %44, %35 ]
  %50 = icmp eq i8 %49, 46
  br i1 %50, label %51, label %113

51:                                               ; preds = %46
  %52 = tail call signext i8 %0() #29, !callees !145
  %53 = sext i8 %52 to i32
  %54 = icmp slt i32 %53, %1
  %55 = trunc i32 %1 to i8
  %56 = add i8 %55, -1
  %57 = select i1 %54, i8 %52, i8 %56
  %58 = icmp eq ptr %48, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.bc_struct, ptr %48, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !90
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr %60, align 4, !tbaa !90
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  tail call void @free(ptr noundef nonnull %48) #29
  br label %65

65:                                               ; preds = %64, %59, %51
  %66 = icmp eq ptr %47, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.bc_struct, ptr %47, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !90
  %70 = add nsw i32 %69, -1
  store i32 %70, ptr %68, align 4, !tbaa !90
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  tail call void @free(ptr noundef nonnull %47) #29
  br label %73

73:                                               ; preds = %72, %67
  store ptr null, ptr %4, align 8, !tbaa !14
  br label %74

74:                                               ; preds = %73, %65
  %75 = load ptr, ptr @_one_, align 8, !tbaa !14
  %76 = getelementptr inbounds %struct.bc_struct, ptr %75, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !90
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %76, align 4, !tbaa !90
  store ptr %75, ptr %7, align 8, !tbaa !14
  %79 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %80 = getelementptr inbounds %struct.bc_struct, ptr %79, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !90
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %80, align 4, !tbaa !90
  store ptr %79, ptr %5, align 8, !tbaa !14
  %83 = icmp slt i8 %57, 16
  br i1 %83, label %84, label %105

84:                                               ; preds = %74
  %85 = load ptr, ptr %6, align 8, !tbaa !14
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i8 [ %100, %86 ], [ %57, %84 ]
  %88 = phi i32 [ %94, %86 ], [ 0, %84 ]
  %89 = sext i8 %87 to i32
  %90 = load ptr, ptr %5, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %90, ptr noundef %85, ptr noundef nonnull %5, i32 noundef 0) #29
  call fastcc void @int2num(ptr noundef nonnull %4, i32 noundef %89) #29
  %91 = load ptr, ptr %5, align 8, !tbaa !14
  %92 = load ptr, ptr %4, align 8, !tbaa !14
  call fastcc void @bc_add(ptr noundef %91, ptr noundef %92, ptr noundef nonnull %5) #29
  %93 = load ptr, ptr %7, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %93, ptr noundef %85, ptr noundef nonnull %7, i32 noundef 0) #29
  %94 = add nuw nsw i32 %88, 1
  %95 = tail call signext i8 %0() #29, !callees !145
  %96 = icmp sgt i8 %95, 15
  %97 = sext i8 %95 to i32
  %98 = icmp slt i32 %97, %1
  %99 = or i1 %96, %98
  %100 = select i1 %99, i8 %95, i8 %56
  %101 = icmp slt i8 %100, 16
  br i1 %101, label %86, label %102, !llvm.loop !148

102:                                              ; preds = %86
  %.lcssa1 = phi ptr [ %92, %86 ]
  %.lcssa = phi i32 [ %94, %86 ]
  %103 = load ptr, ptr %5, align 8, !tbaa !14
  %104 = load ptr, ptr %7, align 8, !tbaa !14
  br label %105

105:                                              ; preds = %102, %74
  %106 = phi ptr [ null, %74 ], [ %.lcssa1, %102 ]
  %107 = phi ptr [ %75, %74 ], [ %104, %102 ]
  %108 = phi ptr [ %79, %74 ], [ %103, %102 ]
  %109 = phi i32 [ 0, %74 ], [ %.lcssa, %102 ]
  %110 = call fastcc i32 @bc_divide(ptr noundef %108, ptr noundef %107, ptr noundef nonnull %5, i32 noundef %109) #29, !range !119
  %111 = load ptr, ptr %3, align 8, !tbaa !14
  %112 = load ptr, ptr %5, align 8, !tbaa !14
  call fastcc void @bc_add(ptr noundef %111, ptr noundef %112, ptr noundef nonnull %3) #29
  br label %113

113:                                              ; preds = %105, %46
  %114 = phi ptr [ %112, %105 ], [ %48, %46 ]
  %115 = phi ptr [ %106, %105 ], [ %47, %46 ]
  %116 = load ptr, ptr %3, align 8, !tbaa !14
  br i1 %20, label %120, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr @_zero_, align 8, !tbaa !14
  call fastcc void @bc_sub(ptr noundef %118, ptr noundef %116, ptr noundef nonnull %3) #29
  %119 = load ptr, ptr %3, align 8, !tbaa !14
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi ptr [ %119, %117 ], [ %116, %113 ]
  %122 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %121, ptr %122, align 8, !tbaa !93
  %123 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %124 = getelementptr inbounds %struct.estack_rec, ptr %122, i64 0, i32 1
  store ptr %123, ptr %124, align 8, !tbaa !110
  store ptr %122, ptr @ex_stack, align 8, !tbaa !14
  %125 = icmp eq ptr %115, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.bc_struct, ptr %115, i64 0, i32 3
  %128 = load i32, ptr %127, align 4, !tbaa !90
  %129 = add nsw i32 %128, -1
  store i32 %129, ptr %127, align 4, !tbaa !90
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  tail call void @free(ptr noundef nonnull %115) #29
  br label %132

132:                                              ; preds = %131, %126, %120
  %133 = icmp eq ptr %114, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.bc_struct, ptr %114, i64 0, i32 3
  %136 = load i32, ptr %135, align 4, !tbaa !90
  %137 = add nsw i32 %136, -1
  store i32 %137, ptr %135, align 4, !tbaa !90
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  tail call void @free(ptr noundef nonnull %114) #29
  br label %140

140:                                              ; preds = %139, %134, %132
  %141 = load ptr, ptr %6, align 8, !tbaa !14
  %142 = icmp eq ptr %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.bc_struct, ptr %141, i64 0, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !90
  %146 = add nsw i32 %145, -1
  store i32 %146, ptr %144, align 4, !tbaa !90
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  tail call void @free(ptr noundef nonnull %141) #29
  br label %149

149:                                              ; preds = %148, %143, %140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bc_sub(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = load i32, ptr %0, align 4, !tbaa !113
  %5 = load i32, ptr %1, align 4, !tbaa !113
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @_do_add(ptr noundef nonnull %0, ptr noundef nonnull %1) #30
  %9 = load i32, ptr %0, align 4, !tbaa !113
  store i32 %9, ptr %8, align 4, !tbaa !113
  br label %25

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #30, !range !125
  switch i32 %11, label %25 [
    i32 -1, label %12
    i32 0, label %17
    i32 1, label %22
  ]

12:                                               ; preds = %10
  %13 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %1, ptr noundef nonnull %0) #30
  %14 = load i32, ptr %1, align 4, !tbaa !113
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, ptr %13, align 4, !tbaa !113
  br label %25

17:                                               ; preds = %10
  %18 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !90
  br label %25

22:                                               ; preds = %10
  %23 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %0, ptr noundef nonnull %1) #30
  %24 = load i32, ptr %0, align 4, !tbaa !113
  store i32 %24, ptr %23, align 4, !tbaa !113
  br label %25

25:                                               ; preds = %22, %17, %12, %10, %7
  %26 = phi ptr [ %8, %7 ], [ undef, %10 ], [ %23, %22 ], [ %18, %17 ], [ %13, %12 ]
  %27 = load ptr, ptr %2, align 8, !tbaa !14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bc_struct, ptr %27, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !90
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %30, align 4, !tbaa !90
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @free(ptr noundef nonnull %27) #29
  br label %35

35:                                               ; preds = %34, %29, %25
  store ptr %26, ptr %2, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nofree nounwind optsize uwtable
define internal void @out_char(i8 noundef signext %0) unnamed_addr #7 {
  %2 = icmp eq i8 %0, 10
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr @out_col, align 4, !tbaa !12
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @out_col, align 4, !tbaa !12
  %6 = icmp eq i32 %5, 70
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call i32 @putchar(i32 noundef 92) #30
  %9 = tail call i32 @putchar(i32 noundef 10) #30
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi i32 [ 1, %7 ], [ 0, %1 ]
  store i32 %11, ptr @out_col, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %10, %3
  %13 = sext i8 %0 to i32
  %14 = tail call i32 @putchar(i32 noundef %13) #30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pop_vars(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %53, label %3

3:                                                ; preds = %49, %1
  %4 = phi ptr [ %51, %49 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8, !tbaa !32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load ptr, ptr @variables, align 8, !tbaa !14
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.estack_rec, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  store ptr %15, ptr %10, align 8, !tbaa !14
  %16 = load ptr, ptr %11, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.bc_struct, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4, !tbaa !90
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %16) #29
  br label %24

24:                                               ; preds = %23, %18
  store ptr null, ptr %11, align 8, !tbaa !14
  br label %47

25:                                               ; preds = %3
  %26 = sub nsw i32 0, %5
  %27 = load ptr, ptr @arrays, align 8, !tbaa !14
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.bc_var_array, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !132
  store ptr %34, ptr %29, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.bc_var_array, ptr %30, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !102
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load ptr, ptr %30, align 8, !tbaa !104
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %39, align 8, !tbaa !133
  %43 = getelementptr inbounds %struct.bc_array, ptr %39, i64 0, i32 1
  %44 = load i16, ptr %43, align 8, !tbaa !135
  %45 = sext i16 %44 to i32
  tail call fastcc void @free_a_tree(ptr noundef %42, i32 noundef %45) #30
  %46 = load ptr, ptr %30, align 8, !tbaa !104
  tail call void @free(ptr noundef %46) #29
  br label %47

47:                                               ; preds = %41, %38, %32, %24, %13
  %48 = phi ptr [ %30, %41 ], [ %30, %38 ], [ %30, %32 ], [ %11, %13 ], [ %11, %24 ]
  tail call void @free(ptr noundef nonnull %48) #29
  br label %49

49:                                               ; preds = %47, %25, %7
  %50 = getelementptr inbounds %struct.arg_list, ptr %4, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !30
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %3, !llvm.loop !149

53:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @bc_divide(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %333, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !95
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = add nsw i32 %11, %9
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %16

16:                                               ; preds = %21, %14
  %17 = phi ptr [ %22, %21 ], [ %15, %14 ]
  %18 = phi i32 [ %23, %21 ], [ %12, %14 ]
  %19 = load i8, ptr %17, align 1, !tbaa !7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, ptr %17, i64 1
  %23 = add nsw i32 %18, -1
  %24 = icmp sgt i32 %18, 1
  br i1 %24, label %16, label %333, !llvm.loop !97

25:                                               ; preds = %7
  %26 = icmp eq i32 %12, 0
  br i1 %26, label %333, label %27

27:                                               ; preds = %25, %16
  %28 = icmp eq i32 %11, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %75

31:                                               ; preds = %27
  %32 = icmp eq i32 %9, 1
  br i1 %32, label %33, label %69

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %35 = load i8, ptr %34, align 4, !tbaa !7
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %69

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !95
  %40 = sext i32 %39 to i64
  %41 = sext i32 %3 to i64
  %42 = add nsw i64 %41, 1040
  %43 = add nsw i64 %42, %40
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #31
  %45 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 1
  store i32 %39, ptr %45, align 4, !tbaa !95
  %46 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 2
  store i32 %3, ptr %46, align 4, !tbaa !96
  %47 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 3
  store i32 1, ptr %47, align 4, !tbaa !90
  %48 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 4
  store i8 0, ptr %48, align 4, !tbaa !7
  %49 = load i32, ptr %0, align 4, !tbaa !113
  %50 = load i32, ptr %1, align 4, !tbaa !113
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, ptr %44, align 4, !tbaa !113
  %53 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 4, i64 %40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %53, i8 0, i64 %41, i1 false)
  %54 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %55 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !96
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %3)
  %58 = add nsw i32 %57, %39
  %59 = sext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %48, ptr nonnull align 4 %54, i64 %59, i1 false)
  %60 = load ptr, ptr %2, align 8, !tbaa !14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %37
  store ptr %44, ptr %2, align 8, !tbaa !14
  br label %93

63:                                               ; preds = %37
  %64 = getelementptr inbounds %struct.bc_struct, ptr %60, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !90
  %66 = add nsw i32 %65, -1
  store i32 %66, ptr %64, align 4, !tbaa !90
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  store ptr %44, ptr %2, align 8, !tbaa !14
  br label %93

69:                                               ; preds = %33, %31
  %70 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %93

71:                                               ; preds = %63
  tail call void @free(ptr noundef nonnull %60) #29
  %72 = load i32, ptr %10, align 4, !tbaa !96
  %73 = load i32, ptr %8, align 4, !tbaa !95
  store ptr %44, ptr %2, align 8, !tbaa !14
  %74 = icmp eq i32 %72, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %71, %29
  %76 = phi ptr [ %30, %29 ], [ %34, %71 ]
  %77 = phi i32 [ %11, %29 ], [ %72, %71 ]
  %78 = phi i32 [ %9, %29 ], [ %73, %71 ]
  %79 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  %82 = zext i32 %77 to i64
  %83 = getelementptr inbounds i8, ptr %81, i64 %82
  br label %84

84:                                               ; preds = %90, %75
  %85 = phi ptr [ %87, %90 ], [ %83, %75 ]
  %86 = phi i32 [ %91, %90 ], [ %77, %75 ]
  %87 = getelementptr inbounds i8, ptr %85, i64 -1
  %88 = load i8, ptr %87, align 1, !tbaa !7
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = add i32 %86, -1
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %84, !llvm.loop !150

93:                                               ; preds = %90, %84, %71, %69, %68, %62
  %94 = phi ptr [ %34, %71 ], [ %70, %69 ], [ %34, %62 ], [ %34, %68 ], [ %76, %84 ], [ %76, %90 ]
  %95 = phi i32 [ %73, %71 ], [ %9, %69 ], [ 1, %62 ], [ 1, %68 ], [ %78, %84 ], [ %78, %90 ]
  %96 = phi i32 [ 0, %71 ], [ 0, %69 ], [ 0, %62 ], [ 0, %68 ], [ 0, %90 ], [ %86, %84 ]
  %97 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !95
  %99 = add i32 %98, %96
  %100 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !96
  %102 = sub i32 %101, %96
  %103 = icmp slt i32 %102, %3
  %104 = sub nsw i32 %3, %102
  %105 = select i1 %103, i32 %104, i32 0
  %106 = add nsw i32 %101, %98
  %107 = add i32 %105, %106
  %108 = add i32 %107, 2
  %109 = zext i32 %108 to i64
  %110 = tail call ptr @calloc(i64 1, i64 %109)
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %113 = sext i32 %106 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %111, ptr nonnull align 4 %112, i64 %113, i1 false)
  %114 = add i32 %96, %95
  %115 = add i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = tail call noalias ptr @malloc(i64 noundef %116) #31
  %118 = zext i32 %114 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr nonnull align 4 %94, i64 %118, i1 false)
  %119 = getelementptr inbounds i8, ptr %117, i64 %118
  store i8 0, ptr %119, align 1, !tbaa !7
  %120 = load i8, ptr %117, align 1, !tbaa !7
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %122, %93
  %123 = phi i32 [ %126, %122 ], [ %114, %93 ]
  %124 = phi ptr [ %125, %122 ], [ %117, %93 ]
  %125 = getelementptr inbounds i8, ptr %124, i64 1
  %126 = add i32 %123, -1
  %127 = load i8, ptr %125, align 1, !tbaa !7
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %122, label %129, !llvm.loop !151

129:                                              ; preds = %122
  %.lcssa6 = phi i32 [ %123, %122 ]
  %.lcssa5 = phi ptr [ %125, %122 ]
  %.lcssa4 = phi i32 [ %126, %122 ]
  %.lcssa3 = phi i8 [ %127, %122 ]
  %130 = zext i32 %.lcssa6 to i64
  br label %131

131:                                              ; preds = %129, %93
  %132 = phi i64 [ %130, %129 ], [ %116, %93 ]
  %133 = phi i32 [ %.lcssa6, %129 ], [ %115, %93 ]
  %134 = phi ptr [ %.lcssa5, %129 ], [ %117, %93 ]
  %135 = phi i32 [ %.lcssa4, %129 ], [ %114, %93 ]
  %136 = phi i8 [ %.lcssa3, %129 ], [ %120, %93 ]
  %137 = add i32 %99, %3
  %138 = icmp ugt i32 %135, %137
  %139 = icmp ugt i32 %135, %99
  %140 = or i1 %138, %139
  %141 = sub i32 %99, %135
  %142 = select i1 %140, i32 0, i32 %141
  %143 = add i32 %3, 1
  %144 = add i32 %143, %142
  %145 = sub i32 %144, %3
  %146 = sext i32 %145 to i64
  %147 = sext i32 %3 to i64
  %148 = add nsw i64 %147, 1040
  %149 = add nsw i64 %148, %146
  %150 = tail call noalias ptr @malloc(i64 noundef %149) #31
  store i32 0, ptr %150, align 4, !tbaa !113
  %151 = getelementptr inbounds %struct.bc_struct, ptr %150, i64 0, i32 1
  store i32 %145, ptr %151, align 4, !tbaa !95
  %152 = getelementptr inbounds %struct.bc_struct, ptr %150, i64 0, i32 2
  store i32 %3, ptr %152, align 4, !tbaa !96
  %153 = getelementptr inbounds %struct.bc_struct, ptr %150, i64 0, i32 3
  store i32 1, ptr %153, align 4, !tbaa !90
  %154 = getelementptr inbounds %struct.bc_struct, ptr %150, i64 0, i32 4
  store i8 0, ptr %154, align 4, !tbaa !7
  %155 = zext i32 %144 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %154, i8 0, i64 %155, i1 false)
  %156 = tail call noalias ptr @malloc(i64 noundef %132) #31
  br i1 %138, label %299, label %157

157:                                              ; preds = %131
  %158 = sext i8 %136 to i16
  %159 = add nsw i16 %158, 1
  %160 = sdiv i16 10, %159
  %161 = icmp eq i16 %160, 1
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = sext i16 %160 to i32
  %164 = add i32 %107, 1
  tail call fastcc void @_one_mult(ptr noundef %110, i32 noundef %164, i32 noundef %163, ptr noundef %110) #30
  tail call fastcc void @_one_mult(ptr noundef nonnull %134, i32 noundef %135, i32 noundef %163, ptr noundef nonnull %134) #30
  br label %165

165:                                              ; preds = %162, %157
  %166 = zext i32 %135 to i64
  %167 = getelementptr inbounds i8, ptr %154, i64 %166
  %168 = zext i32 %99 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %167, i64 %169
  %171 = select i1 %139, ptr %170, ptr %154
  %172 = sub i32 %137, %135
  %173 = getelementptr inbounds i8, ptr %134, i64 1
  %174 = getelementptr inbounds i8, ptr %156, i64 1
  %175 = getelementptr inbounds i8, ptr %156, i64 %166
  %176 = icmp eq i32 %133, 0
  %177 = getelementptr inbounds i8, ptr %134, i64 %166
  %178 = icmp eq i32 %135, 0
  br label %179

179:                                              ; preds = %292, %165
  %180 = phi i32 [ 0, %165 ], [ %206, %292 ]
  %181 = phi ptr [ %171, %165 ], [ %295, %292 ]
  %182 = load i8, ptr %134, align 1, !tbaa !7
  %183 = zext i32 %180 to i64
  %184 = getelementptr inbounds i8, ptr %110, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !7
  %186 = icmp eq i8 %182, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %179
  %188 = add i32 %180, 1
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %110, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !7
  br label %204

192:                                              ; preds = %179
  %193 = sext i8 %185 to i16
  %194 = mul nsw i16 %193, 10
  %195 = add i32 %180, 1
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %110, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !7
  %199 = sext i8 %198 to i16
  %200 = add nsw i16 %194, %199
  %201 = sext i8 %182 to i16
  %202 = sdiv i16 %200, %201
  %203 = sext i16 %202 to i32
  br label %204

204:                                              ; preds = %192, %187
  %205 = phi i8 [ %191, %187 ], [ %198, %192 ]
  %206 = phi i32 [ %188, %187 ], [ %195, %192 ]
  %207 = phi i32 [ 9, %187 ], [ %203, %192 ]
  %208 = load i8, ptr %173, align 1, !tbaa !7
  %209 = sext i8 %208 to i32
  %210 = mul nsw i32 %207, %209
  %211 = sext i8 %185 to i32
  %212 = mul nsw i32 %211, 10
  %213 = sext i8 %205 to i32
  %214 = add nsw i32 %212, %213
  %215 = sext i8 %182 to i32
  %216 = mul nsw i32 %207, %215
  %217 = sub nsw i32 %214, %216
  %218 = mul nsw i32 %217, 10
  %219 = add i32 %180, 2
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %110, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !7
  %223 = sext i8 %222 to i32
  %224 = add nsw i32 %218, %223
  %225 = icmp ugt i32 %210, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %204
  %227 = add nsw i32 %207, -1
  %228 = mul nsw i32 %227, %209
  %229 = mul nsw i32 %227, %215
  %230 = sub nsw i32 %214, %229
  %231 = mul nsw i32 %230, 10
  %232 = add nsw i32 %231, %223
  %233 = icmp ugt i32 %228, %232
  %234 = add nsw i32 %207, -2
  %235 = select i1 %233, i32 %234, i32 %227
  br label %236

236:                                              ; preds = %226, %204
  %237 = phi i32 [ %207, %204 ], [ %235, %226 ]
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %292, label %239

239:                                              ; preds = %236
  store i8 0, ptr %156, align 1, !tbaa !7
  tail call fastcc void @_one_mult(ptr noundef nonnull %134, i32 noundef %135, i32 noundef %237, ptr noundef nonnull %174) #30
  %240 = getelementptr inbounds i8, ptr %184, i64 %166
  br i1 %176, label %292, label %241

241:                                              ; preds = %241, %239
  %242 = phi i32 [ %256, %241 ], [ 0, %239 ]
  %243 = phi i32 [ %259, %241 ], [ 0, %239 ]
  %244 = phi ptr [ %258, %241 ], [ %240, %239 ]
  %245 = phi ptr [ %248, %241 ], [ %175, %239 ]
  %246 = load i8, ptr %244, align 1, !tbaa !7
  %247 = sext i8 %246 to i32
  %248 = getelementptr inbounds i8, ptr %245, i64 -1
  %249 = load i8, ptr %245, align 1, !tbaa !7
  %250 = sext i8 %249 to i32
  %251 = add nsw i32 %242, %247
  %252 = sub nsw i32 %251, %250
  %253 = icmp slt i32 %252, 0
  %254 = add nsw i32 %252, 10
  %255 = select i1 %253, i32 %254, i32 %252
  %256 = ashr i32 %252, 31
  %257 = trunc i32 %255 to i8
  %258 = getelementptr inbounds i8, ptr %244, i64 -1
  store i8 %257, ptr %244, align 1, !tbaa !7
  %259 = add nuw i32 %243, 1
  %260 = icmp eq i32 %259, %133
  br i1 %260, label %261, label %241, !llvm.loop !152

261:                                              ; preds = %241
  %.lcssa = phi i32 [ %252, %241 ]
  %262 = icmp sgt i32 %.lcssa, -1
  br i1 %262, label %292, label %263

263:                                              ; preds = %261
  %264 = add nsw i32 %237, -1
  br i1 %178, label %292, label %265

265:                                              ; preds = %265, %263
  %266 = phi i32 [ %280, %265 ], [ 0, %263 ]
  %267 = phi i32 [ %283, %265 ], [ 0, %263 ]
  %268 = phi ptr [ %282, %265 ], [ %240, %263 ]
  %269 = phi ptr [ %270, %265 ], [ %177, %263 ]
  %270 = getelementptr inbounds i8, ptr %269, i64 -1
  %271 = load i8, ptr %268, align 1, !tbaa !7
  %272 = sext i8 %271 to i32
  %273 = load i8, ptr %270, align 1, !tbaa !7
  %274 = sext i8 %273 to i32
  %275 = add nsw i32 %266, %272
  %276 = add nsw i32 %275, %274
  %277 = icmp sgt i32 %276, 9
  %278 = add nsw i32 %276, 246
  %279 = select i1 %277, i32 %278, i32 %276
  %280 = zext i1 %277 to i32
  %281 = trunc i32 %279 to i8
  %282 = getelementptr inbounds i8, ptr %268, i64 -1
  store i8 %281, ptr %268, align 1, !tbaa !7
  %283 = add nuw i32 %267, 1
  %284 = icmp eq i32 %283, %135
  br i1 %284, label %285, label %265, !llvm.loop !153

285:                                              ; preds = %265
  %.lcssa2 = phi i1 [ %277, %265 ]
  %.lcssa1 = phi ptr [ %282, %265 ]
  br i1 %.lcssa2, label %286, label %292

286:                                              ; preds = %285
  %287 = load i8, ptr %.lcssa1, align 1, !tbaa !7
  %288 = sext i8 %287 to i16
  %289 = add nsw i16 %288, 1
  %290 = srem i16 %289, 10
  %291 = trunc i16 %290 to i8
  store i8 %291, ptr %.lcssa1, align 1, !tbaa !7
  br label %292

292:                                              ; preds = %286, %285, %263, %261, %239, %236
  %293 = phi i32 [ %264, %286 ], [ %264, %285 ], [ %237, %261 ], [ 0, %236 ], [ %237, %239 ], [ %264, %263 ]
  %294 = trunc i32 %293 to i8
  %295 = getelementptr inbounds i8, ptr %181, i64 1
  store i8 %294, ptr %181, align 1, !tbaa !7
  %296 = icmp ugt i32 %206, %172
  br i1 %296, label %297, label %179, !llvm.loop !154

297:                                              ; preds = %292
  %298 = load ptr, ptr @_zero_, align 8, !tbaa !14
  br label %299

299:                                              ; preds = %297, %131
  %300 = phi ptr [ %298, %297 ], [ %5, %131 ]
  %301 = load i32, ptr %0, align 4, !tbaa !113
  %302 = load i32, ptr %1, align 4, !tbaa !113
  %303 = icmp ne i32 %301, %302
  %304 = zext i1 %303 to i32
  store i32 %304, ptr %150, align 4, !tbaa !113
  %305 = icmp eq ptr %300, %150
  br i1 %305, label %322, label %306

306:                                              ; preds = %299
  %307 = load i32, ptr %151, align 4, !tbaa !95
  %308 = load i32, ptr %152, align 4, !tbaa !96
  %309 = add nsw i32 %308, %307
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %316, %306
  %312 = phi ptr [ %317, %316 ], [ %154, %306 ]
  %313 = phi i32 [ %318, %316 ], [ %309, %306 ]
  %314 = load i8, ptr %312, align 1, !tbaa !7
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %311
  %317 = getelementptr inbounds i8, ptr %312, i64 1
  %318 = add nsw i32 %313, -1
  %319 = icmp sgt i32 %313, 1
  br i1 %319, label %311, label %322, !llvm.loop !97

320:                                              ; preds = %306
  %321 = icmp eq i32 %309, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %320, %316, %299
  store i32 0, ptr %150, align 4, !tbaa !113
  br label %323

323:                                              ; preds = %322, %320, %311
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %150) #30
  %324 = load ptr, ptr %2, align 8, !tbaa !14
  %325 = icmp eq ptr %324, null
  br i1 %325, label %332, label %326

326:                                              ; preds = %323
  %327 = getelementptr inbounds %struct.bc_struct, ptr %324, i64 0, i32 3
  %328 = load i32, ptr %327, align 4, !tbaa !90
  %329 = add nsw i32 %328, -1
  store i32 %329, ptr %327, align 4, !tbaa !90
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %326
  tail call void @free(ptr noundef nonnull %324) #29
  br label %332

332:                                              ; preds = %331, %326, %323
  store ptr %150, ptr %2, align 8, !tbaa !14
  tail call void @free(ptr noundef %156) #29
  tail call void @free(ptr noundef %110) #29
  tail call void @free(ptr noundef %117) #29
  br label %333

333:                                              ; preds = %332, %25, %21, %4
  %334 = phi i32 [ 0, %332 ], [ -1, %25 ], [ -1, %4 ], [ -1, %21 ]
  ret i32 %334
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bc_modulo(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  %6 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !95
  %11 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !96
  %13 = add nsw i32 %12, %10
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %17

17:                                               ; preds = %22, %15
  %18 = phi ptr [ %23, %22 ], [ %16, %15 ]
  %19 = phi i32 [ %24, %22 ], [ %13, %15 ]
  %20 = load i8, ptr %18, align 1, !tbaa !7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  %24 = add nsw i32 %19, -1
  %25 = icmp sgt i32 %19, 1
  br i1 %25, label %17, label %46, !llvm.loop !97

26:                                               ; preds = %8
  %27 = icmp eq i32 %13, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %26, %17
  %29 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !96
  %31 = add nsw i32 %12, %3
  %32 = tail call i32 @llvm.smax.i32(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.bc_struct, ptr %6, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !90
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !90
  store ptr %6, ptr %5, align 8, !tbaa !14
  %36 = call fastcc i32 @bc_divide(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3) #30, !range !119
  %37 = load ptr, ptr %5, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %37, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %32) #30
  %38 = load ptr, ptr %5, align 8, !tbaa !14
  tail call fastcc void @bc_sub(ptr noundef %0, ptr noundef %38, ptr noundef %2) #30
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.bc_struct, ptr %38, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !90
  %43 = add nsw i32 %42, -1
  store i32 %43, ptr %41, align 4, !tbaa !90
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @free(ptr noundef nonnull %38) #29
  br label %46

46:                                               ; preds = %45, %40, %28, %26, %22, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @out_long(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = alloca [40 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #33
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @out_char(i32 noundef 32) #29, !callees !116
  br label %7

7:                                                ; preds = %6, %3
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.2.130, i64 noundef %0) #29
  %9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #34
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, %1
  br i1 %11, label %16, label %12

12:                                               ; preds = %16, %7
  %13 = icmp sgt i32 %10, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %12
  %15 = and i64 %9, 4294967295
  br label %20

16:                                               ; preds = %16, %7
  %17 = phi i32 [ %18, %16 ], [ %1, %7 ]
  tail call void @out_char(i32 noundef 48) #29, !callees !116
  %18 = add nsw i32 %17, -1
  %19 = icmp sgt i32 %18, %10
  br i1 %19, label %16, label %12, !llvm.loop !155

20:                                               ; preds = %20, %14
  %21 = phi i64 [ 0, %14 ], [ %25, %20 ]
  %22 = getelementptr inbounds [40 x i8], ptr %4, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  tail call void @out_char(i32 noundef %24) #29, !callees !116
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %15
  br i1 %26, label %27, label %20, !llvm.loop !156

27:                                               ; preds = %20, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bc_multiply(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !95
  %7 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !96
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !95
  %12 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !96
  %14 = add nsw i32 %13, %11
  %15 = add nsw i32 %14, %9
  %16 = add nsw i32 %13, %8
  %17 = tail call i32 @llvm.smax.i32(i32 %8, i32 %13)
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 %3)
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %16)
  %20 = sub i32 %16, %19
  %21 = sub nsw i32 %15, %16
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, 1040
  %24 = sext i32 %19 to i64
  %25 = add nsw i64 %23, %24
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #31
  %27 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 1
  store i32 %21, ptr %27, align 4, !tbaa !95
  %28 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 2
  store i32 %19, ptr %28, align 4, !tbaa !96
  %29 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 3
  store i32 1, ptr %29, align 4, !tbaa !90
  %30 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 4
  store i8 0, ptr %30, align 4, !tbaa !7
  %31 = load i32, ptr %0, align 4, !tbaa !113
  %32 = load i32, ptr %1, align 4, !tbaa !113
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, ptr %26, align 4, !tbaa !113
  %35 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %36 = sext i32 %9 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = getelementptr inbounds i8, ptr %37, i64 -1
  %39 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %40 = sext i32 %14 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = xor i32 %20, -1
  %43 = add i32 %15, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %30, i64 %44
  %46 = icmp sgt i32 %20, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = add nsw i32 %14, -1
  br label %56

49:                                               ; preds = %87, %4
  %50 = phi i64 [ 0, %4 ], [ %89, %87 ]
  %51 = phi i32 [ 0, %4 ], [ %20, %87 ]
  %52 = add nsw i32 %15, -1
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %132

54:                                               ; preds = %49
  %55 = add nsw i32 %14, -1
  br label %92

56:                                               ; preds = %87, %47
  %57 = phi i32 [ 0, %47 ], [ %90, %87 ]
  %58 = phi i64 [ 0, %47 ], [ %89, %87 ]
  %59 = sub nsw i32 %57, %14
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 -1)
  %61 = xor i32 %60, -1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %38, i64 %62
  %64 = tail call i32 @llvm.smin.i32(i32 %57, i32 %48)
  %65 = icmp uge ptr %63, %35
  %66 = icmp sgt i32 %64, -1
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %87

68:                                               ; preds = %56
  %69 = xor i32 %64, -1
  %70 = sext i32 %69 to i64
  br label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %76, %71 ], [ %63, %68 ]
  %73 = phi i64 [ %79, %71 ], [ %70, %68 ]
  %74 = phi i64 [ %83, %71 ], [ %58, %68 ]
  %75 = getelementptr inbounds i8, ptr %41, i64 %73
  %76 = getelementptr inbounds i8, ptr %72, i64 -1
  %77 = load i8, ptr %72, align 1, !tbaa !7
  %78 = sext i8 %77 to i64
  %79 = add nsw i64 %73, 1
  %80 = load i8, ptr %75, align 1, !tbaa !7
  %81 = sext i8 %80 to i64
  %82 = mul nsw i64 %81, %78
  %83 = add nsw i64 %82, %74
  %84 = icmp uge ptr %76, %35
  %85 = icmp ne i64 %73, -1
  %86 = and i1 %84, %85
  br i1 %86, label %71, label %87, !llvm.loop !157

87:                                               ; preds = %71, %56
  %88 = phi i64 [ %58, %56 ], [ %83, %71 ]
  %89 = sdiv i64 %88, 10
  %90 = add nuw nsw i32 %57, 1
  %91 = icmp eq i32 %90, %20
  br i1 %91, label %49, label %56, !llvm.loop !158

92:                                               ; preds = %124, %54
  %93 = phi ptr [ %45, %54 ], [ %128, %124 ]
  %94 = phi i32 [ %51, %54 ], [ %130, %124 ]
  %95 = phi i64 [ %50, %54 ], [ %129, %124 ]
  %96 = sub nsw i32 %94, %14
  %97 = tail call i32 @llvm.smax.i32(i32 %96, i32 -1)
  %98 = xor i32 %97, -1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %38, i64 %99
  %101 = tail call i32 @llvm.smin.i32(i32 %94, i32 %55)
  %102 = icmp uge ptr %100, %35
  %103 = icmp sgt i32 %101, -1
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %124

105:                                              ; preds = %92
  %106 = xor i32 %101, -1
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %108, %105
  %109 = phi ptr [ %113, %108 ], [ %100, %105 ]
  %110 = phi i64 [ %116, %108 ], [ %107, %105 ]
  %111 = phi i64 [ %120, %108 ], [ %95, %105 ]
  %112 = getelementptr inbounds i8, ptr %41, i64 %110
  %113 = getelementptr inbounds i8, ptr %109, i64 -1
  %114 = load i8, ptr %109, align 1, !tbaa !7
  %115 = sext i8 %114 to i64
  %116 = add nsw i64 %110, 1
  %117 = load i8, ptr %112, align 1, !tbaa !7
  %118 = sext i8 %117 to i64
  %119 = mul nsw i64 %118, %115
  %120 = add nsw i64 %119, %111
  %121 = icmp uge ptr %113, %35
  %122 = icmp ne i64 %110, -1
  %123 = and i1 %121, %122
  br i1 %123, label %108, label %124, !llvm.loop !159

124:                                              ; preds = %108, %92
  %125 = phi i64 [ %95, %92 ], [ %120, %108 ]
  %126 = srem i64 %125, 10
  %127 = trunc i64 %126 to i8
  %128 = getelementptr inbounds i8, ptr %93, i64 -1
  store i8 %127, ptr %93, align 1, !tbaa !7
  %129 = sdiv i64 %125, 10
  %130 = add nuw nsw i32 %94, 1
  %131 = icmp slt i32 %130, %52
  br i1 %131, label %92, label %132, !llvm.loop !160

132:                                              ; preds = %124, %49
  %133 = phi i64 [ %50, %49 ], [ %129, %124 ]
  %134 = phi ptr [ %45, %49 ], [ %128, %124 ]
  %135 = trunc i64 %133 to i8
  store i8 %135, ptr %134, align 1, !tbaa !7
  %136 = load ptr, ptr %2, align 8, !tbaa !14
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.bc_struct, ptr %136, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !90
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr %139, align 4, !tbaa !90
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  tail call void @free(ptr noundef nonnull %136) #29
  br label %144

144:                                              ; preds = %143, %138, %132
  store ptr %26, ptr %2, align 8, !tbaa !14
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %26) #30
  %145 = load ptr, ptr %2, align 8, !tbaa !14
  %146 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %147 = icmp eq ptr %146, %145
  br i1 %147, label %168, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.bc_struct, ptr %145, i64 0, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !95
  %151 = getelementptr inbounds %struct.bc_struct, ptr %145, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !96
  %153 = add nsw i32 %152, %150
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.bc_struct, ptr %145, i64 0, i32 4
  br label %157

157:                                              ; preds = %162, %155
  %158 = phi ptr [ %163, %162 ], [ %156, %155 ]
  %159 = phi i32 [ %164, %162 ], [ %153, %155 ]
  %160 = load i8, ptr %158, align 1, !tbaa !7
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = getelementptr inbounds i8, ptr %158, i64 1
  %164 = add nsw i32 %159, -1
  %165 = icmp sgt i32 %159, 1
  br i1 %165, label %157, label %168, !llvm.loop !97

166:                                              ; preds = %148
  %167 = icmp eq i32 %153, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %166, %162, %144
  store i32 0, ptr %145, align 4, !tbaa !113
  br label %169

169:                                              ; preds = %168, %166, %157
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @store_var(i32 noundef %0) unnamed_addr #3 {
  %2 = icmp sgt i32 %0, 2
  br i1 %2, label %3, label %22

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @get_var(i32 noundef %0) #30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.bc_struct, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !90
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 4, !tbaa !90
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %7) #29
  br label %15

15:                                               ; preds = %14, %9
  store ptr null, ptr %4, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %15, %6
  %17 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !90
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !90
  store ptr %18, ptr %4, align 8, !tbaa !101
  br label %96

22:                                               ; preds = %1
  %23 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  %25 = load i32, ptr %24, align 4, !tbaa !113
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  switch i32 %0, label %61 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %30
  ]

28:                                               ; preds = %27
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.2.168) #29
  br label %68

29:                                               ; preds = %27
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.3.169) #29
  br label %80

30:                                               ; preds = %27
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.4.170) #29
  br label %88

31:                                               ; preds = %22
  %32 = tail call fastcc i64 @num2long(ptr noundef nonnull %24) #29
  %33 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %34 = icmp eq ptr %33, %24
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.bc_struct, ptr %24, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !95
  %38 = getelementptr inbounds %struct.bc_struct, ptr %24, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !96
  %40 = add nsw i32 %39, %37
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.bc_struct, ptr %24, i64 0, i32 4
  br label %44

44:                                               ; preds = %49, %42
  %45 = phi ptr [ %50, %49 ], [ %43, %42 ]
  %46 = phi i32 [ %51, %49 ], [ %40, %42 ]
  %47 = load i8, ptr %45, align 1, !tbaa !7
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  %51 = add nsw i32 %46, -1
  %52 = icmp sgt i32 %46, 1
  br i1 %52, label %44, label %53, !llvm.loop !97

53:                                               ; preds = %49, %44, %35
  %54 = phi i32 [ %40, %35 ], [ 0, %49 ], [ %46, %44 ]
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %31
  %57 = phi i1 [ false, %31 ], [ %55, %53 ]
  %58 = icmp eq i64 %32, 0
  %59 = select i1 %57, i1 %58, i1 false
  %60 = select i1 %59, i64 0, i64 %32
  br label %61

61:                                               ; preds = %56, %27
  %62 = phi i64 [ undef, %27 ], [ %60, %56 ]
  %63 = phi i1 [ false, %27 ], [ %59, %56 ]
  switch i32 %0, label %96 [
    i32 0, label %64
    i32 1, label %76
    i32 2, label %88
  ]

64:                                               ; preds = %61
  %65 = icmp sgt i64 %62, 1
  %66 = or i1 %65, %63
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  store i32 2, ptr @i_base, align 4, !tbaa !12
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.5.171) #29
  br label %96

68:                                               ; preds = %64, %28
  %69 = phi i64 [ 2, %28 ], [ %62, %64 ]
  %70 = phi i1 [ false, %28 ], [ %63, %64 ]
  %71 = icmp sgt i64 %69, 16
  %72 = or i1 %71, %70
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 16, ptr @i_base, align 4, !tbaa !12
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.6.172) #29
  br label %96

74:                                               ; preds = %68
  %75 = trunc i64 %69 to i32
  store i32 %75, ptr @i_base, align 4, !tbaa !12
  br label %96

76:                                               ; preds = %61
  %77 = icmp sgt i64 %62, 1
  %78 = or i1 %77, %63
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 2, ptr @o_base, align 4, !tbaa !12
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.7.173) #29
  br label %96

80:                                               ; preds = %76, %29
  %81 = phi i64 [ 2, %29 ], [ %62, %76 ]
  %82 = phi i1 [ false, %29 ], [ %63, %76 ]
  %83 = icmp sgt i64 %81, 99
  %84 = or i1 %83, %82
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 99, ptr @o_base, align 4, !tbaa !12
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.8.174, i32 noundef 99) #29
  br label %96

86:                                               ; preds = %80
  %87 = trunc i64 %81 to i32
  store i32 %87, ptr @o_base, align 4, !tbaa !12
  br label %96

88:                                               ; preds = %61, %30
  %89 = phi i1 [ false, %30 ], [ %63, %61 ]
  %90 = phi i64 [ 0, %30 ], [ %62, %61 ]
  %91 = icmp sgt i64 %90, 99
  %92 = or i1 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 99, ptr @scale, align 4, !tbaa !12
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.9.175, i32 noundef 99) #29
  br label %96

94:                                               ; preds = %88
  %95 = trunc i64 %90 to i32
  store i32 %95, ptr @scale, align 4, !tbaa !12
  br label %96

96:                                               ; preds = %94, %93, %86, %85, %79, %74, %73, %67, %61, %16, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @_do_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #18 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 4, !tbaa !113
  %8 = load i32, ptr %1, align 4, !tbaa !113
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %7, 0
  %12 = select i1 %11, i32 1, i32 -1
  br label %124

13:                                               ; preds = %6, %4
  %14 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !95
  %16 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !95
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = icmp sgt i32 %15, %17
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  br i1 %5, label %124, label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %0, align 4, !tbaa !113
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1, i32 -1
  br label %124

26:                                               ; preds = %19
  br i1 %5, label %124, label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %0, align 4, !tbaa !113
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 -1, i32 1
  br label %124

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !96
  %34 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !96
  %36 = icmp sgt i32 %33, %35
  %37 = tail call i32 @llvm.smin.i32(i32 %33, i32 %35)
  %38 = add i32 %37, %15
  %39 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %40 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %41 = icmp sgt i32 %38, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %31
  %43 = add nsw i32 %38, -1
  %44 = zext i32 %43 to i64
  %45 = add nuw nsw i64 %44, 17
  %46 = getelementptr i8, ptr %0, i64 %45
  %47 = getelementptr i8, ptr %1, i64 %45
  br label %48

48:                                               ; preds = %55, %42
  %49 = phi i32 [ %58, %55 ], [ %38, %42 ]
  %50 = phi ptr [ %57, %55 ], [ %40, %42 ]
  %51 = phi ptr [ %56, %55 ], [ %39, %42 ]
  %52 = load i8, ptr %51, align 1, !tbaa !7
  %53 = load i8, ptr %50, align 1, !tbaa !7
  %54 = icmp eq i8 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds i8, ptr %51, i64 1
  %57 = getelementptr inbounds i8, ptr %50, i64 1
  %58 = add nsw i32 %49, -1
  %59 = icmp sgt i32 %49, 1
  br i1 %59, label %48, label %85, !llvm.loop !161

60:                                               ; preds = %48
  %.lcssa2 = phi i32 [ %49, %48 ]
  %.lcssa1 = phi i8 [ %52, %48 ]
  %.lcssa = phi i8 [ %53, %48 ]
  %61 = icmp ne i32 %3, 0
  %62 = icmp eq i32 %.lcssa2, 1
  %63 = and i1 %61, %62
  %64 = icmp eq i32 %33, %35
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %124, label %71

66:                                               ; preds = %31
  %67 = icmp eq i32 %38, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %66
  %69 = load i8, ptr %39, align 1, !tbaa !7
  %70 = load i8, ptr %40, align 1, !tbaa !7
  br label %71

71:                                               ; preds = %68, %60
  %72 = phi i8 [ %.lcssa, %60 ], [ %70, %68 ]
  %73 = phi i8 [ %.lcssa1, %60 ], [ %69, %68 ]
  %74 = icmp sgt i8 %73, %72
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  br i1 %5, label %124, label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %0, align 4, !tbaa !113
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 1, i32 -1
  br label %124

80:                                               ; preds = %71
  br i1 %5, label %124, label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %0, align 4, !tbaa !113
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 -1, i32 1
  br label %124

85:                                               ; preds = %66, %55
  %86 = phi ptr [ %40, %66 ], [ %47, %55 ]
  %87 = phi ptr [ %39, %66 ], [ %46, %55 ]
  %88 = icmp eq i32 %33, %35
  br i1 %88, label %124, label %89

89:                                               ; preds = %85
  br i1 %36, label %90, label %107

90:                                               ; preds = %89
  %91 = sub nsw i32 %33, %35
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %103, %90
  %94 = phi i32 [ %105, %103 ], [ %91, %90 ]
  %95 = phi ptr [ %104, %103 ], [ %87, %90 ]
  %96 = load i8, ptr %95, align 1, !tbaa !7
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  br i1 %5, label %124, label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %0, align 4, !tbaa !113
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 1, i32 -1
  br label %124

103:                                              ; preds = %93
  %104 = getelementptr inbounds i8, ptr %95, i64 1
  %105 = add nsw i32 %94, -1
  %106 = icmp sgt i32 %94, 1
  br i1 %106, label %93, label %124, !llvm.loop !162

107:                                              ; preds = %89
  %108 = sub nsw i32 %35, %33
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %120, %107
  %111 = phi i32 [ %122, %120 ], [ %108, %107 ]
  %112 = phi ptr [ %121, %120 ], [ %86, %107 ]
  %113 = load i8, ptr %112, align 1, !tbaa !7
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  br i1 %5, label %124, label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %0, align 4, !tbaa !113
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 -1, i32 1
  br label %124

120:                                              ; preds = %110
  %121 = getelementptr inbounds i8, ptr %112, i64 1
  %122 = add nsw i32 %111, -1
  %123 = icmp sgt i32 %111, 1
  br i1 %123, label %110, label %124, !llvm.loop !163

124:                                              ; preds = %120, %116, %115, %107, %103, %99, %98, %90, %85, %81, %80, %76, %75, %60, %27, %26, %22, %21, %10
  %125 = phi i32 [ %12, %10 ], [ 1, %21 ], [ -1, %26 ], [ 1, %75 ], [ -1, %80 ], [ 1, %98 ], [ -1, %115 ], [ 0, %85 ], [ %25, %22 ], [ %30, %27 ], [ %79, %76 ], [ %84, %81 ], [ %102, %99 ], [ %119, %116 ], [ 0, %60 ], [ 0, %90 ], [ 0, %107 ], [ 0, %103 ], [ 0, %120 ]
  ret i32 %125
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bc_raise(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #3 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #33
  %7 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !96
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.126) #29
  br label %11

11:                                               ; preds = %10, %4
  %12 = tail call fastcc i64 @num2long(ptr noundef nonnull %1) #30
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !95
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %20 = load i8, ptr %19, align 4, !tbaa !7
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1.127) #29
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %2, align 8, !tbaa !14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bc_struct, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !90
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !90
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %24) #29
  br label %32

32:                                               ; preds = %31, %26, %23
  %33 = load ptr, ptr @_one_, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.bc_struct, ptr %33, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !90
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %34, align 4, !tbaa !90
  store ptr %33, ptr %2, align 8, !tbaa !14
  br label %104

37:                                               ; preds = %11
  %38 = icmp sgt i64 %12, -1
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = sub nsw i64 0, %12
  br label %52

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !96
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %12, %44
  %46 = tail call i32 @llvm.smax.i32(i32 %43, i32 %3)
  %47 = sext i32 %46 to i64
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = trunc i64 %12 to i32
  %51 = mul i32 %43, %50
  br label %52

52:                                               ; preds = %49, %41, %39
  %53 = phi i64 [ %40, %39 ], [ %12, %49 ], [ %12, %41 ]
  %54 = phi i32 [ %3, %39 ], [ %51, %49 ], [ %46, %41 ]
  %55 = load ptr, ptr @_one_, align 8, !tbaa !14
  %56 = getelementptr inbounds %struct.bc_struct, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !90
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 4, !tbaa !90
  store ptr %55, ptr %5, align 8, !tbaa !14
  %59 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !90
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 4, !tbaa !90
  store ptr %0, ptr %6, align 8, !tbaa !14
  br label %62

62:                                               ; preds = %69, %52
  %63 = phi i64 [ %53, %52 ], [ %70, %69 ]
  %64 = and i64 %63, 1
  %65 = icmp eq i64 %64, 0
  %66 = load ptr, ptr %6, align 8, !tbaa !14
  br i1 %65, label %69, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr %5, align 8, !tbaa !14
  call fastcc void @bc_multiply(ptr noundef %68, ptr noundef %66, ptr noundef nonnull %5, i32 noundef %54) #30
  br label %69

69:                                               ; preds = %67, %62
  call fastcc void @bc_multiply(ptr noundef %66, ptr noundef %66, ptr noundef nonnull %6, i32 noundef %54) #30
  %70 = ashr i64 %63, 1
  %71 = icmp ult i64 %63, 2
  br i1 %71, label %72, label %62, !llvm.loop !164

72:                                               ; preds = %69
  br i1 %38, label %84, label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr @_one_, align 8, !tbaa !14
  %75 = load ptr, ptr %5, align 8, !tbaa !14
  %76 = tail call fastcc i32 @bc_divide(ptr noundef %74, ptr noundef %75, ptr noundef %2, i32 noundef %54) #30, !range !119
  %77 = icmp eq ptr %75, null
  br i1 %77, label %95, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.bc_struct, ptr %75, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !90
  %81 = add nsw i32 %80, -1
  store i32 %81, ptr %79, align 4, !tbaa !90
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  tail call void @free(ptr noundef nonnull %75) #29
  br label %95

84:                                               ; preds = %72
  %85 = load ptr, ptr %2, align 8, !tbaa !14
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.bc_struct, ptr %85, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !90
  %90 = add nsw i32 %89, -1
  store i32 %90, ptr %88, align 4, !tbaa !90
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void @free(ptr noundef nonnull %85) #29
  br label %93

93:                                               ; preds = %92, %87, %84
  %94 = load ptr, ptr %5, align 8, !tbaa !14
  store ptr %94, ptr %2, align 8, !tbaa !14
  br label %95

95:                                               ; preds = %93, %83, %78, %73
  %96 = load ptr, ptr %6, align 8, !tbaa !14
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.bc_struct, ptr %96, i64 0, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !90
  %101 = add nsw i32 %100, -1
  store i32 %101, ptr %99, align 4, !tbaa !90
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  tail call void @free(ptr noundef nonnull %96) #29
  br label %104

104:                                              ; preds = %103, %98, %95, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #33
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal signext i8 @input_char() #7 {
  %1 = tail call i32 @getchar() #30
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 92
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = tail call i32 @getchar() #30
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @getchar() #30
  br label %10

10:                                               ; preds = %8, %4, %0
  %11 = phi i32 [ %9, %8 ], [ %5, %4 ], [ %1, %0 ]
  %12 = trunc i32 %11 to i8
  %13 = tail call ptr @__ctype_b_loc() #37
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = sext i8 %12 to i64
  %16 = getelementptr inbounds i16, ptr %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !20
  %18 = and i16 %17, 2048
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = add i8 %12, -48
  br label %36

22:                                               ; preds = %10
  %23 = add i8 %12, -65
  %24 = icmp ult i8 %23, 6
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = add nsw i8 %12, -55
  br label %36

27:                                               ; preds = %22
  %28 = add i8 %12, -97
  %29 = icmp ult i8 %28, 6
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = add nsw i8 %12, -87
  br label %36

32:                                               ; preds = %27
  switch i8 %12, label %33 [
    i8 46, label %36
    i8 45, label %36
    i8 43, label %36
  ]

33:                                               ; preds = %32
  %34 = icmp sgt i8 %12, 32
  %35 = select i1 %34, i8 58, i8 32
  br label %36

36:                                               ; preds = %33, %32, %32, %32, %30, %25, %20
  %37 = phi i8 [ %21, %20 ], [ %26, %25 ], [ %31, %30 ], [ %12, %32 ], [ %12, %32 ], [ %12, %32 ], [ %35, %33 ]
  ret i8 %37
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @rt_warn(ptr nocapture noundef readonly %0, ...) unnamed_addr #7 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #33
  call void @llvm.va_start(ptr nonnull %2)
  %4 = call i32 @vsprintf(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #29
  call void @llvm.va_end(ptr nonnull %2)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = load ptr, ptr @f_names, align 8, !tbaa !14
  %7 = load i32, ptr @pc, align 8, !tbaa !16
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !18
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.40.281, ptr noundef %10, i32 noundef %11, ptr noundef nonnull %3) #35
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #33
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc ptr @get_var(i32 noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr @variables, align 8, !tbaa !14
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %8, ptr %4, align 8, !tbaa !14
  %9 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.bc_struct, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !90
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !90
  store ptr %9, ptr %8, align 8, !tbaa !14
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi ptr [ %8, %7 ], [ %5, %1 ]
  ret ptr %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #21

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #21

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_rm_leading_zeros(ptr nocapture noundef %0) unnamed_addr #23 {
  %2 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = getelementptr %struct.bc_struct, ptr %0, i64 0, i32 4
  %5 = icmp sgt i32 %3, 1
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = add nsw i32 %3, -2
  %8 = zext i32 %7 to i64
  %9 = add nuw nsw i64 %8, 17
  %10 = getelementptr i8, ptr %0, i64 %9
  br label %11

11:                                               ; preds = %16, %6
  %12 = phi ptr [ %17, %16 ], [ %4, %6 ]
  %13 = phi i32 [ %18, %16 ], [ %3, %6 ]
  %14 = load i8, ptr %12, align 1, !tbaa !7
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  %18 = add nsw i32 %13, -1
  %19 = icmp sgt i32 %13, 2
  br i1 %19, label %11, label %20, !llvm.loop !165

20:                                               ; preds = %16, %11, %1
  %21 = phi i32 [ %3, %1 ], [ %13, %11 ], [ 1, %16 ]
  %22 = phi ptr [ %4, %1 ], [ %12, %11 ], [ %10, %16 ]
  store i32 %21, ptr %2, align 4, !tbaa !95
  %23 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !96
  %25 = add nsw i32 %24, %21
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %32, %27 ], [ %22, %20 ]
  %29 = phi ptr [ %34, %27 ], [ %4, %20 ]
  %30 = phi i32 [ %31, %27 ], [ %25, %20 ]
  %31 = add nsw i32 %30, -1
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %28, align 1, !tbaa !7
  %34 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %33, ptr %29, align 1, !tbaa !7
  %35 = icmp ugt i32 %30, 1
  br i1 %35, label %27, label %36, !llvm.loop !166

36:                                               ; preds = %27, %20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_one_mult(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #25 {
  switch i32 %2, label %9 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %6, i1 false)
  br label %37

7:                                                ; preds = %4
  %8 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %0, i64 %8, i1 false)
  br label %37

9:                                                ; preds = %4
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %9
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds i8, ptr %3, i64 %12
  %14 = getelementptr inbounds i8, ptr %13, i64 -1
  %15 = getelementptr inbounds i8, ptr %0, i64 %12
  br label %16

16:                                               ; preds = %16, %11
  %17 = phi ptr [ %30, %16 ], [ %14, %11 ]
  %18 = phi ptr [ %21, %16 ], [ %15, %11 ]
  %19 = phi i32 [ %22, %16 ], [ %1, %11 ]
  %20 = phi i32 [ %29, %16 ], [ 0, %11 ]
  %21 = getelementptr inbounds i8, ptr %18, i64 -1
  %22 = add nsw i32 %19, -1
  %23 = load i8, ptr %21, align 1, !tbaa !7
  %24 = sext i8 %23 to i32
  %25 = mul nsw i32 %24, %2
  %26 = add nsw i32 %25, %20
  %27 = srem i32 %26, 10
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %17, align 1, !tbaa !7
  %29 = sdiv i32 %26, 10
  %30 = getelementptr inbounds i8, ptr %17, i64 -1
  %31 = icmp ugt i32 %19, 1
  br i1 %31, label %16, label %32, !llvm.loop !167

32:                                               ; preds = %16
  %.lcssa2 = phi i32 [ %26, %16 ]
  %.lcssa1 = phi i32 [ %29, %16 ]
  %.lcssa = phi ptr [ %30, %16 ]
  %33 = add i32 %.lcssa2, 9
  %34 = icmp ult i32 %33, 19
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = trunc i32 %.lcssa1 to i8
  store i8 %36, ptr %.lcssa, align 1, !tbaa !7
  br label %37

37:                                               ; preds = %35, %32, %9, %7, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @free_a_tree(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = add nsw i32 %1, -1
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i64 [ 0, %6 ], [ %12, %8 ]
  %10 = getelementptr inbounds %struct.bc_array_node, ptr %0, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  tail call fastcc void @free_a_tree(ptr noundef %11, i32 noundef %7) #30
  %12 = add nuw nsw i64 %9, 1
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %29, label %8, !llvm.loop !168

14:                                               ; preds = %26, %4
  %15 = phi i64 [ %27, %26 ], [ 0, %4 ]
  %16 = getelementptr inbounds [16 x ptr], ptr %0, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bc_struct, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !90
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %20, align 4, !tbaa !90
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %17) #29
  br label %25

25:                                               ; preds = %24, %19
  store ptr null, ptr %16, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %25, %14
  %27 = add nuw nsw i64 %15, 1
  %28 = icmp eq i64 %27, 16
  br i1 %28, label %29, label %14, !llvm.loop !169

29:                                               ; preds = %26, %8
  tail call void @free(ptr noundef nonnull %0) #29
  br label %30

30:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @_do_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !96
  %5 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !96
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %8 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !95
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !95
  %12 = tail call i32 @llvm.smax.i32(i32 %9, i32 %11)
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = sext i32 %7 to i64
  %16 = add nsw i64 %15, 1040
  %17 = add nsw i64 %16, %14
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #31
  store i32 0, ptr %18, align 4, !tbaa !113
  %19 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 1
  store i32 %13, ptr %19, align 4, !tbaa !95
  %20 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 2
  store i32 %7, ptr %20, align 4, !tbaa !96
  %21 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 3
  store i32 1, ptr %21, align 4, !tbaa !90
  %22 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 4
  store i8 0, ptr %22, align 4, !tbaa !7
  %23 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %24 = sext i32 %9 to i64
  %25 = getelementptr inbounds i8, ptr %23, i64 %24
  %26 = sext i32 %4 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  %28 = getelementptr inbounds i8, ptr %27, i64 -1
  %29 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %30 = sext i32 %11 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = sext i32 %6 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  %35 = getelementptr inbounds i8, ptr %22, i64 %15
  %36 = getelementptr inbounds i8, ptr %35, i64 %14
  %37 = getelementptr inbounds i8, ptr %36, i64 -1
  %38 = icmp eq i32 %4, %6
  br i1 %38, label %79, label %39

39:                                               ; preds = %2
  %40 = icmp sgt i32 %4, %6
  br i1 %40, label %41, label %59

41:                                               ; preds = %39
  %42 = tail call i64 @llvm.smax.i64(i64 %30, i64 %24)
  %43 = add nsw i64 %42, %15
  %44 = xor i32 %6, -1
  %45 = add i32 %4, %44
  %46 = zext i32 %45 to i64
  %47 = sub nsw i64 %43, %46
  %48 = add nsw i64 %47, 16
  %49 = getelementptr i8, ptr %18, i64 %48
  %50 = add nsw i64 %24, %26
  %51 = sub nsw i64 %50, %46
  %52 = add nsw i64 %51, 15
  %53 = getelementptr i8, ptr %0, i64 %52
  %54 = add nuw nsw i64 %46, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %49, ptr noundef nonnull align 1 dereferenceable(1) %53, i64 %54, i1 false), !tbaa !7
  %55 = add nsw i64 %51, 14
  %56 = add nsw i64 %47, 15
  %57 = getelementptr i8, ptr %0, i64 %55
  %58 = getelementptr i8, ptr %18, i64 %56
  br label %79

59:                                               ; preds = %39
  %60 = icmp sgt i32 %6, %4
  br i1 %60, label %61, label %79

61:                                               ; preds = %59
  %62 = tail call i64 @llvm.smax.i64(i64 %30, i64 %24)
  %63 = add nsw i64 %62, %15
  %64 = xor i32 %4, -1
  %65 = add i32 %6, %64
  %66 = zext i32 %65 to i64
  %67 = sub nsw i64 %63, %66
  %68 = add nsw i64 %67, 16
  %69 = getelementptr i8, ptr %18, i64 %68
  %70 = add nsw i64 %30, %32
  %71 = sub nsw i64 %70, %66
  %72 = add nsw i64 %71, 15
  %73 = getelementptr i8, ptr %1, i64 %72
  %74 = add nuw nsw i64 %66, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %69, ptr noundef nonnull align 1 dereferenceable(1) %73, i64 %74, i1 false), !tbaa !7
  %75 = add nsw i64 %71, 14
  %76 = add nsw i64 %67, 15
  %77 = getelementptr i8, ptr %1, i64 %75
  %78 = getelementptr i8, ptr %18, i64 %76
  br label %79

79:                                               ; preds = %61, %59, %41, %2
  %80 = phi ptr [ %28, %2 ], [ %28, %59 ], [ %57, %41 ], [ %28, %61 ]
  %81 = phi ptr [ %34, %2 ], [ %34, %59 ], [ %34, %41 ], [ %77, %61 ]
  %82 = phi ptr [ %37, %2 ], [ %37, %59 ], [ %58, %41 ], [ %78, %61 ]
  %83 = phi i32 [ %4, %2 ], [ %4, %59 ], [ %6, %41 ], [ %4, %61 ]
  %84 = phi i32 [ %4, %2 ], [ %6, %59 ], [ %6, %41 ], [ %4, %61 ]
  %85 = add nsw i32 %83, %9
  %86 = add nsw i32 %84, %11
  %87 = icmp sgt i32 %85, 0
  %88 = icmp sgt i32 %86, 0
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %90, label %114

90:                                               ; preds = %90, %79
  %91 = phi i32 [ %110, %90 ], [ %86, %79 ]
  %92 = phi i32 [ %109, %90 ], [ %85, %79 ]
  %93 = phi i32 [ %107, %90 ], [ 0, %79 ]
  %94 = phi ptr [ %108, %90 ], [ %82, %79 ]
  %95 = phi ptr [ %99, %90 ], [ %81, %79 ]
  %96 = phi ptr [ %97, %90 ], [ %80, %79 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 -1
  %98 = load i8, ptr %96, align 1, !tbaa !7
  %99 = getelementptr inbounds i8, ptr %95, i64 -1
  %100 = load i8, ptr %95, align 1, !tbaa !7
  %101 = trunc i32 %93 to i8
  %102 = add i8 %98, %101
  %103 = add i8 %102, %100
  %104 = icmp sgt i8 %103, 9
  %105 = add nsw i8 %103, -10
  %106 = select i1 %104, i8 %105, i8 %103
  %107 = zext i1 %104 to i32
  store i8 %106, ptr %94, align 1, !tbaa !7
  %108 = getelementptr inbounds i8, ptr %94, i64 -1
  %109 = add nsw i32 %92, -1
  %110 = add nsw i32 %91, -1
  %111 = icmp ugt i32 %92, 1
  %112 = icmp ugt i32 %91, 1
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %90, label %114, !llvm.loop !170

114:                                              ; preds = %90, %79
  %115 = phi ptr [ %80, %79 ], [ %97, %90 ]
  %116 = phi ptr [ %81, %79 ], [ %99, %90 ]
  %117 = phi ptr [ %82, %79 ], [ %108, %90 ]
  %118 = phi i32 [ 0, %79 ], [ %107, %90 ]
  %119 = phi i32 [ %85, %79 ], [ %109, %90 ]
  %120 = phi i32 [ %86, %79 ], [ %110, %90 ]
  %121 = icmp eq i32 %119, 0
  %122 = select i1 %121, i32 %120, i32 %119
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %114
  %125 = select i1 %121, ptr %116, ptr %115
  br label %126

126:                                              ; preds = %126, %124
  %127 = phi i32 [ %131, %126 ], [ %122, %124 ]
  %128 = phi i32 [ %139, %126 ], [ %118, %124 ]
  %129 = phi ptr [ %140, %126 ], [ %117, %124 ]
  %130 = phi ptr [ %132, %126 ], [ %125, %124 ]
  %131 = add nsw i32 %127, -1
  %132 = getelementptr inbounds i8, ptr %130, i64 -1
  %133 = load i8, ptr %130, align 1, !tbaa !7
  %134 = trunc i32 %128 to i8
  %135 = add i8 %133, %134
  %136 = icmp sgt i8 %135, 9
  %137 = add nsw i8 %135, -10
  %138 = select i1 %136, i8 %137, i8 %135
  %139 = zext i1 %136 to i32
  store i8 %138, ptr %129, align 1, !tbaa !7
  %140 = getelementptr inbounds i8, ptr %129, i64 -1
  %141 = icmp ugt i32 %127, 1
  br i1 %141, label %126, label %142, !llvm.loop !171

142:                                              ; preds = %126, %114
  %143 = phi ptr [ %117, %114 ], [ %140, %126 ]
  %144 = phi i32 [ %118, %114 ], [ %139, %126 ]
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i8, ptr %143, align 1, !tbaa !7
  %148 = add i8 %147, 1
  store i8 %148, ptr %143, align 1, !tbaa !7
  br label %149

149:                                              ; preds = %146, %142
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %18) #30
  ret ptr %18
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @_do_sub(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !95
  %5 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !95
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %8 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !96
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = tail call i32 @llvm.smax.i32(i32 %9, i32 %11)
  %13 = tail call i32 @llvm.smin.i32(i32 %4, i32 %6)
  %14 = tail call i32 @llvm.smin.i32(i32 %9, i32 %11)
  %15 = sext i32 %7 to i64
  %16 = sext i32 %12 to i64
  %17 = add nsw i64 %16, %15
  %18 = add nsw i64 %17, 1040
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #31
  store i32 0, ptr %19, align 4, !tbaa !113
  %20 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 1
  store i32 %7, ptr %20, align 4, !tbaa !95
  %21 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 2
  store i32 %12, ptr %21, align 4, !tbaa !96
  %22 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 3
  store i32 1, ptr %22, align 4, !tbaa !90
  %23 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 4
  store i8 0, ptr %23, align 4, !tbaa !7
  %24 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %25 = sext i32 %4 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  %27 = sext i32 %9 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %31 = sext i32 %6 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = sext i32 %11 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  %36 = icmp sgt i32 %9, %11
  br i1 %36, label %37, label %55

37:                                               ; preds = %2
  %38 = add nsw i64 %17, 15
  %39 = xor i32 %14, -1
  %40 = add i32 %9, %39
  %41 = zext i32 %40 to i64
  %42 = sub nsw i64 %38, %41
  %43 = getelementptr i8, ptr %19, i64 %42
  %44 = add nsw i64 %27, %25
  %45 = add nsw i64 %44, 15
  %46 = sub nsw i64 %45, %41
  %47 = getelementptr i8, ptr %0, i64 %46
  %48 = add nuw nsw i64 %41, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull align 1 dereferenceable(1) %47, i64 %48, i1 false), !tbaa !7
  %49 = add nsw i64 %44, 14
  %50 = sub nsw i64 %49, %41
  %51 = add nsw i64 %17, 14
  %52 = sub nsw i64 %51, %41
  %53 = getelementptr i8, ptr %0, i64 %50
  %54 = getelementptr i8, ptr %19, i64 %52
  br label %78

55:                                               ; preds = %2
  %56 = getelementptr inbounds i8, ptr %23, i64 %15
  %57 = getelementptr inbounds i8, ptr %56, i64 %16
  %58 = getelementptr inbounds i8, ptr %57, i64 -1
  %59 = sub nsw i32 %11, %14
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %61, %55
  %62 = phi i32 [ %76, %61 ], [ %59, %55 ]
  %63 = phi i32 [ %71, %61 ], [ 0, %55 ]
  %64 = phi ptr [ %75, %61 ], [ %58, %55 ]
  %65 = phi ptr [ %66, %61 ], [ %35, %55 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 -1
  %67 = load i8, ptr %65, align 1, !tbaa !7
  %68 = sext i8 %67 to i32
  %69 = add nsw i32 %63, %68
  %70 = icmp sgt i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = select i1 %70, i32 10, i32 0
  %73 = sub nsw i32 %72, %69
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds i8, ptr %64, i64 -1
  store i8 %74, ptr %64, align 1, !tbaa !7
  %76 = add nsw i32 %62, -1
  %77 = icmp ugt i32 %62, 1
  br i1 %77, label %61, label %78, !llvm.loop !172

78:                                               ; preds = %61, %55, %37
  %79 = phi ptr [ %29, %55 ], [ %53, %37 ], [ %29, %61 ]
  %80 = phi ptr [ %35, %55 ], [ %35, %37 ], [ %66, %61 ]
  %81 = phi ptr [ %58, %55 ], [ %54, %37 ], [ %75, %61 ]
  %82 = phi i32 [ 0, %55 ], [ 0, %37 ], [ %71, %61 ]
  %83 = add nsw i32 %14, %13
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %85, %78
  %86 = phi i32 [ %105, %85 ], [ 0, %78 ]
  %87 = phi i32 [ %101, %85 ], [ %82, %78 ]
  %88 = phi ptr [ %104, %85 ], [ %81, %78 ]
  %89 = phi ptr [ %94, %85 ], [ %80, %78 ]
  %90 = phi ptr [ %91, %85 ], [ %79, %78 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 -1
  %92 = load i8, ptr %90, align 1, !tbaa !7
  %93 = sext i8 %92 to i32
  %94 = getelementptr inbounds i8, ptr %89, i64 -1
  %95 = load i8, ptr %89, align 1, !tbaa !7
  %96 = sext i8 %95 to i32
  %97 = add nsw i32 %87, %96
  %98 = sub nsw i32 %93, %97
  %99 = icmp slt i32 %98, 0
  %100 = add nsw i32 %98, 10
  %101 = lshr i32 %98, 31
  %102 = select i1 %99, i32 %100, i32 %98
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds i8, ptr %88, i64 -1
  store i8 %103, ptr %88, align 1, !tbaa !7
  %105 = add nuw nsw i32 %86, 1
  %106 = icmp eq i32 %105, %83
  br i1 %106, label %107, label %85, !llvm.loop !173

107:                                              ; preds = %85, %78
  %108 = phi ptr [ %79, %78 ], [ %91, %85 ]
  %109 = phi ptr [ %81, %78 ], [ %104, %85 ]
  %110 = phi i32 [ %82, %78 ], [ %101, %85 ]
  %111 = sub nsw i32 %7, %13
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %113, %107
  %114 = phi i32 [ %128, %113 ], [ %111, %107 ]
  %115 = phi i32 [ %124, %113 ], [ %110, %107 ]
  %116 = phi ptr [ %127, %113 ], [ %109, %107 ]
  %117 = phi ptr [ %118, %113 ], [ %108, %107 ]
  %118 = getelementptr inbounds i8, ptr %117, i64 -1
  %119 = load i8, ptr %117, align 1, !tbaa !7
  %120 = sext i8 %119 to i32
  %121 = sub nsw i32 %120, %115
  %122 = icmp slt i32 %121, 0
  %123 = add nsw i32 %121, 10
  %124 = lshr i32 %121, 31
  %125 = select i1 %122, i32 %123, i32 %121
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds i8, ptr %116, i64 -1
  store i8 %126, ptr %116, align 1, !tbaa !7
  %128 = add nsw i32 %114, -1
  %129 = icmp ugt i32 %114, 1
  br i1 %129, label %113, label %130, !llvm.loop !174

130:                                              ; preds = %113, %107
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %19) #30
  ret ptr %19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @input() unnamed_addr #3 {
  %1 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %2 = load i8, ptr @yy_hold_char, align 1, !tbaa !7
  store i8 %2, ptr %1, align 1, !tbaa !7
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %43

4:                                                ; preds = %0
  %5 = load i32, ptr @yy_n_chars, align 4, !tbaa !12
  %6 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  br label %7

7:                                                ; preds = %25, %4
  %8 = phi ptr [ %30, %25 ], [ %6, %4 ]
  %9 = phi i32 [ %32, %25 ], [ %5, %4 ]
  %10 = phi ptr [ %31, %25 ], [ %1, %4 ]
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = icmp ult ptr %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  %.lcssa = phi ptr [ %10, %7 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !7
  br label %43

15:                                               ; preds = %7
  store ptr %10, ptr @yytext, align 8, !tbaa !14
  %16 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %16, ptr @yy_c_buf_p, align 8, !tbaa !14
  %17 = tail call fastcc i32 @yy_get_next_buffer() #30, !range !72
  switch i32 %17, label %18 [
    i32 1, label %20
    i32 0, label %36
    i32 2, label %38
  ]

18:                                               ; preds = %15
  %19 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %43

20:                                               ; preds = %15
  %21 = tail call fastcc i32 @open_new_file() #29, !range !19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr @yytext, align 8, !tbaa !14
  store ptr %24, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %49

25:                                               ; preds = %20
  %26 = load ptr, ptr @yyin, align 8, !tbaa !14
  store ptr %26, ptr @yy_current_buffer.body, align 16, !tbaa !56
  %27 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  store i8 10, ptr %27, align 1, !tbaa !7
  store i32 1, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 28), align 4, !tbaa !59
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 0, ptr %28, align 1, !tbaa !7
  %29 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 0, ptr %29, align 1, !tbaa !7
  %30 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 16), align 16, !tbaa !60
  store i32 0, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 32), align 16, !tbaa !61
  %32 = load i32, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 28), align 4, !tbaa !59
  store i32 %32, ptr @yy_n_chars, align 4, !tbaa !12
  store ptr %31, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %31, ptr @yytext, align 8, !tbaa !14
  %33 = load ptr, ptr @yy_current_buffer.body, align 16, !tbaa !56
  store ptr %33, ptr @yyin, align 8, !tbaa !14
  %34 = load i8, ptr %31, align 1, !tbaa !7
  store i8 %34, ptr @yy_hold_char, align 1, !tbaa !7
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %7, label %43

36:                                               ; preds = %15
  %37 = load ptr, ptr @yytext, align 8, !tbaa !14
  store ptr %37, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %43

38:                                               ; preds = %15
  %39 = load ptr, ptr @stderr, align 8, !tbaa !14
  %40 = tail call i32 @fputs(ptr noundef nonnull @.str.10.146, ptr noundef %39) #35
  %41 = load ptr, ptr @stderr, align 8, !tbaa !14
  %42 = tail call i32 @putc(i32 noundef 10, ptr noundef %41) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

43:                                               ; preds = %36, %25, %18, %14, %0
  %44 = phi ptr [ %1, %0 ], [ %.lcssa, %14 ], [ %37, %36 ], [ %19, %18 ], [ %31, %25 ]
  %45 = load i8, ptr %44, align 1, !tbaa !7
  %46 = sext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %47, ptr @yy_c_buf_p, align 8, !tbaa !14
  %48 = load i8, ptr %47, align 1, !tbaa !7
  store i8 %48, ptr @yy_hold_char, align 1, !tbaa !7
  br label %49

49:                                               ; preds = %43, %23
  %50 = phi i32 [ %46, %43 ], [ -1, %23 ]
  ret i32 %50
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @yy_get_previous_state() unnamed_addr #27 {
  %1 = load i1, ptr @yy_start, align 4
  %2 = zext i1 %1 to i32
  %3 = load ptr, ptr @yytext, align 8, !tbaa !14
  %4 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %65

6:                                                ; preds = %0
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %3 to i64
  %9 = sub i64 %7, %8
  %10 = getelementptr i8, ptr %3, i64 %9
  br label %11

11:                                               ; preds = %58, %6
  %12 = phi ptr [ %63, %58 ], [ %3, %6 ]
  %13 = phi i32 [ %62, %58 ], [ %2, %6 ]
  %14 = load i8, ptr %12, align 1, !tbaa !7
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = sext i8 %14 to i64
  %18 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !7
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i8 [ %19, %16 ], [ 1, %11 ]
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 %13, ptr @yy_last_accepting_state, align 4, !tbaa !12
  store ptr %12, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %22
  %29 = load i16, ptr %28, align 2, !tbaa !20
  %30 = sext i16 %29 to i64
  %31 = sext i8 %21 to i64
  %32 = add nsw i64 %30, %31
  %33 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !20
  %35 = sext i16 %34 to i32
  %36 = icmp eq i32 %13, %35
  br i1 %36, label %58, label %37

37:                                               ; preds = %47, %27
  %38 = phi i64 [ %53, %47 ], [ %31, %27 ]
  %39 = phi i64 [ %49, %47 ], [ %22, %27 ]
  %40 = phi i8 [ %48, %47 ], [ %21, %27 ]
  %41 = getelementptr inbounds [146 x i16], ptr @yy_def, i64 0, i64 %39
  %42 = load i16, ptr %41, align 2, !tbaa !20
  %43 = icmp sgt i16 %42, 143
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds [53 x i8], ptr @yy_meta, i64 0, i64 %38
  %46 = load i8, ptr %45, align 1, !tbaa !7
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi i8 [ %46, %44 ], [ %40, %37 ]
  %49 = sext i16 %42 to i64
  %50 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !20
  %52 = sext i16 %51 to i64
  %53 = sext i8 %48 to i64
  %54 = add nsw i64 %52, %53
  %55 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !20
  %57 = icmp eq i16 %42, %56
  br i1 %57, label %58, label %37, !llvm.loop !175

58:                                               ; preds = %47, %27
  %59 = phi i64 [ %32, %27 ], [ %54, %47 ]
  %60 = getelementptr inbounds [247 x i16], ptr @yy_nxt, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !20
  %62 = sext i16 %61 to i32
  %63 = getelementptr inbounds i8, ptr %12, i64 1
  %64 = icmp eq ptr %63, %10
  br i1 %64, label %65, label %11, !llvm.loop !176

65:                                               ; preds = %58, %0
  %66 = phi i32 [ %2, %0 ], [ %62, %58 ]
  ret i32 %66
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @yy_get_next_buffer() unnamed_addr #3 {
  %1 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %2 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %3 = load i32, ptr @yy_n_chars, align 4, !tbaa !12
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %1, i64 %5
  %7 = icmp ugt ptr %2, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load ptr, ptr @stderr, align 8, !tbaa !14
  %10 = tail call i32 @fputs(ptr noundef nonnull @.str.7.143, ptr noundef %9) #35
  %11 = load ptr, ptr @stderr, align 8, !tbaa !14
  %12 = tail call i32 @putc(i32 noundef 10, ptr noundef %11) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

13:                                               ; preds = %0
  %14 = load ptr, ptr @yytext, align 8, !tbaa !14
  %15 = ptrtoint ptr %2 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %14, i64 -1
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ %29, %22 ], [ 0, %20 ]
  %24 = phi ptr [ %28, %22 ], [ %1, %20 ]
  %25 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load i8, ptr %25, align 1, !tbaa !7
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %27, ptr %24, align 1, !tbaa !7
  %29 = add nuw nsw i32 %23, 1
  %30 = icmp eq i32 %29, %18
  br i1 %30, label %31, label %22, !llvm.loop !177

31:                                               ; preds = %22, %13
  %32 = load i32, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 32), align 16, !tbaa !61
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load i32, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 24), align 8, !tbaa !62
  %36 = xor i32 %18, -1
  %37 = add i32 %35, %36
  %38 = icmp sgt i32 %37, 8192
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = icmp slt i32 %37, 1
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = load ptr, ptr @stderr, align 8, !tbaa !14
  %43 = tail call i32 @fputs(ptr noundef nonnull @.str.8.144, ptr noundef %42) #35
  %44 = load ptr, ptr @stderr, align 8, !tbaa !14
  %45 = tail call i32 @putc(i32 noundef 10, ptr noundef %44) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

46:                                               ; preds = %39, %34
  %47 = phi i32 [ %37, %39 ], [ 8192, %34 ]
  %48 = shl i64 %17, 32
  %49 = ashr exact i64 %48, 32
  %50 = zext i32 %47 to i64
  br label %51

51:                                               ; preds = %59, %46
  %52 = load ptr, ptr @yyin, align 8, !tbaa !14
  %53 = tail call i32 @fileno(ptr noundef %52) #29
  %54 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %55 = getelementptr inbounds i8, ptr %54, i64 %49
  %56 = tail call i64 @read(i32 noundef %53, ptr noundef %55, i64 noundef %50) #29
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr @yy_n_chars, align 4, !tbaa !12
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = tail call ptr @__errno_location() #37
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %51, label %63, !llvm.loop !178

63:                                               ; preds = %59
  %64 = load ptr, ptr @stderr, align 8, !tbaa !14
  %65 = tail call i32 @fputs(ptr noundef nonnull @.str.9.145, ptr noundef %64) #35
  %66 = load ptr, ptr @stderr, align 8, !tbaa !14
  %67 = tail call i32 @putc(i32 noundef 10, ptr noundef %66) #30
  tail call void @exit(i32 noundef 1) #32
  unreachable

68:                                               ; preds = %51
  %.lcssa = phi i32 [ %57, %51 ]
  %69 = icmp eq i32 %.lcssa, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %68, %31
  %71 = icmp eq i32 %18, 1
  %72 = select i1 %71, i32 2, i32 1
  %73 = select i1 %71, i32 1, i32 2
  store i32 %72, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 32), align 16, !tbaa !61
  br label %74

74:                                               ; preds = %70, %68
  %75 = phi i32 [ %.lcssa, %68 ], [ 0, %70 ]
  %76 = phi i32 [ 0, %68 ], [ %73, %70 ]
  %77 = add nsw i32 %75, %18
  store i32 %77, ptr @yy_n_chars, align 4, !tbaa !12
  %78 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  store i8 0, ptr %80, align 1, !tbaa !7
  %81 = add nsw i32 %77, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %78, i64 %82
  store i8 0, ptr %83, align 1, !tbaa !7
  %84 = load ptr, ptr getelementptr inbounds ([40 x i8], ptr @yy_current_buffer.body, i64 0, i64 8), align 8, !tbaa !58
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %85, ptr @yytext, align 8, !tbaa !14
  ret i32 %76
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #25 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind optsize }
attributes #30 = { optsize }
attributes #31 = { nounwind optsize allocsize(0) }
attributes #32 = { noreturn nounwind optsize }
attributes #33 = { nounwind }
attributes #34 = { nounwind optsize willreturn memory(read) }
attributes #35 = { cold optsize }
attributes #36 = { cold }
attributes #37 = { nounwind optsize willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!17, !13, i64 0}
!17 = !{!"", !13, i64 0, !13, i64 4}
!18 = !{!17, !13, i64 4}
!19 = !{i32 0, i32 2}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !8, i64 0}
!22 = !{i64 0, i64 8, !14, i64 8, i64 1, !7, i64 12, i64 4, !12, i64 16, i64 8, !14}
!23 = !{i32 -128, i32 289}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = !{!27, !13, i64 12}
!27 = !{!"", !15, i64 0, !8, i64 8, !13, i64 12, !15, i64 16}
!28 = !{!27, !15, i64 0}
!29 = !{!27, !15, i64 16}
!30 = !{!31, !15, i64 8}
!31 = !{!"arg_list", !13, i64 0, !15, i64 8}
!32 = !{!31, !13, i64 0}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = !{!27, !8, i64 8}
!41 = !{i64 0, i64 1, !7, i64 8, i64 128, !7, i64 136, i64 4, !12, i64 144, i64 8, !14, i64 152, i64 8, !14, i64 160, i64 8, !14}
!42 = distinct !{!42, !11}
!43 = !{!44, !8, i64 0}
!44 = !{!"", !8, i64 0, !8, i64 8, !13, i64 136, !15, i64 144, !15, i64 152, !15, i64 160}
!45 = !{!44, !13, i64 136}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = !{!44, !15, i64 160}
!51 = !{!44, !15, i64 152}
!52 = !{!44, !15, i64 144}
!53 = !{!54, !15, i64 512}
!54 = !{!"bc_label_group", !8, i64 0, !15, i64 512}
!55 = distinct !{!55, !11}
!56 = !{!57, !15, i64 0}
!57 = !{!"yy_buffer_state", !15, i64 0, !15, i64 8, !15, i64 16, !13, i64 24, !13, i64 28, !13, i64 32}
!58 = !{!57, !15, i64 8}
!59 = !{!57, !13, i64 28}
!60 = !{!57, !15, i64 16}
!61 = !{!57, !13, i64 32}
!62 = !{!57, !13, i64 24}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = !{i32 -128, i32 128}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = !{i32 -32768, i32 32768}
!71 = distinct !{!71, !11}
!72 = !{i32 0, i32 3}
!73 = !{!74, !15, i64 0}
!74 = !{!"id_rec", !15, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !21, i64 20, !15, i64 24, !15, i64 32}
!75 = !{!74, !13, i64 8}
!76 = !{!74, !13, i64 12}
!77 = !{!74, !13, i64 16}
!78 = !{!74, !21, i64 20}
!79 = !{!74, !15, i64 24}
!80 = !{!74, !15, i64 32}
!81 = !{i64 -2147483648, i64 2147483648}
!82 = distinct !{!82, !11}
!83 = !{!84, !84, i64 0}
!84 = !{!"long", !8, i64 0}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = !{!91, !13, i64 12}
!91 = !{!"", !8, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !8, i64 16}
!92 = !{i8 0, i8 2}
!93 = !{!94, !15, i64 0}
!94 = !{!"estack_rec", !15, i64 0, !15, i64 8}
!95 = !{!91, !13, i64 4}
!96 = !{!91, !13, i64 8}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = !{!100, !15, i64 8}
!100 = !{!"bc_var", !15, i64 0, !15, i64 8}
!101 = !{!100, !15, i64 0}
!102 = !{!103, !8, i64 8}
!103 = !{!"bc_var_array", !15, i64 0, !8, i64 8, !15, i64 16}
!104 = !{!103, !15, i64 0}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = !{!108, !15, i64 8}
!108 = !{!"fstack_rec", !13, i64 0, !15, i64 8}
!109 = !{!108, !13, i64 0}
!110 = !{!94, !15, i64 8}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = !{!91, !8, i64 0}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = !{ptr @out_char}
!117 = distinct !{!117, !11}
!118 = distinct !{!118, !11}
!119 = !{i32 -1, i32 1}
!120 = !{!121, !84, i64 0}
!121 = !{!"stk_rec", !84, i64 0, !15, i64 8}
!122 = !{!121, !15, i64 8}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = !{i32 -1, i32 2}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = !{!103, !15, i64 16}
!133 = !{!134, !15, i64 0}
!134 = !{!"bc_array", !15, i64 0, !21, i64 8}
!135 = !{!134, !21, i64 8}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11, !138, !139}
!138 = !{!"llvm.loop.isvectorized", i32 1}
!139 = !{!"llvm.loop.unroll.runtime.disable"}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11, !138, !139}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = !{ptr @input_char, ptr @prog_char}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{!148, !11}
!149 = distinct !{!149, !11}
!150 = distinct !{!150, !11}
!151 = distinct !{!151, !11}
!152 = distinct !{!152, !11}
!153 = distinct !{!153, !11}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{!157, !11}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !11}
!160 = distinct !{!160, !11}
!161 = distinct !{!161, !11}
!162 = distinct !{!162, !11}
!163 = distinct !{!163, !11}
!164 = distinct !{!164, !11}
!165 = distinct !{!165, !11}
!166 = distinct !{!166, !11}
!167 = distinct !{!167, !11}
!168 = distinct !{!168, !11}
!169 = distinct !{!169, !11}
!170 = distinct !{!170, !11}
!171 = distinct !{!171, !11}
!172 = distinct !{!172, !11}
!173 = distinct !{!173, !11}
!174 = distinct !{!174, !11}
!175 = distinct !{!175, !11}
!176 = distinct !{!176, !11}
!177 = distinct !{!177, !11}
!178 = distinct !{!178, !11}
