; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Ptrdist/bc/bc.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.YYSTYPE = type { ptr, i8, i32, ptr }
%struct.program_counter = type { i32, i32 }
%struct.bc_function = type { i8, [16 x ptr], i32, ptr, ptr, ptr }
%struct.bc_label_group = type { [64 x i64], ptr }
%struct.arg_list = type { i32, ptr }
%struct.bc_struct = type { i32, i32, i32, i32, [1024 x i8] }
%struct.estack_rec = type { ptr, ptr }
%struct.stk_rec = type { i64, ptr }
%struct.yy_buffer_state = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.bc_var_array = type { ptr, i8, ptr }
%struct.bc_array = type { ptr, i16 }
%struct.bc_array_node = type { [16 x ptr], [16 x ptr] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.id_rec = type { ptr, i32, i32, i32, i16, ptr, ptr }

@yyexca = internal global [10 x i16] [i16 -1, i16 1, i16 0, i16 -1, i16 257, i16 6, i16 59, i16 6, i16 -2, i16 0], align 16
@yyact = internal global [706 x i16] [i16 27, i16 65, i16 149, i16 145, i16 48, i16 25, i16 57, i16 45, i16 58, i16 46, i16 105, i16 135, i16 41, i16 125, i16 86, i16 86, i16 38, i16 66, i16 34, i16 35, i16 141, i16 109, i16 53, i16 54, i16 36, i16 6, i16 134, i16 11, i16 159, i16 88, i16 104, i16 48, i16 150, i16 27, i16 136, i16 62, i16 62, i16 62, i16 25, i16 142, i16 126, i16 63, i16 151, i16 127, i16 125, i16 118, i16 115, i16 162, i16 139, i16 124, i16 8, i16 117, i16 59, i16 60, i16 108, i16 61, i16 40, i16 102, i16 48, i16 84, i16 82, i16 72, i16 71, i16 70, i16 69, i16 68, i16 27, i16 67, i16 51, i16 49, i16 23, i16 25, i16 75, i16 76, i16 77, i16 78, i16 79, i16 81, i16 74, i16 83, i16 87, i16 73, i16 92, i16 21, i16 91, i16 163, i16 140, i16 119, i16 63, i16 153, i16 96, i16 98, i16 152, i16 89, i16 56, i16 99, i16 100, i16 101, i16 27, i16 129, i16 64, i16 106, i16 107, i16 25, i16 52, i16 144, i16 40, i16 128, i16 164, i16 113, i16 110, i16 155, i16 112, i16 137, i16 50, i16 4, i16 21, i16 3, i16 2, i16 95, i16 116, i16 94, i16 148, i16 103, i16 80, i16 1, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 114, i16 0, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 130, i16 131, i16 98, i16 0, i16 21, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 27, i16 0, i16 0, i16 143, i16 0, i16 25, i16 0, i16 0, i16 0, i16 110, i16 27, i16 0, i16 98, i16 0, i16 0, i16 25, i16 0, i16 0, i16 47, i16 0, i16 157, i16 160, i16 0, i16 138, i16 154, i16 21, i16 0, i16 110, i16 0, i16 113, i16 0, i16 0, i16 0, i16 0, i16 146, i16 0, i16 27, i16 0, i16 0, i16 0, i16 0, i16 25, i16 0, i16 0, i16 0, i16 0, i16 27, i16 156, i16 0, i16 0, i16 0, i16 25, i16 0, i16 147, i16 21, i16 0, i16 85, i16 161, i16 37, i16 165, i16 55, i16 0, i16 0, i16 133, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 158, i16 29, i16 47, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 5, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 7, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 55, i16 0, i16 0, i16 27, i16 24, i16 12, i16 28, i16 26, i16 25, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 39, i16 0, i16 0, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 12, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 13, i16 15, i16 30, i16 17, i16 18, i16 19, i16 20, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 9, i16 16, i16 36, i16 14, i16 22, i16 10, i16 24, i16 0, i16 28, i16 26, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 45, i16 33, i16 46, i16 0, i16 36, i16 24, i16 90, i16 28, i16 26, i16 123, i16 0, i16 45, i16 29, i16 46, i16 0, i16 24, i16 30, i16 28, i16 26, i16 0, i16 0, i16 31, i16 29, i16 32, i16 34, i16 35, i16 30, i16 33, i16 0, i16 0, i16 36, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 122, i16 36, i16 45, i16 121, i16 46, i16 45, i16 45, i16 46, i16 46, i16 0, i16 0, i16 120, i16 48, i16 0, i16 111, i16 0, i16 45, i16 0, i16 46, i16 0, i16 45, i16 0, i16 46, i16 48, i16 0, i16 0, i16 24, i16 0, i16 132, i16 26, i16 93, i16 0, i16 45, i16 29, i16 46, i16 0, i16 45, i16 30, i16 46, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 0, i16 36, i16 0, i16 48, i16 0, i16 0, i16 48, i16 48, i16 0, i16 24, i16 0, i16 97, i16 26, i16 0, i16 0, i16 0, i16 29, i16 48, i16 0, i16 0, i16 30, i16 48, i16 0, i16 0, i16 0, i16 31, i16 0, i16 32, i16 34, i16 35, i16 0, i16 33, i16 0, i16 48, i16 36, i16 0, i16 0, i16 48, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 0, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 42, i16 43, i16 0, i16 47, i16 0, i16 44, i16 47, i16 47, i16 44, i16 44, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 43, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44, i16 0, i16 0, i16 0, i16 42, i16 43, i16 0, i16 0, i16 42, i16 0, i16 47, i16 0, i16 44, i16 0, i16 47, i16 0, i16 44], align 16
@yypact = internal global [166 x i16] [i16 -1000, i16 -7, i16 -1000, i16 -43, i16 -1000, i16 58, i16 -1000, i16 -250, i16 -1000, i16 -1000, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 29, i16 -1000, i16 28, i16 -1000, i16 26, i16 -1000, i16 -259, i16 162, i16 162, i16 -1000, i16 162, i16 -3, i16 -261, i16 27, i16 25, i16 24, i16 23, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 26, i16 -1000, i16 -1000, i16 21, i16 -1000, i16 -1000, i16 162, i16 162, i16 162, i16 162, i16 162, i16 162, i16 20, i16 162, i16 19, i16 -45, i16 -1000, i16 87, i16 152, i16 -1000, i16 -1000, i16 409, i16 -1000, i16 435, i16 245, i16 162, i16 -1000, i16 -50, i16 -1000, i16 162, i16 162, i16 162, i16 16, i16 -1000, i16 -252, i16 162, i16 162, i16 -36, i16 -90, i16 -90, i16 -63, i16 -63, i16 13, i16 423, i16 162, i16 419, i16 162, i16 26, i16 87, i16 -1000, i16 -1000, i16 2, i16 -1000, i16 423, i16 162, i16 -1000, i16 10, i16 1, i16 423, i16 -4, i16 364, i16 408, i16 405, i16 375, i16 -1000, i16 8, i16 0, i16 -51, i16 409, i16 439, i16 -1000, i16 -16, i16 423, i16 -1000, i16 423, i16 -1000, i16 -1000, i16 152, i16 -36, i16 -1000, i16 212, i16 126, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -97, i16 -251, i16 -59, i16 -1000, i16 87, i16 7, i16 -1000, i16 423, i16 -5, i16 -1000, i16 -237, i16 -52, i16 -1000, i16 162, i16 -274, i16 87, i16 116, i16 -279, i16 -61, i16 -17, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -1000, i16 -252, i16 -1000, i16 -1000, i16 87, i16 26, i16 -31, i16 162, i16 -1000, i16 -44, i16 -1000, i16 -1000, i16 6, i16 -40, i16 -1000, i16 -1000, i16 87, i16 -1000], align 16
@yypgo = internal global [33 x i16] [i16 0, i16 125, i16 27, i16 124, i16 70, i16 21, i16 123, i16 122, i16 30, i16 121, i16 119, i16 118, i16 117, i16 22, i16 50, i16 115, i16 23, i16 114, i16 113, i16 111, i16 108, i16 107, i16 105, i16 104, i16 99, i16 94, i16 29, i16 93, i16 92, i16 89, i16 82, i16 81, i16 78], align 16
@yyr1 = internal global [98 x i16] [i16 0, i16 1, i16 1, i16 11, i16 11, i16 11, i16 12, i16 12, i16 12, i16 12, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 16, i16 16, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 17, i16 18, i16 19, i16 20, i16 14, i16 21, i16 14, i16 23, i16 24, i16 14, i16 14, i16 25, i16 14, i16 26, i16 26, i16 27, i16 27, i16 22, i16 28, i16 22, i16 29, i16 15, i16 6, i16 6, i16 7, i16 7, i16 7, i16 8, i16 8, i16 8, i16 8, i16 9, i16 9, i16 10, i16 10, i16 10, i16 10, i16 5, i16 5, i16 3, i16 3, i16 30, i16 2, i16 31, i16 2, i16 32, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 16
@yyr2 = internal global [98 x i16] [i16 0, i16 0, i16 2, i16 2, i16 1, i16 2, i16 0, i16 1, i16 3, i16 2, i16 0, i16 1, i16 2, i16 3, i16 2, i16 3, i16 1, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 4, i16 0, i16 0, i16 0, i16 0, i16 13, i16 0, i16 7, i16 0, i16 0, i16 7, i16 3, i16 0, i16 3, i16 1, i16 3, i16 1, i16 1, i16 0, i16 0, i16 3, i16 0, i16 12, i16 0, i16 1, i16 0, i16 3, i16 3, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 1, i16 3, i16 3, i16 5, i16 0, i16 1, i16 0, i16 1, i16 0, i16 4, i16 0, i16 4, i16 0, i16 4, i16 2, i16 3, i16 3, i16 3, i16 3, i16 3, i16 2, i16 1, i16 1, i16 3, i16 4, i16 2, i16 2, i16 4, i16 4, i16 4, i16 3, i16 1, i16 4, i16 1, i16 1, i16 1, i16 1], align 16
@yychk = internal global [166 x i16] [i16 -1000, i16 -1, i16 -11, i16 -12, i16 -15, i16 256, i16 -16, i16 268, i16 -14, i16 283, i16 288, i16 -2, i16 261, i16 269, i16 286, i16 270, i16 284, i16 272, i16 273, i16 274, i16 275, i16 123, i16 287, i16 -4, i16 260, i16 45, i16 263, i16 40, i16 262, i16 267, i16 271, i16 276, i16 278, i16 282, i16 279, i16 280, i16 285, i16 257, i16 59, i16 257, i16 -14, i16 262, i16 258, i16 259, i16 266, i16 43, i16 45, i16 264, i16 94, i16 40, i16 -17, i16 40, i16 -23, i16 -13, i16 -16, i16 256, i16 -25, i16 265, i16 267, i16 -2, i16 -2, i16 -2, i16 40, i16 91, i16 -4, i16 262, i16 278, i16 40, i16 40, i16 40, i16 40, i16 -16, i16 40, i16 -31, i16 -32, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -3, i16 -2, i16 40, i16 -2, i16 40, i16 257, i16 59, i16 125, i16 -26, i16 -27, i16 261, i16 -2, i16 -30, i16 41, i16 -9, i16 -10, i16 -2, i16 262, i16 -2, i16 -2, i16 -2, i16 -2, i16 41, i16 -6, i16 -8, i16 262, i16 -2, i16 -2, i16 41, i16 -5, i16 -2, i16 41, i16 -2, i16 -16, i16 -14, i16 44, i16 -2, i16 41, i16 44, i16 91, i16 93, i16 41, i16 41, i16 41, i16 41, i16 44, i16 91, i16 59, i16 -21, i16 -24, i16 -26, i16 -2, i16 262, i16 93, i16 123, i16 262, i16 93, i16 -18, i16 -14, i16 41, i16 91, i16 257, i16 91, i16 -5, i16 -22, i16 277, i16 -14, i16 93, i16 -7, i16 281, i16 93, i16 59, i16 -28, i16 -29, i16 -8, i16 -19, i16 -14, i16 -13, i16 257, i16 59, i16 -5, i16 257, i16 41, i16 125, i16 -20, i16 -14], align 16
@yydef = internal global [166 x i16] [i16 1, i16 -2, i16 2, i16 0, i16 4, i16 0, i16 7, i16 0, i16 16, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 28, i16 0, i16 35, i16 10, i16 39, i16 82, i16 0, i16 0, i16 83, i16 0, i16 92, i16 0, i16 0, i16 0, i16 96, i16 0, i16 94, i16 95, i16 97, i16 3, i16 9, i16 5, i16 17, i16 0, i16 71, i16 73, i16 0, i16 0, i16 0, i16 0, i16 0, i16 67, i16 0, i16 0, i16 0, i16 0, i16 11, i16 0, i16 0, i16 69, i16 87, i16 75, i16 81, i16 0, i16 59, i16 0, i16 86, i16 92, i16 96, i16 0, i16 0, i16 0, i16 0, i16 8, i16 50, i16 0, i16 0, i16 76, i16 77, i16 78, i16 79, i16 80, i16 0, i16 68, i16 65, i16 0, i16 0, i16 12, i16 14, i16 38, i16 40, i16 41, i16 43, i16 44, i16 0, i16 84, i16 0, i16 60, i16 61, i16 92, i16 0, i16 0, i16 0, i16 0, i16 91, i16 0, i16 51, i16 55, i16 72, i16 74, i16 27, i16 0, i16 66, i16 33, i16 36, i16 13, i16 15, i16 0, i16 70, i16 85, i16 0, i16 0, i16 93, i16 88, i16 89, i16 90, i16 0, i16 0, i16 0, i16 29, i16 0, i16 0, i16 42, i16 63, i16 92, i16 62, i16 0, i16 57, i16 56, i16 65, i16 45, i16 0, i16 0, i16 52, i16 0, i16 0, i16 34, i16 46, i16 37, i16 64, i16 48, i16 0, i16 58, i16 30, i16 0, i16 10, i16 0, i16 65, i16 47, i16 0, i16 53, i16 54, i16 0, i16 12, i16 31, i16 49, i16 0, i16 32], align 16
@yychar = internal global i32 -1, align 4
@yynerrs = internal global i32 0, align 4
@yyerrflag = internal global i16 0, align 2
@yyv = internal global [150 x %struct.YYSTYPE] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yyval = internal global %struct.YYSTYPE zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
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
@had_sigint = internal global i32 0, align 4
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
@if_label = internal global i32 0, align 4
@genstr = internal global [80 x i8] zeroinitializer, align 16
@load_adr = internal global %struct.program_counter zeroinitializer, align 8
@load_str = internal global i8 0, align 1
@load_const = internal global i8 0, align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Function too big.\00", align 1
@.str.1.41 = private unnamed_addr constant [18 x i8] c"Program too big.\0A\00", align 1
@use_math = internal global i8 0, align 1
@interactive = internal global i8 0, align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"lcisvw\00", align 1
@.str.2.82 = private unnamed_addr constant [76 x i8] c"bc 1.02 (Mar 3, 92) Copyright (C) 1991, 1992 Free Software Foundation, Inc.\00", align 1
@g_argc = internal global i32 0, align 4
@first_file = internal global i8 0, align 1
@.str.4.85 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5.86 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.6.87 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.7.88 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.8.89 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.9.90 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@libmath = internal constant [2140 x i8] c"@iK20:s2:p@r@iF1,4.5,6,7,8,9,10,11,12[l4:0<Z0:1s10:pl4:ns4:pN0:l2:s12:pK4:l12:+K.44:l4:*+s2:pN1:l4:1>Z2:l8:1+s8:pl4:K2:/s4:pJ1:N2:1l4:+s11:pl4:s5:p1s6:pK2:s9:pN4:1B5:J3:N6:l9:i9:pJ4:N5:l5:l4:*s5:l6:l9:*s6:/s7:pl7:0=Z7:l8:0>Z8:N9:l8:d8:Z10:l11:l11:*s11:pJ9:N10:N8:l12:s2:pl10:Z11:1l11:/RN11:l11:1/RN7:l11:l7:+s11:pJ6:N3:0R]@r@iF2,4.7,8,9,10,13,11,12[l4:0{Z0:1K10:l2:^-RN0:l2:s12:pl2:K4:+s2:pK2:s8:p0s9:pN1:l4:K2:}Z2:l8:K2:*s8:pl4:cRs4:pJ1:N2:N3:l4:K.5:{Z4:l8:K2:*s8:pl4:cRs4:pJ3:N4:l4:1-l4:1+/s13:s11:pl13:l13:*s10:pK3:s9:pN6:1B7:J5:N8:l9:K2:+s9:pJ6:N7:l13:l10:*s13:l9:/s7:pl7:0=Z9:l8:l11:*s11:pl12:s2:pl11:1/RN9:l11:l7:+s11:pJ8:N5:0R]@r@iF3,4.7,9,10,13,14,11,12[l2:s12:pK1.1:l12:*1+s2:p1C4,0:s11:pl4:0<Z0:1s10:pl4:ns4:pN0:0s2:pl4:l11:/K2:+K4:/s13:pl4:K4:l13:*l11:*-s4:pl13:K2:%Z1:l4:ns4:pN1:l12:K2:+s2:pl4:s7:s11:pl4:nl4:*s14:pK3:s9:pN3:1B4:J2:N5:l9:K2:+s9:pJ3:N4:l7:l14:l9:l9:1-*/*s7:pl7:0=Z6:l12:s2:pl10:Z7:l11:n1/RN7:l11:1/RN6:l11:l7:+s11:pJ5:N2:0R]@r@iF5,4.11[l2:1+s2:pl4:1C4,0:K2:*+C3,0:s11:pl2:1-s2:pl11:1/R0R]@r@iF4,4.5,7,8,9,10,13,14,11,12[l4:1=Z0:l2:K25:{Z1:K.7853981633974483096156608:1/RN1:l2:K40:{Z2:K.7853981633974483096156608458198757210492:1/RN2:l2:K60:{Z3:K.785398163397448309615660845819875721049292349843776455243736:1/RN3:N0:l4:K.2:=Z4:l2:K25:{Z5:K.1973955598498807583700497:1/RN5:l2:K40:{Z6:K.1973955598498807583700497651947902934475:1/RN6:l2:K60:{Z7:K.197395559849880758370049765194790293447585103787852101517688:1/RN7:N4:l4:0<Z8:1s10:pl4:ns4:pN8:l2:s12:pl4:K.2:>Z9:l12:K4:+s2:pK.2:C4,0:s5:pN9:l12:K2:+s2:pN10:l4:K.2:>Z11:l8:1+s8:pl4:K.2:-1l4:K.2:*+/s4:pJ10:N11:l4:s13:s11:pl4:nl4:*s14:pK3:s9:pN13:1B14:J12:N15:l9:K2:+s9:pJ13:N14:l13:l14:*s13:l9:/s7:pl7:0=Z16:l12:s2:pl10:Z17:l8:l5:*l11:+1n/RN17:l8:l5:*l11:+1/RN16:l11:l7:+s11:pJ15:N12:0R]@r@iF6,13,4.5,6,7,8,9,10,14,11,12[l2:s12:p0s2:pl13:1/s13:pl13:0<Z0:l13:ns13:pl13:K2:%1=Z1:1s10:pN1:N0:1s8:pK2:s9:pN3:l9:l13:{B4:J2:N5:l9:i9:pJ3:N4:l8:l9:*s8:pJ5:N2:K1.5:l12:*s2:pl4:l13:^K2:l13:^/l8:/s8:p1s7:s11:pl4:nl4:*K4:/s14:pK1.5:l12:*s2:p1s9:pN7:1B8:J6:N9:l9:i9:pJ7:N8:l7:l14:*l9:/l13:l9:+/s7:pl7:0=Z10:l12:s2:pl10:Z11:l8:nl11:*1/RN11:l8:l11:*1/RN10:l11:l7:+s11:pJ9:N6:0R]@r\00", align 16
@.str.10.91 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.92 = private unnamed_addr constant [25 x i8] c"File %s is unavailable.\0A\00", align 1
@str.93 = private unnamed_addr constant [31 x i8] c"\0A(interrupt) use quit to exit.\00", align 1
@_two_ = internal global ptr null, align 8
@.str.126 = private unnamed_addr constant [27 x i8] c"non-zero scale in exponent\00", align 1
@.str.1.127 = private unnamed_addr constant [28 x i8] c"exponent too large in raise\00", align 1
@ref_str = internal global [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.2.130 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@yyin = internal global ptr null, align 8
@yyout = internal global ptr null, align 8
@yy_init = internal unnamed_addr global i1 false, align 4
@yy_start = internal unnamed_addr global i1 false, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@yy_current_buffer = internal unnamed_addr global ptr null, align 8
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
@yytext = internal global ptr null, align 8
@yyleng = internal global i32 0, align 4
@yylval = internal global %struct.YYSTYPE zeroinitializer, align 8
@.str.137 = private unnamed_addr constant [31 x i8] c"EOF encountered in a comment.\0A\00", align 1
@.str.1.138 = private unnamed_addr constant [25 x i8] c"NUL character in string.\00", align 1
@.str.2.139 = private unnamed_addr constant [23 x i8] c"illegal character: ^%c\00", align 1
@.str.3.140 = private unnamed_addr constant [24 x i8] c"illegal character: \\%3d\00", align 1
@.str.4.141 = private unnamed_addr constant [22 x i8] c"illegal character: %s\00", align 1
@yy_n_chars = internal unnamed_addr global i32 0, align 4
@yy_did_buffer_switch_on_eof = internal unnamed_addr global i1 false, align 4
@.str.5.142 = private unnamed_addr constant [51 x i8] c"fatal flex scanner internal error--no action found\00", align 1
@.str.6.147 = private unnamed_addr constant [44 x i8] c"out of dynamic memory in yy_create_buffer()\00", align 1
@.str.7.143 = private unnamed_addr constant [56 x i8] c"fatal flex scanner internal error--end of buffer missed\00", align 1
@.str.8.144 = private unnamed_addr constant [44 x i8] c"fatal error - scanner input buffer overflow\00", align 1
@.str.9.145 = private unnamed_addr constant [30 x i8] c"read() in flex scanner failed\00", align 1
@.str.10.146 = private unnamed_addr constant [33 x i8] c"unexpected last match in input()\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"(main)\00", align 1
@ex_stack = internal global ptr null, align 8
@fn_stack = internal global ptr null, align 8
@i_base = internal global i32 0, align 4
@o_base = internal global i32 0, align 4
@scale = internal global i32 0, align 4
@c_code = internal global i8 0, align 1
@functions = internal global ptr null, align 8
@variables = internal global ptr null, align 8
@arrays = internal global ptr null, align 8
@.str.1.165 = private unnamed_addr constant [13 x i8] c"Stack error.\00", align 1
@_zero_ = internal global ptr null, align 8
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
@_one_ = internal global ptr null, align 8
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
@break_label = internal global i32 0, align 4
@continue_label = internal global i32 0, align 4
@next_label = internal global i32 0, align 4
@out_count = internal global i32 0, align 4
@compile_only = internal global i8 0, align 1
@.str.4.231 = private unnamed_addr constant [3 x i8] c"@i\00", align 1
@had_error = internal global i32 0, align 4
@did_gen = internal global i8 0, align 1
@.str.5.234 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@out_col = internal global i32 0, align 4
@name_tree = internal global ptr null, align 8
@next_array = internal global i32 0, align 4
@next_func = internal global i32 0, align 4
@next_var = internal global i32 0, align 4
@.str.8.244 = private unnamed_addr constant [26 x i8] c"multiple letter name - %s\00", align 1
@a_names = internal global ptr null, align 8
@a_count = internal global i32 0, align 4
@.str.9.245 = private unnamed_addr constant [25 x i8] c"Too many array variables\00", align 1
@f_names = internal global ptr null, align 8
@f_count = internal global i32 0, align 4
@.str.10.246 = private unnamed_addr constant [19 x i8] c"Too many functions\00", align 1
@v_names = internal global ptr null, align 8
@v_count = internal global i32 0, align 4
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
@is_std_in = internal global i8 0, align 1
@.str.36.226 = private unnamed_addr constant [14 x i8] c"(standard_in)\00", align 1
@g_argv = internal global ptr null, align 8
@optind = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.37.227 = private unnamed_addr constant [8 x i8] c"%s %d: \00", align 1
@line_no = internal global i32 0, align 4
@std_only = internal global i8 0, align 1
@warn_not_std = internal global i8 0, align 1
@.str.38.228 = private unnamed_addr constant [18 x i8] c"%s %d: (Warning) \00", align 1
@.str.39.278 = private unnamed_addr constant [37 x i8] c"Runtime error (func=%s, adr=%d): %s\0A\00", align 1
@pc = internal global %struct.program_counter zeroinitializer, align 4
@runtime_error = internal global i8 0, align 1
@.str.40.281 = private unnamed_addr constant [39 x i8] c"Runtime warning (func=%s, adr=%d): %s\0A\00", align 1
@.str.41.212 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.42.213 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str.237 = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@str.43 = private unnamed_addr constant [51 x i8] c"This is free software with ABSOLUTELY NO WARRANTY.\00", align 1
@str.44 = private unnamed_addr constant [20 x i8] c"For details type . \00", align 1

; Function Attrs: nounwind optsize uwtable
define internal i32 @yyparse() #0 {
  %1 = alloca [150 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %1) #37
  store i32 -1, ptr @yychar, align 4, !tbaa !7
  store i32 0, ptr @yynerrs, align 4, !tbaa !7
  store i16 0, ptr @yyerrflag, align 2, !tbaa !11
  %2 = getelementptr inbounds [150 x i16], ptr %1, i64 0, i64 150
  br label %4

3:                                                ; preds = %40
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str) #38
  br label %609

4:                                                ; preds = %40, %0
  %5 = phi ptr [ %1, %0 ], [ %44, %40 ]
  %6 = phi i16 [ 0, %0 ], [ %43, %40 ]
  %7 = phi ptr [ getelementptr inbounds ([150 x %struct.YYSTYPE], ptr @yyv, i64 -1, i64 149), %0 ], [ %42, %40 ]
  store i16 %6, ptr %5, align 2, !tbaa !11
  %8 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) @yyval, i64 24, i1 false), !tbaa.struct !13
  %9 = sext i16 %6 to i64
  %10 = getelementptr inbounds [166 x i16], ptr @yypact, i64 0, i64 %9
  %11 = getelementptr inbounds [166 x i16], ptr @yydef, i64 0, i64 %9
  br label %12

12:                                               ; preds = %114, %4
  %13 = load i16, ptr %10, align 2, !tbaa !11
  %14 = icmp slt i16 %13, -999
  br i1 %14, label %46, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @yychar, align 4, !tbaa !7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @yylex() #38
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 0)
  store i32 %20, ptr @yychar, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %20, %18 ], [ %16, %15 ]
  %23 = trunc i32 %22 to i16
  %24 = add i16 %13, %23
  %25 = icmp ugt i16 %24, 705
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = zext i16 %24 to i64
  %28 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !11
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds [166 x i16], ptr @yychk, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !11
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %22, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %.lcssa1 = phi i16 [ %29, %26 ]
  store i32 -1, ptr @yychar, align 4, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @yyval, ptr noundef nonnull align 8 dereferenceable(24) @yylval, i64 24, i1 false), !tbaa.struct !13
  %36 = load i16, ptr @yyerrflag, align 2, !tbaa !11
  %37 = icmp sgt i16 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = add nsw i16 %36, -1
  store i16 %39, ptr @yyerrflag, align 2, !tbaa !11
  br label %40

40:                                               ; preds = %608, %607, %606, %605, %601, %593, %592, %591, %590, %589, %588, %561, %542, %524, %521, %510, %498, %492, %484, %478, %472, %471, %470, %465, %464, %459, %458, %454, %451, %440, %435, %426, %421, %420, %400, %387, %386, %382, %381, %380, %371, %367, %355, %353, %347, %339, %332, %326, %321, %318, %315, %314, %313, %310, %293, %286, %285, %282, %281, %280, %273, %267, %262, %257, %251, %243, %234, %219, %208, %198, %197, %196, %195, %192, %191, %186, %185, %179, %178, %177, %165, %164, %161, %160, %159, %158, %157, %156, %154, %151, %149, %99, %38, %35
  %41 = phi ptr [ %5, %38 ], [ %5, %35 ], [ %122, %458 ], [ %122, %459 ], [ %122, %454 ], [ %122, %465 ], [ %122, %464 ], [ %122, %471 ], [ %122, %470 ], [ %122, %387 ], [ %122, %400 ], [ %122, %382 ], [ %122, %386 ], [ %122, %191 ], [ %122, %192 ], [ %122, %185 ], [ %122, %186 ], [ %122, %177 ], [ %122, %178 ], [ %122, %151 ], [ %122, %154 ], [ %122, %149 ], [ %122, %608 ], [ %122, %607 ], [ %122, %606 ], [ %122, %605 ], [ %122, %601 ], [ %122, %593 ], [ %122, %592 ], [ %122, %591 ], [ %122, %590 ], [ %122, %589 ], [ %122, %588 ], [ %122, %561 ], [ %122, %542 ], [ %122, %524 ], [ %122, %521 ], [ %122, %510 ], [ %122, %498 ], [ %122, %492 ], [ %122, %484 ], [ %122, %478 ], [ %122, %472 ], [ %122, %451 ], [ %122, %440 ], [ %122, %435 ], [ %122, %426 ], [ %122, %421 ], [ %122, %420 ], [ %122, %381 ], [ %122, %380 ], [ %122, %371 ], [ %122, %367 ], [ %122, %355 ], [ %122, %353 ], [ %122, %347 ], [ %122, %339 ], [ %122, %332 ], [ %122, %326 ], [ %122, %321 ], [ %122, %318 ], [ %122, %315 ], [ %122, %314 ], [ %122, %313 ], [ %122, %310 ], [ %122, %293 ], [ %122, %286 ], [ %122, %285 ], [ %122, %282 ], [ %122, %281 ], [ %122, %280 ], [ %122, %273 ], [ %122, %267 ], [ %122, %262 ], [ %122, %257 ], [ %122, %251 ], [ %122, %243 ], [ %122, %234 ], [ %122, %219 ], [ %122, %208 ], [ %122, %198 ], [ %122, %197 ], [ %122, %196 ], [ %122, %195 ], [ %122, %179 ], [ %122, %165 ], [ %122, %164 ], [ %122, %161 ], [ %122, %160 ], [ %122, %159 ], [ %122, %158 ], [ %122, %157 ], [ %122, %156 ], [ %92, %99 ]
  %42 = phi ptr [ %8, %38 ], [ %8, %35 ], [ %123, %458 ], [ %123, %459 ], [ %123, %454 ], [ %123, %465 ], [ %123, %464 ], [ %123, %471 ], [ %123, %470 ], [ %123, %387 ], [ %123, %400 ], [ %123, %382 ], [ %123, %386 ], [ %123, %191 ], [ %123, %192 ], [ %123, %185 ], [ %123, %186 ], [ %123, %177 ], [ %123, %178 ], [ %123, %151 ], [ %123, %154 ], [ %123, %149 ], [ %123, %608 ], [ %123, %607 ], [ %123, %606 ], [ %123, %605 ], [ %123, %601 ], [ %123, %593 ], [ %123, %592 ], [ %123, %591 ], [ %123, %590 ], [ %123, %589 ], [ %123, %588 ], [ %123, %561 ], [ %123, %542 ], [ %123, %524 ], [ %123, %521 ], [ %123, %510 ], [ %123, %498 ], [ %123, %492 ], [ %123, %484 ], [ %123, %478 ], [ %123, %472 ], [ %123, %451 ], [ %123, %440 ], [ %123, %435 ], [ %123, %426 ], [ %123, %421 ], [ %123, %420 ], [ %123, %381 ], [ %123, %380 ], [ %123, %371 ], [ %123, %367 ], [ %123, %355 ], [ %123, %353 ], [ %123, %347 ], [ %123, %339 ], [ %123, %332 ], [ %123, %326 ], [ %123, %321 ], [ %123, %318 ], [ %123, %315 ], [ %123, %314 ], [ %123, %313 ], [ %123, %310 ], [ %123, %293 ], [ %123, %286 ], [ %123, %285 ], [ %123, %282 ], [ %123, %281 ], [ %123, %280 ], [ %123, %273 ], [ %123, %267 ], [ %123, %262 ], [ %123, %257 ], [ %123, %251 ], [ %123, %243 ], [ %123, %234 ], [ %123, %219 ], [ %123, %208 ], [ %123, %198 ], [ %123, %197 ], [ %123, %196 ], [ %123, %195 ], [ %123, %179 ], [ %123, %165 ], [ %123, %164 ], [ %123, %161 ], [ %123, %160 ], [ %123, %159 ], [ %123, %158 ], [ %123, %157 ], [ %123, %156 ], [ %91, %99 ]
  %43 = phi i16 [ %.lcssa1, %38 ], [ %.lcssa1, %35 ], [ %150, %458 ], [ %150, %459 ], [ %150, %454 ], [ %150, %465 ], [ %150, %464 ], [ %150, %471 ], [ %150, %470 ], [ %150, %387 ], [ %150, %400 ], [ %150, %382 ], [ %150, %386 ], [ %150, %191 ], [ %150, %192 ], [ %150, %185 ], [ %150, %186 ], [ %150, %177 ], [ %150, %178 ], [ %150, %151 ], [ %150, %154 ], [ %150, %149 ], [ %150, %608 ], [ %150, %607 ], [ %150, %606 ], [ %150, %605 ], [ %150, %601 ], [ %150, %593 ], [ %150, %592 ], [ %150, %591 ], [ %150, %590 ], [ %150, %589 ], [ %150, %588 ], [ %150, %561 ], [ %150, %542 ], [ %150, %524 ], [ %150, %521 ], [ %150, %510 ], [ %150, %498 ], [ %150, %492 ], [ %150, %484 ], [ %150, %478 ], [ %150, %472 ], [ %150, %451 ], [ %150, %440 ], [ %150, %435 ], [ %150, %426 ], [ %150, %421 ], [ %150, %420 ], [ %150, %381 ], [ %150, %380 ], [ %150, %371 ], [ %150, %367 ], [ %150, %355 ], [ %150, %353 ], [ %150, %347 ], [ %150, %339 ], [ %150, %332 ], [ %150, %326 ], [ %150, %321 ], [ %150, %318 ], [ %150, %315 ], [ %150, %314 ], [ %150, %313 ], [ %150, %310 ], [ %150, %293 ], [ %150, %286 ], [ %150, %285 ], [ %150, %282 ], [ %150, %281 ], [ %150, %280 ], [ %150, %273 ], [ %150, %267 ], [ %150, %262 ], [ %150, %257 ], [ %150, %251 ], [ %150, %243 ], [ %150, %234 ], [ %150, %219 ], [ %150, %208 ], [ %150, %198 ], [ %150, %197 ], [ %150, %196 ], [ %150, %195 ], [ %150, %179 ], [ %150, %165 ], [ %150, %164 ], [ %150, %161 ], [ %150, %160 ], [ %150, %159 ], [ %150, %158 ], [ %150, %157 ], [ %150, %156 ], [ %102, %99 ]
  %44 = getelementptr inbounds i16, ptr %41, i64 1
  %45 = icmp ugt ptr %44, %2
  br i1 %45, label %3, label %4

46:                                               ; preds = %26, %21, %12
  %47 = load i16, ptr %11, align 2, !tbaa !11
  %48 = icmp eq i16 %47, -2
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i32, ptr @yychar, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i32 @yylex() #38
  %54 = call i32 @llvm.smax.i32(i32 %53, i32 0)
  store i32 %54, ptr @yychar, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i32 [ %54, %52 ], [ %50, %49 ]
  br label %57

57:                                               ; preds = %65, %55
  %58 = phi ptr [ @yyexca, %55 ], [ %66, %65 ]
  %59 = load i16, ptr %58, align 2, !tbaa !11
  %60 = icmp eq i16 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds i16, ptr %58, i64 1
  %63 = load i16, ptr %62, align 2, !tbaa !11
  %64 = icmp eq i16 %63, %6
  br i1 %64, label %67, label %65

65:                                               ; preds = %61, %57
  %66 = getelementptr inbounds i16, ptr %58, i64 2
  br label %57, !llvm.loop !17

67:                                               ; preds = %67, %61
  %68 = phi ptr [ %69, %67 ], [ %58, %61 ]
  %69 = getelementptr inbounds i16, ptr %68, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !11
  %71 = icmp slt i16 %70, 0
  %72 = sext i16 %70 to i32
  %73 = icmp eq i32 %56, %72
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %67, !llvm.loop !19

75:                                               ; preds = %67
  %.lcssa = phi ptr [ %68, %67 ]
  %76 = getelementptr inbounds i16, ptr %.lcssa, i64 3
  %77 = load i16, ptr %76, align 2, !tbaa !11
  %78 = icmp slt i16 %77, 0
  br i1 %78, label %609, label %79

79:                                               ; preds = %75, %46
  %80 = phi i16 [ %77, %75 ], [ %47, %46 ]
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %79
  %83 = load i16, ptr @yyerrflag, align 2, !tbaa !11
  %84 = sext i16 %83 to i32
  switch i32 %84, label %115 [
    i32 0, label %85
    i32 1, label %88
    i32 2, label %88
    i32 3, label %111
  ]

85:                                               ; preds = %82
  %.lcssa3 = phi i16 [ %80, %82 ]
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.1) #38
  %86 = load i32, ptr @yynerrs, align 4, !tbaa !7
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr @yynerrs, align 4, !tbaa !7
  br label %88

88:                                               ; preds = %85, %82, %82
  store i16 3, ptr @yyerrflag, align 2, !tbaa !11
  %89 = icmp ult ptr %5, %1
  br i1 %89, label %609, label %90

90:                                               ; preds = %107, %88
  %91 = phi ptr [ %109, %107 ], [ %8, %88 ]
  %92 = phi ptr [ %108, %107 ], [ %5, %88 ]
  %93 = load i16, ptr %92, align 2, !tbaa !11
  %94 = sext i16 %93 to i64
  %95 = getelementptr inbounds [166 x i16], ptr @yypact, i64 0, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !11
  %97 = add i16 %96, 256
  %98 = icmp ult i16 %97, 706
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = zext i16 %97 to i64
  %101 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !11
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds [166 x i16], ptr @yychk, i64 0, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !11
  %106 = icmp eq i16 %105, 256
  br i1 %106, label %40, label %107

107:                                              ; preds = %99, %90
  %108 = getelementptr inbounds i16, ptr %92, i64 -1
  %109 = getelementptr inbounds %struct.YYSTYPE, ptr %91, i64 -1
  %110 = icmp ult ptr %108, %1
  br i1 %110, label %609, label %90, !llvm.loop !20

111:                                              ; preds = %82
  %112 = load i32, ptr @yychar, align 4, !tbaa !7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %609, label %114

114:                                              ; preds = %111
  store i32 -1, ptr @yychar, align 4, !tbaa !7
  br label %12

115:                                              ; preds = %82, %79
  %.lcssa2 = phi i16 [ %80, %82 ], [ %80, %79 ]
  %116 = sext i16 %.lcssa2 to i32
  %117 = sext i16 %.lcssa2 to i64
  %118 = getelementptr inbounds [98 x i16], ptr @yyr2, i64 0, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !11
  %120 = sext i16 %119 to i64
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i16, ptr %5, i64 %121
  %123 = getelementptr inbounds %struct.YYSTYPE, ptr %8, i64 %121
  %124 = getelementptr inbounds %struct.YYSTYPE, ptr %123, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @yyval, ptr noundef nonnull align 8 dereferenceable(24) %124, i64 24, i1 false), !tbaa.struct !13
  %125 = getelementptr inbounds [98 x i16], ptr @yyr1, i64 0, i64 %117
  %126 = load i16, ptr %125, align 2, !tbaa !11
  %127 = sext i16 %126 to i64
  %128 = getelementptr inbounds [33 x i16], ptr @yypgo, i64 0, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !11
  %130 = load i16, ptr %122, align 2, !tbaa !11
  %131 = add i16 %129, 1
  %132 = add i16 %131, %130
  %133 = icmp sgt i16 %132, 705
  br i1 %133, label %145, label %134

134:                                              ; preds = %115
  %135 = sext i16 %132 to i64
  %136 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !11
  %138 = sext i16 %137 to i64
  %139 = getelementptr inbounds [166 x i16], ptr @yychk, i64 0, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !11
  %141 = sext i16 %140 to i32
  %142 = sext i16 %126 to i32
  %143 = sub nsw i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %134, %115
  %146 = sext i16 %129 to i64
  %147 = getelementptr inbounds [706 x i16], ptr @yyact, i64 0, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !11
  br label %149

149:                                              ; preds = %145, %134
  %150 = phi i16 [ %148, %145 ], [ %137, %134 ]
  switch i32 %116, label %40 [
    i32 1, label %151
    i32 3, label %156
    i32 4, label %157
    i32 5, label %158
    i32 6, label %159
    i32 10, label %160
    i32 17, label %161
    i32 18, label %164
    i32 19, label %165
    i32 20, label %166
    i32 21, label %179
    i32 22, label %182
    i32 23, label %188
    i32 24, label %194
    i32 25, label %195
    i32 26, label %196
    i32 27, label %197
    i32 28, label %198
    i32 29, label %203
    i32 30, label %214
    i32 31, label %228
    i32 32, label %243
    i32 33, label %251
    i32 34, label %257
    i32 35, label %262
    i32 36, label %267
    i32 37, label %273
    i32 38, label %280
    i32 39, label %281
    i32 43, label %282
    i32 44, label %285
    i32 46, label %286
    i32 48, label %293
    i32 49, label %310
    i32 50, label %313
    i32 52, label %314
    i32 53, label %315
    i32 54, label %318
    i32 55, label %321
    i32 56, label %326
    i32 57, label %332
    i32 58, label %339
    i32 59, label %347
    i32 61, label %348
    i32 62, label %355
    i32 63, label %362
    i32 64, label %371
    i32 65, label %380
    i32 67, label %381
    i32 68, label %382
    i32 69, label %387
    i32 70, label %401
    i32 71, label %421
    i32 72, label %426
    i32 73, label %435
    i32 74, label %440
    i32 75, label %451
    i32 76, label %454
    i32 77, label %472
    i32 78, label %478
    i32 79, label %484
    i32 80, label %492
    i32 81, label %498
    i32 82, label %501
    i32 83, label %511
    i32 84, label %524
    i32 85, label %528
    i32 86, label %543
    i32 87, label %562
    i32 88, label %589
    i32 89, label %590
    i32 90, label %591
    i32 91, label %592
    i32 92, label %593
    i32 93, label %596
    i32 94, label %605
    i32 95, label %606
    i32 96, label %607
    i32 97, label %608
  ]

151:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %152 = load i8, ptr @interactive, align 1, !tbaa !16
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %40, label %154

154:                                              ; preds = %151
  %155 = call i32 @puts(ptr nonnull dereferenceable(1) @.str.3)
  call void @welcome() #38
  br label %40

156:                                              ; preds = %149
  call void @run_code() #38
  br label %40

157:                                              ; preds = %149
  call void @run_code() #38
  br label %40

158:                                              ; preds = %149
  store i16 0, ptr @yyerrflag, align 2, !tbaa !11
  call void @init_gen() #38
  br label %40

159:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

160:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !21
  store i32 %163, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

164:                                              ; preds = %149
  call void @warranty(ptr noundef nonnull @.str.4) #38
  br label %40

165:                                              ; preds = %149
  call void @limits() #38
  br label %40

166:                                              ; preds = %149
  %167 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %168 = load i32, ptr %167, align 4, !tbaa !21
  %169 = and i32 %168, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.5) #38
  %172 = load i32, ptr %167, align 4, !tbaa !21
  br label %173

173:                                              ; preds = %171, %166
  %174 = phi i32 [ %172, %171 ], [ %168, %166 ]
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %173
  call void @generate(ptr noundef nonnull @.str.6) #38
  br label %40

178:                                              ; preds = %173
  call void @generate(ptr noundef nonnull @.str.7) #38
  br label %40

179:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  call void @generate(ptr noundef nonnull @.str.8) #38
  %180 = load ptr, ptr %8, align 8, !tbaa !23
  call void @generate(ptr noundef %180) #38
  %181 = load ptr, ptr %8, align 8, !tbaa !23
  call void @free(ptr noundef %181) #38
  br label %40

182:                                              ; preds = %149
  %183 = load i32, ptr @break_label, align 4, !tbaa !7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.9) #38
  br label %40

186:                                              ; preds = %182
  %187 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %183) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

188:                                              ; preds = %149
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.11) #38
  %189 = load i32, ptr @continue_label, align 4, !tbaa !7
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.12) #38
  br label %40

192:                                              ; preds = %188
  %193 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %189) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

194:                                              ; preds = %149
  call void @exit(i32 noundef 0) #39
  unreachable

195:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.13) #38
  br label %40

196:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.14) #38
  br label %40

197:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.15) #38
  br label %40

198:                                              ; preds = %149
  %199 = load i32, ptr @break_label, align 4, !tbaa !7
  %200 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  store i32 %199, ptr %200, align 4, !tbaa !21
  %201 = load i32, ptr @next_label, align 4, !tbaa !7
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr @next_label, align 4, !tbaa !7
  store i32 %201, ptr @break_label, align 4, !tbaa !7
  br label %40

203:                                              ; preds = %149
  %204 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  %205 = load i32, ptr %204, align 4, !tbaa !21
  %206 = icmp sgt i32 %205, 1
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.16) #38
  br label %208

208:                                              ; preds = %207, %203
  %209 = load i32, ptr @next_label, align 4, !tbaa !7
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr @next_label, align 4, !tbaa !7
  store i32 %209, ptr %204, align 4, !tbaa !21
  %211 = icmp slt i32 %209, 0
  %212 = select i1 %211, ptr @.str.17, ptr @.str.18
  %213 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) %212, i32 noundef %209) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

214:                                              ; preds = %149
  %215 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  %216 = load i32, ptr %215, align 4, !tbaa !21
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  call void @generate(ptr noundef nonnull @.str.19) #38
  br label %219

219:                                              ; preds = %218, %214
  %220 = load i32, ptr @next_label, align 4, !tbaa !7
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr @next_label, align 4, !tbaa !7
  store i32 %220, ptr %215, align 4, !tbaa !21
  %222 = load i32, ptr @break_label, align 4, !tbaa !7
  %223 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %220, i32 noundef %222) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %224 = load i32, ptr @continue_label, align 4, !tbaa !7
  store i32 %224, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %225 = load i32, ptr @next_label, align 4, !tbaa !7
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr @next_label, align 4, !tbaa !7
  store i32 %225, ptr @continue_label, align 4, !tbaa !7
  %227 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %225) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

228:                                              ; preds = %149
  %229 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  %230 = load i32, ptr %229, align 4, !tbaa !21
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.21) #38
  %233 = load i32, ptr %229, align 4, !tbaa !21
  br label %234

234:                                              ; preds = %232, %228
  %235 = phi i32 [ %233, %232 ], [ %230, %228 ]
  %236 = icmp slt i32 %235, 0
  %237 = getelementptr %struct.YYSTYPE, ptr %7, i64 -6, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !21
  %239 = getelementptr %struct.YYSTYPE, ptr %7, i64 -3, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !21
  %241 = select i1 %236, ptr @.str.22, ptr @.str.23
  %242 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) %241, i32 noundef %238, i32 noundef %240) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

243:                                              ; preds = %149
  %244 = load i32, ptr @continue_label, align 4, !tbaa !7
  %245 = load i32, ptr @break_label, align 4, !tbaa !7
  %246 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %244, i32 noundef %245) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %247 = getelementptr %struct.YYSTYPE, ptr %7, i64 -11, i32 2
  %248 = load i32, ptr %247, align 4, !tbaa !21
  store i32 %248, ptr @break_label, align 4, !tbaa !7
  %249 = getelementptr %struct.YYSTYPE, ptr %7, i64 -3, i32 2
  %250 = load i32, ptr %249, align 4, !tbaa !21
  store i32 %250, ptr @continue_label, align 4, !tbaa !7
  br label %40

251:                                              ; preds = %149
  %252 = load i32, ptr @if_label, align 4, !tbaa !7
  %253 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  store i32 %252, ptr %253, align 4, !tbaa !21
  %254 = load i32, ptr @next_label, align 4, !tbaa !7
  %255 = add nsw i32 %254, 1
  store i32 %255, ptr @next_label, align 4, !tbaa !7
  store i32 %254, ptr @if_label, align 4, !tbaa !7
  %256 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %254) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

257:                                              ; preds = %149
  %258 = load i32, ptr @if_label, align 4, !tbaa !7
  %259 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %258) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %260 = getelementptr %struct.YYSTYPE, ptr %7, i64 -3, i32 2
  %261 = load i32, ptr %260, align 4, !tbaa !21
  store i32 %261, ptr @if_label, align 4, !tbaa !7
  br label %40

262:                                              ; preds = %149
  %263 = load i32, ptr @next_label, align 4, !tbaa !7
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr @next_label, align 4, !tbaa !7
  %265 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  store i32 %263, ptr %265, align 4, !tbaa !21
  %266 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %263) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

267:                                              ; preds = %149
  %268 = load i32, ptr @break_label, align 4, !tbaa !7
  %269 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  store i32 %268, ptr %269, align 4, !tbaa !21
  %270 = load i32, ptr @next_label, align 4, !tbaa !7
  %271 = add nsw i32 %270, 1
  store i32 %271, ptr @next_label, align 4, !tbaa !7
  store i32 %270, ptr @break_label, align 4, !tbaa !7
  %272 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %270) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

273:                                              ; preds = %149
  %274 = getelementptr %struct.YYSTYPE, ptr %7, i64 -5, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !21
  %276 = load i32, ptr @break_label, align 4, !tbaa !7
  %277 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %275, i32 noundef %276) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %278 = getelementptr %struct.YYSTYPE, ptr %7, i64 -2, i32 2
  %279 = load i32, ptr %278, align 4, !tbaa !21
  store i32 %279, ptr @break_label, align 4, !tbaa !7
  br label %40

280:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

281:                                              ; preds = %149
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.25) #38
  br label %40

282:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.26) #38
  %283 = load ptr, ptr %8, align 8, !tbaa !23
  call void @generate(ptr noundef %283) #38
  %284 = load ptr, ptr %8, align 8, !tbaa !23
  call void @free(ptr noundef %284) #38
  br label %40

285:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.27) #38
  br label %40

286:                                              ; preds = %149
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.28) #38
  %287 = load i32, ptr @next_label, align 4, !tbaa !7
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr @next_label, align 4, !tbaa !7
  %289 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  store i32 %287, ptr %289, align 4, !tbaa !21
  %290 = load i32, ptr @if_label, align 4, !tbaa !7
  %291 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %287, i32 noundef %290) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %292 = load i32, ptr %289, align 4, !tbaa !21
  store i32 %292, ptr @if_label, align 4, !tbaa !7
  br label %40

293:                                              ; preds = %149
  %294 = getelementptr %struct.YYSTYPE, ptr %7, i64 -3, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !24
  %296 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !24
  call void @check_params(ptr noundef %295, ptr noundef %297) #38
  %298 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 -5
  %299 = load ptr, ptr %298, align 8, !tbaa !23
  %300 = call i32 @lookup(ptr noundef %299, i32 noundef 2) #38
  %301 = load ptr, ptr %294, align 8, !tbaa !24
  %302 = call ptr @arg_str(ptr noundef %301, i32 noundef 1) #38
  %303 = load ptr, ptr %296, align 8, !tbaa !24
  %304 = call ptr @arg_str(ptr noundef %303, i32 noundef 1) #38
  %305 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %300, ptr noundef %302, ptr noundef %304) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %306 = load ptr, ptr %294, align 8, !tbaa !24
  call void @free_args(ptr noundef %306) #38
  %307 = load ptr, ptr %296, align 8, !tbaa !24
  call void @free_args(ptr noundef %307) #38
  %308 = load i32, ptr @next_label, align 4, !tbaa !7
  %309 = getelementptr %struct.YYSTYPE, ptr %7, i64 -6, i32 2
  store i32 %308, ptr %309, align 4, !tbaa !21
  store i32 0, ptr @next_label, align 4, !tbaa !7
  br label %40

310:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.31) #38
  %311 = getelementptr %struct.YYSTYPE, ptr %7, i64 -10, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !21
  store i32 %312, ptr @next_label, align 4, !tbaa !7
  br label %40

313:                                              ; preds = %149
  store ptr null, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

314:                                              ; preds = %149
  store ptr null, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

315:                                              ; preds = %149
  %316 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !24
  store ptr %317, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

318:                                              ; preds = %149
  %319 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 3
  %320 = load ptr, ptr %319, align 8, !tbaa !24
  store ptr %320, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

321:                                              ; preds = %149
  %322 = load ptr, ptr %8, align 8, !tbaa !23
  %323 = call i32 @lookup(ptr noundef %322, i32 noundef 0) #38
  %324 = trunc i32 %323 to i8
  %325 = call ptr @nextarg(ptr noundef null, i8 noundef signext %324) #38
  store ptr %325, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

326:                                              ; preds = %149
  %327 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 -1
  %328 = load ptr, ptr %327, align 8, !tbaa !23
  %329 = call i32 @lookup(ptr noundef %328, i32 noundef 1) #38
  %330 = trunc i32 %329 to i8
  %331 = call ptr @nextarg(ptr noundef null, i8 noundef signext %330) #38
  store ptr %331, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

332:                                              ; preds = %149
  %333 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !24
  %335 = load ptr, ptr %8, align 8, !tbaa !23
  %336 = call i32 @lookup(ptr noundef %335, i32 noundef 0) #38
  %337 = trunc i32 %336 to i8
  %338 = call ptr @nextarg(ptr noundef %334, i8 noundef signext %337) #38
  store ptr %338, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

339:                                              ; preds = %149
  %340 = getelementptr %struct.YYSTYPE, ptr %7, i64 -3, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !24
  %342 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 -1
  %343 = load ptr, ptr %342, align 8, !tbaa !23
  %344 = call i32 @lookup(ptr noundef %343, i32 noundef 1) #38
  %345 = trunc i32 %344 to i8
  %346 = call ptr @nextarg(ptr noundef %341, i8 noundef signext %345) #38
  store ptr %346, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

347:                                              ; preds = %149
  store ptr null, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

348:                                              ; preds = %149
  %349 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %350 = load i32, ptr %349, align 4, !tbaa !21
  %351 = icmp sgt i32 %350, 1
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.32) #38
  br label %353

353:                                              ; preds = %352, %348
  %354 = call ptr @nextarg(ptr noundef null, i8 noundef signext 0) #38
  store ptr %354, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

355:                                              ; preds = %149
  %356 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 -1
  %357 = load ptr, ptr %356, align 8, !tbaa !23
  %358 = call i32 @lookup(ptr noundef %357, i32 noundef 1) #38
  %359 = sub nsw i32 0, %358
  %360 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %359) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %361 = call ptr @nextarg(ptr noundef null, i8 noundef signext 1) #38
  store ptr %361, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

362:                                              ; preds = %149
  %363 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %364 = load i32, ptr %363, align 4, !tbaa !21
  %365 = icmp sgt i32 %364, 1
  br i1 %365, label %366, label %367

366:                                              ; preds = %362
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.32) #38
  br label %367

367:                                              ; preds = %366, %362
  %368 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 3
  %369 = load ptr, ptr %368, align 8, !tbaa !24
  %370 = call ptr @nextarg(ptr noundef %369, i8 noundef signext 0) #38
  store ptr %370, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

371:                                              ; preds = %149
  %372 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 -1
  %373 = load ptr, ptr %372, align 8, !tbaa !23
  %374 = call i32 @lookup(ptr noundef %373, i32 noundef 1) #38
  %375 = sub nsw i32 0, %374
  %376 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %375) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %377 = getelementptr %struct.YYSTYPE, ptr %7, i64 -3, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !24
  %379 = call ptr @nextarg(ptr noundef %378, i8 noundef signext 1) #38
  store ptr %379, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 3), align 8, !tbaa !24
  br label %40

380:                                              ; preds = %149
  store i32 -1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.34) #38
  br label %40

381:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  call void @generate(ptr noundef nonnull @.str.35) #38
  br label %40

382:                                              ; preds = %149
  %383 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %384 = load i32, ptr %383, align 4, !tbaa !21
  %385 = icmp sgt i32 %384, 1
  br i1 %385, label %386, label %40

386:                                              ; preds = %382
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.36) #38
  br label %40

387:                                              ; preds = %149
  %388 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 1
  %389 = load i8, ptr %388, align 8, !tbaa !25
  %390 = icmp eq i8 %389, 61
  br i1 %390, label %40, label %391

391:                                              ; preds = %387
  %392 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  %393 = load i32, ptr %392, align 4, !tbaa !21
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = sub nsw i32 0, %393
  %397 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %396) #38
  br label %400

398:                                              ; preds = %391
  %399 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %393) #38
  br label %400

400:                                              ; preds = %398, %395
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

401:                                              ; preds = %149
  %402 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %403 = load i32, ptr %402, align 4, !tbaa !21
  %404 = icmp sgt i32 %403, 1
  br i1 %404, label %405, label %406

405:                                              ; preds = %401
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.39) #38
  br label %406

406:                                              ; preds = %405, %401
  %407 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 1
  %408 = load i8, ptr %407, align 8, !tbaa !25
  %409 = icmp eq i8 %408, 61
  br i1 %409, label %411, label %410

410:                                              ; preds = %406
  store i8 %408, ptr @genstr, align 16
  store i8 0, ptr getelementptr inbounds ([80 x i8], ptr @genstr, i64 0, i64 1), align 1
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %411

411:                                              ; preds = %410, %406
  %412 = getelementptr %struct.YYSTYPE, ptr %7, i64 -2, i32 2
  %413 = load i32, ptr %412, align 4, !tbaa !21
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %411
  %416 = sub nsw i32 0, %413
  %417 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %416) #38
  br label %420

418:                                              ; preds = %411
  %419 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %413) #38
  br label %420

420:                                              ; preds = %418, %415
  call void @generate(ptr noundef nonnull @genstr) #38
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

421:                                              ; preds = %149
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.43) #38
  %422 = load i32, ptr @next_label, align 4, !tbaa !7
  %423 = add nsw i32 %422, 1
  store i32 %423, ptr @next_label, align 4, !tbaa !7
  %424 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  store i32 %422, ptr %424, align 4, !tbaa !21
  %425 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %422) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

426:                                              ; preds = %149
  %427 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 2
  %428 = load i32, ptr %427, align 4, !tbaa !21
  %429 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %428, i32 noundef %428) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %430 = getelementptr %struct.YYSTYPE, ptr %7, i64 -2, i32 2
  %431 = load i32, ptr %430, align 4, !tbaa !21
  %432 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %433 = load i32, ptr %432, align 4, !tbaa !21
  %434 = or i32 %433, %431
  store i32 %434, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

435:                                              ; preds = %149
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.46) #38
  %436 = load i32, ptr @next_label, align 4, !tbaa !7
  %437 = add nsw i32 %436, 1
  store i32 %437, ptr @next_label, align 4, !tbaa !7
  %438 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  store i32 %436, ptr %438, align 4, !tbaa !21
  %439 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef %436) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

440:                                              ; preds = %149
  %441 = load i32, ptr @next_label, align 4, !tbaa !7
  %442 = add nsw i32 %441, 1
  store i32 %442, ptr @next_label, align 4, !tbaa !7
  %443 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 2
  %444 = load i32, ptr %443, align 4, !tbaa !21
  %445 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %444, i32 noundef %441, i32 noundef %444, i32 noundef %441) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %446 = getelementptr %struct.YYSTYPE, ptr %7, i64 -2, i32 2
  %447 = load i32, ptr %446, align 4, !tbaa !21
  %448 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %449 = load i32, ptr %448, align 4, !tbaa !21
  %450 = or i32 %449, %447
  store i32 %450, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

451:                                              ; preds = %149
  %452 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %453 = load i32, ptr %452, align 4, !tbaa !21
  store i32 %453, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.49) #38
  call void @generate(ptr noundef nonnull @.str.50) #38
  br label %40

454:                                              ; preds = %149
  store i32 3, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %455 = load ptr, ptr %7, align 8, !tbaa !23
  %456 = load i8, ptr %455, align 1, !tbaa !16
  %457 = sext i8 %456 to i32
  switch i32 %457, label %40 [
    i32 61, label %458
    i32 33, label %459
    i32 60, label %460
    i32 62, label %466
  ]

458:                                              ; preds = %454
  call void @generate(ptr noundef nonnull @.str.51) #38
  br label %40

459:                                              ; preds = %454
  call void @generate(ptr noundef nonnull @.str.52) #38
  br label %40

460:                                              ; preds = %454
  %461 = getelementptr inbounds i8, ptr %455, i64 1
  %462 = load i8, ptr %461, align 1, !tbaa !16
  %463 = icmp eq i8 %462, 61
  br i1 %463, label %464, label %465

464:                                              ; preds = %460
  call void @generate(ptr noundef nonnull @.str.53) #38
  br label %40

465:                                              ; preds = %460
  call void @generate(ptr noundef nonnull @.str.54) #38
  br label %40

466:                                              ; preds = %454
  %467 = getelementptr inbounds i8, ptr %455, i64 1
  %468 = load i8, ptr %467, align 1, !tbaa !16
  %469 = icmp eq i8 %468, 61
  br i1 %469, label %470, label %471

470:                                              ; preds = %466
  call void @generate(ptr noundef nonnull @.str.55) #38
  br label %40

471:                                              ; preds = %466
  call void @generate(ptr noundef nonnull @.str.56) #38
  br label %40

472:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.57) #38
  %473 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 2
  %474 = load i32, ptr %473, align 4, !tbaa !21
  %475 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %476 = load i32, ptr %475, align 4, !tbaa !21
  %477 = or i32 %476, %474
  store i32 %477, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

478:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.58) #38
  %479 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 2
  %480 = load i32, ptr %479, align 4, !tbaa !21
  %481 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %482 = load i32, ptr %481, align 4, !tbaa !21
  %483 = or i32 %482, %480
  store i32 %483, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

484:                                              ; preds = %149
  %485 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 1
  %486 = load i8, ptr %485, align 8, !tbaa !25
  store i8 %486, ptr @genstr, align 16, !tbaa !16
  store i8 0, ptr getelementptr inbounds ([80 x i8], ptr @genstr, i64 0, i64 1), align 1, !tbaa !16
  call void @generate(ptr noundef nonnull @genstr) #38
  %487 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 2
  %488 = load i32, ptr %487, align 4, !tbaa !21
  %489 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %490 = load i32, ptr %489, align 4, !tbaa !21
  %491 = or i32 %490, %488
  store i32 %491, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

492:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.59) #38
  %493 = getelementptr %struct.YYSTYPE, ptr %7, i64 -1, i32 2
  %494 = load i32, ptr %493, align 4, !tbaa !21
  %495 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %496 = load i32, ptr %495, align 4, !tbaa !21
  %497 = or i32 %496, %494
  store i32 %497, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

498:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.60) #38
  %499 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %500 = load i32, ptr %499, align 4, !tbaa !21
  store i32 %500, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

501:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %502 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %503 = load i32, ptr %502, align 4, !tbaa !21
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %508

505:                                              ; preds = %501
  %506 = sub nsw i32 0, %503
  %507 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %506) #38
  br label %510

508:                                              ; preds = %501
  %509 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %503) #38
  br label %510

510:                                              ; preds = %508, %505
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

511:                                              ; preds = %149
  %512 = load ptr, ptr %8, align 8, !tbaa !23
  %513 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %512) #40
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %514 = and i64 %513, 4294967295
  %515 = icmp eq i64 %514, 1
  br i1 %515, label %516, label %519

516:                                              ; preds = %511
  %517 = load i8, ptr %512, align 1, !tbaa !16
  switch i8 %517, label %519 [
    i8 48, label %521
    i8 49, label %518
  ]

518:                                              ; preds = %516
  br label %521

519:                                              ; preds = %516, %511
  call void @generate(ptr noundef nonnull @.str.62) #38
  %520 = load ptr, ptr %8, align 8, !tbaa !23
  call void @generate(ptr noundef %520) #38
  br label %521

521:                                              ; preds = %519, %518, %516
  %522 = phi ptr [ @.str.19, %518 ], [ @.str.63, %519 ], [ @.str.35, %516 ]
  call void @generate(ptr noundef nonnull %522) #38
  %523 = load ptr, ptr %8, align 8, !tbaa !23
  call void @free(ptr noundef %523) #38
  br label %40

524:                                              ; preds = %149
  %525 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  %526 = load i32, ptr %525, align 4, !tbaa !21
  %527 = or i32 %526, 1
  store i32 %527, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

528:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %529 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 3
  %530 = load ptr, ptr %529, align 8, !tbaa !24
  %531 = icmp eq ptr %530, null
  %532 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 -2
  %533 = load ptr, ptr %532, align 8, !tbaa !23
  %534 = call i32 @lookup(ptr noundef %533, i32 noundef 2) #38
  br i1 %531, label %540, label %535

535:                                              ; preds = %528
  %536 = load ptr, ptr %529, align 8, !tbaa !24
  %537 = call ptr @arg_str(ptr noundef %536, i32 noundef 0) #38
  %538 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.64, i32 noundef %534, ptr noundef %537) #38
  %539 = load ptr, ptr %529, align 8, !tbaa !24
  call void @free_args(ptr noundef %539) #38
  br label %542

540:                                              ; preds = %528
  %541 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %534) #38
  br label %542

542:                                              ; preds = %540, %535
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

543:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %544 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 2
  %545 = load i32, ptr %544, align 4, !tbaa !21
  %546 = icmp slt i32 %545, 0
  %547 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 1
  %548 = load i8, ptr %547, align 8, !tbaa !25
  %549 = icmp eq i8 %548, 43
  br i1 %546, label %550, label %556

550:                                              ; preds = %543
  %551 = sub nsw i32 0, %545
  br i1 %549, label %552, label %554

552:                                              ; preds = %550
  %553 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %551, i32 noundef %551) #38
  br label %561

554:                                              ; preds = %550
  %555 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.67, i32 noundef %551, i32 noundef %551) #38
  br label %561

556:                                              ; preds = %543
  br i1 %549, label %557, label %559

557:                                              ; preds = %556
  %558 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.68, i32 noundef %545, i32 noundef %545) #38
  br label %561

559:                                              ; preds = %556
  %560 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.69, i32 noundef %545, i32 noundef %545) #38
  br label %561

561:                                              ; preds = %559, %557, %554, %552
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

562:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  %563 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  %564 = load i32, ptr %563, align 4, !tbaa !21
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %566, label %578

566:                                              ; preds = %562
  %567 = sub nsw i32 0, %564
  %568 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %567) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %569 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 1
  %570 = load i8, ptr %569, align 8, !tbaa !25
  %571 = icmp eq i8 %570, 43
  %572 = load i32, ptr %563, align 4, !tbaa !21
  %573 = sub nsw i32 0, %572
  br i1 %571, label %574, label %576

574:                                              ; preds = %566
  %575 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef %573) #38
  br label %588

576:                                              ; preds = %566
  %577 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %573) #38
  br label %588

578:                                              ; preds = %562
  %579 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %564) #38
  call void @generate(ptr noundef nonnull @genstr) #38
  %580 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 1, i32 1
  %581 = load i8, ptr %580, align 8, !tbaa !25
  %582 = icmp eq i8 %581, 43
  %583 = load i32, ptr %563, align 4, !tbaa !21
  br i1 %582, label %584, label %586

584:                                              ; preds = %578
  %585 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %583) #38
  br label %588

586:                                              ; preds = %578
  %587 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @genstr, ptr noundef nonnull dereferenceable(1) @.str.74, i32 noundef %583) #38
  br label %588

588:                                              ; preds = %586, %584, %576, %574
  call void @generate(ptr noundef nonnull @genstr) #38
  br label %40

589:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.75) #38
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

590:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.76) #38
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

591:                                              ; preds = %149
  call void @generate(ptr noundef nonnull @.str.77) #38
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

592:                                              ; preds = %149
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.78) #38
  call void @generate(ptr noundef nonnull @.str.79) #38
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

593:                                              ; preds = %149
  %594 = load ptr, ptr %8, align 8, !tbaa !23
  %595 = call i32 @lookup(ptr noundef %594, i32 noundef 0) #38
  store i32 %595, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

596:                                              ; preds = %149
  %597 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 0, i32 2
  %598 = load i32, ptr %597, align 4, !tbaa !21
  %599 = icmp sgt i32 %598, 1
  br i1 %599, label %600, label %601

600:                                              ; preds = %596
  call void (ptr, ...) @warn(ptr noundef nonnull @.str.80) #38
  br label %601

601:                                              ; preds = %600, %596
  %602 = getelementptr inbounds %struct.YYSTYPE, ptr %7, i64 -2
  %603 = load ptr, ptr %602, align 8, !tbaa !23
  %604 = call i32 @lookup(ptr noundef %603, i32 noundef 1) #38
  store i32 %604, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

605:                                              ; preds = %149
  store i32 0, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

606:                                              ; preds = %149
  store i32 1, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

607:                                              ; preds = %149
  store i32 2, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

608:                                              ; preds = %149
  store i32 3, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yyval, i64 0, i32 2), align 4, !tbaa !21
  br label %40

609:                                              ; preds = %111, %107, %88, %75, %3
  %610 = phi i32 [ 1, %3 ], [ 1, %107 ], [ 1, %111 ], [ 0, %75 ], [ 1, %88 ]
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %1) #37
  ret i32 %610
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal void @stop_execution(i32 %0) #0 {
  store i32 1, ptr @had_sigint, align 4, !tbaa !7
  %2 = tail call i32 @putchar(i32 10)
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1.1) #38
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal zeroext i8 @byte(ptr nocapture noundef %0) #9 {
  %2 = getelementptr inbounds %struct.program_counter, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !26
  %4 = ashr i32 %3, 10
  %5 = add nsw i32 %3, 1
  store i32 %5, ptr %2, align 4, !tbaa !26
  %6 = srem i32 %3, 1024
  %7 = load ptr, ptr @functions, align 8, !tbaa !14
  %8 = load i32, ptr %0, align 4, !tbaa !28
  %9 = sext i32 %8 to i64
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds %struct.bc_function, ptr %7, i64 %9, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !16
  ret i8 %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @execute() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #37
  store i32 0, ptr @pc, align 4, !tbaa !28
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  store i8 0, ptr @runtime_error, align 1, !tbaa !16
  call void @init_num(ptr noundef nonnull %1) #38
  %2 = load i8, ptr @interactive, align 1, !tbaa !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @stop_execution) #38
  store i32 0, ptr @had_sigint, align 4, !tbaa !7
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %8 = load ptr, ptr @functions, align 8, !tbaa !14
  %9 = load i32, ptr @pc, align 4, !tbaa !28
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.bc_function, ptr %8, i64 %10, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !29
  %13 = icmp slt i32 %7, %12
  %14 = load i8, ptr @runtime_error, align 1
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %806

17:                                               ; preds = %795, %6
  %18 = phi i64 [ %799, %795 ], [ %10, %6 ]
  %19 = phi i32 [ %798, %795 ], [ %9, %6 ]
  %20 = phi ptr [ %797, %795 ], [ %8, %6 ]
  %21 = phi i32 [ %796, %795 ], [ %7, %6 ]
  %22 = ashr i32 %21, 10
  %23 = add nsw i32 %21, 1
  store i32 %23, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %24 = srem i32 %21, 1024
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !16
  %31 = sext i8 %30 to i32
  switch i32 %31, label %794 [
    i32 65, label %32
    i32 66, label %56
    i32 90, label %56
    i32 74, label %65
    i32 67, label %122
    i32 68, label %169
    i32 75, label %172
    i32 76, label %180
    i32 77, label %204
    i32 79, label %227
    i32 82, label %278
    i32 83, label %292
    i32 84, label %316
    i32 87, label %327
    i32 80, label %327
    i32 99, label %339
    i32 100, label %380
    i32 104, label %404
    i32 105, label %405
    i32 108, label %429
    i32 110, label %453
    i32 112, label %457
    i32 115, label %458
    i32 119, label %482
    i32 120, label %507
    i32 48, label %519
    i32 49, label %521
    i32 33, label %523
    i32 38, label %534
    i32 124, label %560
    i32 43, label %586
    i32 45, label %596
    i32 42, label %606
    i32 47, label %617
    i32 37, label %632
    i32 94, label %650
    i32 61, label %674
    i32 35, label %694
    i32 60, label %714
    i32 123, label %734
    i32 62, label %754
    i32 125, label %774
  ]

32:                                               ; preds = %17
  %33 = ashr i32 %23, 10
  %34 = add nsw i32 %21, 2
  store i32 %34, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %35 = srem i32 %23, 1024
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  %39 = sext i32 %35 to i64
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !16
  %42 = icmp sgt i8 %41, -1
  br i1 %42, label %53, label %43

43:                                               ; preds = %32
  %44 = ashr i32 %34, 10
  %45 = add nsw i32 %21, 3
  store i32 %45, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %46 = srem i32 %34, 1024
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !16
  br label %53

53:                                               ; preds = %43, %32
  %54 = phi i8 [ %52, %43 ], [ %41, %32 ]
  %55 = zext i8 %54 to i32
  call void @incr_array(i32 noundef %55) #38
  br label %795

56:                                               ; preds = %17, %17
  %57 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %58 = load ptr, ptr %57, align 8, !tbaa !31
  %59 = call signext i8 @is_zero(ptr noundef %58) #38
  %60 = icmp eq i8 %59, 0
  %61 = zext i1 %60 to i8
  store i8 %61, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %62 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %63 = load ptr, ptr @functions, align 8, !tbaa !14
  %64 = load i32, ptr @pc, align 4, !tbaa !28
  br label %65

65:                                               ; preds = %56, %17
  %66 = phi i32 [ %19, %17 ], [ %64, %56 ]
  %67 = phi ptr [ %20, %17 ], [ %63, %56 ]
  %68 = phi i32 [ %23, %17 ], [ %62, %56 ]
  %69 = ashr i32 %68, 10
  %70 = add nsw i32 %68, 1
  store i32 %70, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %71 = srem i32 %68, 1024
  %72 = sext i32 %66 to i64
  %73 = sext i32 %69 to i64
  %74 = getelementptr inbounds %struct.bc_function, ptr %67, i64 %72, i32 1, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  %76 = sext i32 %71 to i64
  %77 = getelementptr inbounds i8, ptr %75, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !16
  %79 = zext i8 %78 to i32
  %80 = ashr i32 %70, 10
  %81 = add nsw i32 %68, 2
  store i32 %81, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %82 = srem i32 %70, 1024
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds %struct.bc_function, ptr %67, i64 %72, i32 1, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !14
  %86 = sext i32 %82 to i64
  %87 = getelementptr inbounds i8, ptr %85, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !16
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or i32 %90, %79
  %92 = icmp eq i8 %30, 74
  br i1 %92, label %102, label %93

93:                                               ; preds = %65
  %94 = icmp eq i8 %30, 66
  %95 = load i8, ptr @c_code, align 1
  %96 = icmp ne i8 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  %98 = xor i1 %97, true
  %99 = icmp ne i8 %30, 90
  %100 = select i1 %99, i1 true, i1 %96
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %795, label %102

102:                                              ; preds = %93, %65
  %103 = getelementptr inbounds %struct.bc_function, ptr %67, i64 %72, i32 3
  %104 = and i32 %79, 63
  %105 = load ptr, ptr %103, align 8, !tbaa !14
  %106 = icmp ult i32 %91, 64
  br i1 %106, label %116, label %107

107:                                              ; preds = %102
  %108 = lshr i32 %91, 6
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi ptr [ %114, %109 ], [ %105, %107 ]
  %111 = phi i32 [ %112, %109 ], [ %108, %107 ]
  %112 = add nsw i32 %111, -1
  %113 = getelementptr inbounds %struct.bc_label_group, ptr %110, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = icmp ugt i32 %111, 1
  br i1 %115, label %109, label %116, !llvm.loop !33

116:                                              ; preds = %109, %102
  %117 = phi ptr [ %105, %102 ], [ %114, %109 ]
  %118 = zext i32 %104 to i64
  %119 = getelementptr inbounds [64 x i64], ptr %117, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !34
  %121 = trunc i64 %120 to i32
  store i32 %121, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  br label %795

122:                                              ; preds = %17
  %123 = ashr i32 %23, 10
  %124 = add nsw i32 %21, 2
  store i32 %124, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %125 = srem i32 %23, 1024
  %126 = sext i32 %123 to i64
  %127 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !14
  %129 = sext i32 %125 to i64
  %130 = getelementptr inbounds i8, ptr %128, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !16
  %132 = icmp sgt i8 %131, -1
  br i1 %132, label %143, label %133

133:                                              ; preds = %122
  %134 = ashr i32 %124, 10
  %135 = add nsw i32 %21, 3
  store i32 %135, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %136 = srem i32 %124, 1024
  %137 = sext i32 %134 to i64
  %138 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !14
  %140 = sext i32 %136 to i64
  %141 = getelementptr inbounds i8, ptr %139, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !16
  br label %143

143:                                              ; preds = %133, %122
  %144 = phi i8 [ %142, %133 ], [ %131, %122 ]
  %145 = zext i8 %144 to i32
  %146 = zext i8 %144 to i64
  %147 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %146
  %148 = load i8, ptr %147, align 8, !tbaa !36
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load ptr, ptr @f_names, align 8, !tbaa !14
  %152 = getelementptr inbounds ptr, ptr %151, i64 %146
  %153 = load ptr, ptr %152, align 8, !tbaa !14
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.2, ptr noundef %153) #38
  br label %795

154:                                              ; preds = %143
  call void @process_params(ptr noundef nonnull @pc, i32 noundef %145) #38
  %155 = load ptr, ptr @functions, align 8, !tbaa !14
  %156 = getelementptr inbounds %struct.bc_function, ptr %155, i64 %146, i32 5
  %157 = load ptr, ptr %156, align 8, !tbaa !14
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %159, %154
  %160 = phi ptr [ %163, %159 ], [ %157, %154 ]
  %161 = load i32, ptr %160, align 8, !tbaa !37
  call void @auto_var(i32 noundef %161) #38
  %162 = getelementptr inbounds %struct.arg_list, ptr %160, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !14
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %159, !llvm.loop !39

165:                                              ; preds = %159, %154
  %166 = load i32, ptr @pc, align 4, !tbaa !28
  call void @fpush(i32 noundef %166) #38
  %167 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  call void @fpush(i32 noundef %167) #38
  %168 = load i32, ptr @i_base, align 4, !tbaa !7
  call void @fpush(i32 noundef %168) #38
  store i32 %145, ptr @pc, align 4, !tbaa !28
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  br label %795

169:                                              ; preds = %17
  %170 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %171 = load ptr, ptr %170, align 8, !tbaa !31
  call void @push_copy(ptr noundef %171) #38
  br label %795

172:                                              ; preds = %17
  %173 = icmp eq i32 %19, 0
  %174 = load ptr, ptr @fn_stack, align 8
  %175 = select i1 %173, ptr @i_base, ptr %174
  %176 = load i32, ptr %175, align 4, !tbaa !7
  %177 = icmp eq i32 %176, 10
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  call void @push_b10_const(ptr noundef nonnull @pc) #41
  br label %795

179:                                              ; preds = %172
  call void @push_constant(ptr noundef nonnull @prog_char, i32 noundef %176) #41
  br label %795

180:                                              ; preds = %17
  %181 = ashr i32 %23, 10
  %182 = add nsw i32 %21, 2
  store i32 %182, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %183 = srem i32 %23, 1024
  %184 = sext i32 %181 to i64
  %185 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !14
  %187 = sext i32 %183 to i64
  %188 = getelementptr inbounds i8, ptr %186, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !16
  %190 = icmp sgt i8 %189, -1
  br i1 %190, label %201, label %191

191:                                              ; preds = %180
  %192 = ashr i32 %182, 10
  %193 = add nsw i32 %21, 3
  store i32 %193, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %194 = srem i32 %182, 1024
  %195 = sext i32 %192 to i64
  %196 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !14
  %198 = sext i32 %194 to i64
  %199 = getelementptr inbounds i8, ptr %197, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !16
  br label %201

201:                                              ; preds = %191, %180
  %202 = phi i8 [ %200, %191 ], [ %189, %180 ]
  %203 = zext i8 %202 to i32
  call void @load_array(i32 noundef %203) #38
  br label %795

204:                                              ; preds = %17
  %205 = ashr i32 %23, 10
  %206 = add nsw i32 %21, 2
  store i32 %206, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %207 = srem i32 %23, 1024
  %208 = sext i32 %205 to i64
  %209 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !14
  %211 = sext i32 %207 to i64
  %212 = getelementptr inbounds i8, ptr %210, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !16
  %214 = icmp sgt i8 %213, -1
  br i1 %214, label %225, label %215

215:                                              ; preds = %204
  %216 = ashr i32 %206, 10
  %217 = add nsw i32 %21, 3
  store i32 %217, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %218 = srem i32 %206, 1024
  %219 = sext i32 %216 to i64
  %220 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !14
  %222 = sext i32 %218 to i64
  %223 = getelementptr inbounds i8, ptr %221, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !16
  br label %225

225:                                              ; preds = %215, %204
  %226 = phi i8 [ %224, %215 ], [ %213, %204 ]
  call void @decr_array(i8 noundef signext %226) #38
  br label %795

227:                                              ; preds = %268, %17
  %228 = phi i32 [ %271, %268 ], [ %19, %17 ]
  %229 = phi ptr [ %270, %268 ], [ %20, %17 ]
  %230 = phi i32 [ %269, %268 ], [ %23, %17 ]
  %231 = ashr i32 %230, 10
  %232 = add nsw i32 %230, 1
  store i32 %232, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %233 = srem i32 %230, 1024
  %234 = sext i32 %228 to i64
  %235 = sext i32 %231 to i64
  %236 = getelementptr inbounds %struct.bc_function, ptr %229, i64 %234, i32 1, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !14
  %238 = sext i32 %233 to i64
  %239 = getelementptr inbounds i8, ptr %237, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !16
  switch i8 %240, label %266 [
    i8 34, label %272
    i8 92, label %241
  ]

241:                                              ; preds = %227
  %242 = ashr i32 %232, 10
  %243 = add nsw i32 %230, 2
  store i32 %243, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %244 = srem i32 %232, 1024
  %245 = sext i32 %242 to i64
  %246 = getelementptr inbounds %struct.bc_function, ptr %229, i64 %234, i32 1, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !14
  %248 = sext i32 %244 to i64
  %249 = getelementptr inbounds i8, ptr %247, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !16
  %251 = icmp eq i8 %250, 34
  br i1 %251, label %272, label %252

252:                                              ; preds = %241
  %253 = sext i8 %250 to i32
  %254 = add nsw i32 %253, -92
  %255 = call i32 @llvm.fshl.i32(i32 %253, i32 %254, i32 31)
  %256 = icmp ult i32 %255, 13
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = trunc i32 %255 to i16
  %259 = lshr i16 6697, %258
  %260 = and i16 %259, 1
  %261 = icmp eq i16 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %257
  %263 = sext i32 %255 to i64
  %264 = getelementptr inbounds [13 x i8], ptr @switch.table.execute, i64 0, i64 %263
  %265 = load i8, ptr %264, align 1
  br label %266

266:                                              ; preds = %262, %227
  %267 = phi i8 [ %240, %227 ], [ %265, %262 ]
  call void @out_char(i8 noundef signext %267) #38
  br label %268

268:                                              ; preds = %266, %257, %252
  %269 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %270 = load ptr, ptr @functions, align 8, !tbaa !14
  %271 = load i32, ptr @pc, align 4, !tbaa !28
  br label %227, !llvm.loop !40

272:                                              ; preds = %241, %227
  %273 = load i8, ptr @interactive, align 1, !tbaa !16
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %795, label %275

275:                                              ; preds = %272
  %276 = load ptr, ptr @stdout, align 8, !tbaa !14
  %277 = call i32 @fflush(ptr noundef %276) #41
  br label %795

278:                                              ; preds = %17
  %279 = icmp eq i32 %19, 0
  br i1 %279, label %291, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 5
  %282 = load ptr, ptr %281, align 8, !tbaa !41
  call void @pop_vars(ptr noundef %282) #38
  %283 = load ptr, ptr @functions, align 8, !tbaa !14
  %284 = load i32, ptr @pc, align 4, !tbaa !28
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.bc_function, ptr %283, i64 %285, i32 4
  %287 = load ptr, ptr %286, align 8, !tbaa !42
  call void @pop_vars(ptr noundef %287) #38
  %288 = call i32 @fpop() #38
  %289 = call i32 @fpop() #38
  store i32 %289, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %290 = call i32 @fpop() #38
  store i32 %290, ptr @pc, align 4, !tbaa !28
  br label %795

291:                                              ; preds = %278
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.3.2) #38
  br label %795

292:                                              ; preds = %17
  %293 = ashr i32 %23, 10
  %294 = add nsw i32 %21, 2
  store i32 %294, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %295 = srem i32 %23, 1024
  %296 = sext i32 %293 to i64
  %297 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !14
  %299 = sext i32 %295 to i64
  %300 = getelementptr inbounds i8, ptr %298, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !16
  %302 = icmp sgt i8 %301, -1
  br i1 %302, label %313, label %303

303:                                              ; preds = %292
  %304 = ashr i32 %294, 10
  %305 = add nsw i32 %21, 3
  store i32 %305, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %306 = srem i32 %294, 1024
  %307 = sext i32 %304 to i64
  %308 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !14
  %310 = sext i32 %306 to i64
  %311 = getelementptr inbounds i8, ptr %309, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !16
  br label %313

313:                                              ; preds = %303, %292
  %314 = phi i8 [ %312, %303 ], [ %301, %292 ]
  %315 = zext i8 %314 to i32
  call void @store_array(i32 noundef %315) #38
  br label %795

316:                                              ; preds = %17
  %317 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %318 = load ptr, ptr %317, align 8, !tbaa !31
  %319 = call signext i8 @is_zero(ptr noundef %318) #38
  store i8 %319, ptr @c_code, align 1, !tbaa !16
  %320 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %320) #38
  %321 = icmp eq i8 %319, 0
  %322 = load ptr, ptr @_zero_, align 8
  %323 = load ptr, ptr @_one_, align 8
  %324 = select i1 %321, ptr %322, ptr %323
  %325 = call ptr @copy_num(ptr noundef %324) #38
  %326 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %325, ptr %326, align 8, !tbaa !31
  br label %795

327:                                              ; preds = %17, %17
  %328 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %329 = load ptr, ptr %328, align 8, !tbaa !31
  %330 = load i32, ptr @o_base, align 4, !tbaa !7
  call void @out_num(ptr noundef %329, i32 noundef %330, ptr noundef nonnull @out_char) #38
  %331 = icmp eq i8 %30, 87
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  call void @out_char(i8 noundef signext 10) #38
  br label %333

333:                                              ; preds = %332, %327
  call void @store_var(i32 noundef 3) #38
  %334 = load i8, ptr @interactive, align 1, !tbaa !16
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %795, label %336

336:                                              ; preds = %333
  %337 = load ptr, ptr @stdout, align 8, !tbaa !14
  %338 = call i32 @fflush(ptr noundef %337) #41
  br label %795

339:                                              ; preds = %17
  %340 = ashr i32 %23, 10
  %341 = add nsw i32 %21, 2
  store i32 %341, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %342 = srem i32 %23, 1024
  %343 = sext i32 %340 to i64
  %344 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !14
  %346 = sext i32 %342 to i64
  %347 = getelementptr inbounds i8, ptr %345, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !16
  switch i8 %348, label %795 [
    i8 76, label %349
    i8 83, label %367
    i8 82, label %372
    i8 73, label %378
  ]

349:                                              ; preds = %339
  %350 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %351 = load ptr, ptr %350, align 8, !tbaa !31
  %352 = getelementptr inbounds %struct.bc_struct, ptr %351, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !43
  %354 = icmp eq i32 %353, 1
  %355 = getelementptr inbounds %struct.bc_struct, ptr %351, i64 0, i32 2
  %356 = load i32, ptr %355, align 4, !tbaa !45
  br i1 %354, label %357, label %364

357:                                              ; preds = %349
  %358 = icmp eq i32 %356, 0
  br i1 %358, label %364, label %359

359:                                              ; preds = %357
  %360 = getelementptr inbounds %struct.bc_struct, ptr %351, i64 0, i32 4
  %361 = load i8, ptr %360, align 4, !tbaa !16
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  call void @int2num(ptr noundef nonnull %350, i32 noundef %356) #38
  br label %795

364:                                              ; preds = %359, %357, %349
  %365 = phi i32 [ %356, %359 ], [ 0, %357 ], [ %356, %349 ]
  %366 = add nsw i32 %365, %353
  call void @int2num(ptr noundef nonnull %350, i32 noundef %366) #38
  br label %795

367:                                              ; preds = %339
  %368 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %369 = load ptr, ptr %368, align 8, !tbaa !31
  %370 = getelementptr inbounds %struct.bc_struct, ptr %369, i64 0, i32 2
  %371 = load i32, ptr %370, align 4, !tbaa !45
  call void @int2num(ptr noundef nonnull %368, i32 noundef %371) #38
  br label %795

372:                                              ; preds = %339
  %373 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %374 = load i32, ptr @scale, align 4, !tbaa !7
  %375 = call i32 @bc_sqrt(ptr noundef %373, i32 noundef %374) #38
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %795

377:                                              ; preds = %372
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.4.3) #38
  br label %795

378:                                              ; preds = %339
  %379 = load i32, ptr @i_base, align 4, !tbaa !7
  call void @push_constant(ptr noundef nonnull @input_char, i32 noundef %379) #41
  br label %795

380:                                              ; preds = %17
  %381 = ashr i32 %23, 10
  %382 = add nsw i32 %21, 2
  store i32 %382, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %383 = srem i32 %23, 1024
  %384 = sext i32 %381 to i64
  %385 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %384
  %386 = load ptr, ptr %385, align 8, !tbaa !14
  %387 = sext i32 %383 to i64
  %388 = getelementptr inbounds i8, ptr %386, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !16
  %390 = icmp sgt i8 %389, -1
  br i1 %390, label %401, label %391

391:                                              ; preds = %380
  %392 = ashr i32 %382, 10
  %393 = add nsw i32 %21, 3
  store i32 %393, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %394 = srem i32 %382, 1024
  %395 = sext i32 %392 to i64
  %396 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !14
  %398 = sext i32 %394 to i64
  %399 = getelementptr inbounds i8, ptr %397, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !16
  br label %401

401:                                              ; preds = %391, %380
  %402 = phi i8 [ %400, %391 ], [ %389, %380 ]
  %403 = zext i8 %402 to i32
  call void @decr_var(i32 noundef %403) #38
  br label %795

404:                                              ; preds = %17
  call void @exit(i32 noundef 0) #39
  unreachable

405:                                              ; preds = %17
  %406 = ashr i32 %23, 10
  %407 = add nsw i32 %21, 2
  store i32 %407, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %408 = srem i32 %23, 1024
  %409 = sext i32 %406 to i64
  %410 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !14
  %412 = sext i32 %408 to i64
  %413 = getelementptr inbounds i8, ptr %411, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !16
  %415 = icmp sgt i8 %414, -1
  br i1 %415, label %426, label %416

416:                                              ; preds = %405
  %417 = ashr i32 %407, 10
  %418 = add nsw i32 %21, 3
  store i32 %418, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %419 = srem i32 %407, 1024
  %420 = sext i32 %417 to i64
  %421 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %420
  %422 = load ptr, ptr %421, align 8, !tbaa !14
  %423 = sext i32 %419 to i64
  %424 = getelementptr inbounds i8, ptr %422, i64 %423
  %425 = load i8, ptr %424, align 1, !tbaa !16
  br label %426

426:                                              ; preds = %416, %405
  %427 = phi i8 [ %425, %416 ], [ %414, %405 ]
  %428 = zext i8 %427 to i32
  call void @incr_var(i32 noundef %428) #38
  br label %795

429:                                              ; preds = %17
  %430 = ashr i32 %23, 10
  %431 = add nsw i32 %21, 2
  store i32 %431, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %432 = srem i32 %23, 1024
  %433 = sext i32 %430 to i64
  %434 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !14
  %436 = sext i32 %432 to i64
  %437 = getelementptr inbounds i8, ptr %435, i64 %436
  %438 = load i8, ptr %437, align 1, !tbaa !16
  %439 = icmp sgt i8 %438, -1
  br i1 %439, label %450, label %440

440:                                              ; preds = %429
  %441 = ashr i32 %431, 10
  %442 = add nsw i32 %21, 3
  store i32 %442, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %443 = srem i32 %431, 1024
  %444 = sext i32 %441 to i64
  %445 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %444
  %446 = load ptr, ptr %445, align 8, !tbaa !14
  %447 = sext i32 %443 to i64
  %448 = getelementptr inbounds i8, ptr %446, i64 %447
  %449 = load i8, ptr %448, align 1, !tbaa !16
  br label %450

450:                                              ; preds = %440, %429
  %451 = phi i8 [ %449, %440 ], [ %438, %429 ]
  %452 = zext i8 %451 to i32
  call void @load_var(i32 noundef %452) #38
  br label %795

453:                                              ; preds = %17
  %454 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %455 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %456 = load ptr, ptr %455, align 8, !tbaa !31
  call void @bc_sub(ptr noundef %454, ptr noundef %456, ptr noundef nonnull %455) #38
  br label %795

457:                                              ; preds = %17
  call void @pop() #38
  br label %795

458:                                              ; preds = %17
  %459 = ashr i32 %23, 10
  %460 = add nsw i32 %21, 2
  store i32 %460, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %461 = srem i32 %23, 1024
  %462 = sext i32 %459 to i64
  %463 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %462
  %464 = load ptr, ptr %463, align 8, !tbaa !14
  %465 = sext i32 %461 to i64
  %466 = getelementptr inbounds i8, ptr %464, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !16
  %468 = icmp sgt i8 %467, -1
  br i1 %468, label %479, label %469

469:                                              ; preds = %458
  %470 = ashr i32 %460, 10
  %471 = add nsw i32 %21, 3
  store i32 %471, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %472 = srem i32 %460, 1024
  %473 = sext i32 %470 to i64
  %474 = getelementptr inbounds %struct.bc_function, ptr %20, i64 %18, i32 1, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !14
  %476 = sext i32 %472 to i64
  %477 = getelementptr inbounds i8, ptr %475, i64 %476
  %478 = load i8, ptr %477, align 1, !tbaa !16
  br label %479

479:                                              ; preds = %469, %458
  %480 = phi i8 [ %478, %469 ], [ %467, %458 ]
  %481 = zext i8 %480 to i32
  call void @store_var(i32 noundef %481) #38
  br label %795

482:                                              ; preds = %497, %17
  %483 = phi i32 [ %500, %497 ], [ %19, %17 ]
  %484 = phi ptr [ %499, %497 ], [ %20, %17 ]
  %485 = phi i32 [ %498, %497 ], [ %23, %17 ]
  %486 = ashr i32 %485, 10
  %487 = add nsw i32 %485, 1
  store i32 %487, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %488 = srem i32 %485, 1024
  %489 = sext i32 %483 to i64
  %490 = sext i32 %486 to i64
  %491 = getelementptr inbounds %struct.bc_function, ptr %484, i64 %489, i32 1, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !14
  %493 = sext i32 %488 to i64
  %494 = getelementptr inbounds i8, ptr %492, i64 %493
  %495 = load i8, ptr %494, align 1, !tbaa !16
  %496 = icmp eq i8 %495, 34
  br i1 %496, label %501, label %497

497:                                              ; preds = %482
  call void @out_char(i8 noundef signext %495) #38
  %498 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %499 = load ptr, ptr @functions, align 8, !tbaa !14
  %500 = load i32, ptr @pc, align 4, !tbaa !28
  br label %482, !llvm.loop !46

501:                                              ; preds = %482
  %502 = load i8, ptr @interactive, align 1, !tbaa !16
  %503 = icmp eq i8 %502, 0
  br i1 %503, label %795, label %504

504:                                              ; preds = %501
  %505 = load ptr, ptr @stdout, align 8, !tbaa !14
  %506 = call i32 @fflush(ptr noundef %505) #41
  br label %795

507:                                              ; preds = %17
  %508 = call signext i8 @check_stack(i32 noundef 2) #38
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %795, label %510

510:                                              ; preds = %507
  %511 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %512 = load ptr, ptr %511, align 8, !tbaa !31
  %513 = getelementptr inbounds %struct.estack_rec, ptr %511, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !47
  %515 = load ptr, ptr %514, align 8, !tbaa !31
  store ptr %515, ptr %511, align 8, !tbaa !31
  %516 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %517 = getelementptr inbounds %struct.estack_rec, ptr %516, i64 0, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !47
  store ptr %512, ptr %518, align 8, !tbaa !31
  br label %795

519:                                              ; preds = %17
  %520 = load ptr, ptr @_zero_, align 8, !tbaa !14
  call void @push_copy(ptr noundef %520) #38
  br label %795

521:                                              ; preds = %17
  %522 = load ptr, ptr @_one_, align 8, !tbaa !14
  call void @push_copy(ptr noundef %522) #38
  br label %795

523:                                              ; preds = %17
  %524 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %525 = load ptr, ptr %524, align 8, !tbaa !31
  %526 = call signext i8 @is_zero(ptr noundef %525) #38
  store i8 %526, ptr @c_code, align 1, !tbaa !16
  %527 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %527) #38
  %528 = icmp eq i8 %526, 0
  %529 = load ptr, ptr @_zero_, align 8
  %530 = load ptr, ptr @_one_, align 8
  %531 = select i1 %528, ptr %529, ptr %530
  %532 = call ptr @copy_num(ptr noundef %531) #38
  %533 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %532, ptr %533, align 8, !tbaa !31
  br label %795

534:                                              ; preds = %17
  %535 = call signext i8 @check_stack(i32 noundef 2) #38
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %795, label %537

537:                                              ; preds = %534
  %538 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %539 = getelementptr inbounds %struct.estack_rec, ptr %538, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !47
  %541 = load ptr, ptr %540, align 8, !tbaa !31
  %542 = call signext i8 @is_zero(ptr noundef %541) #38
  %543 = icmp eq i8 %542, 0
  br i1 %543, label %544, label %549

544:                                              ; preds = %537
  %545 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %546 = load ptr, ptr %545, align 8, !tbaa !31
  %547 = call signext i8 @is_zero(ptr noundef %546) #38
  %548 = icmp eq i8 %547, 0
  br label %549

549:                                              ; preds = %544, %537
  %550 = phi i1 [ false, %537 ], [ %548, %544 ]
  %551 = zext i1 %550 to i8
  store i8 %551, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %552 = load i8, ptr @c_code, align 1, !tbaa !16
  %553 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %553) #38
  %554 = icmp eq i8 %552, 0
  %555 = load ptr, ptr @_zero_, align 8
  %556 = load ptr, ptr @_one_, align 8
  %557 = select i1 %554, ptr %555, ptr %556
  %558 = call ptr @copy_num(ptr noundef %557) #38
  %559 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %558, ptr %559, align 8, !tbaa !31
  br label %795

560:                                              ; preds = %17
  %561 = call signext i8 @check_stack(i32 noundef 2) #38
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %795, label %563

563:                                              ; preds = %560
  %564 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %565 = getelementptr inbounds %struct.estack_rec, ptr %564, i64 0, i32 1
  %566 = load ptr, ptr %565, align 8, !tbaa !47
  %567 = load ptr, ptr %566, align 8, !tbaa !31
  %568 = call signext i8 @is_zero(ptr noundef %567) #38
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %575, label %570

570:                                              ; preds = %563
  %571 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %572 = load ptr, ptr %571, align 8, !tbaa !31
  %573 = call signext i8 @is_zero(ptr noundef %572) #38
  %574 = icmp eq i8 %573, 0
  br label %575

575:                                              ; preds = %570, %563
  %576 = phi i1 [ true, %563 ], [ %574, %570 ]
  %577 = zext i1 %576 to i8
  store i8 %577, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %578 = load i8, ptr @c_code, align 1, !tbaa !16
  %579 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %579) #38
  %580 = icmp eq i8 %578, 0
  %581 = load ptr, ptr @_zero_, align 8
  %582 = load ptr, ptr @_one_, align 8
  %583 = select i1 %580, ptr %581, ptr %582
  %584 = call ptr @copy_num(ptr noundef %583) #38
  %585 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %584, ptr %585, align 8, !tbaa !31
  br label %795

586:                                              ; preds = %17
  %587 = call signext i8 @check_stack(i32 noundef 2) #38
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %795, label %589

589:                                              ; preds = %586
  %590 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %591 = getelementptr inbounds %struct.estack_rec, ptr %590, i64 0, i32 1
  %592 = load ptr, ptr %591, align 8, !tbaa !47
  %593 = load ptr, ptr %592, align 8, !tbaa !31
  %594 = load ptr, ptr %590, align 8, !tbaa !31
  call void @bc_add(ptr noundef %593, ptr noundef %594, ptr noundef nonnull %1) #38
  call void @pop() #38
  call void @pop() #38
  %595 = load ptr, ptr %1, align 8, !tbaa !14
  call void @push_num(ptr noundef %595) #38
  call void @init_num(ptr noundef nonnull %1) #38
  br label %795

596:                                              ; preds = %17
  %597 = call signext i8 @check_stack(i32 noundef 2) #38
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %795, label %599

599:                                              ; preds = %596
  %600 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %601 = getelementptr inbounds %struct.estack_rec, ptr %600, i64 0, i32 1
  %602 = load ptr, ptr %601, align 8, !tbaa !47
  %603 = load ptr, ptr %602, align 8, !tbaa !31
  %604 = load ptr, ptr %600, align 8, !tbaa !31
  call void @bc_sub(ptr noundef %603, ptr noundef %604, ptr noundef nonnull %1) #38
  call void @pop() #38
  call void @pop() #38
  %605 = load ptr, ptr %1, align 8, !tbaa !14
  call void @push_num(ptr noundef %605) #38
  call void @init_num(ptr noundef nonnull %1) #38
  br label %795

606:                                              ; preds = %17
  %607 = call signext i8 @check_stack(i32 noundef 2) #38
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %795, label %609

609:                                              ; preds = %606
  %610 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %611 = getelementptr inbounds %struct.estack_rec, ptr %610, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !47
  %613 = load ptr, ptr %612, align 8, !tbaa !31
  %614 = load ptr, ptr %610, align 8, !tbaa !31
  %615 = load i32, ptr @scale, align 4, !tbaa !7
  call void @bc_multiply(ptr noundef %613, ptr noundef %614, ptr noundef nonnull %1, i32 noundef %615) #38
  call void @pop() #38
  call void @pop() #38
  %616 = load ptr, ptr %1, align 8, !tbaa !14
  call void @push_num(ptr noundef %616) #38
  call void @init_num(ptr noundef nonnull %1) #38
  br label %795

617:                                              ; preds = %17
  %618 = call signext i8 @check_stack(i32 noundef 2) #38
  %619 = icmp eq i8 %618, 0
  br i1 %619, label %795, label %620

620:                                              ; preds = %617
  %621 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %622 = getelementptr inbounds %struct.estack_rec, ptr %621, i64 0, i32 1
  %623 = load ptr, ptr %622, align 8, !tbaa !47
  %624 = load ptr, ptr %623, align 8, !tbaa !31
  %625 = load ptr, ptr %621, align 8, !tbaa !31
  %626 = load i32, ptr @scale, align 4, !tbaa !7
  %627 = call i32 @bc_divide(ptr noundef %624, ptr noundef %625, ptr noundef nonnull %1, i32 noundef %626) #38
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %631

629:                                              ; preds = %620
  call void @pop() #38
  call void @pop() #38
  %630 = load ptr, ptr %1, align 8, !tbaa !14
  call void @push_num(ptr noundef %630) #38
  call void @init_num(ptr noundef nonnull %1) #38
  br label %795

631:                                              ; preds = %620
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.5.4) #38
  br label %795

632:                                              ; preds = %17
  %633 = call signext i8 @check_stack(i32 noundef 2) #38
  %634 = icmp eq i8 %633, 0
  br i1 %634, label %795, label %635

635:                                              ; preds = %632
  %636 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %637 = load ptr, ptr %636, align 8, !tbaa !31
  %638 = call signext i8 @is_zero(ptr noundef %637) #38
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %641, label %640

640:                                              ; preds = %635
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.6.5) #38
  br label %795

641:                                              ; preds = %635
  %642 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %643 = getelementptr inbounds %struct.estack_rec, ptr %642, i64 0, i32 1
  %644 = load ptr, ptr %643, align 8, !tbaa !47
  %645 = load ptr, ptr %644, align 8, !tbaa !31
  %646 = load ptr, ptr %642, align 8, !tbaa !31
  %647 = load i32, ptr @scale, align 4, !tbaa !7
  %648 = call i32 @bc_modulo(ptr noundef %645, ptr noundef %646, ptr noundef nonnull %1, i32 noundef %647) #38
  call void @pop() #38
  call void @pop() #38
  %649 = load ptr, ptr %1, align 8, !tbaa !14
  call void @push_num(ptr noundef %649) #38
  call void @init_num(ptr noundef nonnull %1) #38
  br label %795

650:                                              ; preds = %17
  %651 = call signext i8 @check_stack(i32 noundef 2) #38
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %795, label %653

653:                                              ; preds = %650
  %654 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %655 = getelementptr inbounds %struct.estack_rec, ptr %654, i64 0, i32 1
  %656 = load ptr, ptr %655, align 8, !tbaa !47
  %657 = load ptr, ptr %656, align 8, !tbaa !31
  %658 = load ptr, ptr %654, align 8, !tbaa !31
  %659 = load i32, ptr @scale, align 4, !tbaa !7
  call void @bc_raise(ptr noundef %657, ptr noundef %658, ptr noundef nonnull %1, i32 noundef %659) #38
  %660 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %661 = getelementptr inbounds %struct.estack_rec, ptr %660, i64 0, i32 1
  %662 = load ptr, ptr %661, align 8, !tbaa !47
  %663 = load ptr, ptr %662, align 8, !tbaa !31
  %664 = call signext i8 @is_zero(ptr noundef %663) #38
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %672, label %666

666:                                              ; preds = %653
  %667 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %668 = load ptr, ptr %667, align 8, !tbaa !31
  %669 = call signext i8 @is_neg(ptr noundef %668) #38
  %670 = icmp eq i8 %669, 0
  br i1 %670, label %672, label %671

671:                                              ; preds = %666
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.7.6) #38
  br label %672

672:                                              ; preds = %671, %666, %653
  call void @pop() #38
  call void @pop() #38
  %673 = load ptr, ptr %1, align 8, !tbaa !14
  call void @push_num(ptr noundef %673) #38
  call void @init_num(ptr noundef nonnull %1) #38
  br label %795

674:                                              ; preds = %17
  %675 = call signext i8 @check_stack(i32 noundef 2) #38
  %676 = icmp eq i8 %675, 0
  br i1 %676, label %795, label %677

677:                                              ; preds = %674
  %678 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %679 = getelementptr inbounds %struct.estack_rec, ptr %678, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !47
  %681 = load ptr, ptr %680, align 8, !tbaa !31
  %682 = load ptr, ptr %678, align 8, !tbaa !31
  %683 = call i32 @bc_compare(ptr noundef %681, ptr noundef %682) #38
  %684 = icmp eq i32 %683, 0
  %685 = zext i1 %684 to i8
  store i8 %685, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %686 = load i8, ptr @c_code, align 1, !tbaa !16
  %687 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %687) #38
  %688 = icmp eq i8 %686, 0
  %689 = load ptr, ptr @_zero_, align 8
  %690 = load ptr, ptr @_one_, align 8
  %691 = select i1 %688, ptr %689, ptr %690
  %692 = call ptr @copy_num(ptr noundef %691) #38
  %693 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %692, ptr %693, align 8, !tbaa !31
  br label %795

694:                                              ; preds = %17
  %695 = call signext i8 @check_stack(i32 noundef 2) #38
  %696 = icmp eq i8 %695, 0
  br i1 %696, label %795, label %697

697:                                              ; preds = %694
  %698 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %699 = getelementptr inbounds %struct.estack_rec, ptr %698, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !47
  %701 = load ptr, ptr %700, align 8, !tbaa !31
  %702 = load ptr, ptr %698, align 8, !tbaa !31
  %703 = call i32 @bc_compare(ptr noundef %701, ptr noundef %702) #38
  %704 = icmp ne i32 %703, 0
  %705 = zext i1 %704 to i8
  store i8 %705, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %706 = load i8, ptr @c_code, align 1, !tbaa !16
  %707 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %707) #38
  %708 = icmp eq i8 %706, 0
  %709 = load ptr, ptr @_zero_, align 8
  %710 = load ptr, ptr @_one_, align 8
  %711 = select i1 %708, ptr %709, ptr %710
  %712 = call ptr @copy_num(ptr noundef %711) #38
  %713 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %712, ptr %713, align 8, !tbaa !31
  br label %795

714:                                              ; preds = %17
  %715 = call signext i8 @check_stack(i32 noundef 2) #38
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %795, label %717

717:                                              ; preds = %714
  %718 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %719 = getelementptr inbounds %struct.estack_rec, ptr %718, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !47
  %721 = load ptr, ptr %720, align 8, !tbaa !31
  %722 = load ptr, ptr %718, align 8, !tbaa !31
  %723 = call i32 @bc_compare(ptr noundef %721, ptr noundef %722) #38
  %724 = icmp eq i32 %723, -1
  %725 = zext i1 %724 to i8
  store i8 %725, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %726 = load i8, ptr @c_code, align 1, !tbaa !16
  %727 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %727) #38
  %728 = icmp eq i8 %726, 0
  %729 = load ptr, ptr @_zero_, align 8
  %730 = load ptr, ptr @_one_, align 8
  %731 = select i1 %728, ptr %729, ptr %730
  %732 = call ptr @copy_num(ptr noundef %731) #38
  %733 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %732, ptr %733, align 8, !tbaa !31
  br label %795

734:                                              ; preds = %17
  %735 = call signext i8 @check_stack(i32 noundef 2) #38
  %736 = icmp eq i8 %735, 0
  br i1 %736, label %795, label %737

737:                                              ; preds = %734
  %738 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %739 = getelementptr inbounds %struct.estack_rec, ptr %738, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !47
  %741 = load ptr, ptr %740, align 8, !tbaa !31
  %742 = load ptr, ptr %738, align 8, !tbaa !31
  %743 = call i32 @bc_compare(ptr noundef %741, ptr noundef %742) #38
  %744 = icmp slt i32 %743, 1
  %745 = zext i1 %744 to i8
  store i8 %745, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %746 = load i8, ptr @c_code, align 1, !tbaa !16
  %747 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %747) #38
  %748 = icmp eq i8 %746, 0
  %749 = load ptr, ptr @_zero_, align 8
  %750 = load ptr, ptr @_one_, align 8
  %751 = select i1 %748, ptr %749, ptr %750
  %752 = call ptr @copy_num(ptr noundef %751) #38
  %753 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %752, ptr %753, align 8, !tbaa !31
  br label %795

754:                                              ; preds = %17
  %755 = call signext i8 @check_stack(i32 noundef 2) #38
  %756 = icmp eq i8 %755, 0
  br i1 %756, label %795, label %757

757:                                              ; preds = %754
  %758 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %759 = getelementptr inbounds %struct.estack_rec, ptr %758, i64 0, i32 1
  %760 = load ptr, ptr %759, align 8, !tbaa !47
  %761 = load ptr, ptr %760, align 8, !tbaa !31
  %762 = load ptr, ptr %758, align 8, !tbaa !31
  %763 = call i32 @bc_compare(ptr noundef %761, ptr noundef %762) #38
  %764 = icmp eq i32 %763, 1
  %765 = zext i1 %764 to i8
  store i8 %765, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %766 = load i8, ptr @c_code, align 1, !tbaa !16
  %767 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %767) #38
  %768 = icmp eq i8 %766, 0
  %769 = load ptr, ptr @_zero_, align 8
  %770 = load ptr, ptr @_one_, align 8
  %771 = select i1 %768, ptr %769, ptr %770
  %772 = call ptr @copy_num(ptr noundef %771) #38
  %773 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %772, ptr %773, align 8, !tbaa !31
  br label %795

774:                                              ; preds = %17
  %775 = call signext i8 @check_stack(i32 noundef 2) #38
  %776 = icmp eq i8 %775, 0
  br i1 %776, label %795, label %777

777:                                              ; preds = %774
  %778 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %779 = getelementptr inbounds %struct.estack_rec, ptr %778, i64 0, i32 1
  %780 = load ptr, ptr %779, align 8, !tbaa !47
  %781 = load ptr, ptr %780, align 8, !tbaa !31
  %782 = load ptr, ptr %778, align 8, !tbaa !31
  %783 = call i32 @bc_compare(ptr noundef %781, ptr noundef %782) #38
  %784 = icmp sgt i32 %783, -1
  %785 = zext i1 %784 to i8
  store i8 %785, ptr @c_code, align 1, !tbaa !16
  call void @pop() #38
  %786 = load i8, ptr @c_code, align 1, !tbaa !16
  %787 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  call void @free_num(ptr noundef %787) #38
  %788 = icmp eq i8 %786, 0
  %789 = load ptr, ptr @_zero_, align 8
  %790 = load ptr, ptr @_one_, align 8
  %791 = select i1 %788, ptr %789, ptr %790
  %792 = call ptr @copy_num(ptr noundef %791) #38
  %793 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  store ptr %792, ptr %793, align 8, !tbaa !31
  br label %795

794:                                              ; preds = %17
  call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.8.7, i32 noundef %31) #38
  br label %795

795:                                              ; preds = %794, %777, %774, %757, %754, %737, %734, %717, %714, %697, %694, %677, %674, %672, %650, %641, %640, %632, %631, %629, %617, %609, %606, %599, %596, %589, %586, %575, %560, %549, %534, %523, %521, %519, %510, %507, %504, %501, %479, %457, %453, %450, %426, %401, %378, %377, %372, %367, %364, %363, %339, %336, %333, %316, %313, %291, %280, %275, %272, %225, %201, %179, %178, %169, %165, %150, %116, %93, %53
  %796 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %797 = load ptr, ptr @functions, align 8, !tbaa !14
  %798 = load i32, ptr @pc, align 4, !tbaa !28
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds %struct.bc_function, ptr %797, i64 %799, i32 2
  %801 = load i32, ptr %800, align 8, !tbaa !29
  %802 = icmp slt i32 %796, %801
  %803 = load i8, ptr @runtime_error, align 1
  %804 = icmp eq i8 %803, 0
  %805 = select i1 %802, i1 %804, i1 false
  br i1 %805, label %17, label %806, !llvm.loop !48

806:                                              ; preds = %795, %6
  %807 = phi i32 [ %9, %6 ], [ %798, %795 ]
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %812

809:                                              ; preds = %812, %806
  %810 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %811 = icmp eq ptr %810, null
  br i1 %811, label %830, label %827

812:                                              ; preds = %812, %806
  %813 = phi i32 [ %825, %812 ], [ %807, %806 ]
  %814 = load ptr, ptr @functions, align 8, !tbaa !14
  %815 = sext i32 %813 to i64
  %816 = getelementptr inbounds %struct.bc_function, ptr %814, i64 %815, i32 5
  %817 = load ptr, ptr %816, align 8, !tbaa !41
  call void @pop_vars(ptr noundef %817) #38
  %818 = load ptr, ptr @functions, align 8, !tbaa !14
  %819 = load i32, ptr @pc, align 4, !tbaa !28
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds %struct.bc_function, ptr %818, i64 %820, i32 4
  %822 = load ptr, ptr %821, align 8, !tbaa !42
  call void @pop_vars(ptr noundef %822) #38
  %823 = call i32 @fpop() #38
  %824 = call i32 @fpop() #38
  store i32 %824, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %825 = call i32 @fpop() #38
  store i32 %825, ptr @pc, align 4, !tbaa !28
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %809, label %812, !llvm.loop !49

827:                                              ; preds = %827, %809
  call void @pop() #38
  %828 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %829 = icmp eq ptr %828, null
  br i1 %829, label %830, label %827, !llvm.loop !50

830:                                              ; preds = %827, %809
  %831 = load i8, ptr @interactive, align 1, !tbaa !16
  %832 = icmp eq i8 %831, 0
  br i1 %832, label %839, label %833

833:                                              ; preds = %830
  %834 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @use_quit) #38
  %835 = load i32, ptr @had_sigint, align 4, !tbaa !7
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %839, label %837

837:                                              ; preds = %833
  %838 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %839

839:                                              ; preds = %837, %833, %830
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #37
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @push_b10_const(ptr nocapture noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #37
  %3 = load i64, ptr %0, align 4
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %4 to i32
  %6 = ashr i32 %5, 10
  %7 = srem i32 %5, 1024
  %8 = load ptr, ptr @functions, align 8, !tbaa !14
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds %struct.bc_function, ptr %8, i64 %10, i32 1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  br label %16

16:                                               ; preds = %22, %1
  %17 = phi i32 [ %5, %1 ], [ %21, %22 ]
  %18 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %19 = phi ptr [ %15, %1 ], [ %30, %22 ]
  %20 = load i8, ptr %19, align 1, !tbaa !16
  %21 = add nsw i32 %17, 1
  switch i8 %20, label %22 [
    i8 46, label %31
    i8 58, label %57
  ]

22:                                               ; preds = %16
  %23 = add nuw nsw i32 %18, 1
  %24 = ashr i32 %21, 10
  %25 = srem i32 %21, 1024
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.bc_function, ptr %8, i64 %10, i32 1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = sext i32 %25 to i64
  %30 = getelementptr inbounds i8, ptr %28, i64 %29
  br label %16, !llvm.loop !51

31:                                               ; preds = %16
  %.lcssa4 = phi i32 [ %17, %16 ]
  %.lcssa2 = phi i32 [ %18, %16 ]
  %.lcssa = phi i32 [ %21, %16 ]
  %32 = ashr i32 %.lcssa, 10
  %33 = srem i32 %.lcssa, 1024
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds %struct.bc_function, ptr %8, i64 %10, i32 1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !16
  %40 = icmp eq i8 %39, 58
  br i1 %40, label %57, label %41

41:                                               ; preds = %31
  %42 = add nsw i32 %.lcssa4, 2
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i32 [ %46, %43 ], [ 0, %41 ]
  %45 = phi i32 [ %48, %43 ], [ %42, %41 ]
  %46 = add nuw nsw i32 %44, 1
  %47 = ashr i32 %45, 10
  %48 = add nsw i32 %45, 1
  %49 = srem i32 %45, 1024
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds %struct.bc_function, ptr %8, i64 %10, i32 1, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !14
  %53 = sext i32 %49 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !16
  %56 = icmp eq i8 %55, 58
  br i1 %56, label %57, label %43, !llvm.loop !52

57:                                               ; preds = %43, %31, %16
  %.lcssa3 = phi i32 [ %.lcssa2, %43 ], [ %.lcssa2, %31 ], [ %18, %16 ]
  %58 = phi i32 [ 0, %31 ], [ %46, %43 ], [ 0, %16 ]
  %59 = getelementptr inbounds %struct.program_counter, ptr %0, i64 0, i32 1
  %60 = add nsw i32 %5, 1
  store i32 %60, ptr %59, align 4, !tbaa !26
  %61 = shl i64 %3, 32
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds %struct.bc_function, ptr %8, i64 %62, i32 1, i64 %11
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, ptr %64, i64 %14
  %66 = load i8, ptr %65, align 1, !tbaa !16
  %67 = icmp eq i32 %.lcssa3, 1
  %68 = icmp eq i32 %58, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %86

70:                                               ; preds = %57
  %71 = sext i8 %66 to i32
  switch i8 %66, label %80 [
    i8 0, label %72
    i8 1, label %76
  ]

72:                                               ; preds = %70
  %73 = load ptr, ptr @_zero_, align 8, !tbaa !14
  tail call void @push_copy(ptr noundef %73) #38
  %74 = load i32, ptr %59, align 4, !tbaa !26
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %59, align 4, !tbaa !26
  br label %120

76:                                               ; preds = %70
  %77 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call void @push_copy(ptr noundef %77) #38
  %78 = load i32, ptr %59, align 4, !tbaa !26
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %59, align 4, !tbaa !26
  br label %120

80:                                               ; preds = %70
  %81 = icmp sgt i8 %66, 9
  br i1 %81, label %82, label %92

82:                                               ; preds = %80
  call void @init_num(ptr noundef nonnull %2) #38
  call void @int2num(ptr noundef nonnull %2, i32 noundef %71) #38
  %83 = load ptr, ptr %2, align 8, !tbaa !14
  call void @push_num(ptr noundef %83) #38
  %84 = load i32, ptr %59, align 4, !tbaa !26
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %59, align 4, !tbaa !26
  br label %120

86:                                               ; preds = %57
  %87 = icmp eq i32 %.lcssa3, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = tail call ptr @new_num(i32 noundef 1, i32 noundef %58) #38
  store ptr %89, ptr %2, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.bc_struct, ptr %89, i64 0, i32 4
  %91 = getelementptr inbounds %struct.bc_struct, ptr %89, i64 0, i32 4, i64 1
  store i8 0, ptr %90, align 1, !tbaa !16
  br label %95

92:                                               ; preds = %86, %80
  %93 = tail call ptr @new_num(i32 noundef %.lcssa3, i32 noundef %58) #38
  store ptr %93, ptr %2, align 8, !tbaa !14
  %94 = getelementptr inbounds %struct.bc_struct, ptr %93, i64 0, i32 4
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi ptr [ %91, %88 ], [ %94, %92 ]
  br label %97

97:                                               ; preds = %103, %95
  %98 = phi i8 [ %117, %103 ], [ %66, %95 ]
  %99 = phi ptr [ %104, %103 ], [ %96, %95 ]
  switch i8 %98, label %100 [
    i8 58, label %118
    i8 46, label %103
  ]

100:                                              ; preds = %97
  %101 = getelementptr inbounds i8, ptr %99, i64 1
  %102 = tail call i8 @llvm.smin.i8(i8 %98, i8 9)
  store i8 %102, ptr %99, align 1, !tbaa !16
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi ptr [ %99, %97 ], [ %101, %100 ]
  %105 = load i32, ptr %59, align 4, !tbaa !26
  %106 = ashr i32 %105, 10
  %107 = add nsw i32 %105, 1
  store i32 %107, ptr %59, align 4, !tbaa !26
  %108 = srem i32 %105, 1024
  %109 = load ptr, ptr @functions, align 8, !tbaa !14
  %110 = load i32, ptr %0, align 4, !tbaa !28
  %111 = sext i32 %110 to i64
  %112 = sext i32 %106 to i64
  %113 = getelementptr inbounds %struct.bc_function, ptr %109, i64 %111, i32 1, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = sext i32 %108 to i64
  %116 = getelementptr inbounds i8, ptr %114, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !16
  br label %97, !llvm.loop !53

118:                                              ; preds = %97
  %119 = load ptr, ptr %2, align 8, !tbaa !14
  tail call void @push_num(ptr noundef %119) #38
  br label %120

120:                                              ; preds = %118, %82, %76, %72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal signext i8 @prog_char() #11 {
  %1 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %2 = ashr i32 %1, 10
  %3 = add nsw i32 %1, 1
  store i32 %3, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %4 = srem i32 %1, 1024
  %5 = load ptr, ptr @functions, align 8, !tbaa !14
  %6 = load i32, ptr @pc, align 4, !tbaa !28
  %7 = sext i32 %6 to i64
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds %struct.bc_function, ptr %5, i64 %7, i32 1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = sext i32 %4 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !16
  ret i8 %13
}

; Function Attrs: nounwind optsize uwtable
define internal void @push_constant(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #37
  call void @init_num(ptr noundef nonnull %4) #38
  call void @init_num(ptr noundef nonnull %5) #38
  call void @init_num(ptr noundef nonnull %6) #38
  %8 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %9 = call ptr @copy_num(ptr noundef %8) #38
  store ptr %9, ptr %3, align 8, !tbaa !14
  call void @int2num(ptr noundef nonnull %6, i32 noundef %1) #38
  br label %10

10:                                               ; preds = %10, %2
  %11 = call signext i8 %0() #38
  switch i8 %11, label %16 [
    i8 32, label %10
    i8 43, label %13
    i8 45, label %12
  ], !llvm.loop !54

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i1 [ false, %12 ], [ true, %10 ]
  %15 = call signext i8 %0() #38
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i8 [ %15, %13 ], [ %11, %10 ]
  %18 = phi i1 [ %14, %13 ], [ true, %10 ]
  %19 = icmp slt i8 %17, 16
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = sext i8 %17 to i32
  %22 = call signext i8 %0() #38
  %23 = icmp sgt i8 %22, 15
  %24 = icmp slt i32 %21, %1
  %25 = or i1 %24, %23
  %26 = trunc i32 %1 to i8
  %27 = add i8 %26, -1
  %28 = select i1 %25, i8 %17, i8 %27
  %29 = sext i8 %28 to i32
  call void @int2num(ptr noundef nonnull %3, i32 noundef %29) #38
  %30 = icmp slt i8 %22, 16
  br i1 %30, label %31, label %46

31:                                               ; preds = %20
  %32 = trunc i32 %1 to i8
  %33 = add i8 %32, -1
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i8 [ %22, %31 ], [ %44, %34 ]
  %36 = sext i8 %35 to i32
  %37 = icmp slt i32 %36, %1
  %38 = select i1 %37, i8 %35, i8 %33
  %39 = load ptr, ptr %3, align 8, !tbaa !14
  %40 = load ptr, ptr %6, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %39, ptr noundef %40, ptr noundef nonnull %5, i32 noundef 0) #38
  %41 = sext i8 %38 to i32
  call void @int2num(ptr noundef nonnull %4, i32 noundef %41) #38
  %42 = load ptr, ptr %5, align 8, !tbaa !14
  %43 = load ptr, ptr %4, align 8, !tbaa !14
  call void @bc_add(ptr noundef %42, ptr noundef %43, ptr noundef nonnull %3) #38
  %44 = call signext i8 %0() #38
  %45 = icmp slt i8 %44, 16
  br i1 %45, label %34, label %46, !llvm.loop !55

46:                                               ; preds = %34, %20, %16
  %47 = phi i8 [ %22, %20 ], [ %17, %16 ], [ %44, %34 ]
  %48 = icmp eq i8 %47, 46
  br i1 %48, label %49, label %89

49:                                               ; preds = %46
  %50 = call signext i8 %0() #38
  %51 = sext i8 %50 to i32
  %52 = icmp slt i32 %51, %1
  %53 = trunc i32 %1 to i8
  %54 = add i8 %53, -1
  %55 = select i1 %52, i8 %50, i8 %54
  call void @free_num(ptr noundef nonnull %5) #38
  call void @free_num(ptr noundef nonnull %4) #38
  %56 = load ptr, ptr @_one_, align 8, !tbaa !14
  %57 = call ptr @copy_num(ptr noundef %56) #38
  store ptr %57, ptr %7, align 8, !tbaa !14
  %58 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %59 = call ptr @copy_num(ptr noundef %58) #38
  store ptr %59, ptr %5, align 8, !tbaa !14
  %60 = icmp slt i8 %55, 16
  br i1 %60, label %61, label %82

61:                                               ; preds = %61, %49
  %62 = phi i8 [ %77, %61 ], [ %55, %49 ]
  %63 = phi i32 [ %71, %61 ], [ 0, %49 ]
  %64 = sext i8 %62 to i32
  %65 = load ptr, ptr %5, align 8, !tbaa !14
  %66 = load ptr, ptr %6, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %65, ptr noundef %66, ptr noundef nonnull %5, i32 noundef 0) #38
  call void @int2num(ptr noundef nonnull %4, i32 noundef %64) #38
  %67 = load ptr, ptr %5, align 8, !tbaa !14
  %68 = load ptr, ptr %4, align 8, !tbaa !14
  call void @bc_add(ptr noundef %67, ptr noundef %68, ptr noundef nonnull %5) #38
  %69 = load ptr, ptr %7, align 8, !tbaa !14
  %70 = load ptr, ptr %6, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %69, ptr noundef %70, ptr noundef nonnull %7, i32 noundef 0) #38
  %71 = add nuw nsw i32 %63, 1
  %72 = call signext i8 %0() #38
  %73 = icmp sgt i8 %72, 15
  %74 = sext i8 %72 to i32
  %75 = icmp slt i32 %74, %1
  %76 = or i1 %73, %75
  %77 = select i1 %76, i8 %72, i8 %54
  %78 = icmp slt i8 %77, 16
  br i1 %78, label %61, label %79, !llvm.loop !56

79:                                               ; preds = %61
  %.lcssa = phi i32 [ %71, %61 ]
  %80 = load ptr, ptr %5, align 8, !tbaa !14
  %81 = load ptr, ptr %7, align 8, !tbaa !14
  br label %82

82:                                               ; preds = %79, %49
  %83 = phi ptr [ %57, %49 ], [ %81, %79 ]
  %84 = phi ptr [ %59, %49 ], [ %80, %79 ]
  %85 = phi i32 [ 0, %49 ], [ %.lcssa, %79 ]
  %86 = call i32 @bc_divide(ptr noundef %84, ptr noundef %83, ptr noundef nonnull %5, i32 noundef %85) #38
  %87 = load ptr, ptr %3, align 8, !tbaa !14
  %88 = load ptr, ptr %5, align 8, !tbaa !14
  call void @bc_add(ptr noundef %87, ptr noundef %88, ptr noundef nonnull %3) #38
  br label %89

89:                                               ; preds = %82, %46
  %90 = load ptr, ptr %3, align 8, !tbaa !14
  br i1 %18, label %94, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr @_zero_, align 8, !tbaa !14
  call void @bc_sub(ptr noundef %92, ptr noundef %90, ptr noundef nonnull %3) #38
  %93 = load ptr, ptr %3, align 8, !tbaa !14
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi ptr [ %93, %91 ], [ %90, %89 ]
  call void @push_num(ptr noundef %95) #38
  call void @free_num(ptr noundef nonnull %4) #38
  call void @free_num(ptr noundef nonnull %5) #38
  call void @free_num(ptr noundef nonnull %6) #38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal signext i8 @input_char() #12 {
  %1 = tail call i32 @getchar() #41
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 92
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = tail call i32 @getchar() #41
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @getchar() #41
  br label %10

10:                                               ; preds = %8, %4, %0
  %11 = phi i32 [ %9, %8 ], [ %5, %4 ], [ %1, %0 ]
  %12 = trunc i32 %11 to i8
  %13 = tail call ptr @__ctype_b_loc() #42
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = sext i8 %12 to i64
  %16 = getelementptr inbounds i16, ptr %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !11
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

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smin.i8(i8, i8) #3

; Function Attrs: nounwind optsize uwtable
define internal void @init_load() #0 {
  tail call void @clear_func(i8 noundef signext 0) #38
  store i32 0, ptr @load_adr, align 8, !tbaa !28
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !26
  store i8 0, ptr @load_str, align 1, !tbaa !16
  store i8 0, ptr @load_const, align 1, !tbaa !16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @addbyte(i32 noundef %0) #0 {
  %2 = load i32, ptr @had_error, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !26
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !26
  %7 = srem i32 %5, 1024
  %8 = icmp sgt i32 %5, 16383
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.40) #38
  br label %33

10:                                               ; preds = %4
  %11 = ashr i32 %5, 10
  %12 = load i32, ptr @load_adr, align 8, !tbaa !28
  %13 = load ptr, ptr @functions, align 8, !tbaa !14
  %14 = sext i32 %12 to i64
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds %struct.bc_function, ptr %13, i64 %14, i32 1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #43
  store ptr %20, ptr %16, align 8, !tbaa !14
  %21 = load ptr, ptr @functions, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.bc_function, ptr %21, i64 %14, i32 1, i64 %15
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  br label %24

24:                                               ; preds = %19, %10
  %25 = phi ptr [ %23, %19 ], [ %17, %10 ]
  %26 = trunc i32 %0 to i8
  %27 = sext i32 %7 to i64
  %28 = getelementptr inbounds i8, ptr %25, i64 %27
  store i8 %26, ptr %28, align 1, !tbaa !16
  %29 = load ptr, ptr @functions, align 8, !tbaa !14
  %30 = getelementptr inbounds %struct.bc_function, ptr %29, i64 %14, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !29
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !29
  br label %33

33:                                               ; preds = %24, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize uwtable
define internal void @def_label(i64 noundef %0) #12 {
  %2 = lshr i64 %0, 6
  %3 = trunc i64 %2 to i32
  %4 = load i32, ptr @load_adr, align 8, !tbaa !28
  %5 = load ptr, ptr @functions, align 8, !tbaa !14
  %6 = sext i32 %4 to i64
  %7 = getelementptr inbounds %struct.bc_function, ptr %5, i64 %6, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #43
  store ptr %11, ptr %7, align 8, !tbaa !57
  %12 = load ptr, ptr @functions, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.bc_function, ptr %12, i64 %6, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.bc_label_group, ptr %14, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !58
  %16 = load ptr, ptr %13, align 8, !tbaa !14
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ %8, %1 ]
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %30, %17
  %21 = phi ptr [ %31, %30 ], [ %18, %17 ]
  %22 = phi i32 [ %32, %30 ], [ %3, %17 ]
  %23 = getelementptr inbounds %struct.bc_label_group, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = tail call noalias dereferenceable_or_null(520) ptr @malloc(i64 noundef 520) #43
  store ptr %27, ptr %23, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.bc_label_group, ptr %27, i64 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !58
  %29 = load ptr, ptr %23, align 8, !tbaa !14
  br label %30

30:                                               ; preds = %26, %20
  %31 = phi ptr [ %29, %26 ], [ %24, %20 ]
  %32 = add nsw i32 %22, -1
  %33 = icmp sgt i32 %22, 1
  br i1 %33, label %20, label %34, !llvm.loop !60

34:                                               ; preds = %30, %17
  %35 = phi ptr [ %18, %17 ], [ %31, %30 ]
  %36 = srem i64 %0, 64
  %37 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !26
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [64 x i64], ptr %35, i64 0, i64 %36
  store i64 %38, ptr %39, align 8, !tbaa !34
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i64 @long_val(ptr nocapture noundef %0) #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = load i8, ptr %2, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 45
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %6, ptr %0, align 8, !tbaa !14
  %7 = load i8, ptr %6, align 1, !tbaa !16
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i8 [ %7, %5 ], [ %3, %1 ]
  %10 = phi ptr [ %6, %5 ], [ %2, %1 ]
  %11 = tail call ptr @__ctype_b_loc() #42
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  %13 = sext i8 %9 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !11
  %16 = and i16 %15, 2048
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %18, %8
  %19 = phi ptr [ %22, %18 ], [ %10, %8 ]
  %20 = phi i32 [ %26, %18 ], [ 0, %8 ]
  %21 = mul nsw i32 %20, 10
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %22, ptr %0, align 8, !tbaa !14
  %23 = load i8, ptr %19, align 1, !tbaa !16
  %24 = sext i8 %23 to i32
  %25 = add i32 %21, -48
  %26 = add i32 %25, %24
  %27 = load ptr, ptr %11, align 8, !tbaa !14
  %28 = load i8, ptr %22, align 1, !tbaa !16
  %29 = sext i8 %28 to i64
  %30 = getelementptr inbounds i16, ptr %27, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !11
  %32 = and i16 %31, 2048
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %18, !llvm.loop !61

34:                                               ; preds = %18, %8
  %35 = phi i32 [ 0, %8 ], [ %26, %18 ]
  %36 = sub nsw i32 0, %35
  %37 = select i1 %4, i32 %36, i32 %35
  %38 = sext i32 %37 to i64
  ret i64 %38
}

; Function Attrs: nounwind optsize uwtable
define internal void @load_code(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #37
  store ptr %0, ptr %2, align 8, !tbaa !14
  %3 = load i8, ptr %0, align 1, !tbaa !16
  %4 = icmp ne i8 %3, 0
  %5 = load i32, ptr @had_error, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %185

8:                                                ; preds = %177, %1
  %9 = phi i8 [ %180, %177 ], [ %3, %1 ]
  %10 = phi ptr [ %178, %177 ], [ %0, %1 ]
  %11 = phi i64 [ %179, %177 ], [ undef, %1 ]
  %12 = sext i8 %9 to i32
  %13 = load i8, ptr @load_str, align 1, !tbaa !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = icmp eq i8 %9, 34
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  store i8 0, ptr @load_str, align 1, !tbaa !16
  %18 = load i8, ptr %10, align 1, !tbaa !16
  %19 = sext i8 %18 to i32
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %19, %17 ], [ %12, %15 ]
  %22 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %22, ptr %2, align 8, !tbaa !14
  tail call void @addbyte(i32 noundef %21) #41
  br label %177

23:                                               ; preds = %8
  %24 = load i8, ptr @load_const, align 1, !tbaa !16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  switch i8 %9, label %35 [
    i8 10, label %27
    i8 58, label %29
    i8 46, label %33
  ]

27:                                               ; preds = %26
  %28 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %28, ptr %2, align 8, !tbaa !14
  br label %177

29:                                               ; preds = %26
  store i8 0, ptr @load_const, align 1, !tbaa !16
  %30 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %30, ptr %2, align 8, !tbaa !14
  %31 = load i8, ptr %10, align 1, !tbaa !16
  %32 = sext i8 %31 to i32
  tail call void @addbyte(i32 noundef %32) #41
  br label %177

33:                                               ; preds = %26
  %34 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %34, ptr %2, align 8, !tbaa !14
  tail call void @addbyte(i32 noundef %12) #41
  br label %177

35:                                               ; preds = %26
  %36 = icmp sgt i8 %9, 64
  %37 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %37, ptr %2, align 8, !tbaa !14
  br i1 %36, label %38, label %40

38:                                               ; preds = %35
  %39 = add nsw i32 %12, -55
  tail call void @addbyte(i32 noundef %39) #41
  br label %177

40:                                               ; preds = %35
  %41 = add nsw i32 %12, -48
  tail call void @addbyte(i32 noundef %41) #41
  br label %177

42:                                               ; preds = %23
  switch i32 %12, label %172 [
    i32 34, label %43
    i32 78, label %44
    i32 66, label %47
    i32 74, label %47
    i32 90, label %47
    i32 70, label %59
    i32 93, label %111
    i32 67, label %116
    i32 99, label %150
    i32 75, label %154
    i32 100, label %155
    i32 105, label %155
    i32 108, label %155
    i32 115, label %155
    i32 65, label %155
    i32 77, label %155
    i32 76, label %155
    i32 83, label %155
    i32 64, label %166
    i32 10, label %173
  ]

43:                                               ; preds = %42
  store i8 1, ptr @load_str, align 1, !tbaa !16
  br label %173

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %45, ptr %2, align 8, !tbaa !14
  %46 = call i64 @long_val(ptr noundef nonnull %2) #41
  tail call void @def_label(i64 noundef %46) #41
  br label %173

47:                                               ; preds = %42, %42, %42
  %48 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %48, ptr %2, align 8, !tbaa !14
  tail call void @addbyte(i32 noundef %12) #41
  %49 = call i64 @long_val(ptr noundef nonnull %2) #41
  %50 = icmp sgt i64 %49, 65535
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load ptr, ptr @stderr, align 8, !tbaa !14
  %53 = tail call i64 @fwrite(ptr nonnull @.str.1.41, i64 17, i64 1, ptr %52) #44
  tail call void @exit(i32 noundef 1) #39
  unreachable

54:                                               ; preds = %47
  %55 = trunc i64 %49 to i32
  %56 = shl i32 %55, 24
  %57 = and i32 %55, 255
  tail call void @addbyte(i32 noundef %57) #41
  %58 = ashr i32 %56, 31
  tail call void @addbyte(i32 noundef %58) #41
  br label %173

59:                                               ; preds = %42
  %60 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %60, ptr %2, align 8, !tbaa !14
  %61 = call i64 @long_val(ptr noundef nonnull %2) #41
  %62 = trunc i64 %61 to i8
  tail call void @clear_func(i8 noundef signext %62) #38
  %63 = load ptr, ptr %2, align 8, !tbaa !14
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %64, ptr %2, align 8, !tbaa !14
  %65 = load i8, ptr %63, align 1, !tbaa !16
  %66 = icmp eq i8 %65, 46
  %67 = shl i64 %61, 32
  %68 = ashr exact i64 %67, 32
  br i1 %66, label %91, label %69

69:                                               ; preds = %59
  %70 = load i8, ptr %64, align 1, !tbaa !16
  %71 = icmp eq i8 %70, 46
  br i1 %71, label %75, label %78

72:                                               ; preds = %78
  %73 = load i8, ptr %88, align 1, !tbaa !16
  %74 = icmp eq i8 %73, 46
  br i1 %74, label %75, label %78, !llvm.loop !62

75:                                               ; preds = %72, %69
  %76 = phi ptr [ %63, %69 ], [ %87, %72 ]
  %77 = getelementptr inbounds i8, ptr %76, i64 2
  store ptr %77, ptr %2, align 8, !tbaa !14
  br label %91

78:                                               ; preds = %72, %69
  %79 = call i64 @long_val(ptr noundef nonnull %2) #41
  %80 = load ptr, ptr @functions, align 8, !tbaa !14
  %81 = getelementptr inbounds %struct.bc_function, ptr %80, i64 %68, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !42
  %83 = trunc i64 %79 to i8
  %84 = tail call ptr @nextarg(ptr noundef %82, i8 noundef signext %83) #38
  %85 = load ptr, ptr @functions, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.bc_function, ptr %85, i64 %68, i32 4
  store ptr %84, ptr %86, align 8, !tbaa !42
  %87 = load ptr, ptr %2, align 8, !tbaa !14
  %88 = getelementptr inbounds i8, ptr %87, i64 1
  store ptr %88, ptr %2, align 8, !tbaa !14
  %89 = load i8, ptr %87, align 1, !tbaa !16
  %90 = icmp eq i8 %89, 46
  br i1 %90, label %91, label %72, !llvm.loop !62

91:                                               ; preds = %78, %75, %59
  %92 = phi ptr [ %64, %59 ], [ %77, %75 ], [ %88, %78 ]
  br label %93

93:                                               ; preds = %98, %91
  %94 = phi ptr [ %107, %98 ], [ %92, %91 ]
  %95 = load i8, ptr %94, align 1, !tbaa !16
  switch i8 %95, label %98 [
    i8 91, label %108
    i8 44, label %96
  ]

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %97, ptr %2, align 8, !tbaa !14
  br label %98

98:                                               ; preds = %96, %93
  %99 = call i64 @long_val(ptr noundef nonnull %2) #41
  %100 = load ptr, ptr @functions, align 8, !tbaa !14
  %101 = getelementptr inbounds %struct.bc_function, ptr %100, i64 %68, i32 5
  %102 = load ptr, ptr %101, align 8, !tbaa !41
  %103 = trunc i64 %99 to i8
  %104 = tail call ptr @nextarg(ptr noundef %102, i8 noundef signext %103) #38
  %105 = load ptr, ptr @functions, align 8, !tbaa !14
  %106 = getelementptr inbounds %struct.bc_function, ptr %105, i64 %68, i32 5
  store ptr %104, ptr %106, align 8, !tbaa !41
  %107 = load ptr, ptr %2, align 8, !tbaa !14
  br label %93, !llvm.loop !63

108:                                              ; preds = %93
  %109 = load i64, ptr @load_adr, align 8
  %110 = trunc i64 %61 to i32
  store i32 %110, ptr @load_adr, align 8, !tbaa !28
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !26
  br label %173

111:                                              ; preds = %42
  %112 = load ptr, ptr @functions, align 8, !tbaa !14
  %113 = load i32, ptr @load_adr, align 8, !tbaa !28
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.bc_function, ptr %112, i64 %114
  store i8 1, ptr %115, align 8, !tbaa !36
  store i64 %11, ptr @load_adr, align 8
  br label %173

116:                                              ; preds = %42
  %117 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %117, ptr %2, align 8, !tbaa !14
  tail call void @addbyte(i32 noundef 67) #41
  %118 = call i64 @long_val(ptr noundef nonnull %2) #41
  %119 = icmp slt i64 %118, 128
  %120 = trunc i64 %118 to i32
  br i1 %119, label %121, label %124

121:                                              ; preds = %116
  %122 = shl i32 %120, 24
  %123 = ashr exact i32 %122, 24
  br label %129

124:                                              ; preds = %116
  %125 = lshr i32 %120, 8
  %126 = and i32 %125, 127
  %127 = or i32 %126, 128
  tail call void @addbyte(i32 noundef %127) #41
  %128 = and i32 %120, 255
  br label %129

129:                                              ; preds = %124, %121
  %130 = phi i32 [ %128, %124 ], [ %123, %121 ]
  tail call void @addbyte(i32 noundef %130) #41
  %131 = load ptr, ptr %2, align 8, !tbaa !14
  %132 = load i8, ptr %131, align 1, !tbaa !16
  %133 = icmp eq i8 %132, 44
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = getelementptr inbounds i8, ptr %131, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !16
  br label %137

137:                                              ; preds = %134, %129
  %138 = phi i8 [ %136, %134 ], [ %132, %129 ]
  %139 = phi ptr [ %135, %134 ], [ %131, %129 ]
  %140 = icmp eq i8 %138, 58
  br i1 %140, label %148, label %141

141:                                              ; preds = %141, %137
  %142 = phi i8 [ %146, %141 ], [ %138, %137 ]
  %143 = phi ptr [ %144, %141 ], [ %139, %137 ]
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  %145 = sext i8 %142 to i32
  tail call void @addbyte(i32 noundef %145) #41
  %146 = load i8, ptr %144, align 1, !tbaa !16
  %147 = icmp eq i8 %146, 58
  br i1 %147, label %148, label %141, !llvm.loop !64

148:                                              ; preds = %141, %137
  %149 = phi ptr [ %139, %137 ], [ %144, %141 ]
  store ptr %149, ptr %2, align 8, !tbaa !14
  tail call void @addbyte(i32 noundef 58) #41
  br label %173

150:                                              ; preds = %42
  %151 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %151, ptr %2, align 8, !tbaa !14
  tail call void @addbyte(i32 noundef 99) #41
  %152 = load i8, ptr %151, align 1, !tbaa !16
  %153 = sext i8 %152 to i32
  tail call void @addbyte(i32 noundef %153) #41
  br label %173

154:                                              ; preds = %42
  tail call void @addbyte(i32 noundef 75) #41
  store i8 1, ptr @load_const, align 1, !tbaa !16
  br label %173

155:                                              ; preds = %42, %42, %42, %42, %42, %42, %42, %42
  %156 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %156, ptr %2, align 8, !tbaa !14
  tail call void @addbyte(i32 noundef %12) #41
  %157 = call i64 @long_val(ptr noundef nonnull %2) #41
  %158 = icmp slt i64 %157, 128
  %159 = trunc i64 %157 to i32
  br i1 %158, label %160, label %161

160:                                              ; preds = %155
  tail call void @addbyte(i32 noundef %159) #41
  br label %173

161:                                              ; preds = %155
  %162 = lshr i32 %159, 8
  %163 = and i32 %162, 127
  %164 = or i32 %163, 128
  tail call void @addbyte(i32 noundef %164) #41
  %165 = and i32 %159, 255
  tail call void @addbyte(i32 noundef %165) #41
  br label %173

166:                                              ; preds = %42
  %167 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %167, ptr %2, align 8, !tbaa !14
  %168 = load i8, ptr %167, align 1, !tbaa !16
  %169 = sext i8 %168 to i32
  switch i32 %169, label %173 [
    i32 105, label %170
    i32 114, label %171
  ]

170:                                              ; preds = %166
  tail call void @clear_func(i8 noundef signext 0) #38
  store i32 0, ptr @load_adr, align 8, !tbaa !28
  store i32 0, ptr getelementptr inbounds (%struct.program_counter, ptr @load_adr, i64 0, i32 1), align 4, !tbaa !26
  store i8 0, ptr @load_str, align 1, !tbaa !16
  store i8 0, ptr @load_const, align 1, !tbaa !16
  br label %173

171:                                              ; preds = %166
  tail call void @execute() #38
  br label %173

172:                                              ; preds = %42
  tail call void @addbyte(i32 noundef %12) #41
  br label %173

173:                                              ; preds = %172, %171, %170, %166, %161, %160, %154, %150, %148, %111, %108, %54, %44, %43, %42
  %174 = phi i64 [ %11, %172 ], [ %11, %42 ], [ %11, %166 ], [ %11, %171 ], [ %11, %170 ], [ %11, %160 ], [ %11, %161 ], [ %11, %154 ], [ %11, %150 ], [ %11, %148 ], [ %11, %111 ], [ %109, %108 ], [ %11, %54 ], [ %11, %44 ], [ %11, %43 ]
  %175 = load ptr, ptr %2, align 8, !tbaa !14
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %176, ptr %2, align 8, !tbaa !14
  br label %177

177:                                              ; preds = %173, %40, %38, %33, %29, %27, %20
  %178 = phi ptr [ %176, %173 ], [ %37, %38 ], [ %37, %40 ], [ %34, %33 ], [ %30, %29 ], [ %28, %27 ], [ %22, %20 ]
  %179 = phi i64 [ %174, %173 ], [ %11, %38 ], [ %11, %40 ], [ %11, %33 ], [ %11, %29 ], [ %11, %27 ], [ %11, %20 ]
  %180 = load i8, ptr %178, align 1, !tbaa !16
  %181 = icmp ne i8 %180, 0
  %182 = load i32, ptr @had_error, align 4
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %181, i1 %183, i1 false
  br i1 %184, label %8, label %185, !llvm.loop !65

185:                                              ; preds = %177, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #37
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #16 {
  store i8 0, ptr @compile_only, align 1, !tbaa !16
  store i8 0, ptr @use_math, align 1, !tbaa !16
  store i8 0, ptr @warn_not_std, align 1, !tbaa !16
  store i8 0, ptr @std_only, align 1, !tbaa !16
  %3 = tail call i32 @isatty(i32 noundef 0) #38
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @isatty(i32 noundef 1) #38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i8 [ 0, %8 ], [ 1, %5 ]
  store i8 %10, ptr @interactive, align 1, !tbaa !16
  br label %11

11:                                               ; preds = %13, %9
  %12 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.81) #38
  switch i32 %12, label %13 [
    i32 -1, label %21
    i32 99, label %14
    i32 108, label %15
    i32 105, label %16
    i32 119, label %17
    i32 115, label %18
    i32 118, label %19
  ]

13:                                               ; preds = %19, %18, %17, %16, %15, %14, %11
  br label %11, !llvm.loop !66

14:                                               ; preds = %11
  store i8 1, ptr @compile_only, align 1, !tbaa !16
  br label %13

15:                                               ; preds = %11
  store i8 1, ptr @use_math, align 1, !tbaa !16
  br label %13

16:                                               ; preds = %11
  store i8 1, ptr @interactive, align 1, !tbaa !16
  br label %13

17:                                               ; preds = %11
  store i8 1, ptr @warn_not_std, align 1, !tbaa !16
  br label %13

18:                                               ; preds = %11
  store i8 1, ptr @std_only, align 1, !tbaa !16
  br label %13

19:                                               ; preds = %11
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.2.82)
  br label %13

21:                                               ; preds = %11
  tail call void @init_storage() #38
  tail call void @init_load() #38
  %22 = load i8, ptr @interactive, align 1, !tbaa !16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @use_quit) #38
  br label %26

26:                                               ; preds = %24, %21
  tail call void @init_tree() #38
  tail call void @init_gen() #38
  store ptr null, ptr @g_argv, align 8, !tbaa !14
  store i32 0, ptr @g_argc, align 4, !tbaa !7
  store i8 0, ptr @is_std_in, align 1, !tbaa !16
  store i8 1, ptr @first_file, align 1, !tbaa !16
  %27 = tail call i32 @open_new_file() #41, !range !67
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @exit(i32 noundef 1) #39
  unreachable

30:                                               ; preds = %26
  %31 = tail call i32 @yyparse() #38
  %32 = load i8, ptr @compile_only, align 1, !tbaa !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @putchar(i32 10)
  br label %36

36:                                               ; preds = %34, %30
  tail call void @exit(i32 noundef 0) #39
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @use_quit(i32 %0) #0 {
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.93)
  %3 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @use_quit) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @open_new_file() #0 {
  store i32 1, ptr @line_no, align 4, !tbaa !7
  %1 = load i8, ptr @is_std_in, align 1, !tbaa !16
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %53

3:                                                ; preds = %0
  %4 = load i8, ptr @use_math, align 1, !tbaa !16
  %5 = icmp ne i8 %4, 0
  %6 = load i8, ptr @first_file, align 1
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = tail call i32 @lookup(ptr noundef nonnull @.str.4.85, i32 noundef 2) #38
  %11 = tail call i32 @lookup(ptr noundef nonnull @.str.5.86, i32 noundef 2) #38
  %12 = tail call i32 @lookup(ptr noundef nonnull @.str.6.87, i32 noundef 2) #38
  %13 = tail call i32 @lookup(ptr noundef nonnull @.str.7.88, i32 noundef 2) #38
  %14 = tail call i32 @lookup(ptr noundef nonnull @.str.8.89, i32 noundef 2) #38
  %15 = tail call i32 @lookup(ptr noundef nonnull @.str.9.90, i32 noundef 2) #38
  tail call void @load_code(ptr noundef nonnull @libmath) #38
  br label %16

16:                                               ; preds = %9, %3
  %17 = load i32, ptr @optind, align 4, !tbaa !7
  %18 = load i32, ptr @g_argc, align 4, !tbaa !7
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load ptr, ptr @g_argv, align 8, !tbaa !14
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  %25 = tail call noalias ptr @fopen(ptr noundef %24, ptr noundef nonnull @.str.10.91) #41
  %26 = icmp eq ptr %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load i8, ptr @first_file, align 1, !tbaa !16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr @yyin, align 8, !tbaa !14
  %32 = tail call i32 @fclose(ptr noundef %31) #41
  br label %33

33:                                               ; preds = %30, %27
  store ptr %25, ptr @yyin, align 8, !tbaa !14
  store i8 0, ptr @first_file, align 1, !tbaa !16
  %34 = load i32, ptr @optind, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @optind, align 4, !tbaa !7
  br label %53

36:                                               ; preds = %20
  %37 = load ptr, ptr @stderr, align 8, !tbaa !14
  %38 = load ptr, ptr @g_argv, align 8, !tbaa !14
  %39 = load i32, ptr @optind, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @optind, align 4, !tbaa !7
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !14
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.11.92, ptr noundef %43) #45
  tail call void @exit(i32 noundef 1) #39
  unreachable

45:                                               ; preds = %16
  %46 = load ptr, ptr @stdin, align 8, !tbaa !14
  %47 = load i8, ptr @first_file, align 1, !tbaa !16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load ptr, ptr @yyin, align 8, !tbaa !14
  %51 = tail call i32 @fclose(ptr noundef %50) #41
  br label %52

52:                                               ; preds = %49, %45
  store ptr %46, ptr @yyin, align 8, !tbaa !14
  store i8 0, ptr @first_file, align 1, !tbaa !16
  store i8 1, ptr @is_std_in, align 1, !tbaa !16
  br label %53

53:                                               ; preds = %52, %33, %0
  %54 = phi i32 [ 1, %33 ], [ 1, %52 ], [ 0, %0 ]
  ret i32 %54
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @free_num(ptr nocapture noundef %0) #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bc_struct, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 4, !tbaa !68
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %2) #38
  br label %10

10:                                               ; preds = %9, %4
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @new_num(i32 noundef %0, i32 noundef %1) #18 {
  %3 = sext i32 %0 to i64
  %4 = add nsw i64 %3, 1040
  %5 = sext i32 %1 to i64
  %6 = add nsw i64 %4, %5
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #43
  store i32 0, ptr %7, align 4, !tbaa !69
  %8 = getelementptr inbounds %struct.bc_struct, ptr %7, i64 0, i32 1
  store i32 %0, ptr %8, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.bc_struct, ptr %7, i64 0, i32 2
  store i32 %1, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.bc_struct, ptr %7, i64 0, i32 3
  store i32 1, ptr %10, align 4, !tbaa !68
  %11 = getelementptr inbounds %struct.bc_struct, ptr %7, i64 0, i32 4
  store i8 0, ptr %11, align 4, !tbaa !16
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal void @init_numbers() #18 {
  %1 = tail call noalias dereferenceable_or_null(1041) ptr @malloc(i64 noundef 1041) #43
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %1, align 4, !tbaa !16
  %2 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  store i8 0, ptr %2, align 4, !tbaa !16
  store ptr %1, ptr @_zero_, align 8, !tbaa !14
  %3 = tail call noalias dereferenceable_or_null(1041) ptr @malloc(i64 noundef 1041) #43
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %3, align 4, !tbaa !16
  %4 = getelementptr inbounds %struct.bc_struct, ptr %3, i64 0, i32 4
  store ptr %3, ptr @_one_, align 8, !tbaa !14
  store i8 1, ptr %4, align 4, !tbaa !16
  %5 = tail call noalias dereferenceable_or_null(1041) ptr @malloc(i64 noundef 1041) #43
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %5, align 4, !tbaa !16
  %6 = getelementptr inbounds %struct.bc_struct, ptr %5, i64 0, i32 4
  store ptr %5, ptr @_two_, align 8, !tbaa !14
  store i8 2, ptr %6, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal ptr @copy_num(ptr noundef returned %0) #19 {
  %2 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !68
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !68
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @init_num(ptr nocapture noundef writeonly %0) #20 {
  %2 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.bc_struct, ptr %2, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %3, align 4, !tbaa !68
  store ptr %2, ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @int2num(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca [30 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %3) #37
  %4 = icmp sgt i32 %1, -1
  %5 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %6 = urem i32 %5, 10
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %3, align 16, !tbaa !16
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
  store i8 %16, ptr %11, align 1, !tbaa !16
  %17 = add nuw nsw i32 %12, 1
  %18 = getelementptr inbounds i8, ptr %11, i64 1
  %19 = icmp ult i32 %13, 100
  br i1 %19, label %20, label %10, !llvm.loop !70

20:                                               ; preds = %10, %2
  %21 = phi i32 [ 1, %2 ], [ %17, %10 ]
  %22 = phi ptr [ %8, %2 ], [ %18, %10 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.bc_struct, ptr %23, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !68
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 4, !tbaa !68
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @free(ptr noundef nonnull %23) #38
  br label %31

31:                                               ; preds = %30, %25, %20
  %32 = add nuw i32 %21, 1040
  %33 = zext i32 %32 to i64
  %34 = tail call noalias ptr @malloc(i64 noundef %33) #43
  store i32 0, ptr %34, align 4, !tbaa !69
  %35 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 1
  store i32 %21, ptr %35, align 4, !tbaa !43
  %36 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 2
  store i32 0, ptr %36, align 4, !tbaa !45
  %37 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 3
  store i32 1, ptr %37, align 4, !tbaa !68
  %38 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 4
  store i8 0, ptr %38, align 4, !tbaa !16
  store ptr %34, ptr %0, align 8, !tbaa !14
  br i1 %4, label %40, label %39

39:                                               ; preds = %31
  store i32 1, ptr %34, align 4, !tbaa !69
  br label %40

40:                                               ; preds = %39, %31
  br label %41

41:                                               ; preds = %41, %40
  %42 = phi i32 [ %45, %41 ], [ %21, %40 ]
  %43 = phi ptr [ %48, %41 ], [ %38, %40 ]
  %44 = phi ptr [ %46, %41 ], [ %22, %40 ]
  %45 = add nsw i32 %42, -1
  %46 = getelementptr inbounds i8, ptr %44, i64 -1
  %47 = load i8, ptr %46, align 1, !tbaa !16
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 %47, ptr %43, align 1, !tbaa !16
  %49 = icmp sgt i32 %42, 1
  br i1 %49, label %41, label %50, !llvm.loop !71

50:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %3) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @num2long(ptr nocapture noundef readonly %0) #21 {
  %2 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !43
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
  %14 = load i8, ptr %10, align 1, !tbaa !16
  %15 = sext i8 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = add i32 %9, -1
  %18 = icmp ugt i32 %9, 1
  %19 = icmp slt i64 %16, 922337203685477581
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %8, label %21, !llvm.loop !72

21:                                               ; preds = %8
  %.lcssa1 = phi i64 [ %16, %8 ]
  %.lcssa = phi i1 [ %18, %8 ]
  %22 = tail call i64 @llvm.smax.i64(i64 %.lcssa1, i64 0)
  %23 = select i1 %.lcssa, i64 0, i64 %22
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i64 [ 0, %1 ], [ %23, %21 ]
  %26 = load i32, ptr %0, align 4, !tbaa !69
  %27 = icmp eq i32 %26, 0
  %28 = sub nsw i64 0, %25
  %29 = select i1 %27, i64 %25, i64 %28
  ret i64 %29
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @bc_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #21 {
  %3 = tail call fastcc i32 @_do_compare(ptr noundef %0, ptr noundef %1, i32 noundef 1, i32 noundef 0) #41, !range !73
  ret i32 %3
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @_do_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #21 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 4, !tbaa !69
  %8 = load i32, ptr %1, align 4, !tbaa !69
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %7, 0
  %12 = select i1 %11, i32 1, i32 -1
  br label %124

13:                                               ; preds = %6, %4
  %14 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = icmp sgt i32 %15, %17
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  br i1 %5, label %124, label %22

22:                                               ; preds = %21
  %23 = load i32, ptr %0, align 4, !tbaa !69
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 1, i32 -1
  br label %124

26:                                               ; preds = %19
  br i1 %5, label %124, label %27

27:                                               ; preds = %26
  %28 = load i32, ptr %0, align 4, !tbaa !69
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 -1, i32 1
  br label %124

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !45
  %34 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !45
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
  %52 = load i8, ptr %51, align 1, !tbaa !16
  %53 = load i8, ptr %50, align 1, !tbaa !16
  %54 = icmp eq i8 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds i8, ptr %51, i64 1
  %57 = getelementptr inbounds i8, ptr %50, i64 1
  %58 = add nsw i32 %49, -1
  %59 = icmp sgt i32 %49, 1
  br i1 %59, label %48, label %85, !llvm.loop !74

60:                                               ; preds = %48
  %.lcssa2 = phi i32 [ %49, %48 ]
  %.lcssa1 = phi ptr [ %50, %48 ]
  %.lcssa = phi i8 [ %52, %48 ]
  %61 = icmp ne i32 %3, 0
  %62 = icmp eq i32 %.lcssa2, 1
  %63 = and i1 %61, %62
  %64 = icmp eq i32 %33, %35
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %124, label %70

66:                                               ; preds = %31
  %67 = icmp eq i32 %38, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %66
  %69 = load i8, ptr %39, align 1, !tbaa !16
  br label %70

70:                                               ; preds = %68, %60
  %71 = phi i8 [ %.lcssa, %60 ], [ %69, %68 ]
  %72 = phi ptr [ %.lcssa1, %60 ], [ %40, %68 ]
  %73 = load i8, ptr %72, align 1, !tbaa !16
  %74 = icmp sgt i8 %71, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  br i1 %5, label %124, label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %0, align 4, !tbaa !69
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 1, i32 -1
  br label %124

80:                                               ; preds = %70
  br i1 %5, label %124, label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %0, align 4, !tbaa !69
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
  %96 = load i8, ptr %95, align 1, !tbaa !16
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  br i1 %5, label %124, label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %0, align 4, !tbaa !69
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, i32 1, i32 -1
  br label %124

103:                                              ; preds = %93
  %104 = getelementptr inbounds i8, ptr %95, i64 1
  %105 = add nsw i32 %94, -1
  %106 = icmp sgt i32 %94, 1
  br i1 %106, label %93, label %124, !llvm.loop !75

107:                                              ; preds = %89
  %108 = sub nsw i32 %35, %33
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %120, %107
  %111 = phi i32 [ %122, %120 ], [ %108, %107 ]
  %112 = phi ptr [ %121, %120 ], [ %86, %107 ]
  %113 = load i8, ptr %112, align 1, !tbaa !16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  br i1 %5, label %124, label %116

116:                                              ; preds = %115
  %117 = load i32, ptr %0, align 4, !tbaa !69
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, i32 -1, i32 1
  br label %124

120:                                              ; preds = %110
  %121 = getelementptr inbounds i8, ptr %112, i64 1
  %122 = add nsw i32 %111, -1
  %123 = icmp sgt i32 %111, 1
  br i1 %123, label %110, label %124, !llvm.loop !76

124:                                              ; preds = %120, %116, %115, %107, %103, %99, %98, %90, %85, %81, %80, %76, %75, %60, %27, %26, %22, %21, %10
  %125 = phi i32 [ %12, %10 ], [ 1, %21 ], [ -1, %26 ], [ 1, %75 ], [ -1, %80 ], [ 1, %98 ], [ -1, %115 ], [ 0, %85 ], [ %25, %22 ], [ %30, %27 ], [ %79, %76 ], [ %84, %81 ], [ %102, %99 ], [ %119, %116 ], [ 0, %60 ], [ 0, %90 ], [ 0, %107 ], [ 0, %103 ], [ 0, %120 ]
  ret i32 %125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal signext i8 @is_zero(ptr noundef readonly %0) #22 {
  %2 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = add nsw i32 %8, %6
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  br label %13

13:                                               ; preds = %18, %11
  %14 = phi ptr [ %19, %18 ], [ %12, %11 ]
  %15 = phi i32 [ %20, %18 ], [ %9, %11 ]
  %16 = load i8, ptr %14, align 1, !tbaa !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %14, i64 1
  %20 = add nsw i32 %15, -1
  %21 = icmp sgt i32 %15, 1
  br i1 %21, label %13, label %22, !llvm.loop !77

22:                                               ; preds = %18, %13, %4
  %23 = phi i32 [ %9, %4 ], [ 0, %18 ], [ %15, %13 ]
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %22, %1
  %27 = phi i8 [ 1, %1 ], [ %25, %22 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal signext i8 @is_neg(ptr nocapture noundef readonly %0) #23 {
  %2 = load i32, ptr %0, align 4, !tbaa !69
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nounwind optsize uwtable
define internal void @bc_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !69
  %5 = load i32, ptr %1, align 4, !tbaa !69
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @_do_add(ptr noundef nonnull %0, ptr noundef nonnull %1) #41
  %9 = load i32, ptr %0, align 4, !tbaa !69
  store i32 %9, ptr %8, align 4, !tbaa !69
  br label %23

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #41, !range !73
  switch i32 %11, label %23 [
    i32 -1, label %12
    i32 0, label %15
    i32 1, label %20
  ]

12:                                               ; preds = %10
  %13 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %1, ptr noundef nonnull %0) #41
  %14 = load i32, ptr %1, align 4, !tbaa !69
  store i32 %14, ptr %13, align 4, !tbaa !69
  br label %23

15:                                               ; preds = %10
  %16 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.bc_struct, ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !68
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !68
  br label %23

20:                                               ; preds = %10
  %21 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %0, ptr noundef nonnull %1) #41
  %22 = load i32, ptr %0, align 4, !tbaa !69
  store i32 %22, ptr %21, align 4, !tbaa !69
  br label %23

23:                                               ; preds = %20, %15, %12, %10, %7
  %24 = phi ptr [ %8, %7 ], [ undef, %10 ], [ %21, %20 ], [ %16, %15 ], [ %13, %12 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.bc_struct, ptr %25, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !68
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %28, align 4, !tbaa !68
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %25) #38
  br label %33

33:                                               ; preds = %32, %27, %23
  store ptr %24, ptr %2, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @_do_add(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %8 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = tail call i32 @llvm.smax.i32(i32 %9, i32 %11)
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = sext i32 %7 to i64
  %16 = add nsw i64 %15, 1040
  %17 = add nsw i64 %16, %14
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #43
  store i32 0, ptr %18, align 4, !tbaa !69
  %19 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 1
  store i32 %13, ptr %19, align 4, !tbaa !43
  %20 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 2
  store i32 %7, ptr %20, align 4, !tbaa !45
  %21 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 3
  store i32 1, ptr %21, align 4, !tbaa !68
  %22 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 4
  store i8 0, ptr %22, align 4, !tbaa !16
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
  br i1 %38, label %83, label %39

39:                                               ; preds = %2
  %40 = icmp sgt i32 %4, %6
  br i1 %40, label %41, label %61

41:                                               ; preds = %39
  %42 = tail call i64 @llvm.smax.i64(i64 %30, i64 %24)
  %43 = add nsw i64 %42, %15
  %44 = add nsw i64 %43, 16
  %45 = xor i32 %6, -1
  %46 = add i32 %4, %45
  %47 = zext i32 %46 to i64
  %48 = sub nsw i64 %44, %47
  %49 = getelementptr i8, ptr %18, i64 %48
  %50 = add nsw i64 %26, %24
  %51 = add nsw i64 %50, 15
  %52 = sub nsw i64 %51, %47
  %53 = getelementptr i8, ptr %0, i64 %52
  %54 = add nuw nsw i64 %47, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %49, ptr noundef nonnull align 1 dereferenceable(1) %53, i64 %54, i1 false), !tbaa !16
  %55 = add nsw i64 %50, 14
  %56 = sub nsw i64 %55, %47
  %57 = add nsw i64 %43, 15
  %58 = sub nsw i64 %57, %47
  %59 = getelementptr i8, ptr %0, i64 %56
  %60 = getelementptr i8, ptr %18, i64 %58
  br label %83

61:                                               ; preds = %39
  %62 = icmp sgt i32 %6, %4
  br i1 %62, label %63, label %83

63:                                               ; preds = %61
  %64 = tail call i64 @llvm.smax.i64(i64 %30, i64 %24)
  %65 = add nsw i64 %64, %15
  %66 = add nsw i64 %65, 16
  %67 = xor i32 %4, -1
  %68 = add i32 %6, %67
  %69 = zext i32 %68 to i64
  %70 = sub nsw i64 %66, %69
  %71 = getelementptr i8, ptr %18, i64 %70
  %72 = add nsw i64 %32, %30
  %73 = add nsw i64 %72, 15
  %74 = sub nsw i64 %73, %69
  %75 = getelementptr i8, ptr %1, i64 %74
  %76 = add nuw nsw i64 %69, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %71, ptr noundef nonnull align 1 dereferenceable(1) %75, i64 %76, i1 false), !tbaa !16
  %77 = add nsw i64 %72, 14
  %78 = sub nsw i64 %77, %69
  %79 = add nsw i64 %65, 15
  %80 = sub nsw i64 %79, %69
  %81 = getelementptr i8, ptr %1, i64 %78
  %82 = getelementptr i8, ptr %18, i64 %80
  br label %83

83:                                               ; preds = %63, %61, %41, %2
  %84 = phi ptr [ %28, %2 ], [ %28, %61 ], [ %59, %41 ], [ %28, %63 ]
  %85 = phi ptr [ %34, %2 ], [ %34, %61 ], [ %34, %41 ], [ %81, %63 ]
  %86 = phi ptr [ %37, %2 ], [ %37, %61 ], [ %60, %41 ], [ %82, %63 ]
  %87 = phi i32 [ %4, %2 ], [ %4, %61 ], [ %6, %41 ], [ %4, %63 ]
  %88 = phi i32 [ %4, %2 ], [ %6, %61 ], [ %6, %41 ], [ %4, %63 ]
  %89 = add nsw i32 %87, %9
  %90 = add nsw i32 %88, %11
  %91 = icmp sgt i32 %89, 0
  %92 = icmp sgt i32 %90, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %118

94:                                               ; preds = %94, %83
  %95 = phi i32 [ %114, %94 ], [ %90, %83 ]
  %96 = phi i32 [ %113, %94 ], [ %89, %83 ]
  %97 = phi i32 [ %111, %94 ], [ 0, %83 ]
  %98 = phi ptr [ %112, %94 ], [ %86, %83 ]
  %99 = phi ptr [ %103, %94 ], [ %85, %83 ]
  %100 = phi ptr [ %101, %94 ], [ %84, %83 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 -1
  %102 = load i8, ptr %100, align 1, !tbaa !16
  %103 = getelementptr inbounds i8, ptr %99, i64 -1
  %104 = load i8, ptr %99, align 1, !tbaa !16
  %105 = trunc i32 %97 to i8
  %106 = add i8 %102, %105
  %107 = add i8 %106, %104
  %108 = icmp sgt i8 %107, 9
  %109 = add nsw i8 %107, -10
  %110 = select i1 %108, i8 %109, i8 %107
  %111 = zext i1 %108 to i32
  store i8 %110, ptr %98, align 1, !tbaa !16
  %112 = getelementptr inbounds i8, ptr %98, i64 -1
  %113 = add nsw i32 %96, -1
  %114 = add nsw i32 %95, -1
  %115 = icmp ugt i32 %96, 1
  %116 = icmp ugt i32 %95, 1
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %94, label %118, !llvm.loop !78

118:                                              ; preds = %94, %83
  %119 = phi ptr [ %84, %83 ], [ %101, %94 ]
  %120 = phi ptr [ %85, %83 ], [ %103, %94 ]
  %121 = phi ptr [ %86, %83 ], [ %112, %94 ]
  %122 = phi i32 [ 0, %83 ], [ %111, %94 ]
  %123 = phi i32 [ %89, %83 ], [ %113, %94 ]
  %124 = phi i32 [ %90, %83 ], [ %114, %94 ]
  %125 = icmp eq i32 %123, 0
  %126 = select i1 %125, i32 %124, i32 %123
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %118
  %129 = select i1 %125, ptr %120, ptr %119
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i32 [ %135, %130 ], [ %126, %128 ]
  %132 = phi i32 [ %143, %130 ], [ %122, %128 ]
  %133 = phi ptr [ %144, %130 ], [ %121, %128 ]
  %134 = phi ptr [ %136, %130 ], [ %129, %128 ]
  %135 = add nsw i32 %131, -1
  %136 = getelementptr inbounds i8, ptr %134, i64 -1
  %137 = load i8, ptr %134, align 1, !tbaa !16
  %138 = trunc i32 %132 to i8
  %139 = add i8 %137, %138
  %140 = icmp sgt i8 %139, 9
  %141 = add nsw i8 %139, -10
  %142 = select i1 %140, i8 %141, i8 %139
  %143 = zext i1 %140 to i32
  store i8 %142, ptr %133, align 1, !tbaa !16
  %144 = getelementptr inbounds i8, ptr %133, i64 -1
  %145 = icmp ugt i32 %131, 1
  br i1 %145, label %130, label %146, !llvm.loop !79

146:                                              ; preds = %130, %118
  %147 = phi ptr [ %121, %118 ], [ %144, %130 ]
  %148 = phi i32 [ %122, %118 ], [ %143, %130 ]
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i8, ptr %147, align 1, !tbaa !16
  %152 = add i8 %151, 1
  store i8 %152, ptr %147, align 1, !tbaa !16
  br label %153

153:                                              ; preds = %150, %146
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %18) #41
  ret ptr %18
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @_do_sub(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %8 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = tail call i32 @llvm.smax.i32(i32 %9, i32 %11)
  %13 = tail call i32 @llvm.smin.i32(i32 %4, i32 %6)
  %14 = tail call i32 @llvm.smin.i32(i32 %9, i32 %11)
  %15 = sext i32 %7 to i64
  %16 = add nsw i64 %15, 1040
  %17 = sext i32 %12 to i64
  %18 = add nsw i64 %16, %17
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #43
  store i32 0, ptr %19, align 4, !tbaa !69
  %20 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 1
  store i32 %7, ptr %20, align 4, !tbaa !43
  %21 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 2
  store i32 %12, ptr %21, align 4, !tbaa !45
  %22 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 3
  store i32 1, ptr %22, align 4, !tbaa !68
  %23 = getelementptr inbounds %struct.bc_struct, ptr %19, i64 0, i32 4
  store i8 0, ptr %23, align 4, !tbaa !16
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
  br i1 %36, label %37, label %56

37:                                               ; preds = %2
  %38 = add nsw i64 %17, %15
  %39 = add nsw i64 %38, 15
  %40 = xor i32 %14, -1
  %41 = add i32 %9, %40
  %42 = zext i32 %41 to i64
  %43 = sub nsw i64 %39, %42
  %44 = getelementptr i8, ptr %19, i64 %43
  %45 = add nsw i64 %27, %25
  %46 = add nsw i64 %45, 15
  %47 = sub nsw i64 %46, %42
  %48 = getelementptr i8, ptr %0, i64 %47
  %49 = add nuw nsw i64 %42, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %44, ptr noundef nonnull align 1 dereferenceable(1) %48, i64 %49, i1 false), !tbaa !16
  %50 = add nsw i64 %45, 14
  %51 = sub nsw i64 %50, %42
  %52 = add nsw i64 %38, 14
  %53 = sub nsw i64 %52, %42
  %54 = getelementptr i8, ptr %0, i64 %51
  %55 = getelementptr i8, ptr %19, i64 %53
  br label %79

56:                                               ; preds = %2
  %57 = getelementptr inbounds i8, ptr %23, i64 %15
  %58 = getelementptr inbounds i8, ptr %57, i64 %17
  %59 = getelementptr inbounds i8, ptr %58, i64 -1
  %60 = sub nsw i32 %11, %14
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %62, %56
  %63 = phi i32 [ %77, %62 ], [ %60, %56 ]
  %64 = phi i32 [ %72, %62 ], [ 0, %56 ]
  %65 = phi ptr [ %76, %62 ], [ %59, %56 ]
  %66 = phi ptr [ %67, %62 ], [ %35, %56 ]
  %67 = getelementptr inbounds i8, ptr %66, i64 -1
  %68 = load i8, ptr %66, align 1, !tbaa !16
  %69 = sext i8 %68 to i32
  %70 = add nsw i32 %64, %69
  %71 = icmp sgt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = select i1 %71, i32 10, i32 0
  %74 = sub nsw i32 %73, %70
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %65, i64 -1
  store i8 %75, ptr %65, align 1, !tbaa !16
  %77 = add nsw i32 %63, -1
  %78 = icmp ugt i32 %63, 1
  br i1 %78, label %62, label %79, !llvm.loop !80

79:                                               ; preds = %62, %56, %37
  %80 = phi ptr [ %29, %56 ], [ %54, %37 ], [ %29, %62 ]
  %81 = phi ptr [ %35, %56 ], [ %35, %37 ], [ %67, %62 ]
  %82 = phi ptr [ %59, %56 ], [ %55, %37 ], [ %76, %62 ]
  %83 = phi i32 [ 0, %56 ], [ 0, %37 ], [ %72, %62 ]
  %84 = add nsw i32 %14, %13
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %86, %79
  %87 = phi i32 [ %106, %86 ], [ 0, %79 ]
  %88 = phi i32 [ %102, %86 ], [ %83, %79 ]
  %89 = phi ptr [ %105, %86 ], [ %82, %79 ]
  %90 = phi ptr [ %95, %86 ], [ %81, %79 ]
  %91 = phi ptr [ %92, %86 ], [ %80, %79 ]
  %92 = getelementptr inbounds i8, ptr %91, i64 -1
  %93 = load i8, ptr %91, align 1, !tbaa !16
  %94 = sext i8 %93 to i32
  %95 = getelementptr inbounds i8, ptr %90, i64 -1
  %96 = load i8, ptr %90, align 1, !tbaa !16
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %88, %97
  %99 = sub nsw i32 %94, %98
  %100 = icmp slt i32 %99, 0
  %101 = add nsw i32 %99, 10
  %102 = lshr i32 %99, 31
  %103 = select i1 %100, i32 %101, i32 %99
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds i8, ptr %89, i64 -1
  store i8 %104, ptr %89, align 1, !tbaa !16
  %106 = add nuw nsw i32 %87, 1
  %107 = icmp eq i32 %106, %84
  br i1 %107, label %108, label %86, !llvm.loop !81

108:                                              ; preds = %86, %79
  %109 = phi ptr [ %80, %79 ], [ %92, %86 ]
  %110 = phi ptr [ %82, %79 ], [ %105, %86 ]
  %111 = phi i32 [ %83, %79 ], [ %102, %86 ]
  %112 = sub nsw i32 %7, %13
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %114, %108
  %115 = phi i32 [ %129, %114 ], [ %112, %108 ]
  %116 = phi i32 [ %125, %114 ], [ %111, %108 ]
  %117 = phi ptr [ %128, %114 ], [ %110, %108 ]
  %118 = phi ptr [ %119, %114 ], [ %109, %108 ]
  %119 = getelementptr inbounds i8, ptr %118, i64 -1
  %120 = load i8, ptr %118, align 1, !tbaa !16
  %121 = sext i8 %120 to i32
  %122 = sub nsw i32 %121, %116
  %123 = icmp slt i32 %122, 0
  %124 = add nsw i32 %122, 10
  %125 = lshr i32 %122, 31
  %126 = select i1 %123, i32 %124, i32 %122
  %127 = trunc i32 %126 to i8
  %128 = getelementptr inbounds i8, ptr %117, i64 -1
  store i8 %127, ptr %117, align 1, !tbaa !16
  %129 = add nsw i32 %115, -1
  %130 = icmp ugt i32 %115, 1
  br i1 %130, label %114, label %131, !llvm.loop !82

131:                                              ; preds = %114, %108
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %19) #41
  ret ptr %19
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_rm_leading_zeros(ptr nocapture noundef %0) unnamed_addr #24 {
  %2 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !43
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
  %14 = load i8, ptr %12, align 1, !tbaa !16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  %18 = add nsw i32 %13, -1
  %19 = icmp sgt i32 %13, 2
  br i1 %19, label %11, label %20, !llvm.loop !83

20:                                               ; preds = %16, %11, %1
  %21 = phi i32 [ %3, %1 ], [ 1, %16 ], [ %13, %11 ]
  %22 = phi ptr [ %4, %1 ], [ %10, %16 ], [ %12, %11 ]
  store i32 %21, ptr %2, align 4, !tbaa !43
  %23 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !45
  %25 = add nsw i32 %24, %21
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %32, %27 ], [ %22, %20 ]
  %29 = phi ptr [ %34, %27 ], [ %4, %20 ]
  %30 = phi i32 [ %31, %27 ], [ %25, %20 ]
  %31 = add nsw i32 %30, -1
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %28, align 1, !tbaa !16
  %34 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %33, ptr %29, align 1, !tbaa !16
  %35 = icmp ugt i32 %30, 1
  br i1 %35, label %27, label %36, !llvm.loop !84

36:                                               ; preds = %27, %20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @bc_sub(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = load i32, ptr %0, align 4, !tbaa !69
  %5 = load i32, ptr %1, align 4, !tbaa !69
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @_do_add(ptr noundef nonnull %0, ptr noundef nonnull %1) #41
  %9 = load i32, ptr %0, align 4, !tbaa !69
  store i32 %9, ptr %8, align 4, !tbaa !69
  br label %25

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @_do_compare(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 0) #41, !range !73
  switch i32 %11, label %25 [
    i32 -1, label %12
    i32 0, label %17
    i32 1, label %22
  ]

12:                                               ; preds = %10
  %13 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %1, ptr noundef nonnull %0) #41
  %14 = load i32, ptr %1, align 4, !tbaa !69
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, ptr %13, align 4, !tbaa !69
  br label %25

17:                                               ; preds = %10
  %18 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.bc_struct, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !68
  br label %25

22:                                               ; preds = %10
  %23 = tail call fastcc ptr @_do_sub(ptr noundef nonnull %0, ptr noundef nonnull %1) #41
  %24 = load i32, ptr %0, align 4, !tbaa !69
  store i32 %24, ptr %23, align 4, !tbaa !69
  br label %25

25:                                               ; preds = %22, %17, %12, %10, %7
  %26 = phi ptr [ %8, %7 ], [ undef, %10 ], [ %23, %22 ], [ %18, %17 ], [ %13, %12 ]
  %27 = load ptr, ptr %2, align 8, !tbaa !14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bc_struct, ptr %27, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !68
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %30, align 4, !tbaa !68
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @free(ptr noundef nonnull %27) #38
  br label %35

35:                                               ; preds = %34, %29, %25
  store ptr %26, ptr %2, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @bc_multiply(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !45
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
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #43
  %27 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 1
  store i32 %21, ptr %27, align 4, !tbaa !43
  %28 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 2
  store i32 %19, ptr %28, align 4, !tbaa !45
  %29 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 3
  store i32 1, ptr %29, align 4, !tbaa !68
  %30 = getelementptr inbounds %struct.bc_struct, ptr %26, i64 0, i32 4
  store i8 0, ptr %30, align 4, !tbaa !16
  %31 = load i32, ptr %0, align 4, !tbaa !69
  %32 = load i32, ptr %1, align 4, !tbaa !69
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, ptr %26, align 4, !tbaa !69
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
  %77 = load i8, ptr %72, align 1, !tbaa !16
  %78 = sext i8 %77 to i64
  %79 = add nsw i64 %73, 1
  %80 = load i8, ptr %75, align 1, !tbaa !16
  %81 = sext i8 %80 to i64
  %82 = mul nsw i64 %81, %78
  %83 = add nsw i64 %82, %74
  %84 = icmp uge ptr %76, %35
  %85 = icmp ne i64 %73, -1
  %86 = and i1 %84, %85
  br i1 %86, label %71, label %87, !llvm.loop !85

87:                                               ; preds = %71, %56
  %88 = phi i64 [ %58, %56 ], [ %83, %71 ]
  %89 = sdiv i64 %88, 10
  %90 = add nuw nsw i32 %57, 1
  %91 = icmp eq i32 %90, %20
  br i1 %91, label %49, label %56, !llvm.loop !86

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
  %114 = load i8, ptr %109, align 1, !tbaa !16
  %115 = sext i8 %114 to i64
  %116 = add nsw i64 %110, 1
  %117 = load i8, ptr %112, align 1, !tbaa !16
  %118 = sext i8 %117 to i64
  %119 = mul nsw i64 %118, %115
  %120 = add nsw i64 %119, %111
  %121 = icmp uge ptr %113, %35
  %122 = icmp ne i64 %110, -1
  %123 = and i1 %121, %122
  br i1 %123, label %108, label %124, !llvm.loop !87

124:                                              ; preds = %108, %92
  %125 = phi i64 [ %95, %92 ], [ %120, %108 ]
  %126 = srem i64 %125, 10
  %127 = trunc i64 %126 to i8
  %128 = getelementptr inbounds i8, ptr %93, i64 -1
  store i8 %127, ptr %93, align 1, !tbaa !16
  %129 = sdiv i64 %125, 10
  %130 = add nuw nsw i32 %94, 1
  %131 = icmp slt i32 %130, %52
  br i1 %131, label %92, label %132, !llvm.loop !88

132:                                              ; preds = %124, %49
  %133 = phi i64 [ %50, %49 ], [ %129, %124 ]
  %134 = phi ptr [ %45, %49 ], [ %128, %124 ]
  %135 = trunc i64 %133 to i8
  store i8 %135, ptr %134, align 1, !tbaa !16
  %136 = load ptr, ptr %2, align 8, !tbaa !14
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.bc_struct, ptr %136, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !68
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr %139, align 4, !tbaa !68
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  tail call void @free(ptr noundef nonnull %136) #38
  br label %144

144:                                              ; preds = %143, %138, %132
  store ptr %26, ptr %2, align 8, !tbaa !14
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %26) #41
  %145 = load ptr, ptr %2, align 8, !tbaa !14
  %146 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %147 = icmp eq ptr %146, %145
  br i1 %147, label %168, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.bc_struct, ptr %145, i64 0, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !43
  %151 = getelementptr inbounds %struct.bc_struct, ptr %145, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !45
  %153 = add nsw i32 %152, %150
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.bc_struct, ptr %145, i64 0, i32 4
  br label %157

157:                                              ; preds = %162, %155
  %158 = phi ptr [ %163, %162 ], [ %156, %155 ]
  %159 = phi i32 [ %164, %162 ], [ %153, %155 ]
  %160 = load i8, ptr %158, align 1, !tbaa !16
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = getelementptr inbounds i8, ptr %158, i64 1
  %164 = add nsw i32 %159, -1
  %165 = icmp sgt i32 %159, 1
  br i1 %165, label %157, label %168, !llvm.loop !77

166:                                              ; preds = %148
  %167 = icmp eq i32 %153, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %166, %162, %144
  store i32 0, ptr %145, align 4, !tbaa !69
  br label %169

169:                                              ; preds = %168, %166, %157
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @bc_divide(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %334, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = add nsw i32 %11, %9
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %16

16:                                               ; preds = %21, %14
  %17 = phi ptr [ %22, %21 ], [ %15, %14 ]
  %18 = phi i32 [ %23, %21 ], [ %12, %14 ]
  %19 = load i8, ptr %17, align 1, !tbaa !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, ptr %17, i64 1
  %23 = add nsw i32 %18, -1
  %24 = icmp sgt i32 %18, 1
  br i1 %24, label %16, label %334, !llvm.loop !77

25:                                               ; preds = %7
  %26 = icmp eq i32 %12, 0
  br i1 %26, label %334, label %27

27:                                               ; preds = %25, %16
  %28 = icmp eq i32 %11, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %78

31:                                               ; preds = %27
  %32 = icmp eq i32 %9, 1
  br i1 %32, label %33, label %71

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %35 = load i8, ptr %34, align 4, !tbaa !16
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !43
  %40 = sext i32 %39 to i64
  %41 = sext i32 %3 to i64
  %42 = add nsw i64 %41, 1040
  %43 = add nsw i64 %42, %40
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #43
  %45 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 1
  store i32 %39, ptr %45, align 4, !tbaa !43
  %46 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 2
  store i32 %3, ptr %46, align 4, !tbaa !45
  %47 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 3
  store i32 1, ptr %47, align 4, !tbaa !68
  %48 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 4
  store i8 0, ptr %48, align 4, !tbaa !16
  %49 = load i32, ptr %0, align 4, !tbaa !69
  %50 = load i32, ptr %1, align 4, !tbaa !69
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, ptr %44, align 4, !tbaa !69
  %53 = getelementptr inbounds %struct.bc_struct, ptr %44, i64 0, i32 4, i64 %40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %53, i8 0, i64 %41, i1 false)
  %54 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %55 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !45
  %57 = tail call i32 @llvm.smin.i32(i32 %56, i32 %3)
  %58 = add nsw i32 %57, %39
  %59 = sext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %48, ptr nonnull align 4 %54, i64 %59, i1 false)
  %60 = load ptr, ptr %2, align 8, !tbaa !14
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %37
  store ptr %44, ptr %2, align 8, !tbaa !14
  %63 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %96

64:                                               ; preds = %37
  %65 = getelementptr inbounds %struct.bc_struct, ptr %60, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !68
  %67 = add nsw i32 %66, -1
  store i32 %67, ptr %65, align 4, !tbaa !68
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  store ptr %44, ptr %2, align 8, !tbaa !14
  %70 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %96

71:                                               ; preds = %33, %31
  %72 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %96

73:                                               ; preds = %64
  tail call void @free(ptr noundef nonnull %60) #38
  %74 = load i32, ptr %10, align 4, !tbaa !45
  %75 = load i32, ptr %8, align 4, !tbaa !43
  store ptr %44, ptr %2, align 8, !tbaa !14
  %76 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %77 = icmp eq i32 %74, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %29
  %79 = phi ptr [ %30, %29 ], [ %76, %73 ]
  %80 = phi i32 [ %11, %29 ], [ %74, %73 ]
  %81 = phi i32 [ %9, %29 ], [ %75, %73 ]
  %82 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, ptr %82, i64 %83
  %85 = zext i32 %80 to i64
  %86 = getelementptr inbounds i8, ptr %84, i64 %85
  br label %87

87:                                               ; preds = %93, %78
  %88 = phi ptr [ %90, %93 ], [ %86, %78 ]
  %89 = phi i32 [ %94, %93 ], [ %80, %78 ]
  %90 = getelementptr inbounds i8, ptr %88, i64 -1
  %91 = load i8, ptr %90, align 1, !tbaa !16
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = add i32 %89, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %87, !llvm.loop !89

96:                                               ; preds = %93, %87, %73, %71, %69, %62
  %97 = phi ptr [ %76, %73 ], [ %72, %71 ], [ %63, %62 ], [ %70, %69 ], [ %79, %93 ], [ %79, %87 ]
  %98 = phi i32 [ %75, %73 ], [ %9, %71 ], [ 1, %62 ], [ 1, %69 ], [ %81, %93 ], [ %81, %87 ]
  %99 = phi i32 [ 0, %73 ], [ 0, %71 ], [ 0, %62 ], [ 0, %69 ], [ %89, %87 ], [ 0, %93 ]
  %100 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !43
  %102 = add i32 %101, %99
  %103 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !45
  %105 = sub i32 %104, %99
  %106 = icmp slt i32 %105, %3
  %107 = sub nsw i32 %3, %105
  %108 = select i1 %106, i32 %107, i32 0
  %109 = add nsw i32 %104, %101
  %110 = add i32 %108, %109
  %111 = add i32 %110, 2
  %112 = zext i32 %111 to i64
  %113 = tail call ptr @calloc(i64 1, i64 %112)
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %116 = sext i32 %109 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %114, ptr nonnull align 4 %115, i64 %116, i1 false)
  %117 = add i32 %99, %98
  %118 = add i32 %117, 1
  %119 = zext i32 %118 to i64
  %120 = tail call noalias ptr @malloc(i64 noundef %119) #43
  %121 = zext i32 %117 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %120, ptr nonnull align 4 %97, i64 %121, i1 false)
  %122 = getelementptr inbounds i8, ptr %120, i64 %121
  store i8 0, ptr %122, align 1, !tbaa !16
  %123 = load i8, ptr %120, align 1, !tbaa !16
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %125, %96
  %126 = phi i32 [ %129, %125 ], [ %117, %96 ]
  %127 = phi ptr [ %128, %125 ], [ %120, %96 ]
  %128 = getelementptr inbounds i8, ptr %127, i64 1
  %129 = add i32 %126, -1
  %130 = load i8, ptr %128, align 1, !tbaa !16
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %125, label %132, !llvm.loop !90

132:                                              ; preds = %125
  %.lcssa6 = phi i32 [ %126, %125 ]
  %.lcssa5 = phi ptr [ %128, %125 ]
  %.lcssa4 = phi i32 [ %129, %125 ]
  %.lcssa3 = phi i8 [ %130, %125 ]
  %133 = zext i32 %.lcssa6 to i64
  br label %134

134:                                              ; preds = %132, %96
  %135 = phi i64 [ %133, %132 ], [ %119, %96 ]
  %136 = phi i32 [ %.lcssa6, %132 ], [ %118, %96 ]
  %137 = phi ptr [ %.lcssa5, %132 ], [ %120, %96 ]
  %138 = phi i32 [ %.lcssa4, %132 ], [ %117, %96 ]
  %139 = phi i8 [ %.lcssa3, %132 ], [ %123, %96 ]
  %140 = add i32 %102, %3
  %141 = icmp ugt i32 %138, %140
  %142 = icmp ugt i32 %138, %102
  %143 = or i1 %141, %142
  %144 = sub i32 %102, %138
  %145 = select i1 %143, i32 0, i32 %144
  %146 = add i32 %3, 1
  %147 = add i32 %146, %145
  %148 = sub i32 %147, %3
  %149 = sext i32 %148 to i64
  %150 = sext i32 %3 to i64
  %151 = add nsw i64 %150, 1040
  %152 = add nsw i64 %151, %149
  %153 = tail call noalias ptr @malloc(i64 noundef %152) #43
  store i32 0, ptr %153, align 4, !tbaa !69
  %154 = getelementptr inbounds %struct.bc_struct, ptr %153, i64 0, i32 1
  store i32 %148, ptr %154, align 4, !tbaa !43
  %155 = getelementptr inbounds %struct.bc_struct, ptr %153, i64 0, i32 2
  store i32 %3, ptr %155, align 4, !tbaa !45
  %156 = getelementptr inbounds %struct.bc_struct, ptr %153, i64 0, i32 3
  store i32 1, ptr %156, align 4, !tbaa !68
  %157 = getelementptr inbounds %struct.bc_struct, ptr %153, i64 0, i32 4
  store i8 0, ptr %157, align 4, !tbaa !16
  %158 = zext i32 %147 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %157, i8 0, i64 %158, i1 false)
  %159 = tail call noalias ptr @malloc(i64 noundef %135) #43
  br i1 %141, label %300, label %160

160:                                              ; preds = %134
  %161 = sext i8 %139 to i16
  %162 = add nsw i16 %161, 1
  %163 = sdiv i16 10, %162
  %164 = icmp eq i16 %163, 1
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = sext i16 %163 to i32
  %167 = add i32 %110, 1
  tail call fastcc void @_one_mult(ptr noundef %113, i32 noundef %167, i32 noundef %166, ptr noundef %113) #41
  tail call fastcc void @_one_mult(ptr noundef nonnull %137, i32 noundef %138, i32 noundef %166, ptr noundef nonnull %137) #41
  br label %168

168:                                              ; preds = %165, %160
  %169 = zext i32 %138 to i64
  %170 = getelementptr inbounds i8, ptr %157, i64 %169
  %171 = zext i32 %102 to i64
  %172 = sub nsw i64 0, %171
  %173 = getelementptr inbounds i8, ptr %170, i64 %172
  %174 = select i1 %142, ptr %173, ptr %157
  %175 = sub i32 %140, %138
  %176 = getelementptr inbounds i8, ptr %137, i64 1
  %177 = getelementptr inbounds i8, ptr %159, i64 1
  %178 = getelementptr inbounds i8, ptr %159, i64 %169
  %179 = icmp eq i32 %136, 0
  %180 = getelementptr inbounds i8, ptr %137, i64 %169
  %181 = icmp eq i32 %138, 0
  br label %182

182:                                              ; preds = %295, %168
  %183 = phi i32 [ 0, %168 ], [ %207, %295 ]
  %184 = phi ptr [ %174, %168 ], [ %298, %295 ]
  %185 = load i8, ptr %137, align 1, !tbaa !16
  %186 = zext i32 %183 to i64
  %187 = getelementptr inbounds i8, ptr %113, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !16
  %189 = icmp eq i8 %185, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = add i32 %183, 1
  %192 = zext i32 %191 to i64
  br label %205

193:                                              ; preds = %182
  %194 = sext i8 %188 to i16
  %195 = mul nsw i16 %194, 10
  %196 = add i32 %183, 1
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, ptr %113, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !16
  %200 = sext i8 %199 to i16
  %201 = add nsw i16 %195, %200
  %202 = sext i8 %185 to i16
  %203 = sdiv i16 %201, %202
  %204 = sext i16 %203 to i32
  br label %205

205:                                              ; preds = %193, %190
  %206 = phi i64 [ %192, %190 ], [ %197, %193 ]
  %207 = phi i32 [ %191, %190 ], [ %196, %193 ]
  %208 = phi i32 [ 9, %190 ], [ %204, %193 ]
  %209 = load i8, ptr %176, align 1, !tbaa !16
  %210 = sext i8 %209 to i32
  %211 = mul nsw i32 %208, %210
  %212 = sext i8 %188 to i32
  %213 = mul nsw i32 %212, 10
  %214 = getelementptr inbounds i8, ptr %113, i64 %206
  %215 = load i8, ptr %214, align 1, !tbaa !16
  %216 = sext i8 %215 to i32
  %217 = add nsw i32 %213, %216
  %218 = sext i8 %185 to i32
  %219 = mul nsw i32 %208, %218
  %220 = sub nsw i32 %217, %219
  %221 = mul nsw i32 %220, 10
  %222 = add i32 %183, 2
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %113, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !16
  %226 = sext i8 %225 to i32
  %227 = add nsw i32 %221, %226
  %228 = icmp ugt i32 %211, %227
  br i1 %228, label %229, label %239

229:                                              ; preds = %205
  %230 = add nsw i32 %208, -1
  %231 = mul nsw i32 %230, %210
  %232 = mul nsw i32 %230, %218
  %233 = sub nsw i32 %217, %232
  %234 = mul nsw i32 %233, 10
  %235 = add nsw i32 %234, %226
  %236 = icmp ugt i32 %231, %235
  %237 = add nsw i32 %208, -2
  %238 = select i1 %236, i32 %237, i32 %230
  br label %239

239:                                              ; preds = %229, %205
  %240 = phi i32 [ %208, %205 ], [ %238, %229 ]
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %295, label %242

242:                                              ; preds = %239
  store i8 0, ptr %159, align 1, !tbaa !16
  tail call fastcc void @_one_mult(ptr noundef nonnull %137, i32 noundef %138, i32 noundef %240, ptr noundef nonnull %177) #41
  %243 = getelementptr inbounds i8, ptr %187, i64 %169
  br i1 %179, label %295, label %244

244:                                              ; preds = %244, %242
  %245 = phi i32 [ %259, %244 ], [ 0, %242 ]
  %246 = phi i32 [ %262, %244 ], [ 0, %242 ]
  %247 = phi ptr [ %261, %244 ], [ %243, %242 ]
  %248 = phi ptr [ %251, %244 ], [ %178, %242 ]
  %249 = load i8, ptr %247, align 1, !tbaa !16
  %250 = sext i8 %249 to i32
  %251 = getelementptr inbounds i8, ptr %248, i64 -1
  %252 = load i8, ptr %248, align 1, !tbaa !16
  %253 = sext i8 %252 to i32
  %254 = add nsw i32 %245, %250
  %255 = sub nsw i32 %254, %253
  %256 = icmp slt i32 %255, 0
  %257 = add nsw i32 %255, 10
  %258 = select i1 %256, i32 %257, i32 %255
  %259 = ashr i32 %255, 31
  %260 = trunc i32 %258 to i8
  %261 = getelementptr inbounds i8, ptr %247, i64 -1
  store i8 %260, ptr %247, align 1, !tbaa !16
  %262 = add nuw i32 %246, 1
  %263 = icmp eq i32 %262, %136
  br i1 %263, label %264, label %244, !llvm.loop !91

264:                                              ; preds = %244
  %.lcssa = phi i32 [ %255, %244 ]
  %265 = icmp sgt i32 %.lcssa, -1
  br i1 %265, label %295, label %266

266:                                              ; preds = %264
  %267 = add nsw i32 %240, -1
  br i1 %181, label %295, label %268

268:                                              ; preds = %268, %266
  %269 = phi i32 [ %283, %268 ], [ 0, %266 ]
  %270 = phi i32 [ %286, %268 ], [ 0, %266 ]
  %271 = phi ptr [ %285, %268 ], [ %243, %266 ]
  %272 = phi ptr [ %273, %268 ], [ %180, %266 ]
  %273 = getelementptr inbounds i8, ptr %272, i64 -1
  %274 = load i8, ptr %271, align 1, !tbaa !16
  %275 = sext i8 %274 to i32
  %276 = load i8, ptr %273, align 1, !tbaa !16
  %277 = sext i8 %276 to i32
  %278 = add nsw i32 %269, %275
  %279 = add nsw i32 %278, %277
  %280 = icmp sgt i32 %279, 9
  %281 = add nsw i32 %279, 246
  %282 = select i1 %280, i32 %281, i32 %279
  %283 = zext i1 %280 to i32
  %284 = trunc i32 %282 to i8
  %285 = getelementptr inbounds i8, ptr %271, i64 -1
  store i8 %284, ptr %271, align 1, !tbaa !16
  %286 = add nuw i32 %270, 1
  %287 = icmp eq i32 %286, %138
  br i1 %287, label %288, label %268, !llvm.loop !92

288:                                              ; preds = %268
  %.lcssa2 = phi i1 [ %280, %268 ]
  %.lcssa1 = phi ptr [ %285, %268 ]
  br i1 %.lcssa2, label %289, label %295

289:                                              ; preds = %288
  %290 = load i8, ptr %.lcssa1, align 1, !tbaa !16
  %291 = sext i8 %290 to i16
  %292 = add nsw i16 %291, 1
  %293 = srem i16 %292, 10
  %294 = trunc i16 %293 to i8
  store i8 %294, ptr %.lcssa1, align 1, !tbaa !16
  br label %295

295:                                              ; preds = %289, %288, %266, %264, %242, %239
  %296 = phi i32 [ %267, %289 ], [ %267, %288 ], [ %240, %264 ], [ 0, %239 ], [ %240, %242 ], [ %267, %266 ]
  %297 = trunc i32 %296 to i8
  %298 = getelementptr inbounds i8, ptr %184, i64 1
  store i8 %297, ptr %184, align 1, !tbaa !16
  %299 = icmp ugt i32 %207, %175
  br i1 %299, label %300, label %182, !llvm.loop !93

300:                                              ; preds = %295, %134
  %301 = load i32, ptr %0, align 4, !tbaa !69
  %302 = load i32, ptr %1, align 4, !tbaa !69
  %303 = icmp ne i32 %301, %302
  %304 = zext i1 %303 to i32
  store i32 %304, ptr %153, align 4, !tbaa !69
  %305 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %306 = icmp eq ptr %305, %153
  br i1 %306, label %323, label %307

307:                                              ; preds = %300
  %308 = load i32, ptr %154, align 4, !tbaa !43
  %309 = load i32, ptr %155, align 4, !tbaa !45
  %310 = add nsw i32 %309, %308
  %311 = icmp sgt i32 %310, 0
  br i1 %311, label %312, label %321

312:                                              ; preds = %317, %307
  %313 = phi ptr [ %318, %317 ], [ %157, %307 ]
  %314 = phi i32 [ %319, %317 ], [ %310, %307 ]
  %315 = load i8, ptr %313, align 1, !tbaa !16
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %317, label %324

317:                                              ; preds = %312
  %318 = getelementptr inbounds i8, ptr %313, i64 1
  %319 = add nsw i32 %314, -1
  %320 = icmp sgt i32 %314, 1
  br i1 %320, label %312, label %323, !llvm.loop !77

321:                                              ; preds = %307
  %322 = icmp eq i32 %310, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %321, %317, %300
  store i32 0, ptr %153, align 4, !tbaa !69
  br label %324

324:                                              ; preds = %323, %321, %312
  tail call fastcc void @_rm_leading_zeros(ptr noundef nonnull %153) #41
  %325 = load ptr, ptr %2, align 8, !tbaa !14
  %326 = icmp eq ptr %325, null
  br i1 %326, label %333, label %327

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.bc_struct, ptr %325, i64 0, i32 3
  %329 = load i32, ptr %328, align 4, !tbaa !68
  %330 = add nsw i32 %329, -1
  store i32 %330, ptr %328, align 4, !tbaa !68
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %327
  tail call void @free(ptr noundef nonnull %325) #38
  br label %333

333:                                              ; preds = %332, %327, %324
  store ptr %153, ptr %2, align 8, !tbaa !14
  tail call void @free(ptr noundef %159) #38
  tail call void @free(ptr noundef %113) #38
  tail call void @free(ptr noundef %120) #38
  br label %334

334:                                              ; preds = %333, %25, %21, %4
  %335 = phi i32 [ 0, %333 ], [ -1, %25 ], [ -1, %4 ], [ -1, %21 ]
  ret i32 %335
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_one_mult(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #27 {
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
  %12 = sext i32 %1 to i64
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
  %23 = load i8, ptr %21, align 1, !tbaa !16
  %24 = sext i8 %23 to i32
  %25 = mul nsw i32 %24, %2
  %26 = add nsw i32 %25, %20
  %27 = srem i32 %26, 10
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %17, align 1, !tbaa !16
  %29 = sdiv i32 %26, 10
  %30 = getelementptr inbounds i8, ptr %17, i64 -1
  %31 = icmp ugt i32 %19, 1
  br i1 %31, label %16, label %32, !llvm.loop !94

32:                                               ; preds = %16
  %.lcssa2 = phi i32 [ %26, %16 ]
  %.lcssa1 = phi i32 [ %29, %16 ]
  %.lcssa = phi ptr [ %30, %16 ]
  %33 = add i32 %.lcssa2, 9
  %34 = icmp ult i32 %33, 19
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = trunc i32 %.lcssa1 to i8
  store i8 %36, ptr %.lcssa, align 1, !tbaa !16
  br label %37

37:                                               ; preds = %35, %32, %9, %7, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @bc_modulo(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37
  %6 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = add nsw i32 %12, %10
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  br label %17

17:                                               ; preds = %22, %15
  %18 = phi ptr [ %23, %22 ], [ %16, %15 ]
  %19 = phi i32 [ %24, %22 ], [ %13, %15 ]
  %20 = load i8, ptr %18, align 1, !tbaa !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  %24 = add nsw i32 %19, -1
  %25 = icmp sgt i32 %19, 1
  br i1 %25, label %17, label %46, !llvm.loop !77

26:                                               ; preds = %8
  %27 = icmp eq i32 %13, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %26, %17
  %29 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = add nsw i32 %12, %3
  %32 = tail call i32 @llvm.smax.i32(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.bc_struct, ptr %6, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !68
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !68
  store ptr %6, ptr %5, align 8, !tbaa !14
  %36 = call i32 @bc_divide(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3) #41, !range !95
  %37 = load ptr, ptr %5, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %37, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %32) #41
  %38 = load ptr, ptr %5, align 8, !tbaa !14
  tail call void @bc_sub(ptr noundef %0, ptr noundef %38, ptr noundef %2) #41
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.bc_struct, ptr %38, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !68
  %43 = add nsw i32 %42, -1
  store i32 %43, ptr %41, align 4, !tbaa !68
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @free(ptr noundef nonnull %38) #38
  br label %46

46:                                               ; preds = %45, %40, %28, %26, %22, %4
  %47 = phi i32 [ -1, %26 ], [ 0, %28 ], [ -1, %4 ], [ 0, %45 ], [ 0, %40 ], [ -1, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37
  ret i32 %47
}

; Function Attrs: nounwind optsize uwtable
define internal void @bc_raise(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #37
  %7 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.126) #38
  br label %11

11:                                               ; preds = %10, %4
  %12 = tail call i64 @num2long(ptr noundef nonnull %1) #41
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !43
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.bc_struct, ptr %1, i64 0, i32 4
  %20 = load i8, ptr %19, align 4, !tbaa !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1.127) #38
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr %2, align 8, !tbaa !14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.bc_struct, ptr %24, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !68
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !68
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %24) #38
  br label %32

32:                                               ; preds = %31, %26
  store ptr null, ptr %2, align 8, !tbaa !14
  br label %33

33:                                               ; preds = %32, %23
  %34 = load ptr, ptr @_one_, align 8, !tbaa !14
  %35 = getelementptr inbounds %struct.bc_struct, ptr %34, i64 0, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !68
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %35, align 4, !tbaa !68
  store ptr %34, ptr %2, align 8, !tbaa !14
  br label %105

38:                                               ; preds = %11
  %39 = icmp sgt i64 %12, -1
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = sub nsw i64 0, %12
  br label %53

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !45
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %12, %45
  %47 = tail call i32 @llvm.smax.i32(i32 %44, i32 %3)
  %48 = sext i32 %47 to i64
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = trunc i64 %12 to i32
  %52 = mul i32 %44, %51
  br label %53

53:                                               ; preds = %50, %42, %40
  %54 = phi i64 [ %41, %40 ], [ %12, %50 ], [ %12, %42 ]
  %55 = phi i32 [ %3, %40 ], [ %52, %50 ], [ %47, %42 ]
  %56 = load ptr, ptr @_one_, align 8, !tbaa !14
  %57 = getelementptr inbounds %struct.bc_struct, ptr %56, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !68
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 4, !tbaa !68
  store ptr %56, ptr %5, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !68
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 4, !tbaa !68
  store ptr %0, ptr %6, align 8, !tbaa !14
  br label %63

63:                                               ; preds = %70, %53
  %64 = phi i64 [ %54, %53 ], [ %71, %70 ]
  %65 = and i64 %64, 1
  %66 = icmp eq i64 %65, 0
  %67 = load ptr, ptr %6, align 8, !tbaa !14
  br i1 %66, label %70, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %5, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %69, ptr noundef %67, ptr noundef nonnull %5, i32 noundef %55) #41
  br label %70

70:                                               ; preds = %68, %63
  call void @bc_multiply(ptr noundef %67, ptr noundef %67, ptr noundef nonnull %6, i32 noundef %55) #41
  %71 = ashr i64 %64, 1
  %72 = icmp ult i64 %64, 2
  br i1 %72, label %73, label %63, !llvm.loop !96

73:                                               ; preds = %70
  br i1 %39, label %85, label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr @_one_, align 8, !tbaa !14
  %76 = load ptr, ptr %5, align 8, !tbaa !14
  %77 = tail call i32 @bc_divide(ptr noundef %75, ptr noundef %76, ptr noundef %2, i32 noundef %55) #41, !range !95
  %78 = icmp eq ptr %76, null
  br i1 %78, label %96, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.bc_struct, ptr %76, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !68
  %82 = add nsw i32 %81, -1
  store i32 %82, ptr %80, align 4, !tbaa !68
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  tail call void @free(ptr noundef nonnull %76) #38
  br label %96

85:                                               ; preds = %73
  %86 = load ptr, ptr %2, align 8, !tbaa !14
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.bc_struct, ptr %86, i64 0, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !68
  %91 = add nsw i32 %90, -1
  store i32 %91, ptr %89, align 4, !tbaa !68
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  tail call void @free(ptr noundef nonnull %86) #38
  br label %94

94:                                               ; preds = %93, %88, %85
  %95 = load ptr, ptr %5, align 8, !tbaa !14
  store ptr %95, ptr %2, align 8, !tbaa !14
  br label %96

96:                                               ; preds = %94, %84, %79, %74
  %97 = load ptr, ptr %6, align 8, !tbaa !14
  %98 = icmp eq ptr %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.bc_struct, ptr %97, i64 0, i32 3
  %101 = load i32, ptr %100, align 4, !tbaa !68
  %102 = add nsw i32 %101, -1
  store i32 %102, ptr %100, align 4, !tbaa !68
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  tail call void @free(ptr noundef nonnull %97) #38
  br label %105

105:                                              ; preds = %104, %99, %96, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @bc_sqrt(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %7 = tail call fastcc i32 @_do_compare(ptr noundef %5, ptr noundef %6, i32 noundef 1, i32 noundef 0) #41, !range !73
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %128, label %9

9:                                                ; preds = %2
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %9
  %12 = icmp eq ptr %5, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.bc_struct, ptr %5, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = add nsw i32 %15, -1
  store i32 %16, ptr %14, align 4, !tbaa !68
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %5) #38
  br label %19

19:                                               ; preds = %18, %13
  store ptr null, ptr %0, align 8, !tbaa !14
  %20 = load ptr, ptr @_zero_, align 8, !tbaa !14
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %6, %11 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.bc_struct, ptr %22, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !68
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !68
  store ptr %22, ptr %0, align 8, !tbaa !14
  br label %128

26:                                               ; preds = %9
  %27 = load ptr, ptr @_one_, align 8, !tbaa !14
  %28 = tail call fastcc i32 @_do_compare(ptr noundef %5, ptr noundef %27, i32 noundef 1, i32 noundef 0) #41, !range !73
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = icmp eq ptr %5, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.bc_struct, ptr %5, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !68
  %35 = add nsw i32 %34, -1
  store i32 %35, ptr %33, align 4, !tbaa !68
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %5) #38
  br label %38

38:                                               ; preds = %37, %32
  store ptr null, ptr %0, align 8, !tbaa !14
  %39 = load ptr, ptr @_one_, align 8, !tbaa !14
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi ptr [ %27, %30 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.bc_struct, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !68
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 4, !tbaa !68
  store ptr %41, ptr %0, align 8, !tbaa !14
  br label %128

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.bc_struct, ptr %5, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !45
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 %1)
  %49 = add nsw i32 %48, 2
  %50 = getelementptr inbounds %struct.bc_struct, ptr %6, i64 0, i32 3
  %51 = load i32, ptr %50, align 4, !tbaa !68
  store ptr %6, ptr %3, align 8, !tbaa !14
  %52 = add nsw i32 %51, 2
  store i32 %52, ptr %50, align 4, !tbaa !68
  store ptr %6, ptr %4, align 8, !tbaa !14
  %53 = tail call noalias dereferenceable_or_null(1042) ptr @malloc(i64 noundef 1042) #43
  %54 = getelementptr inbounds %struct.bc_struct, ptr %53, i64 0, i32 3
  store <4 x i32> <i32 0, i32 1, i32 1, i32 1>, ptr %53, align 4, !tbaa !16
  %55 = getelementptr inbounds %struct.bc_struct, ptr %53, i64 0, i32 4
  store i8 0, ptr %55, align 4, !tbaa !16
  %56 = getelementptr inbounds %struct.bc_struct, ptr %53, i64 0, i32 4, i64 1
  store i8 5, ptr %56, align 1, !tbaa !16
  %57 = icmp slt i32 %28, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.bc_struct, ptr %27, i64 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !68
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 4, !tbaa !68
  store ptr %27, ptr %3, align 8, !tbaa !14
  br label %75

62:                                               ; preds = %45
  call void @int2num(ptr noundef nonnull %3, i32 noundef 10) #41
  %63 = load ptr, ptr %0, align 8, !tbaa !14
  %64 = getelementptr inbounds %struct.bc_struct, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !43
  call void @int2num(ptr noundef nonnull %4, i32 noundef %65) #41
  %66 = load ptr, ptr %4, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %66, ptr noundef nonnull %53, ptr noundef nonnull %4, i32 noundef %48) #41
  %67 = load ptr, ptr %4, align 8, !tbaa !14
  %68 = getelementptr inbounds %struct.bc_struct, ptr %67, i64 0, i32 2
  store i32 0, ptr %68, align 4, !tbaa !45
  %69 = load ptr, ptr %3, align 8, !tbaa !14
  call void @bc_raise(ptr noundef %69, ptr noundef %67, ptr noundef nonnull %3, i32 noundef %48) #41
  %70 = getelementptr inbounds %struct.bc_struct, ptr %67, i64 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !68
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr %70, align 4, !tbaa !68
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  tail call void @free(ptr noundef nonnull %67) #38
  br label %75

75:                                               ; preds = %74, %62, %58
  %76 = phi ptr [ null, %74 ], [ null, %62 ], [ %6, %58 ]
  br label %77

77:                                               ; preds = %86, %75
  %78 = phi ptr [ %87, %86 ], [ %76, %75 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.bc_struct, ptr %78, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !68
  %83 = add nsw i32 %82, -1
  store i32 %83, ptr %81, align 4, !tbaa !68
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  tail call void @free(ptr noundef nonnull %78) #38
  br label %86

86:                                               ; preds = %85, %80, %77
  %87 = load ptr, ptr %3, align 8, !tbaa !14
  %88 = getelementptr inbounds %struct.bc_struct, ptr %87, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !68
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %88, align 4, !tbaa !68
  %91 = load ptr, ptr %0, align 8, !tbaa !14
  %92 = call i32 @bc_divide(ptr noundef %91, ptr noundef %87, ptr noundef nonnull %3, i32 noundef %49) #41, !range !95
  %93 = load ptr, ptr %3, align 8, !tbaa !14
  call void @bc_add(ptr noundef %93, ptr noundef %87, ptr noundef nonnull %3) #41
  %94 = load ptr, ptr %3, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %94, ptr noundef nonnull %53, ptr noundef nonnull %3, i32 noundef %49) #41
  %95 = load ptr, ptr %3, align 8, !tbaa !14
  %96 = tail call fastcc i32 @_do_compare(ptr noundef %95, ptr noundef %87, i32 noundef 0, i32 noundef 1) #41, !range !73
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %77

98:                                               ; preds = %86
  %.lcssa1 = phi ptr [ %87, %86 ]
  %.lcssa = phi ptr [ %95, %86 ]
  %99 = getelementptr inbounds %struct.bc_struct, ptr %.lcssa1, i64 0, i32 3
  %100 = load ptr, ptr %0, align 8, !tbaa !14
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.bc_struct, ptr %100, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !68
  %105 = add nsw i32 %104, -1
  store i32 %105, ptr %103, align 4, !tbaa !68
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  tail call void @free(ptr noundef nonnull %100) #38
  br label %108

108:                                              ; preds = %107, %102
  store ptr null, ptr %0, align 8, !tbaa !14
  br label %109

109:                                              ; preds = %108, %98
  %110 = load ptr, ptr @_one_, align 8, !tbaa !14
  %111 = tail call i32 @bc_divide(ptr noundef %.lcssa, ptr noundef %110, ptr noundef nonnull %0, i32 noundef %48) #41, !range !95
  %112 = icmp eq ptr %.lcssa, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.bc_struct, ptr %.lcssa, i64 0, i32 3
  %115 = load i32, ptr %114, align 4, !tbaa !68
  %116 = add nsw i32 %115, -1
  store i32 %116, ptr %114, align 4, !tbaa !68
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  tail call void @free(ptr noundef nonnull %.lcssa) #38
  br label %119

119:                                              ; preds = %118, %113, %109
  %120 = load i32, ptr %99, align 4, !tbaa !68
  %121 = add nsw i32 %120, -1
  store i32 %121, ptr %99, align 4, !tbaa !68
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  tail call void @free(ptr noundef nonnull %.lcssa1) #38
  br label %124

124:                                              ; preds = %123, %119
  %125 = load i32, ptr %54, align 4, !tbaa !68
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  tail call void @free(ptr noundef nonnull %53) #38
  br label %128

128:                                              ; preds = %127, %124, %40, %21, %2
  %129 = phi i32 [ 1, %21 ], [ 1, %40 ], [ 0, %2 ], [ 1, %124 ], [ 1, %127 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37
  ret i32 %129
}

; Function Attrs: nounwind optsize uwtable
define internal void @out_long(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca [40 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #37
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %3(i32 noundef 32) #38
  br label %8

8:                                                ; preds = %7, %4
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.2.130, i64 noundef %0) #38
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #40
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i32 %11, %1
  br i1 %12, label %17, label %13

13:                                               ; preds = %17, %8
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %13
  %16 = and i64 %10, 4294967295
  br label %21

17:                                               ; preds = %17, %8
  %18 = phi i32 [ %19, %17 ], [ %1, %8 ]
  tail call void %3(i32 noundef 48) #38
  %19 = add nsw i32 %18, -1
  %20 = icmp sgt i32 %19, %11
  br i1 %20, label %17, label %13, !llvm.loop !97

21:                                               ; preds = %21, %15
  %22 = phi i64 [ 0, %15 ], [ %26, %21 ]
  %23 = getelementptr inbounds [40 x i8], ptr %5, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !16
  %25 = sext i8 %24 to i32
  tail call void %3(i32 noundef %25) #38
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %16
  br i1 %27, label %28, label %21, !llvm.loop !98

28:                                               ; preds = %21, %13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #37
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @out_num(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #37
  %10 = load i32, ptr %0, align 4, !tbaa !69
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void %2(i32 noundef 45) #38
  br label %13

13:                                               ; preds = %12, %3
  %14 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !45
  %21 = add nsw i32 %20, %18
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  br label %25

25:                                               ; preds = %30, %23
  %26 = phi ptr [ %31, %30 ], [ %24, %23 ]
  %27 = phi i32 [ %32, %30 ], [ %21, %23 ]
  %28 = load i8, ptr %26, align 1, !tbaa !16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = getelementptr inbounds i8, ptr %26, i64 1
  %32 = add nsw i32 %27, -1
  %33 = icmp sgt i32 %27, 1
  br i1 %33, label %25, label %36, !llvm.loop !77

34:                                               ; preds = %16
  %35 = icmp eq i32 %21, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %34, %30, %13
  tail call void %2(i32 noundef 48) #38
  br label %233

37:                                               ; preds = %34, %25
  %38 = icmp eq i32 %1, 10
  br i1 %38, label %39, label %78

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4
  %41 = icmp sgt i32 %18, 1
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i8, ptr %40, align 1, !tbaa !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = icmp sgt i32 %18, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %45, %39
  br label %48

48:                                               ; preds = %48, %47
  %49 = phi ptr [ %51, %48 ], [ %40, %47 ]
  %50 = phi i32 [ %55, %48 ], [ %18, %47 ]
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  %52 = load i8, ptr %49, align 1, !tbaa !16
  %53 = sext i8 %52 to i32
  %54 = add nsw i32 %53, 48
  tail call void %2(i32 noundef %54) #38
  %55 = add nsw i32 %50, -1
  %56 = icmp ugt i32 %50, 1
  br i1 %56, label %48, label %59, !llvm.loop !99

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.bc_struct, ptr %0, i64 0, i32 4, i64 1
  br label %61

59:                                               ; preds = %48
  %.lcssa = phi ptr [ %51, %48 ]
  %60 = load i32, ptr %19, align 4, !tbaa !45
  br label %61

61:                                               ; preds = %59, %57, %45
  %62 = phi i32 [ %20, %57 ], [ %20, %45 ], [ %60, %59 ]
  %63 = phi ptr [ %58, %57 ], [ %40, %45 ], [ %.lcssa, %59 ]
  %64 = icmp sgt i32 %62, 0
  br i1 %64, label %65, label %233

65:                                               ; preds = %61
  tail call void %2(i32 noundef 46) #38
  %66 = load i32, ptr %19, align 4, !tbaa !45
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %233

68:                                               ; preds = %68, %65
  %69 = phi ptr [ %71, %68 ], [ %63, %65 ]
  %70 = phi i32 [ %75, %68 ], [ 0, %65 ]
  %71 = getelementptr inbounds i8, ptr %69, i64 1
  %72 = load i8, ptr %69, align 1, !tbaa !16
  %73 = sext i8 %72 to i32
  %74 = add nsw i32 %73, 48
  tail call void %2(i32 noundef %74) #38
  %75 = add nuw nsw i32 %70, 1
  %76 = load i32, ptr %19, align 4, !tbaa !45
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %68, label %233, !llvm.loop !100

78:                                               ; preds = %37
  %79 = getelementptr inbounds %struct.bc_struct, ptr %14, i64 0, i32 3
  %80 = load i32, ptr %79, align 4, !tbaa !68
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %79, align 4, !tbaa !68
  store ptr %14, ptr %4, align 8, !tbaa !14
  %82 = load ptr, ptr @_one_, align 8, !tbaa !14
  %83 = call i32 @bc_divide(ptr noundef nonnull %0, ptr noundef %82, ptr noundef nonnull %4, i32 noundef 0) #41, !range !95
  %84 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %85 = getelementptr inbounds %struct.bc_struct, ptr %84, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !68
  store ptr %84, ptr %5, align 8, !tbaa !14
  store ptr %84, ptr %7, align 8, !tbaa !14
  %87 = add nsw i32 %86, 3
  store i32 %87, ptr %85, align 4, !tbaa !68
  store ptr %84, ptr %6, align 8, !tbaa !14
  %88 = load ptr, ptr %4, align 8, !tbaa !14
  call void @bc_sub(ptr noundef nonnull %0, ptr noundef %88, ptr noundef nonnull %5) #41
  call void @int2num(ptr noundef nonnull %6, i32 noundef %1) #41
  %89 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.bc_struct, ptr %89, i64 0, i32 3
  %91 = load i32, ptr %90, align 4, !tbaa !68
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !68
  store ptr %89, ptr %9, align 8, !tbaa !14
  %93 = add nsw i32 %1, -1
  call void @int2num(ptr noundef nonnull %9, i32 noundef %93) #41
  %94 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %95 = icmp eq ptr %94, %88
  br i1 %95, label %155, label %96

96:                                               ; preds = %78
  %97 = load ptr, ptr %6, align 8
  br label %98

98:                                               ; preds = %121, %96
  %99 = phi ptr [ %84, %96 ], [ %124, %121 ]
  %100 = phi ptr [ %88, %96 ], [ %128, %121 ]
  %101 = phi ptr [ null, %96 ], [ %123, %121 ]
  %102 = getelementptr inbounds %struct.bc_struct, ptr %100, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !43
  %104 = getelementptr inbounds %struct.bc_struct, ptr %100, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !45
  %106 = add nsw i32 %105, %103
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.bc_struct, ptr %100, i64 0, i32 4
  br label %110

110:                                              ; preds = %115, %108
  %111 = phi ptr [ %116, %115 ], [ %109, %108 ]
  %112 = phi i32 [ %117, %115 ], [ %106, %108 ]
  %113 = load i8, ptr %111, align 1, !tbaa !16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = getelementptr inbounds i8, ptr %111, i64 1
  %117 = add nsw i32 %112, -1
  %118 = icmp sgt i32 %112, 1
  br i1 %118, label %110, label %131, !llvm.loop !77

119:                                              ; preds = %98
  %120 = icmp eq i32 %106, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %119, %110
  %122 = call i32 @bc_modulo(ptr noundef %100, ptr noundef %97, ptr noundef nonnull %7, i32 noundef 0) #41, !range !95
  %123 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %124 = load ptr, ptr %7, align 8, !tbaa !14
  %125 = tail call i64 @num2long(ptr noundef %124) #41
  store i64 %125, ptr %123, align 8, !tbaa !101
  %126 = getelementptr inbounds %struct.stk_rec, ptr %123, i64 0, i32 1
  store ptr %101, ptr %126, align 8, !tbaa !103
  %127 = call i32 @bc_divide(ptr noundef %100, ptr noundef %97, ptr noundef nonnull %4, i32 noundef 0) #41, !range !95
  %128 = load ptr, ptr %4, align 8, !tbaa !14
  %129 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %130 = icmp eq ptr %129, %128
  br i1 %130, label %133, label %98, !llvm.loop !104

131:                                              ; preds = %119, %115
  %.lcssa5 = phi ptr [ %99, %119 ], [ %99, %115 ]
  %.lcssa3 = phi ptr [ %100, %119 ], [ %100, %115 ]
  %.lcssa1 = phi ptr [ %101, %119 ], [ %101, %115 ]
  %132 = icmp eq ptr %.lcssa1, null
  br i1 %132, label %155, label %133

133:                                              ; preds = %131, %121
  %134 = phi ptr [ %.lcssa1, %131 ], [ %123, %121 ]
  %135 = phi ptr [ %.lcssa3, %131 ], [ %128, %121 ]
  %136 = phi ptr [ %.lcssa5, %131 ], [ %124, %121 ]
  %137 = icmp slt i32 %1, 17
  %138 = load ptr, ptr %9, align 8
  %139 = getelementptr inbounds %struct.bc_struct, ptr %138, i64 0, i32 1
  br label %140

140:                                              ; preds = %153, %133
  %141 = phi ptr [ %143, %153 ], [ %134, %133 ]
  %142 = getelementptr inbounds %struct.stk_rec, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !103
  %144 = load i64, ptr %141, align 8, !tbaa !101
  br i1 %137, label %145, label %151

145:                                              ; preds = %140
  %146 = shl i64 %144, 32
  %147 = ashr exact i64 %146, 32
  %148 = getelementptr inbounds [17 x i8], ptr @ref_str, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !16
  %150 = sext i8 %149 to i32
  tail call void %2(i32 noundef %150) #38
  br label %153

151:                                              ; preds = %140
  %152 = load i32, ptr %139, align 4, !tbaa !43
  tail call void @out_long(i64 noundef %144, i32 noundef %152, i32 noundef 1, ptr noundef %2) #41
  br label %153

153:                                              ; preds = %151, %145
  tail call void @free(ptr noundef nonnull %141) #38
  %154 = icmp eq ptr %143, null
  br i1 %154, label %155, label %140

155:                                              ; preds = %153, %131, %78
  %156 = phi ptr [ %.lcssa3, %131 ], [ %88, %78 ], [ %135, %153 ]
  %157 = phi ptr [ %.lcssa5, %131 ], [ %84, %78 ], [ %136, %153 ]
  %158 = load i32, ptr %19, align 4, !tbaa !45
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %198

160:                                              ; preds = %155
  tail call void %2(i32 noundef 46) #38
  %161 = load ptr, ptr @_one_, align 8, !tbaa !14
  %162 = getelementptr inbounds %struct.bc_struct, ptr %161, i64 0, i32 3
  %163 = load i32, ptr %162, align 4, !tbaa !68
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %162, align 4, !tbaa !68
  store ptr %161, ptr %8, align 8, !tbaa !14
  %165 = getelementptr inbounds %struct.bc_struct, ptr %161, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !43
  %167 = load i32, ptr %19, align 4, !tbaa !45
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %198, label %169

169:                                              ; preds = %160
  %170 = load ptr, ptr %6, align 8, !tbaa !14
  %171 = icmp slt i32 %1, 17
  %172 = load ptr, ptr %9, align 8
  %173 = getelementptr inbounds %struct.bc_struct, ptr %172, i64 0, i32 1
  br label %174

174:                                              ; preds = %191, %169
  %175 = phi i32 [ %167, %169 ], [ %196, %191 ]
  %176 = phi ptr [ %161, %169 ], [ %193, %191 ]
  %177 = phi i32 [ 0, %169 ], [ %192, %191 ]
  %178 = load ptr, ptr %5, align 8, !tbaa !14
  call void @bc_multiply(ptr noundef %178, ptr noundef %170, ptr noundef nonnull %5, i32 noundef %175) #41
  %179 = load ptr, ptr %5, align 8, !tbaa !14
  %180 = tail call i64 @num2long(ptr noundef %179) #41
  %181 = trunc i64 %180 to i32
  call void @int2num(ptr noundef nonnull %4, i32 noundef %181) #41
  %182 = load ptr, ptr %4, align 8, !tbaa !14
  call void @bc_sub(ptr noundef %179, ptr noundef %182, ptr noundef nonnull %5) #41
  %183 = shl i64 %180, 32
  %184 = ashr exact i64 %183, 32
  br i1 %171, label %185, label %189

185:                                              ; preds = %174
  %186 = getelementptr inbounds [17 x i8], ptr @ref_str, i64 0, i64 %184
  %187 = load i8, ptr %186, align 1, !tbaa !16
  %188 = sext i8 %187 to i32
  tail call void %2(i32 noundef %188) #38
  br label %191

189:                                              ; preds = %174
  %190 = load i32, ptr %173, align 4, !tbaa !43
  tail call void @out_long(i64 noundef %184, i32 noundef %190, i32 noundef %177, ptr noundef %2) #41
  br label %191

191:                                              ; preds = %189, %185
  %192 = phi i32 [ %177, %185 ], [ 1, %189 ]
  call void @bc_multiply(ptr noundef nonnull %176, ptr noundef %170, ptr noundef nonnull %8, i32 noundef 0) #41
  %193 = load ptr, ptr %8, align 8, !tbaa !14
  %194 = getelementptr inbounds %struct.bc_struct, ptr %193, i64 0, i32 1
  %195 = load i32, ptr %194, align 4, !tbaa !43
  %196 = load i32, ptr %19, align 4, !tbaa !45
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %174, !llvm.loop !105

198:                                              ; preds = %191, %160, %155
  %199 = phi ptr [ %156, %160 ], [ %156, %155 ], [ %182, %191 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.bc_struct, ptr %199, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !68
  %204 = add nsw i32 %203, -1
  store i32 %204, ptr %202, align 4, !tbaa !68
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  tail call void @free(ptr noundef nonnull %199) #38
  br label %207

207:                                              ; preds = %206, %201, %198
  %208 = load ptr, ptr %5, align 8, !tbaa !14
  %209 = icmp eq ptr %208, null
  br i1 %209, label %216, label %210

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.bc_struct, ptr %208, i64 0, i32 3
  %212 = load i32, ptr %211, align 4, !tbaa !68
  %213 = add nsw i32 %212, -1
  store i32 %213, ptr %211, align 4, !tbaa !68
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  tail call void @free(ptr noundef nonnull %208) #38
  br label %216

216:                                              ; preds = %215, %210, %207
  %217 = load ptr, ptr %6, align 8, !tbaa !14
  %218 = icmp eq ptr %217, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.bc_struct, ptr %217, i64 0, i32 3
  %221 = load i32, ptr %220, align 4, !tbaa !68
  %222 = add nsw i32 %221, -1
  store i32 %222, ptr %220, align 4, !tbaa !68
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  tail call void @free(ptr noundef nonnull %217) #38
  br label %225

225:                                              ; preds = %224, %219, %216
  %226 = icmp eq ptr %157, null
  br i1 %226, label %233, label %227

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.bc_struct, ptr %157, i64 0, i32 3
  %229 = load i32, ptr %228, align 4, !tbaa !68
  %230 = add nsw i32 %229, -1
  store i32 %230, ptr %228, align 4, !tbaa !68
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  tail call void @free(ptr noundef nonnull %157) #38
  br label %233

233:                                              ; preds = %232, %227, %225, %68, %65, %61, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @yylex() #0 {
  %1 = load i1, ptr @yy_init, align 4
  br i1 %1, label %42, label %2

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
  %17 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  store ptr %11, ptr %17, align 8, !tbaa !106
  %20 = getelementptr inbounds %struct.yy_buffer_state, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  store i8 10, ptr %21, align 1, !tbaa !16
  %22 = getelementptr inbounds %struct.yy_buffer_state, ptr %17, i64 0, i32 4
  store i32 1, ptr %22, align 4, !tbaa !109
  %23 = load ptr, ptr %20, align 8, !tbaa !108
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 0, ptr %24, align 1, !tbaa !16
  %25 = load ptr, ptr %20, align 8, !tbaa !108
  %26 = getelementptr inbounds i8, ptr %25, i64 2
  store i8 0, ptr %26, align 1, !tbaa !16
  %27 = load ptr, ptr %20, align 8, !tbaa !108
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = getelementptr inbounds %struct.yy_buffer_state, ptr %17, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !110
  %30 = getelementptr inbounds %struct.yy_buffer_state, ptr %17, i64 0, i32 5
  store i32 0, ptr %30, align 8, !tbaa !111
  br label %35

31:                                               ; preds = %16
  %32 = tail call ptr @yy_create_buffer(ptr noundef %11, i32 noundef 16384) #41
  store ptr %32, ptr @yy_current_buffer, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.yy_buffer_state, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !110
  br label %35

35:                                               ; preds = %31, %19
  %36 = phi ptr [ %34, %31 ], [ %28, %19 ]
  %37 = phi ptr [ %32, %31 ], [ %17, %19 ]
  %38 = getelementptr inbounds %struct.yy_buffer_state, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !109
  store i32 %39, ptr @yy_n_chars, align 4, !tbaa !7
  store ptr %36, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %36, ptr @yytext, align 8, !tbaa !14
  %40 = load ptr, ptr %37, align 8, !tbaa !106
  store ptr %40, ptr @yyin, align 8, !tbaa !14
  %41 = load i8, ptr %36, align 1, !tbaa !16
  store i8 %41, ptr @yy_hold_char, align 1, !tbaa !16
  store i1 true, ptr @yy_init, align 4
  br label %42

42:                                               ; preds = %35, %0
  br label %43

43:                                               ; preds = %356, %42
  %44 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %45 = load i8, ptr @yy_hold_char, align 1, !tbaa !16
  store i8 %45, ptr %44, align 1, !tbaa !16
  %46 = load i1, ptr @yy_start, align 4
  %47 = zext i1 %46 to i32
  br label %48

48:                                               ; preds = %368, %43
  %49 = phi ptr [ %44, %43 ], [ %369, %368 ]
  %50 = phi ptr [ %44, %43 ], [ %370, %368 ]
  %51 = phi i32 [ %47, %43 ], [ %371, %368 ]
  br label %52

52:                                               ; preds = %95, %48
  %53 = phi ptr [ %50, %48 ], [ %100, %95 ]
  %54 = phi i32 [ %51, %48 ], [ %99, %95 ]
  %55 = load i8, ptr %53, align 1, !tbaa !16
  %56 = sext i8 %55 to i64
  %57 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !16
  %59 = sext i32 %54 to i64
  %60 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !11
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  store i32 %54, ptr @yy_last_accepting_state, align 4, !tbaa !7
  store ptr %53, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  br label %64

64:                                               ; preds = %63, %52
  %65 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %59
  %66 = load i16, ptr %65, align 2, !tbaa !11
  %67 = sext i16 %66 to i64
  %68 = sext i8 %58 to i64
  %69 = add nsw i64 %67, %68
  %70 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !11
  %72 = sext i16 %71 to i32
  %73 = icmp eq i32 %54, %72
  br i1 %73, label %95, label %74

74:                                               ; preds = %84, %64
  %75 = phi i64 [ %90, %84 ], [ %68, %64 ]
  %76 = phi i64 [ %86, %84 ], [ %59, %64 ]
  %77 = phi i8 [ %85, %84 ], [ %58, %64 ]
  %78 = getelementptr inbounds [146 x i16], ptr @yy_def, i64 0, i64 %76
  %79 = load i16, ptr %78, align 2, !tbaa !11
  %80 = icmp sgt i16 %79, 143
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = getelementptr inbounds [53 x i8], ptr @yy_meta, i64 0, i64 %75
  %83 = load i8, ptr %82, align 1, !tbaa !16
  br label %84

84:                                               ; preds = %81, %74
  %85 = phi i8 [ %83, %81 ], [ %77, %74 ]
  %86 = sext i16 %79 to i64
  %87 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !11
  %89 = sext i16 %88 to i64
  %90 = sext i8 %85 to i64
  %91 = add nsw i64 %89, %90
  %92 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !11
  %94 = icmp eq i16 %79, %93
  br i1 %94, label %95, label %74, !llvm.loop !112

95:                                               ; preds = %84, %64
  %96 = phi i64 [ %69, %64 ], [ %91, %84 ]
  %97 = getelementptr inbounds [247 x i16], ptr @yy_nxt, i64 0, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !11
  %99 = sext i16 %98 to i32
  %100 = getelementptr inbounds i8, ptr %53, i64 1
  %101 = sext i16 %98 to i64
  %102 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %101
  %103 = load i16, ptr %102, align 2, !tbaa !11
  %104 = icmp eq i16 %103, 194
  br i1 %104, label %105, label %52, !llvm.loop !113

105:                                              ; preds = %325, %95
  %106 = phi ptr [ %326, %325 ], [ %49, %95 ]
  %107 = phi ptr [ %327, %325 ], [ %100, %95 ]
  %108 = phi i32 [ %328, %325 ], [ %99, %95 ]
  %109 = ptrtoint ptr %106 to i64
  br label %110

110:                                              ; preds = %124, %105
  %111 = phi ptr [ %126, %124 ], [ %107, %105 ]
  %112 = phi i32 [ %127, %124 ], [ %108, %105 ]
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !11
  %116 = sext i16 %115 to i32
  store ptr %106, ptr @yytext, align 8, !tbaa !14
  %117 = ptrtoint ptr %111 to i64
  %118 = sub i64 %117, %109
  %119 = trunc i64 %118 to i32
  store i32 %119, ptr @yyleng, align 4, !tbaa !7
  %120 = load i8, ptr %111, align 1, !tbaa !16
  store i8 %120, ptr @yy_hold_char, align 1, !tbaa !16
  store i8 0, ptr %111, align 1, !tbaa !16
  br label %121

121:                                              ; preds = %381, %110
  %122 = phi ptr [ %382, %381 ], [ %111, %110 ]
  %123 = phi i32 [ 41, %381 ], [ %116, %110 ]
  store ptr %122, ptr @yy_c_buf_p, align 8, !tbaa !14
  switch i32 %123, label %383 [
    i32 0, label %124
    i32 1, label %388
    i32 2, label %389
    i32 3, label %390
    i32 4, label %391
    i32 5, label %392
    i32 6, label %393
    i32 7, label %128
    i32 8, label %129
    i32 9, label %130
    i32 10, label %131
    i32 11, label %132
    i32 12, label %133
    i32 13, label %134
    i32 14, label %135
    i32 15, label %136
    i32 16, label %137
    i32 17, label %138
    i32 18, label %139
    i32 19, label %140
    i32 20, label %141
    i32 21, label %142
    i32 22, label %143
    i32 23, label %148
    i32 24, label %149
    i32 25, label %150
    i32 26, label %151
    i32 27, label %154
    i32 28, label %157
    i32 29, label %161
    i32 30, label %164
    i32 31, label %167
    i32 32, label %170
    i32 33, label %356
    i32 34, label %176
    i32 35, label %184
    i32 36, label %187
    i32 37, label %210
    i32 38, label %249
    i32 39, label %260
    i32 41, label %266
    i32 40, label %267
  ]

124:                                              ; preds = %121
  %125 = load i8, ptr @yy_hold_char, align 1, !tbaa !16
  store i8 %125, ptr %111, align 1, !tbaa !16
  %126 = load ptr, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  %127 = load i32, ptr @yy_last_accepting_state, align 4, !tbaa !7
  br label %110

128:                                              ; preds = %121
  %.lcssa67 = phi ptr [ %106, %121 ]
  %.lcssa19 = phi ptr [ %111, %121 ]
  br label %393

129:                                              ; preds = %121
  %.lcssa68 = phi ptr [ %106, %121 ]
  %.lcssa20 = phi ptr [ %111, %121 ]
  br label %393

130:                                              ; preds = %121
  %.lcssa69 = phi ptr [ %106, %121 ]
  %.lcssa21 = phi ptr [ %111, %121 ]
  br label %393

131:                                              ; preds = %121
  %.lcssa70 = phi ptr [ %106, %121 ]
  %.lcssa22 = phi ptr [ %111, %121 ]
  br label %393

132:                                              ; preds = %121
  %.lcssa71 = phi ptr [ %106, %121 ]
  %.lcssa23 = phi ptr [ %111, %121 ]
  br label %393

133:                                              ; preds = %121
  %.lcssa72 = phi ptr [ %106, %121 ]
  %.lcssa24 = phi ptr [ %111, %121 ]
  br label %393

134:                                              ; preds = %121
  %.lcssa73 = phi ptr [ %106, %121 ]
  %.lcssa25 = phi ptr [ %111, %121 ]
  br label %393

135:                                              ; preds = %121
  %.lcssa74 = phi ptr [ %106, %121 ]
  %.lcssa26 = phi ptr [ %111, %121 ]
  br label %393

136:                                              ; preds = %121
  %.lcssa75 = phi ptr [ %106, %121 ]
  %.lcssa27 = phi ptr [ %111, %121 ]
  br label %393

137:                                              ; preds = %121
  %.lcssa76 = phi ptr [ %106, %121 ]
  %.lcssa28 = phi ptr [ %111, %121 ]
  br label %393

138:                                              ; preds = %121
  %.lcssa77 = phi ptr [ %106, %121 ]
  %.lcssa29 = phi ptr [ %111, %121 ]
  br label %393

139:                                              ; preds = %121
  %.lcssa78 = phi ptr [ %106, %121 ]
  %.lcssa30 = phi ptr [ %111, %121 ]
  br label %393

140:                                              ; preds = %121
  %.lcssa79 = phi ptr [ %106, %121 ]
  %.lcssa31 = phi ptr [ %111, %121 ]
  br label %393

141:                                              ; preds = %121
  %.lcssa80 = phi ptr [ %106, %121 ]
  %.lcssa32 = phi ptr [ %111, %121 ]
  br label %393

142:                                              ; preds = %121
  %.lcssa81 = phi ptr [ %106, %121 ]
  %.lcssa33 = phi ptr [ %111, %121 ]
  br label %393

143:                                              ; preds = %121
  %.lcssa82 = phi ptr [ %106, %121 ]
  %.lcssa34 = phi ptr [ %111, %121 ]
  %144 = load ptr, ptr @yytext, align 8, !tbaa !14
  %145 = load i8, ptr %144, align 1, !tbaa !16
  store i8 %145, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !25
  %146 = load i8, ptr %144, align 1, !tbaa !16
  %147 = sext i8 %146 to i32
  br label %393

148:                                              ; preds = %121
  %.lcssa83 = phi ptr [ %106, %121 ]
  %.lcssa35 = phi ptr [ %111, %121 ]
  br label %393

149:                                              ; preds = %121
  %.lcssa84 = phi ptr [ %106, %121 ]
  %.lcssa36 = phi ptr [ %111, %121 ]
  br label %393

150:                                              ; preds = %121
  %.lcssa85 = phi ptr [ %106, %121 ]
  %.lcssa37 = phi ptr [ %111, %121 ]
  br label %393

151:                                              ; preds = %121
  %.lcssa86 = phi ptr [ %106, %121 ]
  %.lcssa38 = phi ptr [ %111, %121 ]
  %152 = load ptr, ptr @yytext, align 8, !tbaa !14
  %153 = load i8, ptr %152, align 1, !tbaa !16
  store i8 %153, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !25
  br label %393

154:                                              ; preds = %121
  %.lcssa87 = phi ptr [ %106, %121 ]
  %.lcssa39 = phi ptr [ %111, %121 ]
  %155 = load ptr, ptr @yytext, align 8, !tbaa !14
  %156 = load i8, ptr %155, align 1, !tbaa !16
  store i8 %156, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !25
  br label %393

157:                                              ; preds = %121
  %.lcssa88 = phi ptr [ %106, %121 ]
  %.lcssa40 = phi ptr [ %111, %121 ]
  store i8 61, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !25
  %158 = load i8, ptr @yy_hold_char, align 1, !tbaa !16
  store i8 %158, ptr %.lcssa40, align 1, !tbaa !16
  %159 = getelementptr inbounds i8, ptr %.lcssa88, i64 1
  store ptr %159, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %.lcssa88, ptr @yytext, align 8, !tbaa !14
  store i32 1, ptr @yyleng, align 4, !tbaa !7
  %160 = load i8, ptr %159, align 1, !tbaa !16
  store i8 %160, ptr @yy_hold_char, align 1, !tbaa !16
  store i8 0, ptr %159, align 1, !tbaa !16
  store ptr %159, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %393

161:                                              ; preds = %121
  %.lcssa89 = phi ptr [ %106, %121 ]
  %.lcssa41 = phi ptr [ %111, %121 ]
  %162 = load ptr, ptr @yytext, align 8, !tbaa !14
  %163 = tail call ptr @strcopyof(ptr noundef %162) #38
  store ptr %163, ptr @yylval, align 8, !tbaa !23
  br label %393

164:                                              ; preds = %121
  %.lcssa90 = phi ptr [ %106, %121 ]
  %.lcssa42 = phi ptr [ %111, %121 ]
  %165 = load ptr, ptr @yytext, align 8, !tbaa !14
  %166 = load i8, ptr %165, align 1, !tbaa !16
  store i8 %166, ptr getelementptr inbounds (%struct.YYSTYPE, ptr @yylval, i64 0, i32 1), align 8, !tbaa !25
  br label %393

167:                                              ; preds = %121
  %.lcssa91 = phi ptr [ %106, %121 ]
  %.lcssa43 = phi ptr [ %111, %121 ]
  %168 = load i32, ptr @line_no, align 4, !tbaa !7
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr @line_no, align 4, !tbaa !7
  br label %393

170:                                              ; preds = %121
  %.lcssa92 = phi ptr [ %106, %121 ]
  %.lcssa44 = phi ptr [ %111, %121 ]
  %171 = load i32, ptr @line_no, align 4, !tbaa !7
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr @line_no, align 4, !tbaa !7
  br label %356

173:                                              ; preds = %179, %176
  %174 = load i32, ptr @line_no, align 4, !tbaa !7
  %175 = add nsw i32 %174, 1
  store i32 %175, ptr @line_no, align 4, !tbaa !7
  br label %178

176:                                              ; preds = %178, %121
  %.lcssa94 = phi ptr [ %.lcssa94, %178 ], [ %106, %121 ]
  %.lcssa46 = phi ptr [ %.lcssa46, %178 ], [ %111, %121 ]
  %177 = tail call fastcc i32 @input() #41, !range !114
  switch i32 %177, label %178 [
    i32 10, label %173
    i32 42, label %179
    i32 -1, label %181
  ], !llvm.loop !115

178:                                              ; preds = %179, %176, %173
  br label %176, !llvm.loop !115

179:                                              ; preds = %179, %176
  %180 = tail call fastcc i32 @input() #41, !range !114
  switch i32 %180, label %178 [
    i32 42, label %179
    i32 47, label %356
    i32 10, label %173
    i32 -1, label %181
  ]

181:                                              ; preds = %179, %176
  %.lcssa94.lcssa = phi ptr [ %.lcssa94, %179 ], [ %.lcssa94, %176 ]
  %.lcssa46.lcssa = phi ptr [ %.lcssa46, %179 ], [ %.lcssa46, %176 ]
  %182 = load ptr, ptr @stderr, align 8, !tbaa !14
  %183 = tail call i64 @fwrite(ptr nonnull @.str.137, i64 30, i64 1, ptr %182) #44
  br label %356

184:                                              ; preds = %121
  %.lcssa95 = phi ptr [ %106, %121 ]
  %.lcssa47 = phi ptr [ %111, %121 ]
  %185 = load ptr, ptr @yytext, align 8, !tbaa !14
  %186 = tail call ptr @strcopyof(ptr noundef %185) #38
  store ptr %186, ptr @yylval, align 8, !tbaa !23
  br label %393

187:                                              ; preds = %121
  %.lcssa96 = phi ptr [ %106, %121 ]
  %.lcssa48 = phi ptr [ %111, %121 ]
  %188 = load ptr, ptr @yytext, align 8, !tbaa !14
  %189 = tail call ptr @strcopyof(ptr noundef %188) #38
  store ptr %189, ptr @yylval, align 8, !tbaa !23
  %190 = load ptr, ptr @yytext, align 8, !tbaa !14
  %191 = load i32, ptr @line_no, align 4, !tbaa !7
  br label %192

192:                                              ; preds = %200, %187
  %193 = phi i32 [ %191, %187 ], [ %202, %200 ]
  %194 = phi ptr [ %190, %187 ], [ %206, %200 ]
  %195 = phi i32 [ 0, %187 ], [ %205, %200 ]
  %196 = load i8, ptr %194, align 1, !tbaa !16
  switch i8 %196, label %200 [
    i8 0, label %207
    i8 10, label %197
  ]

197:                                              ; preds = %192
  %198 = add nsw i32 %193, 1
  store i32 %198, ptr @line_no, align 4, !tbaa !7
  %199 = load i8, ptr %194, align 1, !tbaa !16
  br label %200

200:                                              ; preds = %197, %192
  %201 = phi i8 [ %196, %192 ], [ %199, %197 ]
  %202 = phi i32 [ %193, %192 ], [ %198, %197 ]
  %203 = icmp eq i8 %201, 34
  %204 = zext i1 %203 to i32
  %205 = add nuw nsw i32 %195, %204
  %206 = getelementptr inbounds i8, ptr %194, i64 1
  br label %192, !llvm.loop !116

207:                                              ; preds = %192
  %.lcssa = phi i32 [ %195, %192 ]
  %208 = icmp eq i32 %.lcssa, 2
  br i1 %208, label %393, label %209

209:                                              ; preds = %207
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.1.138) #38
  br label %393

210:                                              ; preds = %121
  %.lcssa97 = phi ptr [ %106, %121 ]
  %.lcssa49 = phi ptr [ %111, %121 ]
  %211 = load ptr, ptr @yytext, align 8, !tbaa !14
  %212 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %211) #40
  %213 = shl i64 %212, 32
  %214 = add i64 %213, -4294967296
  %215 = ashr exact i64 %214, 32
  %216 = getelementptr inbounds i8, ptr %211, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !16
  %218 = icmp eq i8 %217, 46
  br i1 %218, label %219, label %221

219:                                              ; preds = %210
  store i8 0, ptr %216, align 1, !tbaa !16
  %220 = load ptr, ptr @yytext, align 8, !tbaa !14
  br label %221

221:                                              ; preds = %219, %210
  %222 = phi ptr [ %220, %219 ], [ %211, %210 ]
  br label %223

223:                                              ; preds = %226, %221
  %224 = phi ptr [ %222, %221 ], [ %227, %226 ]
  %225 = load i8, ptr %224, align 1, !tbaa !16
  switch i8 %225, label %230 [
    i8 48, label %226
    i8 0, label %228
  ]

226:                                              ; preds = %223
  %227 = getelementptr inbounds i8, ptr %224, i64 1
  br label %223, !llvm.loop !117

228:                                              ; preds = %223
  %.lcssa7 = phi ptr [ %224, %223 ]
  %229 = getelementptr inbounds i8, ptr %.lcssa7, i64 -1
  br label %230

230:                                              ; preds = %228, %223
  %231 = phi ptr [ %229, %228 ], [ %224, %223 ]
  br label %232

232:                                              ; preds = %243, %230
  %233 = phi ptr [ %231, %230 ], [ %244, %243 ]
  %234 = phi ptr [ %222, %230 ], [ %245, %243 ]
  %235 = load i32, ptr @line_no, align 4, !tbaa !7
  br label %236

236:                                              ; preds = %240, %232
  %237 = phi i32 [ %242, %240 ], [ %235, %232 ]
  %238 = phi ptr [ %241, %240 ], [ %233, %232 ]
  %239 = load i8, ptr %238, align 1, !tbaa !16
  switch i8 %239, label %243 [
    i8 0, label %246
    i8 92, label %240
  ]

240:                                              ; preds = %236
  %241 = getelementptr inbounds i8, ptr %238, i64 2
  %242 = add nsw i32 %237, 1
  store i32 %242, ptr @line_no, align 4, !tbaa !7
  br label %236, !llvm.loop !118

243:                                              ; preds = %236
  %.lcssa3 = phi ptr [ %238, %236 ]
  %.lcssa1 = phi i8 [ %239, %236 ]
  %244 = getelementptr inbounds i8, ptr %.lcssa3, i64 1
  %245 = getelementptr inbounds i8, ptr %234, i64 1
  store i8 %.lcssa1, ptr %234, align 1, !tbaa !16
  br label %232, !llvm.loop !118

246:                                              ; preds = %236
  %.lcssa5 = phi ptr [ %234, %236 ]
  store i8 0, ptr %.lcssa5, align 1, !tbaa !16
  %247 = load ptr, ptr @yytext, align 8, !tbaa !14
  %248 = tail call ptr @strcopyof(ptr noundef %247) #38
  store ptr %248, ptr @yylval, align 8, !tbaa !23
  br label %393

249:                                              ; preds = %121
  %.lcssa98 = phi ptr [ %106, %121 ]
  %.lcssa50 = phi ptr [ %111, %121 ]
  %250 = load ptr, ptr @yytext, align 8, !tbaa !14
  %251 = load i8, ptr %250, align 1, !tbaa !16
  %252 = icmp slt i8 %251, 32
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = sext i8 %251 to i32
  %255 = add nsw i32 %254, 64
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.2.139, i32 noundef %255) #38
  br label %356

256:                                              ; preds = %249
  %257 = icmp eq i8 %251, 127
  br i1 %257, label %258, label %259

258:                                              ; preds = %256
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.3.140, i32 noundef 127) #38
  br label %356

259:                                              ; preds = %256
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.4.141, ptr noundef nonnull %250) #38
  br label %356

260:                                              ; preds = %121
  %.lcssa99 = phi ptr [ %106, %121 ]
  %.lcssa51 = phi ptr [ %111, %121 ]
  %261 = load ptr, ptr @yytext, align 8, !tbaa !14
  %262 = load i32, ptr @yyleng, align 4, !tbaa !7
  %263 = sext i32 %262 to i64
  %264 = load ptr, ptr @yyout, align 8, !tbaa !14
  %265 = tail call i64 @fwrite(ptr noundef %261, i64 noundef %263, i64 noundef 1, ptr noundef %264) #41
  br label %356

266:                                              ; preds = %121
  %.lcssa100 = phi ptr [ %106, %121 ]
  %.lcssa52 = phi ptr [ %111, %121 ]
  br label %393

267:                                              ; preds = %121
  %268 = load ptr, ptr @yytext, align 8, !tbaa !14
  %269 = load i8, ptr @yy_hold_char, align 1, !tbaa !16
  store i8 %269, ptr %111, align 1, !tbaa !16
  %270 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %271 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %272 = getelementptr inbounds %struct.yy_buffer_state, ptr %271, i64 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !108
  %274 = load i32, ptr @yy_n_chars, align 4, !tbaa !7
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, ptr %273, i64 %275
  %277 = icmp ugt ptr %270, %276
  br i1 %277, label %332, label %278

278:                                              ; preds = %267
  %.lcssa53 = phi ptr [ %111, %267 ]
  %.lcssa8 = phi ptr [ %268, %267 ]
  %279 = ptrtoint ptr %.lcssa53 to i64
  %280 = ptrtoint ptr %.lcssa8 to i64
  %281 = xor i64 %280, -1
  %282 = add i64 %281, %279
  %283 = load ptr, ptr @yytext, align 8, !tbaa !14
  %284 = shl i64 %282, 32
  %285 = ashr exact i64 %284, 32
  %286 = getelementptr inbounds i8, ptr %283, i64 %285
  store ptr %286, ptr @yy_c_buf_p, align 8, !tbaa !14
  %287 = tail call fastcc i32 @yy_get_previous_state() #41, !range !119
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %288
  %290 = load i16, ptr %289, align 2, !tbaa !11
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %278
  store i32 %287, ptr @yy_last_accepting_state, align 4, !tbaa !7
  store ptr %286, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  br label %293

293:                                              ; preds = %292, %278
  %294 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %288
  %295 = load i16, ptr %294, align 2, !tbaa !11
  %296 = sext i16 %295 to i64
  %297 = add nsw i64 %296, 1
  %298 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %297
  %299 = load i16, ptr %298, align 2, !tbaa !11
  %300 = sext i16 %299 to i32
  %301 = icmp eq i32 %287, %300
  br i1 %301, label %314, label %302

302:                                              ; preds = %302, %293
  %303 = phi i64 [ %306, %302 ], [ %288, %293 ]
  %304 = getelementptr inbounds [146 x i16], ptr @yy_def, i64 0, i64 %303
  %305 = load i16, ptr %304, align 2, !tbaa !11
  %306 = sext i16 %305 to i64
  %307 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %306
  %308 = load i16, ptr %307, align 2, !tbaa !11
  %309 = sext i16 %308 to i64
  %310 = add nsw i64 %309, 1
  %311 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %310
  %312 = load i16, ptr %311, align 2, !tbaa !11
  %313 = icmp eq i16 %305, %312
  br i1 %313, label %314, label %302, !llvm.loop !120

314:                                              ; preds = %302, %293
  %315 = phi i64 [ %297, %293 ], [ %310, %302 ]
  %316 = getelementptr inbounds [247 x i16], ptr @yy_nxt, i64 0, i64 %315
  %317 = load i16, ptr %316, align 2, !tbaa !11
  %318 = sext i16 %317 to i64
  %319 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %318
  %320 = load i16, ptr %319, align 2, !tbaa !11
  %321 = icmp eq i16 %320, 194
  %322 = load ptr, ptr @yytext, align 8, !tbaa !14
  %323 = icmp eq i64 %315, 0
  %324 = or i1 %323, %321
  br i1 %324, label %325, label %329

325:                                              ; preds = %372, %314
  %326 = phi ptr [ %380, %372 ], [ %322, %314 ]
  %327 = phi ptr [ %378, %372 ], [ %.lcssa53, %314 ]
  %328 = phi i32 [ %379, %372 ], [ %287, %314 ]
  br label %105

329:                                              ; preds = %314
  %.lcssa59 = phi i16 [ %317, %314 ]
  %.lcssa58 = phi ptr [ %322, %314 ]
  %.lcssa57 = phi ptr [ %286, %314 ]
  %330 = sext i16 %.lcssa59 to i32
  %331 = getelementptr inbounds i8, ptr %.lcssa57, i64 1
  store ptr %331, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %368

332:                                              ; preds = %267
  %333 = tail call fastcc i32 @yy_get_next_buffer() #41, !range !121
  switch i32 %333, label %356 [
    i32 1, label %334
    i32 0, label %357
    i32 2, label %372
  ]

334:                                              ; preds = %332
  store i1 false, ptr @yy_did_buffer_switch_on_eof, align 4
  %335 = tail call i32 @open_new_file() #38
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %381, label %337

337:                                              ; preds = %334
  %.lcssa103 = phi ptr [ %106, %334 ]
  %.lcssa56 = phi ptr [ %111, %334 ]
  %338 = load i1, ptr @yy_did_buffer_switch_on_eof, align 4
  br i1 %338, label %356, label %339

339:                                              ; preds = %337
  %340 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %341 = load ptr, ptr @yyin, align 8, !tbaa !14
  store ptr %341, ptr %340, align 8, !tbaa !106
  %342 = getelementptr inbounds %struct.yy_buffer_state, ptr %340, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !108
  store i8 10, ptr %343, align 1, !tbaa !16
  %344 = getelementptr inbounds %struct.yy_buffer_state, ptr %340, i64 0, i32 4
  store i32 1, ptr %344, align 4, !tbaa !109
  %345 = load ptr, ptr %342, align 8, !tbaa !108
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  store i8 0, ptr %346, align 1, !tbaa !16
  %347 = load ptr, ptr %342, align 8, !tbaa !108
  %348 = getelementptr inbounds i8, ptr %347, i64 2
  store i8 0, ptr %348, align 1, !tbaa !16
  %349 = load ptr, ptr %342, align 8, !tbaa !108
  %350 = getelementptr inbounds i8, ptr %349, i64 1
  %351 = getelementptr inbounds %struct.yy_buffer_state, ptr %340, i64 0, i32 2
  store ptr %350, ptr %351, align 8, !tbaa !110
  %352 = getelementptr inbounds %struct.yy_buffer_state, ptr %340, i64 0, i32 5
  store i32 0, ptr %352, align 8, !tbaa !111
  %353 = load i32, ptr %344, align 4, !tbaa !109
  store i32 %353, ptr @yy_n_chars, align 4, !tbaa !7
  store ptr %350, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %350, ptr @yytext, align 8, !tbaa !14
  %354 = load ptr, ptr %340, align 8, !tbaa !106
  store ptr %354, ptr @yyin, align 8, !tbaa !14
  %355 = load i8, ptr %350, align 1, !tbaa !16
  store i8 %355, ptr @yy_hold_char, align 1, !tbaa !16
  br label %356

356:                                              ; preds = %339, %337, %332, %260, %259, %258, %253, %181, %179, %170, %121
  br label %43

357:                                              ; preds = %332
  %.lcssa54 = phi ptr [ %111, %332 ]
  %.lcssa9 = phi ptr [ %268, %332 ]
  %358 = ptrtoint ptr %.lcssa54 to i64
  %359 = ptrtoint ptr %.lcssa9 to i64
  %360 = xor i64 %359, -1
  %361 = add i64 %360, %358
  %362 = load ptr, ptr @yytext, align 8, !tbaa !14
  %363 = shl i64 %361, 32
  %364 = ashr exact i64 %363, 32
  %365 = getelementptr inbounds i8, ptr %362, i64 %364
  store ptr %365, ptr @yy_c_buf_p, align 8, !tbaa !14
  %366 = tail call fastcc i32 @yy_get_previous_state() #41, !range !119
  %367 = load ptr, ptr @yytext, align 8, !tbaa !14
  br label %368

368:                                              ; preds = %357, %329
  %369 = phi ptr [ %.lcssa58, %329 ], [ %367, %357 ]
  %370 = phi ptr [ %331, %329 ], [ %365, %357 ]
  %371 = phi i32 [ %330, %329 ], [ %366, %357 ]
  br label %48

372:                                              ; preds = %332
  %373 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %374 = getelementptr inbounds %struct.yy_buffer_state, ptr %373, i64 0, i32 1
  %375 = load ptr, ptr %374, align 8, !tbaa !108
  %376 = load i32, ptr @yy_n_chars, align 4, !tbaa !7
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, ptr %375, i64 %377
  store ptr %378, ptr @yy_c_buf_p, align 8, !tbaa !14
  %379 = tail call fastcc i32 @yy_get_previous_state() #41, !range !119
  %380 = load ptr, ptr @yytext, align 8, !tbaa !14
  br label %325

381:                                              ; preds = %334
  %382 = load ptr, ptr @yytext, align 8, !tbaa !14
  br label %121

383:                                              ; preds = %121
  %384 = load ptr, ptr @stderr, align 8, !tbaa !14
  %385 = tail call i32 @fputs(ptr noundef nonnull @.str.5.142, ptr noundef %384) #45
  %386 = load ptr, ptr @stderr, align 8, !tbaa !14
  %387 = tail call i32 @putc(i32 noundef 10, ptr noundef %386) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

388:                                              ; preds = %121
  %.lcssa61 = phi ptr [ %106, %121 ]
  %.lcssa13 = phi ptr [ %111, %121 ]
  br label %393

389:                                              ; preds = %121
  %.lcssa62 = phi ptr [ %106, %121 ]
  %.lcssa14 = phi ptr [ %111, %121 ]
  br label %393

390:                                              ; preds = %121
  %.lcssa63 = phi ptr [ %106, %121 ]
  %.lcssa15 = phi ptr [ %111, %121 ]
  br label %393

391:                                              ; preds = %121
  %.lcssa64 = phi ptr [ %106, %121 ]
  %.lcssa16 = phi ptr [ %111, %121 ]
  br label %393

392:                                              ; preds = %121
  %.lcssa65 = phi ptr [ %106, %121 ]
  %.lcssa17 = phi ptr [ %111, %121 ]
  br label %393

393:                                              ; preds = %392, %391, %390, %389, %388, %266, %246, %209, %207, %184, %167, %164, %161, %157, %154, %151, %150, %149, %148, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %121
  %394 = phi i32 [ 0, %266 ], [ 263, %246 ], [ 262, %184 ], [ 257, %167 ], [ 267, %164 ], [ 266, %161 ], [ 265, %157 ], [ 265, %154 ], [ 264, %151 ], [ 260, %150 ], [ 259, %149 ], [ 258, %148 ], [ %147, %143 ], [ 288, %142 ], [ 287, %141 ], [ 286, %140 ], [ 283, %139 ], [ 285, %138 ], [ 284, %137 ], [ 282, %136 ], [ 277, %135 ], [ 281, %134 ], [ 280, %133 ], [ 279, %132 ], [ 278, %131 ], [ 276, %130 ], [ 275, %129 ], [ 274, %128 ], [ 261, %209 ], [ 261, %207 ], [ 268, %388 ], [ 269, %389 ], [ 270, %390 ], [ 271, %391 ], [ 272, %392 ], [ 273, %121 ]
  ret i32 %394
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @yy_create_buffer(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !14
  %7 = tail call i32 @fputs(ptr noundef nonnull @.str.6.147, ptr noundef %6) #45
  %8 = load ptr, ptr @stderr, align 8, !tbaa !14
  %9 = tail call i32 @putc(i32 noundef 10, ptr noundef %8) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 3
  store i32 %1, ptr %11, align 8, !tbaa !122
  %12 = add nsw i32 %1, 2
  %13 = zext i32 %12 to i64
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #43
  %15 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !108
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load ptr, ptr @stderr, align 8, !tbaa !14
  %19 = tail call i32 @fputs(ptr noundef nonnull @.str.6.147, ptr noundef %18) #45
  %20 = load ptr, ptr @stderr, align 8, !tbaa !14
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %20) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

22:                                               ; preds = %10
  store ptr %0, ptr %3, align 8, !tbaa !106
  store i8 10, ptr %14, align 1, !tbaa !16
  %23 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 4
  store i32 1, ptr %23, align 4, !tbaa !109
  %24 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 0, ptr %24, align 1, !tbaa !16
  %25 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 0, ptr %25, align 1, !tbaa !16
  %26 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 2
  store ptr %24, ptr %26, align 8, !tbaa !110
  %27 = getelementptr inbounds %struct.yy_buffer_state, ptr %3, i64 0, i32 5
  store i32 0, ptr %27, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @input() unnamed_addr #0 {
  %1 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %2 = load i8, ptr @yy_hold_char, align 1, !tbaa !16
  store i8 %2, ptr %1, align 1, !tbaa !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %52

4:                                                ; preds = %0
  %5 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %6 = load i32, ptr @yy_n_chars, align 4, !tbaa !7
  br label %7

7:                                                ; preds = %27, %4
  %8 = phi i32 [ %41, %27 ], [ %6, %4 ]
  %9 = phi ptr [ %28, %27 ], [ %5, %4 ]
  %10 = phi ptr [ %38, %27 ], [ %1, %4 ]
  %11 = getelementptr inbounds %struct.yy_buffer_state, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !108
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = icmp ult ptr %10, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  %.lcssa = phi ptr [ %10, %7 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !16
  br label %52

17:                                               ; preds = %7
  store ptr %10, ptr @yytext, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %18, ptr @yy_c_buf_p, align 8, !tbaa !14
  %19 = tail call fastcc i32 @yy_get_next_buffer() #41, !range !121
  switch i32 %19, label %20 [
    i32 1, label %22
    i32 0, label %45
    i32 2, label %47
  ]

20:                                               ; preds = %17
  %21 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %52

22:                                               ; preds = %17
  %23 = tail call i32 @open_new_file() #38
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr @yytext, align 8, !tbaa !14
  store ptr %26, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %58

27:                                               ; preds = %22
  %28 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %29 = load ptr, ptr @yyin, align 8, !tbaa !14
  store ptr %29, ptr %28, align 8, !tbaa !106
  %30 = getelementptr inbounds %struct.yy_buffer_state, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  store i8 10, ptr %31, align 1, !tbaa !16
  %32 = getelementptr inbounds %struct.yy_buffer_state, ptr %28, i64 0, i32 4
  store i32 1, ptr %32, align 4, !tbaa !109
  %33 = load ptr, ptr %30, align 8, !tbaa !108
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 0, ptr %34, align 1, !tbaa !16
  %35 = load ptr, ptr %30, align 8, !tbaa !108
  %36 = getelementptr inbounds i8, ptr %35, i64 2
  store i8 0, ptr %36, align 1, !tbaa !16
  %37 = load ptr, ptr %30, align 8, !tbaa !108
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  %39 = getelementptr inbounds %struct.yy_buffer_state, ptr %28, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !110
  %40 = getelementptr inbounds %struct.yy_buffer_state, ptr %28, i64 0, i32 5
  store i32 0, ptr %40, align 8, !tbaa !111
  %41 = load i32, ptr %32, align 4, !tbaa !109
  store i32 %41, ptr @yy_n_chars, align 4, !tbaa !7
  store ptr %38, ptr @yy_c_buf_p, align 8, !tbaa !14
  store ptr %38, ptr @yytext, align 8, !tbaa !14
  %42 = load ptr, ptr %28, align 8, !tbaa !106
  store ptr %42, ptr @yyin, align 8, !tbaa !14
  %43 = load i8, ptr %38, align 1, !tbaa !16
  store i8 %43, ptr @yy_hold_char, align 1, !tbaa !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %7, label %52

45:                                               ; preds = %17
  %46 = load ptr, ptr @yytext, align 8, !tbaa !14
  store ptr %46, ptr @yy_c_buf_p, align 8, !tbaa !14
  br label %52

47:                                               ; preds = %17
  %48 = load ptr, ptr @stderr, align 8, !tbaa !14
  %49 = tail call i32 @fputs(ptr noundef nonnull @.str.10.146, ptr noundef %48) #45
  %50 = load ptr, ptr @stderr, align 8, !tbaa !14
  %51 = tail call i32 @putc(i32 noundef 10, ptr noundef %50) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

52:                                               ; preds = %45, %27, %20, %16, %0
  %53 = phi ptr [ %1, %0 ], [ %.lcssa, %16 ], [ %46, %45 ], [ %21, %20 ], [ %38, %27 ]
  %54 = load i8, ptr %53, align 1, !tbaa !16
  %55 = sext i8 %54 to i32
  %56 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %56, ptr @yy_c_buf_p, align 8, !tbaa !14
  %57 = load i8, ptr %56, align 1, !tbaa !16
  store i8 %57, ptr @yy_hold_char, align 1, !tbaa !16
  br label %58

58:                                               ; preds = %52, %25
  %59 = phi i32 [ %55, %52 ], [ -1, %25 ]
  ret i32 %59
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @yy_get_previous_state() unnamed_addr #28 {
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
  %14 = load i8, ptr %12, align 1, !tbaa !16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = sext i8 %14 to i64
  %18 = getelementptr inbounds [256 x i8], ptr @yy_ec, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !16
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i8 [ %19, %16 ], [ 1, %11 ]
  %22 = sext i32 %13 to i64
  %23 = getelementptr inbounds [144 x i16], ptr @yy_accept, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !11
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  store i32 %13, ptr @yy_last_accepting_state, align 4, !tbaa !7
  store ptr %12, ptr @yy_last_accepting_cpos, align 8, !tbaa !14
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %22
  %29 = load i16, ptr %28, align 2, !tbaa !11
  %30 = sext i16 %29 to i64
  %31 = sext i8 %21 to i64
  %32 = add nsw i64 %30, %31
  %33 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !11
  %35 = sext i16 %34 to i32
  %36 = icmp eq i32 %13, %35
  br i1 %36, label %58, label %37

37:                                               ; preds = %47, %27
  %38 = phi i64 [ %53, %47 ], [ %31, %27 ]
  %39 = phi i64 [ %49, %47 ], [ %22, %27 ]
  %40 = phi i8 [ %48, %47 ], [ %21, %27 ]
  %41 = getelementptr inbounds [146 x i16], ptr @yy_def, i64 0, i64 %39
  %42 = load i16, ptr %41, align 2, !tbaa !11
  %43 = icmp sgt i16 %42, 143
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds [53 x i8], ptr @yy_meta, i64 0, i64 %38
  %46 = load i8, ptr %45, align 1, !tbaa !16
  br label %47

47:                                               ; preds = %44, %37
  %48 = phi i8 [ %46, %44 ], [ %40, %37 ]
  %49 = sext i16 %42 to i64
  %50 = getelementptr inbounds [146 x i16], ptr @yy_base, i64 0, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !11
  %52 = sext i16 %51 to i64
  %53 = sext i8 %48 to i64
  %54 = add nsw i64 %52, %53
  %55 = getelementptr inbounds [247 x i16], ptr @yy_chk, i64 0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !11
  %57 = icmp eq i16 %42, %56
  br i1 %57, label %58, label %37, !llvm.loop !123

58:                                               ; preds = %47, %27
  %59 = phi i64 [ %32, %27 ], [ %54, %47 ]
  %60 = getelementptr inbounds [247 x i16], ptr @yy_nxt, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !11
  %62 = sext i16 %61 to i32
  %63 = getelementptr inbounds i8, ptr %12, i64 1
  %64 = icmp eq ptr %63, %10
  br i1 %64, label %65, label %11, !llvm.loop !124

65:                                               ; preds = %58, %0
  %66 = phi i32 [ %2, %0 ], [ %62, %58 ]
  ret i32 %66
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @yy_get_next_buffer() unnamed_addr #0 {
  %1 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.yy_buffer_state, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !14
  %5 = load i32, ptr @yy_n_chars, align 4, !tbaa !7
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %3, i64 %7
  %9 = icmp ugt ptr %4, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %0
  %11 = load ptr, ptr @stderr, align 8, !tbaa !14
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.7.143, ptr noundef %11) #45
  %13 = load ptr, ptr @stderr, align 8, !tbaa !14
  %14 = tail call i32 @putc(i32 noundef 10, ptr noundef %13) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

15:                                               ; preds = %0
  %16 = load ptr, ptr @yytext, align 8, !tbaa !14
  %17 = ptrtoint ptr %4 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %16, i64 -1
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ %31, %24 ], [ 0, %22 ]
  %26 = phi ptr [ %30, %24 ], [ %3, %22 ]
  %27 = phi ptr [ %28, %24 ], [ %23, %22 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %27, align 1, !tbaa !16
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  store i8 %29, ptr %26, align 1, !tbaa !16
  %31 = add nuw nsw i32 %25, 1
  %32 = icmp eq i32 %31, %20
  br i1 %32, label %33, label %24, !llvm.loop !125

33:                                               ; preds = %24, %15
  %34 = getelementptr inbounds %struct.yy_buffer_state, ptr %1, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !111
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.yy_buffer_state, ptr %1, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !122
  %40 = xor i32 %20, -1
  %41 = add i32 %39, %40
  %42 = icmp sgt i32 %41, 8192
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = icmp slt i32 %41, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load ptr, ptr @stderr, align 8, !tbaa !14
  %47 = tail call i32 @fputs(ptr noundef nonnull @.str.8.144, ptr noundef %46) #45
  %48 = load ptr, ptr @stderr, align 8, !tbaa !14
  %49 = tail call i32 @putc(i32 noundef 10, ptr noundef %48) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

50:                                               ; preds = %43, %37
  %51 = phi i32 [ %41, %43 ], [ 8192, %37 ]
  %52 = shl i64 %19, 32
  %53 = ashr exact i64 %52, 32
  %54 = zext i32 %51 to i64
  br label %55

55:                                               ; preds = %65, %50
  %56 = load ptr, ptr @yyin, align 8, !tbaa !14
  %57 = tail call i32 @fileno(ptr noundef %56) #38
  %58 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %59 = getelementptr inbounds %struct.yy_buffer_state, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !108
  %61 = getelementptr inbounds i8, ptr %60, i64 %53
  %62 = tail call i64 @read(i32 noundef %57, ptr noundef %61, i64 noundef %54) #38
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr @yy_n_chars, align 4, !tbaa !7
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = tail call ptr @__errno_location() #42
  %67 = load i32, ptr %66, align 4, !tbaa !7
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %55, label %69, !llvm.loop !126

69:                                               ; preds = %65
  %70 = load ptr, ptr @stderr, align 8, !tbaa !14
  %71 = tail call i32 @fputs(ptr noundef nonnull @.str.9.145, ptr noundef %70) #45
  %72 = load ptr, ptr @stderr, align 8, !tbaa !14
  %73 = tail call i32 @putc(i32 noundef 10, ptr noundef %72) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

74:                                               ; preds = %55
  %.lcssa = phi i32 [ %63, %55 ]
  %75 = icmp eq i32 %.lcssa, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  br label %84

78:                                               ; preds = %74, %33
  %79 = icmp eq i32 %20, 1
  %80 = load ptr, ptr @yy_current_buffer, align 8, !tbaa !14
  %81 = getelementptr inbounds %struct.yy_buffer_state, ptr %80, i64 0, i32 5
  br i1 %79, label %82, label %83

82:                                               ; preds = %78
  store i32 2, ptr %81, align 8, !tbaa !111
  br label %84

83:                                               ; preds = %78
  store i32 1, ptr %81, align 8, !tbaa !111
  br label %84

84:                                               ; preds = %83, %82, %76
  %85 = phi ptr [ %80, %82 ], [ %80, %83 ], [ %77, %76 ]
  %86 = phi i32 [ 0, %82 ], [ 0, %83 ], [ %.lcssa, %76 ]
  %87 = phi i32 [ 1, %82 ], [ 2, %83 ], [ 0, %76 ]
  %88 = add nsw i32 %86, %20
  store i32 %88, ptr @yy_n_chars, align 4, !tbaa !7
  %89 = getelementptr inbounds %struct.yy_buffer_state, ptr %85, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !108
  %91 = sext i32 %88 to i64
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  store i8 0, ptr %92, align 1, !tbaa !16
  %93 = load ptr, ptr %89, align 8, !tbaa !108
  %94 = add nsw i32 %88, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %93, i64 %95
  store i8 0, ptr %96, align 1, !tbaa !16
  %97 = load ptr, ptr %89, align 8, !tbaa !108
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %98, ptr @yytext, align 8, !tbaa !14
  ret i32 %87
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #29

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @init_storage() #0 {
  store i32 0, ptr @f_count, align 4, !tbaa !7
  tail call void @more_functions() #41
  %1 = load ptr, ptr @f_names, align 8, !tbaa !14
  store ptr @.str.150, ptr %1, align 8, !tbaa !14
  store i32 0, ptr @v_count, align 4, !tbaa !7
  tail call void @more_variables() #41
  store i32 0, ptr @a_count, align 4, !tbaa !7
  tail call void @more_arrays() #41
  store ptr null, ptr @ex_stack, align 8, !tbaa !14
  store ptr null, ptr @fn_stack, align 8, !tbaa !14
  store i32 10, ptr @i_base, align 4, !tbaa !7
  store i32 10, ptr @o_base, align 4, !tbaa !7
  store i32 0, ptr @scale, align 4, !tbaa !7
  store i8 0, ptr @c_code, align 1, !tbaa !16
  tail call void @init_numbers() #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @more_functions() #0 {
  %1 = load i32, ptr @f_count, align 4, !tbaa !7
  %2 = load ptr, ptr @functions, align 8, !tbaa !14
  %3 = load ptr, ptr @f_names, align 8, !tbaa !14
  %4 = add nsw i32 %1, 32
  store i32 %4, ptr @f_count, align 4, !tbaa !7
  %5 = sext i32 %4 to i64
  %6 = mul nsw i64 %5, 168
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #43
  store ptr %7, ptr @functions, align 8, !tbaa !14
  %8 = shl nsw i64 %5, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #43
  store ptr %9, ptr @f_names, align 8, !tbaa !14
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = zext i32 %1 to i64
  br label %23

13:                                               ; preds = %23
  %14 = load i32, ptr @f_count, align 4, !tbaa !7
  br label %15

15:                                               ; preds = %13, %0
  %16 = phi i32 [ %4, %0 ], [ %14, %13 ]
  %17 = phi i32 [ 0, %0 ], [ %1, %13 ]
  %18 = icmp slt i32 %17, %16
  br i1 %18, label %19, label %49

19:                                               ; preds = %15
  %20 = zext i32 %17 to i64
  %21 = mul nuw nsw i64 %20, 168
  %22 = add nuw nsw i64 %21, 8
  br label %34

23:                                               ; preds = %23, %11
  %24 = phi i64 [ 0, %11 ], [ %32, %23 ]
  %25 = load ptr, ptr @functions, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.bc_function, ptr %25, i64 %24
  %27 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %26, ptr noundef nonnull align 8 dereferenceable(168) %27, i64 168, i1 false), !tbaa.struct !127
  %28 = getelementptr inbounds ptr, ptr %3, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  %30 = load ptr, ptr @f_names, align 8, !tbaa !14
  %31 = getelementptr inbounds ptr, ptr %30, i64 %24
  store ptr %29, ptr %31, align 8, !tbaa !14
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq i64 %32, %12
  br i1 %33, label %13, label %23, !llvm.loop !128

34:                                               ; preds = %34, %19
  %35 = phi i64 [ %20, %19 ], [ %44, %34 ]
  %36 = phi i64 [ 0, %19 ], [ %48, %34 ]
  %37 = mul nuw nsw i64 %36, 168
  %38 = add nuw nsw i64 %22, %37
  %39 = load ptr, ptr @functions, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.bc_function, ptr %39, i64 %35
  store i8 0, ptr %40, align 8, !tbaa !36
  %41 = getelementptr i8, ptr %39, i64 %38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %41, i8 0, i64 128, i1 false), !tbaa !14
  %42 = getelementptr inbounds %struct.bc_function, ptr %39, i64 %35, i32 2
  store i32 0, ptr %42, align 8, !tbaa !29
  %43 = getelementptr inbounds %struct.bc_function, ptr %39, i64 %35, i32 3
  %44 = add nuw nsw i64 %35, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %43, i8 0, i64 24, i1 false)
  %45 = load i32, ptr @f_count, align 4, !tbaa !7
  %46 = trunc i64 %44 to i32
  %47 = icmp sgt i32 %45, %46
  %48 = add nuw nsw i64 %36, 1
  br i1 %47, label %34, label %49, !llvm.loop !129

49:                                               ; preds = %34, %15
  %50 = icmp eq i32 %1, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @free(ptr noundef %2) #38
  tail call void @free(ptr noundef %3) #38
  br label %52

52:                                               ; preds = %51, %49
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @more_variables() #0 {
  %1 = load i32, ptr @v_count, align 4, !tbaa !7
  %2 = load ptr, ptr @variables, align 8, !tbaa !14
  %3 = load ptr, ptr @v_names, align 8, !tbaa !14
  %4 = add nsw i32 %1, 32
  store i32 %4, ptr @v_count, align 4, !tbaa !7
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #43
  store ptr %7, ptr @variables, align 8, !tbaa !14
  %8 = tail call noalias ptr @malloc(i64 noundef %6) #43
  store ptr %8, ptr @v_names, align 8, !tbaa !14
  %9 = icmp sgt i32 %1, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = zext i32 %1 to i64
  br label %19

12:                                               ; preds = %0
  %13 = icmp sgt i32 %1, -29
  br i1 %13, label %16, label %33

14:                                               ; preds = %19
  %15 = zext i32 %1 to i64
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ 3, %12 ], [ %15, %14 ]
  %18 = zext i32 %4 to i64
  br label %27

19:                                               ; preds = %19, %10
  %20 = phi i64 [ 3, %10 ], [ %25, %19 ]
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = load ptr, ptr @variables, align 8, !tbaa !14
  %24 = getelementptr inbounds ptr, ptr %23, i64 %20
  store ptr %22, ptr %24, align 8, !tbaa !14
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, %11
  br i1 %26, label %14, label %19, !llvm.loop !130

27:                                               ; preds = %27, %16
  %28 = phi i64 [ %17, %16 ], [ %31, %27 ]
  %29 = load ptr, ptr @variables, align 8, !tbaa !14
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  store ptr null, ptr %30, align 8, !tbaa !14
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %27, !llvm.loop !131

33:                                               ; preds = %27, %12
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @free(ptr noundef %2) #38
  tail call void @free(ptr noundef %3) #38
  br label %36

36:                                               ; preds = %35, %33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @more_arrays() #0 {
  %1 = load i32, ptr @a_count, align 4, !tbaa !7
  %2 = load ptr, ptr @arrays, align 8, !tbaa !14
  %3 = load ptr, ptr @a_names, align 8, !tbaa !14
  %4 = add nsw i32 %1, 32
  store i32 %4, ptr @a_count, align 4, !tbaa !7
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #43
  store ptr %7, ptr @arrays, align 8, !tbaa !14
  %8 = tail call noalias ptr @malloc(i64 noundef %6) #43
  store ptr %8, ptr @a_names, align 8, !tbaa !14
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = zext i32 %1 to i64
  br label %19

12:                                               ; preds = %19, %0
  %13 = phi i32 [ 1, %0 ], [ %1, %19 ]
  %14 = load i32, ptr @v_count, align 4, !tbaa !7
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = zext i32 %13 to i64
  %18 = zext i32 %14 to i64
  br label %27

19:                                               ; preds = %19, %10
  %20 = phi i64 [ 1, %10 ], [ %25, %19 ]
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = load ptr, ptr @arrays, align 8, !tbaa !14
  %24 = getelementptr inbounds ptr, ptr %23, i64 %20
  store ptr %22, ptr %24, align 8, !tbaa !14
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, %11
  br i1 %26, label %12, label %19, !llvm.loop !132

27:                                               ; preds = %27, %16
  %28 = phi i64 [ %17, %16 ], [ %31, %27 ]
  %29 = load ptr, ptr @arrays, align 8, !tbaa !14
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  store ptr null, ptr %30, align 8, !tbaa !14
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %27, !llvm.loop !133

33:                                               ; preds = %27, %12
  %34 = icmp eq i32 %1, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void @free(ptr noundef %2) #38
  tail call void @free(ptr noundef %3) #38
  br label %36

36:                                               ; preds = %35, %33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @clear_func(i8 noundef signext %0) #0 {
  %2 = load ptr, ptr @functions, align 8, !tbaa !14
  %3 = sext i8 %0 to i64
  %4 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3
  store i8 0, ptr %4, align 8, !tbaa !36
  br label %5

5:                                                ; preds = %11, %1
  %6 = phi i64 [ 0, %1 ], [ %12, %11 ]
  %7 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 1, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %8) #38
  store ptr null, ptr %7, align 8, !tbaa !14
  br label %11

11:                                               ; preds = %10, %5
  %12 = add nuw nsw i64 %6, 1
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %14, label %5, !llvm.loop !134

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 2
  store i32 0, ptr %15, align 8, !tbaa !29
  %16 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @free_args(ptr noundef nonnull %17) #38
  store ptr null, ptr %16, align 8, !tbaa !41
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @free_args(ptr noundef nonnull %22) #38
  store ptr null, ptr %21, align 8, !tbaa !42
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr inbounds %struct.bc_function, ptr %2, i64 %3, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %32, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.bc_label_group, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  tail call void @free(ptr noundef nonnull %30) #38
  store ptr %32, ptr %26, align 8, !tbaa !57
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !135

34:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal i32 @fpop() #17 {
  %1 = load ptr, ptr @fn_stack, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.arg_list, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  store ptr %5, ptr @fn_stack, align 8, !tbaa !14
  %6 = load i32, ptr %1, align 8, !tbaa !138
  tail call void @free(ptr noundef nonnull %1) #38
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ %6, %3 ], [ undef, %0 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal void @fpush(i32 noundef %0) #30 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %3 = load ptr, ptr @fn_stack, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.arg_list, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !136
  store i32 %0, ptr %2, align 8, !tbaa !138
  store ptr %2, ptr @fn_stack, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pop() #0 {
  %1 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.estack_rec, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  store ptr %5, ptr @ex_stack, align 8, !tbaa !14
  tail call void @free_num(ptr noundef nonnull %1) #38
  tail call void @free(ptr noundef nonnull %1) #38
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @push_copy(ptr noundef %0) #0 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %3 = tail call ptr @copy_num(ptr noundef %0) #38
  store ptr %3, ptr %2, align 8, !tbaa !31
  %4 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.estack_rec, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !47
  store ptr %2, ptr @ex_stack, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal void @push_num(ptr noundef %0) #30 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  store ptr %0, ptr %2, align 8, !tbaa !31
  %3 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.estack_rec, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !47
  store ptr %2, ptr @ex_stack, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal signext i8 @check_stack(i32 noundef %0) #0 {
  %2 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %3 = icmp ne ptr %2, null
  %4 = icmp sgt i32 %0, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %11, %6 ], [ %2, %1 ]
  %8 = phi i32 [ %10, %6 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.estack_rec, ptr %7, i64 0, i32 1
  %10 = add nsw i32 %8, -1
  %11 = load ptr, ptr %9, align 8, !tbaa !14
  %12 = icmp ne ptr %11, null
  %13 = icmp ugt i32 %8, 1
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %6, label %15, !llvm.loop !139

15:                                               ; preds = %6, %1
  %16 = phi i1 [ %4, %1 ], [ %13, %6 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1.165) #38
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i8 [ 0, %17 ], [ 1, %15 ]
  ret i8 %19
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_var(i32 noundef %0) #0 {
  %2 = load ptr, ptr @variables, align 8, !tbaa !14
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  store ptr %8, ptr %4, align 8, !tbaa !14
  tail call void @init_num(ptr noundef %8) #38
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ %5, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_array_num(i32 noundef %0, i64 noundef %1) #0 {
  %3 = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #37
  %4 = load ptr, ptr @arrays, align 8, !tbaa !14
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #43
  store ptr %10, ptr %6, align 8, !tbaa !14
  store ptr null, ptr %10, align 8, !tbaa !140
  %11 = getelementptr inbounds %struct.bc_var_array, ptr %10, i64 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct.bc_var_array, ptr %10, i64 0, i32 1
  store i8 0, ptr %12, align 8, !tbaa !143
  br label %16

13:                                               ; preds = %2
  %14 = load ptr, ptr %7, align 8, !tbaa !140
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %10, %9 ], [ %7, %13 ]
  %18 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  store ptr %18, ptr %17, align 8, !tbaa !140
  store ptr null, ptr %18, align 8, !tbaa !144
  %19 = getelementptr inbounds %struct.bc_array, ptr %18, i64 0, i32 1
  store i16 0, ptr %19, align 8, !tbaa !146
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi ptr [ %18, %16 ], [ %14, %13 ]
  %22 = trunc i64 %1 to i32
  %23 = and i32 %22, 15
  store i32 %23, ptr %3, align 16, !tbaa !7
  %24 = lshr i64 %1, 4
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.bc_array, ptr %21, i64 0, i32 1
  br label %27

27:                                               ; preds = %41, %20
  %28 = phi i64 [ %45, %41 ], [ 1, %20 ]
  %29 = phi i32 [ %44, %41 ], [ %25, %20 ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i16, ptr %26, align 8, !tbaa !146
  %33 = sext i16 %32 to i64
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %.lcssa1 = phi i16 [ %32, %31 ]
  %.lcssa = phi i64 [ %28, %31 ]
  %36 = sext i16 %.lcssa1 to i32
  %37 = trunc i64 %.lcssa to i32
  %38 = icmp sgt i32 %37, %36
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !144
  br label %68

41:                                               ; preds = %31, %27
  %42 = and i32 %29, 15
  %43 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %28
  store i32 %42, ptr %43, align 4, !tbaa !7
  %44 = ashr i32 %29, 4
  %45 = add nuw i64 %28, 1
  br label %27, !llvm.loop !147

46:                                               ; preds = %63, %35
  %47 = phi i16 [ %65, %63 ], [ %.lcssa1, %35 ]
  %48 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #43
  %49 = icmp eq i16 %47, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %21, align 8, !tbaa !144
  %52 = getelementptr inbounds %struct.bc_array_node, ptr %48, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !14
  %53 = getelementptr i8, ptr %48, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %53, i8 0, i64 120, i1 false), !tbaa !14
  br label %63

54:                                               ; preds = %54, %46
  %55 = phi i64 [ %59, %54 ], [ 0, %46 ]
  %56 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %57 = tail call ptr @copy_num(ptr noundef %56) #38
  %58 = getelementptr inbounds [16 x ptr], ptr %48, i64 0, i64 %55
  store ptr %57, ptr %58, align 8, !tbaa !14
  %59 = add nuw nsw i64 %55, 1
  %60 = icmp eq i64 %59, 16
  br i1 %60, label %61, label %54, !llvm.loop !148

61:                                               ; preds = %54
  %62 = load i16, ptr %26, align 8, !tbaa !146
  br label %63

63:                                               ; preds = %61, %50
  %64 = phi i16 [ %47, %50 ], [ %62, %61 ]
  store ptr %48, ptr %21, align 8, !tbaa !144
  %65 = add i16 %64, 1
  store i16 %65, ptr %26, align 8, !tbaa !146
  %66 = sext i16 %65 to i32
  %67 = icmp sgt i32 %37, %66
  br i1 %67, label %46, label %68, !llvm.loop !149

68:                                               ; preds = %63, %39
  %69 = phi ptr [ %40, %39 ], [ %48, %63 ]
  %70 = icmp ugt i32 %37, 1
  br i1 %70, label %71, label %97

71:                                               ; preds = %94, %68
  %72 = phi i64 [ %74, %94 ], [ %.lcssa, %68 ]
  %73 = phi ptr [ %95, %94 ], [ %69, %68 ]
  %74 = add nsw i64 %72, -1
  %75 = and i64 %74, 4294967295
  %76 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !7
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bc_array_node, ptr %73, i64 0, i32 1, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !14
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %71
  %83 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #43
  store ptr %83, ptr %79, align 8, !tbaa !14
  %84 = icmp ugt i64 %72, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = getelementptr i8, ptr %83, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %86, i8 0, i64 128, i1 false), !tbaa !14
  br label %94

87:                                               ; preds = %87, %82
  %88 = phi i64 [ %92, %87 ], [ 0, %82 ]
  %89 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %90 = tail call ptr @copy_num(ptr noundef %89) #38
  %91 = getelementptr inbounds [16 x ptr], ptr %83, i64 0, i64 %88
  store ptr %90, ptr %91, align 8, !tbaa !14
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, 16
  br i1 %93, label %94, label %87, !llvm.loop !150

94:                                               ; preds = %87, %85, %71
  %95 = phi ptr [ %80, %71 ], [ %83, %85 ], [ %83, %87 ]
  %96 = icmp sgt i64 %72, 2
  br i1 %96, label %71, label %97, !llvm.loop !151

97:                                               ; preds = %94, %68
  %98 = phi ptr [ %69, %68 ], [ %95, %94 ]
  %99 = and i64 %1, 15
  %100 = getelementptr inbounds [16 x ptr], ptr %98, i64 0, i64 %99
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #37
  ret ptr %100
}

; Function Attrs: nounwind optsize uwtable
define internal void @store_var(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 2
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = tail call ptr @get_var(i32 noundef %0) #41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %3
  tail call void @free_num(ptr noundef nonnull %4) #38
  %7 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = tail call ptr @copy_num(ptr noundef %8) #38
  store ptr %9, ptr %4, align 8, !tbaa !152
  br label %65

10:                                               ; preds = %1
  %11 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = tail call signext i8 @is_neg(ptr noundef %12) #38
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  switch i32 %0, label %30 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %18
  ]

16:                                               ; preds = %15
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.2.168) #38
  br label %37

17:                                               ; preds = %15
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.3.169) #38
  br label %49

18:                                               ; preds = %15
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.4.170) #38
  br label %57

19:                                               ; preds = %10
  %20 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = tail call i64 @num2long(ptr noundef %21) #38
  %23 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %24 = load ptr, ptr %23, align 8, !tbaa !31
  %25 = tail call signext i8 @is_zero(ptr noundef %24) #38
  %26 = icmp eq i8 %25, 0
  %27 = icmp eq i64 %22, 0
  %28 = select i1 %26, i1 %27, i1 false
  %29 = select i1 %28, i64 0, i64 %22
  br label %30

30:                                               ; preds = %19, %15
  %31 = phi i64 [ undef, %15 ], [ %29, %19 ]
  %32 = phi i1 [ false, %15 ], [ %28, %19 ]
  switch i32 %0, label %65 [
    i32 0, label %33
    i32 1, label %45
    i32 2, label %57
  ]

33:                                               ; preds = %30
  %34 = icmp sgt i64 %31, 1
  %35 = or i1 %34, %32
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 2, ptr @i_base, align 4, !tbaa !7
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.5.171) #38
  br label %65

37:                                               ; preds = %33, %16
  %38 = phi i64 [ 2, %16 ], [ %31, %33 ]
  %39 = phi i1 [ false, %16 ], [ %32, %33 ]
  %40 = icmp sgt i64 %38, 16
  %41 = or i1 %40, %39
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 16, ptr @i_base, align 4, !tbaa !7
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.6.172) #38
  br label %65

43:                                               ; preds = %37
  %44 = trunc i64 %38 to i32
  store i32 %44, ptr @i_base, align 4, !tbaa !7
  br label %65

45:                                               ; preds = %30
  %46 = icmp sgt i64 %31, 1
  %47 = or i1 %46, %32
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 2, ptr @o_base, align 4, !tbaa !7
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.7.173) #38
  br label %65

49:                                               ; preds = %45, %17
  %50 = phi i64 [ 2, %17 ], [ %31, %45 ]
  %51 = phi i1 [ false, %17 ], [ %32, %45 ]
  %52 = icmp sgt i64 %50, 99
  %53 = or i1 %52, %51
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 99, ptr @o_base, align 4, !tbaa !7
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.8.174, i32 noundef 99) #38
  br label %65

55:                                               ; preds = %49
  %56 = trunc i64 %50 to i32
  store i32 %56, ptr @o_base, align 4, !tbaa !7
  br label %65

57:                                               ; preds = %30, %18
  %58 = phi i1 [ false, %18 ], [ %32, %30 ]
  %59 = phi i64 [ 0, %18 ], [ %31, %30 ]
  %60 = icmp sgt i64 %59, 99
  %61 = or i1 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 99, ptr @scale, align 4, !tbaa !7
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.9.175, i32 noundef 99) #38
  br label %65

63:                                               ; preds = %57
  %64 = trunc i64 %59 to i32
  store i32 %64, ptr @scale, align 4, !tbaa !7
  br label %65

65:                                               ; preds = %63, %62, %55, %54, %48, %43, %42, %36, %30, %6, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @store_array(i32 noundef %0) #0 {
  %2 = tail call signext i8 @check_stack(i32 noundef 2) #41, !range !154
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.estack_rec, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = tail call i64 @num2long(ptr noundef %8) #38
  %10 = icmp ugt i64 %9, 2048
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = icmp eq i64 %9, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %11
  %14 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.estack_rec, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = tail call signext i8 @is_zero(ptr noundef %17) #38
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13, %4
  %21 = load ptr, ptr @a_names, align 8, !tbaa !14
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %24) #38
  br label %40

25:                                               ; preds = %13, %11
  %26 = tail call ptr @get_array_num(i32 noundef %0, i64 noundef %9) #41
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  tail call void @free_num(ptr noundef nonnull %26) #38
  %29 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = tail call ptr @copy_num(ptr noundef %30) #38
  store ptr %31, ptr %26, align 8, !tbaa !14
  %32 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.estack_rec, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  tail call void @free_num(ptr noundef %34) #38
  %35 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %36 = load ptr, ptr %35, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.estack_rec, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  store ptr %36, ptr %38, align 8, !tbaa !31
  %39 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  tail call void @init_num(ptr noundef %39) #38
  tail call void @pop() #41
  br label %40

40:                                               ; preds = %28, %25, %20, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @load_var(i32 noundef %0) #0 {
  switch i32 %0, label %23 [
    i32 0, label %2
    i32 1, label %9
    i32 2, label %16
  ]

2:                                                ; preds = %1
  %3 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %4 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %5 = tail call ptr @copy_num(ptr noundef %3) #38
  store ptr %5, ptr %4, align 8, !tbaa !31
  %6 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.estack_rec, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !47
  store ptr %4, ptr @ex_stack, align 8, !tbaa !14
  %8 = load i32, ptr @i_base, align 4, !tbaa !7
  tail call void @int2num(ptr noundef nonnull %4, i32 noundef %8) #38
  br label %41

9:                                                ; preds = %1
  %10 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %11 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %12 = tail call ptr @copy_num(ptr noundef %10) #38
  store ptr %12, ptr %11, align 8, !tbaa !31
  %13 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %14 = getelementptr inbounds %struct.estack_rec, ptr %11, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !47
  store ptr %11, ptr @ex_stack, align 8, !tbaa !14
  %15 = load i32, ptr @o_base, align 4, !tbaa !7
  tail call void @int2num(ptr noundef nonnull %11, i32 noundef %15) #38
  br label %41

16:                                               ; preds = %1
  %17 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %18 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %19 = tail call ptr @copy_num(ptr noundef %17) #38
  store ptr %19, ptr %18, align 8, !tbaa !31
  %20 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.estack_rec, ptr %18, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !47
  store ptr %18, ptr @ex_stack, align 8, !tbaa !14
  %22 = load i32, ptr @scale, align 4, !tbaa !7
  tail call void @int2num(ptr noundef nonnull %18, i32 noundef %22) #38
  br label %41

23:                                               ; preds = %1
  %24 = load ptr, ptr @variables, align 8, !tbaa !14
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %27, align 8, !tbaa !152
  %31 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %32 = tail call ptr @copy_num(ptr noundef %30) #38
  store ptr %32, ptr %31, align 8, !tbaa !31
  %33 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.estack_rec, ptr %31, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !47
  store ptr %31, ptr @ex_stack, align 8, !tbaa !14
  br label %41

35:                                               ; preds = %23
  %36 = load ptr, ptr @_zero_, align 8, !tbaa !14
  %37 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %38 = tail call ptr @copy_num(ptr noundef %36) #38
  store ptr %38, ptr %37, align 8, !tbaa !31
  %39 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.estack_rec, ptr %37, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !47
  store ptr %37, ptr @ex_stack, align 8, !tbaa !14
  br label %41

41:                                               ; preds = %35, %29, %16, %9, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @load_array(i32 noundef %0) #0 {
  %2 = tail call signext i8 @check_stack(i32 noundef 1) #41, !range !154
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = tail call i64 @num2long(ptr noundef %6) #38
  %8 = icmp ugt i64 %7, 2048
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call signext i8 @is_zero(ptr noundef %13) #38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %4
  %17 = load ptr, ptr @a_names, align 8, !tbaa !14
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %20) #38
  br label %30

21:                                               ; preds = %11, %9
  %22 = tail call ptr @get_array_num(i32 noundef %0, i64 noundef %7) #41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  tail call void @pop() #41
  %25 = load ptr, ptr %22, align 8, !tbaa !14
  %26 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %27 = tail call ptr @copy_num(ptr noundef %25) #38
  store ptr %27, ptr %26, align 8, !tbaa !31
  %28 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.estack_rec, ptr %26, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !47
  store ptr %26, ptr @ex_stack, align 8, !tbaa !14
  br label %30

30:                                               ; preds = %24, %21, %16, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @decr_var(i32 noundef %0) #0 {
  switch i32 %0, label %20 [
    i32 0, label %2
    i32 1, label %8
    i32 2, label %14
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr @i_base, align 4, !tbaa !7
  %4 = icmp sgt i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = add nsw i32 %3, -1
  store i32 %6, ptr @i_base, align 4, !tbaa !7
  br label %26

7:                                                ; preds = %2
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.11.185) #38
  br label %26

8:                                                ; preds = %1
  %9 = load i32, ptr @o_base, align 4, !tbaa !7
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = add nsw i32 %9, -1
  store i32 %12, ptr @o_base, align 4, !tbaa !7
  br label %26

13:                                               ; preds = %8
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.12.186) #38
  br label %26

14:                                               ; preds = %1
  %15 = load i32, ptr @scale, align 4, !tbaa !7
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = add nsw i32 %15, -1
  store i32 %18, ptr @scale, align 4, !tbaa !7
  br label %26

19:                                               ; preds = %14
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.13.187) #38
  br label %26

20:                                               ; preds = %1
  %21 = tail call ptr @get_var(i32 noundef %0) #41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !152
  %25 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call void @bc_sub(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %21) #38
  br label %26

26:                                               ; preds = %23, %20, %19, %17, %13, %11, %7, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @decr_array(i8 noundef signext %0) #0 {
  %2 = tail call signext i8 @check_stack(i32 noundef 1) #41, !range !154
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = tail call i64 @num2long(ptr noundef %6) #38
  %8 = icmp ugt i64 %7, 2048
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call signext i8 @is_zero(ptr noundef %13) #38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %4
  %17 = load ptr, ptr @a_names, align 8, !tbaa !14
  %18 = sext i8 %0 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %20) #38
  br label %28

21:                                               ; preds = %11, %9
  %22 = sext i8 %0 to i32
  %23 = tail call ptr @get_array_num(i32 noundef %22, i64 noundef %7) #41
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  tail call void @pop() #41
  %26 = load ptr, ptr %23, align 8, !tbaa !14
  %27 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call void @bc_sub(ptr noundef %26, ptr noundef %27, ptr noundef nonnull %23) #38
  br label %28

28:                                               ; preds = %25, %21, %16, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @incr_var(i32 noundef %0) #0 {
  switch i32 %0, label %20 [
    i32 0, label %2
    i32 1, label %8
    i32 2, label %14
  ]

2:                                                ; preds = %1
  %3 = load i32, ptr @i_base, align 4, !tbaa !7
  %4 = icmp slt i32 %3, 16
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = add nsw i32 %3, 1
  store i32 %6, ptr @i_base, align 4, !tbaa !7
  br label %26

7:                                                ; preds = %2
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.14.192) #38
  br label %26

8:                                                ; preds = %1
  %9 = load i32, ptr @o_base, align 4, !tbaa !7
  %10 = icmp slt i32 %9, 99
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = add nsw i32 %9, 1
  store i32 %12, ptr @o_base, align 4, !tbaa !7
  br label %26

13:                                               ; preds = %8
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.15.193) #38
  br label %26

14:                                               ; preds = %1
  %15 = load i32, ptr @scale, align 4, !tbaa !7
  %16 = icmp slt i32 %15, 99
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = add nsw i32 %15, 1
  store i32 %18, ptr @scale, align 4, !tbaa !7
  br label %26

19:                                               ; preds = %14
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.16.194) #38
  br label %26

20:                                               ; preds = %1
  %21 = tail call ptr @get_var(i32 noundef %0) #41
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !152
  %25 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call void @bc_add(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %21) #38
  br label %26

26:                                               ; preds = %23, %20, %19, %17, %13, %11, %7, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @incr_array(i32 noundef %0) #0 {
  %2 = tail call signext i8 @check_stack(i32 noundef 1) #41, !range !154
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = tail call i64 @num2long(ptr noundef %6) #38
  %8 = icmp ugt i64 %7, 2048
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = icmp eq i64 %7, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = tail call signext i8 @is_zero(ptr noundef %13) #38
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %4
  %17 = load ptr, ptr @a_names, align 8, !tbaa !14
  %18 = sext i32 %0 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10.178, ptr noundef %20) #38
  br label %27

21:                                               ; preds = %11, %9
  %22 = tail call ptr @get_array_num(i32 noundef %0, i64 noundef %7) #41
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  tail call void @pop() #41
  %25 = load ptr, ptr %22, align 8, !tbaa !14
  %26 = load ptr, ptr @_one_, align 8, !tbaa !14
  tail call void @bc_add(ptr noundef %25, ptr noundef %26, ptr noundef nonnull %22) #38
  br label %27

27:                                               ; preds = %24, %21, %16, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @auto_var(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %5 = load ptr, ptr @variables, align 8, !tbaa !14
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.estack_rec, ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !155
  tail call void @init_num(ptr noundef %4) #38
  %10 = load ptr, ptr @variables, align 8, !tbaa !14
  %11 = getelementptr inbounds ptr, ptr %10, i64 %6
  store ptr %4, ptr %11, align 8, !tbaa !14
  br label %21

12:                                               ; preds = %1
  %13 = sub nsw i32 0, %0
  %14 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #43
  %15 = load ptr, ptr @arrays, align 8, !tbaa !14
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.bc_var_array, ptr %14, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !142
  store ptr null, ptr %14, align 8, !tbaa !140
  %20 = getelementptr inbounds %struct.bc_var_array, ptr %14, i64 0, i32 1
  store i8 0, ptr %20, align 8, !tbaa !143
  store ptr %14, ptr %17, align 8, !tbaa !14
  br label %21

21:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_a_tree(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

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
  tail call void @free_a_tree(ptr noundef %11, i32 noundef %7) #41
  %12 = add nuw nsw i64 %9, 1
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %19, label %8, !llvm.loop !156

14:                                               ; preds = %14, %4
  %15 = phi i64 [ %17, %14 ], [ 0, %4 ]
  %16 = getelementptr inbounds [16 x ptr], ptr %0, i64 0, i64 %15
  tail call void @free_num(ptr noundef nonnull %16) #38
  %17 = add nuw nsw i64 %15, 1
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %19, label %14, !llvm.loop !157

19:                                               ; preds = %14, %8
  tail call void @free(ptr noundef %0) #38
  br label %20

20:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pop_vars(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %40, %1
  %4 = phi ptr [ %42, %40 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8, !tbaa !37
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load ptr, ptr @variables, align 8, !tbaa !14
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %40, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.estack_rec, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  store ptr %15, ptr %10, align 8, !tbaa !14
  tail call void @free_num(ptr noundef nonnull %11) #38
  br label %38

16:                                               ; preds = %3
  %17 = sub nsw i32 0, %5
  %18 = load ptr, ptr @arrays, align 8, !tbaa !14
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.bc_var_array, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !142
  store ptr %25, ptr %20, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.bc_var_array, ptr %21, i64 0, i32 1
  %27 = load i8, ptr %26, align 8, !tbaa !143
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %21, align 8, !tbaa !140
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa !144
  %34 = getelementptr inbounds %struct.bc_array, ptr %30, i64 0, i32 1
  %35 = load i16, ptr %34, align 8, !tbaa !146
  %36 = sext i16 %35 to i32
  tail call void @free_a_tree(ptr noundef %33, i32 noundef %36) #41
  %37 = load ptr, ptr %21, align 8, !tbaa !140
  tail call void @free(ptr noundef %37) #38
  br label %38

38:                                               ; preds = %32, %29, %23, %13
  %39 = phi ptr [ %11, %13 ], [ %21, %32 ], [ %21, %29 ], [ %21, %23 ]
  tail call void @free(ptr noundef nonnull %39) #38
  br label %40

40:                                               ; preds = %38, %16, %7
  %41 = getelementptr inbounds %struct.arg_list, ptr %4, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !158
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %3, !llvm.loop !159

44:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @process_params(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @functions, align 8, !tbaa !14
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.bc_function, ptr %3, i64 %4, i32 4
  br label %6

6:                                                ; preds = %78, %2
  %7 = phi i8 [ 0, %2 ], [ %79, %78 ]
  %8 = phi ptr [ %5, %2 ], [ %81, %78 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = tail call zeroext i8 @byte(ptr noundef %0) #38
  %11 = icmp eq i8 %10, 58
  %12 = icmp eq ptr %9, null
  br i1 %11, label %82, label %13

13:                                               ; preds = %6
  br i1 %12, label %75, label %14

14:                                               ; preds = %13
  switch i8 %10, label %57 [
    i8 48, label %15
    i8 49, label %29
  ]

15:                                               ; preds = %14
  %16 = load i32, ptr %9, align 8, !tbaa !37
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %20 = load ptr, ptr @variables, align 8, !tbaa !14
  %21 = zext i32 %16 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.estack_rec, ptr %19, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !155
  %25 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  store ptr %26, ptr %19, align 8, !tbaa !152
  tail call void @init_num(ptr noundef nonnull %25) #38
  %27 = load ptr, ptr @variables, align 8, !tbaa !14
  %28 = getelementptr inbounds ptr, ptr %27, i64 %21
  store ptr %19, ptr %28, align 8, !tbaa !14
  br label %73

29:                                               ; preds = %14
  %30 = load i32, ptr %9, align 8, !tbaa !37
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %29
  %33 = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = tail call i64 @num2long(ptr noundef %34) #38
  %36 = trunc i64 %35 to i32
  %37 = tail call ptr @get_array_num(i32 noundef %36, i64 noundef 0) #41
  %38 = load i32, ptr %9, align 8, !tbaa !37
  tail call void @auto_var(i32 noundef %38) #41
  %39 = load i32, ptr %9, align 8, !tbaa !37
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %36, %40
  %42 = load ptr, ptr @arrays, align 8, !tbaa !14
  %43 = shl i64 %35, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  br i1 %41, label %46, label %49

46:                                               ; preds = %32
  %47 = load ptr, ptr %45, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.bc_var_array, ptr %47, i64 0, i32 2
  br label %49

49:                                               ; preds = %46, %32
  %50 = phi ptr [ %48, %46 ], [ %45, %32 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = sext i32 %40 to i64
  %53 = getelementptr inbounds ptr, ptr %42, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.bc_var_array, ptr %54, i64 0, i32 1
  store i8 1, ptr %55, align 8, !tbaa !143
  %56 = load ptr, ptr %51, align 8, !tbaa !140
  store ptr %56, ptr %54, align 8, !tbaa !140
  br label %73

57:                                               ; preds = %14
  %58 = load i32, ptr %9, align 8, !tbaa !37
  br label %59

59:                                               ; preds = %57, %15
  %60 = phi i32 [ %58, %57 ], [ %16, %15 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = sub nsw i32 0, %60
  br label %64

64:                                               ; preds = %62, %59, %29
  %65 = phi i32 [ %63, %62 ], [ %60, %59 ], [ %30, %29 ]
  %66 = phi ptr [ @a_names, %62 ], [ @v_names, %59 ], [ @v_names, %29 ]
  %67 = phi ptr [ @.str.17.203, %62 ], [ @.str.18.204, %59 ], [ @.str.18.204, %29 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !14
  %69 = zext i32 %65 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !14
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull %67, ptr noundef %71) #38
  %72 = getelementptr inbounds %struct.arg_list, ptr %9, i64 1
  br label %73

73:                                               ; preds = %64, %49, %18
  %74 = phi ptr [ %9, %18 ], [ %9, %49 ], [ %72, %64 ]
  tail call void @pop() #41
  br label %78

75:                                               ; preds = %13
  %76 = icmp eq i8 %7, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %75
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.19.205) #38
  br label %78

78:                                               ; preds = %77, %75, %73
  %79 = phi i8 [ %7, %73 ], [ 1, %75 ], [ 1, %77 ]
  %80 = phi ptr [ %74, %73 ], [ null, %75 ], [ null, %77 ]
  %81 = getelementptr inbounds %struct.arg_list, ptr %80, i64 0, i32 1
  br label %6, !llvm.loop !160

82:                                               ; preds = %6
  %.lcssa = phi i1 [ %12, %6 ]
  br i1 %.lcssa, label %84, label %83

83:                                               ; preds = %82
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.19.205) #38
  br label %84

84:                                               ; preds = %83, %82
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal ptr @strcopyof(ptr nocapture noundef readonly %0) #31 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40
  %3 = add i64 %2, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43
  %5 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #38
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #32

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @nextarg(ptr noundef %0, i8 noundef signext %1) #18 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #43
  %4 = sext i8 %1 to i32
  store i32 %4, ptr %3, align 8, !tbaa !37
  %5 = getelementptr inbounds %struct.arg_list, ptr %3, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !158
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @arg_str(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @arglist2, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %3) #38
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr @arglist1, align 8, !tbaa !14
  store ptr %7, ptr @arglist2, align 8, !tbaa !14
  %8 = tail call fastcc ptr @make_arg_str(ptr noundef %0, i32 noundef 1, i32 noundef %1) #41
  store ptr %8, ptr @arglist1, align 8, !tbaa !14
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @make_arg_str(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #37
  %5 = icmp eq ptr %0, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.arg_list, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = add nsw i32 %1, 11
  %10 = tail call fastcc ptr @make_arg_str(ptr noundef %8, i32 noundef %9, i32 noundef %2) #41
  %11 = icmp ne i32 %1, 1
  %12 = icmp ne i32 %2, 0
  %13 = and i1 %11, %12
  %14 = load i32, ptr %0, align 8, !tbaa !37
  %15 = select i1 %13, ptr @.str.41.212, ptr @.str.42.213
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %15, i32 noundef %14) #38
  %17 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %4) #38
  br label %21

18:                                               ; preds = %3
  %19 = sext i32 %1 to i64
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #43
  store i8 0, ptr %20, align 1, !tbaa !16
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi ptr [ %10, %6 ], [ %20, %18 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #37
  ret ptr %22
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #32

; Function Attrs: nounwind optsize uwtable
define internal void @free_args(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.arg_list, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !158
  tail call void @free(ptr noundef nonnull %4) #38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !161

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @check_params(ptr noundef readonly %0, ptr noundef readonly %1) #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %23, %2
  %5 = phi ptr [ %24, %23 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.arg_list, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !158
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %15, %4
  %10 = phi ptr [ %17, %15 ], [ %7, %4 ]
  %11 = load i32, ptr %10, align 8, !tbaa !37
  %12 = load i32, ptr %5, align 8, !tbaa !37
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.218) #41
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.arg_list, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !158
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !162

19:                                               ; preds = %15, %4
  %20 = load i32, ptr %5, align 8, !tbaa !37
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ...) @warn(ptr noundef nonnull @.str.1.221) #41
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr %6, align 8, !tbaa !158
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %4, !llvm.loop !163

26:                                               ; preds = %23, %2
  %27 = icmp eq ptr %1, null
  br i1 %27, label %63, label %28

28:                                               ; preds = %43, %26
  %29 = phi ptr [ %44, %43 ], [ %1, %26 ]
  %30 = getelementptr inbounds %struct.arg_list, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !158
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %39, %28
  %34 = phi ptr [ %41, %39 ], [ %31, %28 ]
  %35 = load i32, ptr %34, align 8, !tbaa !37
  %36 = load i32, ptr %29, align 8, !tbaa !37
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.2.224) #41
  br label %39

39:                                               ; preds = %38, %33
  %40 = getelementptr inbounds %struct.arg_list, ptr %34, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !158
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !164

43:                                               ; preds = %39
  %44 = load ptr, ptr %30, align 8, !tbaa !158
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %28, !llvm.loop !165

46:                                               ; preds = %43, %28
  br i1 %3, label %63, label %47

47:                                               ; preds = %59, %46
  %48 = phi ptr [ %61, %59 ], [ %0, %46 ]
  br label %49

49:                                               ; preds = %55, %47
  %50 = phi ptr [ %1, %47 ], [ %57, %55 ]
  %51 = load i32, ptr %50, align 8, !tbaa !37
  %52 = load i32, ptr %48, align 8, !tbaa !37
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.3.225) #41
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.arg_list, ptr %50, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !158
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %49, !llvm.loop !166

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.arg_list, ptr %48, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !158
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %47, !llvm.loop !167

63:                                               ; preds = %59, %46, %26
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @yyerror(ptr nocapture noundef readonly %0, ...) #12 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #37
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i8, ptr @is_std_in, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load ptr, ptr @g_argv, align 8, !tbaa !14
  %7 = load i32, ptr @optind, align 4, !tbaa !7
  %8 = add nsw i32 %7, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %11, %5 ], [ @.str.36.226, %1 ]
  %14 = load ptr, ptr @stderr, align 8, !tbaa !14
  %15 = load i32, ptr @line_no, align 4, !tbaa !7
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.37.227, ptr noundef %13, i32 noundef %15) #45
  %17 = load ptr, ptr @stderr, align 8, !tbaa !14
  %18 = call i32 @vfprintf(ptr noundef %17, ptr noundef %0, ptr noundef nonnull %2) #45
  %19 = load ptr, ptr @stderr, align 8, !tbaa !14
  %20 = call i32 @fputc(i32 10, ptr %19)
  store i32 1, ptr @had_error, align 4, !tbaa !7
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #37
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define dso_local void @warn(ptr nocapture noundef readonly %0, ...) #12 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #37
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load i8, ptr @std_only, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr @is_std_in, align 1, !tbaa !16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load ptr, ptr @g_argv, align 8, !tbaa !14
  %10 = load i32, ptr @optind, align 4, !tbaa !7
  %11 = add nsw i32 %10, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi ptr [ %14, %8 ], [ @.str.36.226, %5 ]
  %17 = load ptr, ptr @stderr, align 8, !tbaa !14
  %18 = load i32, ptr @line_no, align 4, !tbaa !7
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.37.227, ptr noundef %16, i32 noundef %18) #45
  %20 = load ptr, ptr @stderr, align 8, !tbaa !14
  %21 = call i32 @vfprintf(ptr noundef %20, ptr noundef %0, ptr noundef nonnull %2) #45
  %22 = load ptr, ptr @stderr, align 8, !tbaa !14
  %23 = call i32 @fputc(i32 10, ptr %22)
  store i32 1, ptr @had_error, align 4, !tbaa !7
  br label %46

24:                                               ; preds = %1
  %25 = load i8, ptr @warn_not_std, align 1, !tbaa !16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr @is_std_in, align 1, !tbaa !16
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load ptr, ptr @g_argv, align 8, !tbaa !14
  %32 = load i32, ptr @optind, align 4, !tbaa !7
  %33 = add nsw i32 %32, -1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %31, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !14
  br label %37

37:                                               ; preds = %30, %27
  %38 = phi ptr [ %36, %30 ], [ @.str.36.226, %27 ]
  %39 = load ptr, ptr @stderr, align 8, !tbaa !14
  %40 = load i32, ptr @line_no, align 4, !tbaa !7
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.38.228, ptr noundef %38, i32 noundef %40) #45
  %42 = load ptr, ptr @stderr, align 8, !tbaa !14
  %43 = call i32 @vfprintf(ptr noundef %42, ptr noundef %0, ptr noundef nonnull %2) #45
  %44 = load ptr, ptr @stderr, align 8, !tbaa !14
  %45 = call i32 @fputc(i32 10, ptr %44)
  br label %46

46:                                               ; preds = %37, %24, %15
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #37
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #33

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #33

; Function Attrs: nounwind optsize uwtable
define internal void @init_gen() #0 {
  store i32 0, ptr @break_label, align 4, !tbaa !7
  store i32 0, ptr @continue_label, align 4, !tbaa !7
  store i32 1, ptr @next_label, align 4, !tbaa !7
  store i32 2, ptr @out_count, align 4, !tbaa !7
  %1 = load i8, ptr @compile_only, align 1, !tbaa !16
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.231) #41
  br label %6

5:                                                ; preds = %0
  tail call void @init_load() #38
  br label %6

6:                                                ; preds = %5, %3
  store i32 0, ptr @had_error, align 4, !tbaa !7
  store i8 0, ptr @did_gen, align 1, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @generate(ptr noundef %0) #0 {
  store i8 1, ptr @did_gen, align 1, !tbaa !16
  %2 = load i8, ptr @compile_only, align 1, !tbaa !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.234, ptr noundef %0) #41
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40
  %7 = load i32, ptr @out_count, align 4, !tbaa !7
  %8 = trunc i64 %6 to i32
  %9 = add i32 %7, %8
  store i32 %9, ptr @out_count, align 4, !tbaa !7
  %10 = icmp sgt i32 %9, 60
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = tail call i32 @putchar(i32 10)
  store i32 0, ptr @out_count, align 4, !tbaa !7
  br label %14

13:                                               ; preds = %1
  tail call void @load_code(ptr noundef %0) #38
  br label %14

14:                                               ; preds = %13, %11, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @run_code() #0 {
  %1 = load i32, ptr @had_error, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  %3 = load i8, ptr @did_gen, align 1
  %4 = icmp ne i8 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i8, ptr @compile_only, align 1, !tbaa !16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.237)
  store i32 0, ptr @out_count, align 4, !tbaa !7
  br label %12

11:                                               ; preds = %6
  tail call void @execute() #38
  br label %12

12:                                               ; preds = %11, %9
  %13 = load i8, ptr @did_gen, align 1, !tbaa !16
  br label %14

14:                                               ; preds = %12, %0
  %15 = phi i8 [ %13, %12 ], [ %3, %0 ]
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @init_gen() #41
  br label %19

18:                                               ; preds = %14
  store i32 0, ptr @had_error, align 4, !tbaa !7
  br label %19

19:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @out_char(i8 noundef signext %0) #12 {
  %2 = sext i8 %0 to i32
  %3 = icmp eq i8 %0, 10
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @out_col, align 4, !tbaa !7
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @out_col, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 70
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call i32 @putchar(i32 noundef 92) #41
  %10 = tail call i32 @putchar(i32 noundef 10) #41
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i32 [ 1, %8 ], [ 0, %1 ]
  %13 = phi i32 [ %2, %8 ], [ 10, %1 ]
  store i32 %12, ptr @out_col, align 4, !tbaa !7
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ %2, %4 ], [ %13, %11 ]
  %16 = tail call i32 @putchar(i32 noundef %15) #41
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @find_id(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %9, %2
  %5 = phi ptr [ %14, %9 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !168
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %6) #40
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = icmp slt i32 %7, 0
  %11 = getelementptr inbounds %struct.id_rec, ptr %5, i64 0, i32 5
  %12 = getelementptr inbounds %struct.id_rec, ptr %5, i64 0, i32 6
  %13 = select i1 %10, ptr %11, ptr %12
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4

16:                                               ; preds = %9, %4, %2
  %17 = phi ptr [ null, %2 ], [ %5, %4 ], [ null, %9 ]
  ret ptr %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @insert_id_rec(ptr nocapture noundef %0, ptr noundef %1) #35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.id_rec, ptr %1, i64 0, i32 5
  %7 = getelementptr inbounds %struct.id_rec, ptr %1, i64 0, i32 4
  store i16 0, ptr %7, align 4, !tbaa !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br label %103

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !168
  %10 = load ptr, ptr %3, align 8, !tbaa !168
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %10) #40
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.id_rec, ptr %3, i64 0, i32 5
  %15 = tail call i32 @insert_id_rec(ptr noundef nonnull %14, ptr noundef nonnull %1) #41, !range !67
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %103, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.id_rec, ptr %18, i64 0, i32 4
  %20 = load i16, ptr %19, align 4, !tbaa !170
  %21 = add i16 %20, -1
  store i16 %21, ptr %19, align 4, !tbaa !170
  %22 = icmp eq i16 %21, -2
  br i1 %22, label %23, label %103

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.id_rec, ptr %18, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = getelementptr inbounds %struct.id_rec, ptr %25, i64 0, i32 4
  %27 = load i16, ptr %26, align 4, !tbaa !170
  %28 = icmp slt i16 %27, 1
  %29 = getelementptr inbounds %struct.id_rec, ptr %25, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !172
  br i1 %28, label %31, label %32

31:                                               ; preds = %23
  store ptr %30, ptr %24, align 8, !tbaa !171
  store ptr %18, ptr %29, align 8, !tbaa !172
  store ptr %25, ptr %0, align 8, !tbaa !14
  store i16 0, ptr %19, align 4, !tbaa !170
  store i16 0, ptr %26, align 4, !tbaa !170
  br label %103

32:                                               ; preds = %23
  store ptr %30, ptr %0, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.id_rec, ptr %30, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  store ptr %34, ptr %29, align 8, !tbaa !172
  %35 = load ptr, ptr %0, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.id_rec, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !172
  store ptr %37, ptr %24, align 8, !tbaa !171
  %38 = load ptr, ptr %0, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.id_rec, ptr %38, i64 0, i32 5
  store ptr %25, ptr %39, align 8, !tbaa !171
  %40 = load ptr, ptr %0, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.id_rec, ptr %40, i64 0, i32 6
  store ptr %18, ptr %41, align 8, !tbaa !172
  %42 = load ptr, ptr %0, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.id_rec, ptr %42, i64 0, i32 4
  %44 = load i16, ptr %43, align 4, !tbaa !170
  %45 = sext i16 %44 to i32
  %46 = add nsw i32 %45, 1
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %48, label %57

48:                                               ; preds = %32
  %49 = zext i32 %46 to i48
  %50 = shl nuw nsw i48 %49, 4
  %51 = lshr i48 1, %50
  %52 = trunc i48 %51 to i16
  %53 = zext i32 %46 to i48
  %54 = shl nuw nsw i48 %53, 4
  %55 = lshr i48 -4294967296, %54
  %56 = trunc i48 %55 to i16
  store i16 %52, ptr %19, align 4, !tbaa !170
  store i16 %56, ptr %26, align 4, !tbaa !170
  br label %57

57:                                               ; preds = %48, %32
  store i16 0, ptr %43, align 4, !tbaa !170
  br label %103

58:                                               ; preds = %8
  %59 = getelementptr inbounds %struct.id_rec, ptr %3, i64 0, i32 6
  %60 = tail call i32 @insert_id_rec(ptr noundef nonnull %59, ptr noundef nonnull %1) #41, !range !67
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %103, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 8, !tbaa !14
  %64 = getelementptr inbounds %struct.id_rec, ptr %63, i64 0, i32 4
  %65 = load i16, ptr %64, align 4, !tbaa !170
  %66 = add i16 %65, 1
  store i16 %66, ptr %64, align 4, !tbaa !170
  %67 = icmp eq i16 %66, 2
  br i1 %67, label %68, label %103

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.id_rec, ptr %63, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !172
  %71 = getelementptr inbounds %struct.id_rec, ptr %70, i64 0, i32 4
  %72 = load i16, ptr %71, align 4, !tbaa !170
  %73 = icmp sgt i16 %72, -1
  %74 = getelementptr inbounds %struct.id_rec, ptr %70, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !171
  br i1 %73, label %76, label %77

76:                                               ; preds = %68
  store ptr %75, ptr %69, align 8, !tbaa !172
  store ptr %63, ptr %74, align 8, !tbaa !171
  store ptr %70, ptr %0, align 8, !tbaa !14
  store i16 0, ptr %64, align 4, !tbaa !170
  store i16 0, ptr %71, align 4, !tbaa !170
  br label %103

77:                                               ; preds = %68
  store ptr %75, ptr %0, align 8, !tbaa !14
  %78 = getelementptr inbounds %struct.id_rec, ptr %75, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !172
  store ptr %79, ptr %74, align 8, !tbaa !171
  %80 = load ptr, ptr %0, align 8, !tbaa !14
  %81 = getelementptr inbounds %struct.id_rec, ptr %80, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !171
  store ptr %82, ptr %69, align 8, !tbaa !172
  %83 = load ptr, ptr %0, align 8, !tbaa !14
  %84 = getelementptr inbounds %struct.id_rec, ptr %83, i64 0, i32 5
  store ptr %63, ptr %84, align 8, !tbaa !171
  %85 = load ptr, ptr %0, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.id_rec, ptr %85, i64 0, i32 6
  store ptr %70, ptr %86, align 8, !tbaa !172
  %87 = load ptr, ptr %0, align 8, !tbaa !14
  %88 = getelementptr inbounds %struct.id_rec, ptr %87, i64 0, i32 4
  %89 = load i16, ptr %88, align 4, !tbaa !170
  %90 = sext i16 %89 to i32
  %91 = add nsw i32 %90, 1
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %93, label %102

93:                                               ; preds = %77
  %94 = zext i32 %91 to i48
  %95 = shl nuw nsw i48 %94, 4
  %96 = lshr i48 -4294967296, %95
  %97 = trunc i48 %96 to i16
  %98 = zext i32 %91 to i48
  %99 = shl nuw nsw i48 %98, 4
  %100 = lshr i48 1, %99
  %101 = trunc i48 %100 to i16
  store i16 %97, ptr %64, align 4, !tbaa !170
  store i16 %101, ptr %71, align 4, !tbaa !170
  br label %102

102:                                              ; preds = %93, %77
  store i16 0, ptr %88, align 4, !tbaa !170
  br label %103

103:                                              ; preds = %102, %76, %62, %58, %57, %31, %17, %13, %5
  %104 = phi i32 [ 1, %5 ], [ 0, %58 ], [ 0, %76 ], [ 0, %102 ], [ 0, %62 ], [ 0, %13 ], [ 0, %31 ], [ 0, %57 ], [ 0, %17 ]
  ret i32 %104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_tree() #36 {
  store ptr null, ptr @name_tree, align 8, !tbaa !14
  store i32 1, ptr @next_array, align 4, !tbaa !7
  store i32 1, ptr @next_func, align 4, !tbaa !7
  store i32 4, ptr @next_var, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @lookup(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void (ptr, ...) @warn(ptr noundef nonnull @.str.8.244, ptr noundef %0) #41
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr @name_tree, align 8, !tbaa !14
  %8 = tail call ptr @find_id(ptr noundef %7, ptr noundef %0) #41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #43
  %12 = tail call ptr @strcopyof(ptr noundef %0) #41
  store ptr %12, ptr %11, align 8, !tbaa !168
  %13 = getelementptr inbounds %struct.id_rec, ptr %11, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa !173
  %14 = getelementptr inbounds %struct.id_rec, ptr %11, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !174
  %15 = getelementptr inbounds %struct.id_rec, ptr %11, i64 0, i32 3
  store i32 0, ptr %15, align 8, !tbaa !175
  %16 = tail call i32 @insert_id_rec(ptr noundef nonnull @name_tree, ptr noundef nonnull %11) #41, !range !67
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi ptr [ %11, %10 ], [ %8, %6 ]
  switch i32 %1, label %81 [
    i32 1, label %19
    i32 2, label %42
    i32 0, label %61
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.id_rec, ptr %18, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !173
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  tail call void @free(ptr noundef %0) #38
  %24 = load i32, ptr %20, align 8, !tbaa !173
  %25 = sub nsw i32 0, %24
  br label %81

26:                                               ; preds = %19
  %27 = load i32, ptr @next_array, align 4, !tbaa !7
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr @next_array, align 4, !tbaa !7
  store i32 %27, ptr %20, align 8, !tbaa !173
  %29 = load ptr, ptr @a_names, align 8, !tbaa !14
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  store ptr %0, ptr %31, align 8, !tbaa !14
  %32 = icmp slt i32 %27, 32767
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load i32, ptr @a_count, align 4, !tbaa !7
  %35 = icmp slt i32 %27, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  tail call void @more_arrays() #38
  %37 = load i32, ptr %20, align 8, !tbaa !173
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i32 [ %37, %36 ], [ %27, %33 ]
  %40 = sub nsw i32 0, %39
  br label %81

41:                                               ; preds = %26
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.9.245) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

42:                                               ; preds = %17
  %43 = getelementptr inbounds %struct.id_rec, ptr %18, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !174
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  tail call void @free(ptr noundef %0) #38
  %47 = load i32, ptr %43, align 4, !tbaa !174
  br label %81

48:                                               ; preds = %42
  %49 = load i32, ptr @next_func, align 4, !tbaa !7
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr @next_func, align 4, !tbaa !7
  store i32 %49, ptr %43, align 4, !tbaa !174
  %51 = load ptr, ptr @f_names, align 8, !tbaa !14
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  store ptr %0, ptr %53, align 8, !tbaa !14
  %54 = icmp slt i32 %49, 32767
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, ptr @f_count, align 4, !tbaa !7
  %57 = icmp slt i32 %49, %56
  br i1 %57, label %81, label %58

58:                                               ; preds = %55
  tail call void @more_functions() #38
  %59 = load i32, ptr %43, align 4, !tbaa !174
  br label %81

60:                                               ; preds = %48
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.10.246) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

61:                                               ; preds = %17
  %62 = getelementptr inbounds %struct.id_rec, ptr %18, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !175
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  tail call void @free(ptr noundef %0) #38
  %66 = load i32, ptr %62, align 8, !tbaa !175
  br label %81

67:                                               ; preds = %61
  %68 = load i32, ptr @next_var, align 4, !tbaa !7
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr @next_var, align 4, !tbaa !7
  store i32 %68, ptr %62, align 8, !tbaa !175
  %70 = load ptr, ptr @v_names, align 8, !tbaa !14
  %71 = add nsw i32 %68, -1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  store ptr %0, ptr %73, align 8, !tbaa !14
  %74 = icmp slt i32 %68, 32768
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i32, ptr @v_count, align 4, !tbaa !7
  %77 = icmp slt i32 %68, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  tail call void @more_variables() #38
  %79 = load i32, ptr %62, align 8, !tbaa !175
  br label %81

80:                                               ; preds = %67
  tail call void (ptr, ...) @yyerror(ptr noundef nonnull @.str.11.247) #41
  tail call void @exit(i32 noundef 1) #39
  unreachable

81:                                               ; preds = %78, %75, %65, %58, %55, %46, %38, %23, %17
  %82 = phi i32 [ %66, %65 ], [ %47, %46 ], [ %25, %23 ], [ %40, %38 ], [ undef, %17 ], [ %59, %58 ], [ %49, %55 ], [ %79, %78 ], [ %68, %75 ]
  ret i32 %82
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @welcome() #12 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @warranty(ptr noundef %0) #12 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14.252, ptr noundef %0, ptr noundef nonnull @.str.15.253) #41
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16.254, ptr noundef nonnull @.str.17.255, ptr noundef nonnull @.str.18.256, ptr noundef nonnull @.str.19.257, ptr noundef nonnull @.str.20.258, ptr noundef nonnull @.str.21.259, ptr noundef nonnull @.str.22.260, ptr noundef nonnull @.str.23.261, ptr noundef nonnull @.str.24.262, ptr noundef nonnull @.str.25.263, ptr noundef nonnull @.str.26.264, ptr noundef nonnull @.str.27.265) #41
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @limits() #12 {
  %1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28.268, i32 noundef 99) #41
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29.269, i64 noundef 2048) #41
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30.270, i32 noundef 99) #41
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31.271, i32 noundef 1000) #41
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32.272, i64 noundef 9223372036854775807) #41
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33.273, i64 noundef 16384) #41
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34.274, i64 noundef 102481911520608620) #41
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35.275, i64 noundef 32767) #41
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @rt_error(ptr nocapture noundef readonly %0, ...) #12 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #37
  call void @llvm.va_start(ptr nonnull %2)
  %4 = call i32 @vsprintf(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #38
  call void @llvm.va_end(ptr nonnull %2)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = load ptr, ptr @f_names, align 8, !tbaa !14
  %7 = load i32, ptr @pc, align 4, !tbaa !28
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.39.278, ptr noundef %10, i32 noundef %11, ptr noundef nonnull %3) #45
  store i8 1, ptr @runtime_error, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #37
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @rt_warn(ptr nocapture noundef readonly %0, ...) #12 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #37
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #37
  call void @llvm.va_start(ptr nonnull %2)
  %4 = call i32 @vsprintf(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #38
  call void @llvm.va_end(ptr nonnull %2)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !14
  %6 = load ptr, ptr @f_names, align 8, !tbaa !14
  %7 = load i32, ptr @pc, align 4, !tbaa !28
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = load i32, ptr getelementptr inbounds (%struct.program_counter, ptr @pc, i64 0, i32 1), align 4, !tbaa !26
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.40.281, ptr noundef %10, i32 noundef %11, ptr noundef nonnull %3) #45
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #37
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #27 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn }
attributes #34 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind optsize }
attributes #39 = { noreturn nounwind optsize }
attributes #40 = { nounwind optsize willreturn memory(read) }
attributes #41 = { optsize }
attributes #42 = { nounwind optsize willreturn memory(none) }
attributes #43 = { nounwind optsize allocsize(0) }
attributes #44 = { cold }
attributes #45 = { cold optsize }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !9, i64 0}
!13 = !{i64 0, i64 8, !14, i64 8, i64 1, !16, i64 12, i64 4, !7, i64 16, i64 8, !14}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = !{!22, !8, i64 12}
!22 = !{!"", !15, i64 0, !9, i64 8, !8, i64 12, !15, i64 16}
!23 = !{!22, !15, i64 0}
!24 = !{!22, !15, i64 16}
!25 = !{!22, !9, i64 8}
!26 = !{!27, !8, i64 4}
!27 = !{!"", !8, i64 0, !8, i64 4}
!28 = !{!27, !8, i64 0}
!29 = !{!30, !8, i64 136}
!30 = !{!"", !9, i64 0, !9, i64 8, !8, i64 136, !15, i64 144, !15, i64 152, !15, i64 160}
!31 = !{!32, !15, i64 0}
!32 = !{!"estack_rec", !15, i64 0, !15, i64 8}
!33 = distinct !{!33, !18}
!34 = !{!35, !35, i64 0}
!35 = !{!"long", !9, i64 0}
!36 = !{!30, !9, i64 0}
!37 = !{!38, !8, i64 0}
!38 = !{!"arg_list", !8, i64 0, !15, i64 8}
!39 = distinct !{!39, !18}
!40 = distinct !{!40, !18}
!41 = !{!30, !15, i64 160}
!42 = !{!30, !15, i64 152}
!43 = !{!44, !8, i64 4}
!44 = !{!"", !9, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!45 = !{!44, !8, i64 8}
!46 = distinct !{!46, !18}
!47 = !{!32, !15, i64 8}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
!57 = !{!30, !15, i64 144}
!58 = !{!59, !15, i64 512}
!59 = !{!"bc_label_group", !9, i64 0, !15, i64 512}
!60 = distinct !{!60, !18}
!61 = distinct !{!61, !18}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = distinct !{!64, !18}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = !{i32 0, i32 2}
!68 = !{!44, !8, i64 12}
!69 = !{!44, !9, i64 0}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = !{i32 -1, i32 2}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18}
!87 = distinct !{!87, !18}
!88 = distinct !{!88, !18}
!89 = distinct !{!89, !18}
!90 = distinct !{!90, !18}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18}
!94 = distinct !{!94, !18}
!95 = !{i32 -1, i32 1}
!96 = distinct !{!96, !18}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18}
!101 = !{!102, !35, i64 0}
!102 = !{!"stk_rec", !35, i64 0, !15, i64 8}
!103 = !{!102, !15, i64 8}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = !{!107, !15, i64 0}
!107 = !{!"yy_buffer_state", !15, i64 0, !15, i64 8, !15, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!108 = !{!107, !15, i64 8}
!109 = !{!107, !8, i64 28}
!110 = !{!107, !15, i64 16}
!111 = !{!107, !8, i64 32}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !18}
!114 = !{i32 -128, i32 128}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18}
!117 = distinct !{!117, !18}
!118 = distinct !{!118, !18}
!119 = !{i32 -32768, i32 32768}
!120 = distinct !{!120, !18}
!121 = !{i32 0, i32 3}
!122 = !{!107, !8, i64 24}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !18}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !18}
!127 = !{i64 0, i64 1, !16, i64 8, i64 128, !16, i64 136, i64 4, !7, i64 144, i64 8, !14, i64 152, i64 8, !14, i64 160, i64 8, !14}
!128 = distinct !{!128, !18}
!129 = distinct !{!129, !18}
!130 = distinct !{!130, !18}
!131 = distinct !{!131, !18}
!132 = distinct !{!132, !18}
!133 = distinct !{!133, !18}
!134 = distinct !{!134, !18}
!135 = distinct !{!135, !18}
!136 = !{!137, !15, i64 8}
!137 = !{!"fstack_rec", !8, i64 0, !15, i64 8}
!138 = !{!137, !8, i64 0}
!139 = distinct !{!139, !18}
!140 = !{!141, !15, i64 0}
!141 = !{!"bc_var_array", !15, i64 0, !9, i64 8, !15, i64 16}
!142 = !{!141, !15, i64 16}
!143 = !{!141, !9, i64 8}
!144 = !{!145, !15, i64 0}
!145 = !{!"bc_array", !15, i64 0, !12, i64 8}
!146 = !{!145, !12, i64 8}
!147 = distinct !{!147, !18}
!148 = distinct !{!148, !18}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !18}
!151 = distinct !{!151, !18}
!152 = !{!153, !15, i64 0}
!153 = !{!"bc_var", !15, i64 0, !15, i64 8}
!154 = !{i8 0, i8 2}
!155 = !{!153, !15, i64 8}
!156 = distinct !{!156, !18}
!157 = distinct !{!157, !18}
!158 = !{!38, !15, i64 8}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !18}
!161 = distinct !{!161, !18}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = distinct !{!164, !18}
!165 = distinct !{!165, !18}
!166 = distinct !{!166, !18}
!167 = distinct !{!167, !18}
!168 = !{!169, !15, i64 0}
!169 = !{!"id_rec", !15, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !12, i64 20, !15, i64 24, !15, i64 32}
!170 = !{!169, !12, i64 20}
!171 = !{!169, !15, i64 24}
!172 = !{!169, !15, i64 32}
!173 = !{!169, !8, i64 8}
!174 = !{!169, !8, i64 12}
!175 = !{!169, !8, i64 16}
