; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/assembler/assembler.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OP_ENTRY = type { ptr, i32, ptr, i32, i32 }
%struct.BUFFER_TYPE = type { ptr, ptr, i32 }
%struct.BUFFER = type { ptr, ptr }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"%pass1%\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".lst\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".obj\00", align 1
@str = private unnamed_addr constant [38 x i8] c"Errors detected. Deleted object file.\00", align 1
@str.8 = private unnamed_addr constant [18 x i8] c"usage: assem file\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"eERROR\00", align 1
@.str.1.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@.str.1.8 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@.str.2.9 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.3.10 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.6.11 = private unnamed_addr constant [42 x i8] c" {source on next line}\0A                  \00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"ERROR[43]: Illegal argument to SVC.\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"ERROR[45]: Expected a valid register.\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"ERROR[46]: Expected a comma after the first register.\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"ERROR[49]: Expected a number 1-16 after comma.\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"ERROR[47]: Expected a valid register after the comma.\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"ERROR[44]: Expected a <space> after the operand.\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"05\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"ERROR[53]: EXTREF label can not be used in a format THREE instruction.\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"ERROR[51]: Location is not within PC relative range.\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"ERROR[52]: Constant too large for a format THREE instruction.\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"                  %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"       \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"EQU\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@str.12 = private unnamed_addr constant [48 x i8] c"SET_BITS_TO called improperly, VALUE too large.\00", align 1
@str.28 = private unnamed_addr constant [31 x i8] c"SET_BITS_TO called improperly.\00", align 1
@str.29 = private unnamed_addr constant [28 x i8] c"PRT_CODE called improperly.\00", align 1
@str.30 = private unnamed_addr constant [64 x i8] c"CODE: Something is wrong with code. This shouldn't be executed.\00", align 1
@MISSING_LABEL_NAME = internal global [3 x i8] c"_!\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"_!\00", align 1
@.str.4.34 = private unnamed_addr constant [53 x i8] c"eERROR[15]: Illegal Expression. Found '%c' after %c.\00", align 1
@.str.5.35 = private unnamed_addr constant [51 x i8] c"eERROR[15]: Illegal Expression. Found '' after %c.\00", align 1
@.str.6.36 = private unnamed_addr constant [68 x i8] c"eERROR[10]: %s[%d] is too large for it's intended use (MAX %d[10]).\00", align 1
@.str.7.37 = private unnamed_addr constant [68 x i8] c"eERROR[11]: %s[%d] is too small for it's intended use (MIN %d[10]).\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"eERROR[16]: Illegal Hexidecimal. Expected close quote.\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"eERROR[17]: Illegal Hexidecimal. %s\00", align 1
@.str.11.40 = private unnamed_addr constant [48 x i8] c"eERROR[14]: Expected an expression, found '%s'.\00", align 1
@.str.12.42 = private unnamed_addr constant [65 x i8] c"eERROR[24]: %s is not a defined symbol or is forwardly declared.\00", align 1
@.str.13.41 = private unnamed_addr constant [40 x i8] c"eERROR[49]: %s is not a defined symbol.\00", align 1
@.str.15.44 = private unnamed_addr constant [48 x i8] c"eERROR[25]: %s is a LABEL, expected a CONSTANT.\00", align 1
@.str.16.43 = private unnamed_addr constant [48 x i8] c"eERROR[50]: %s is a CONSTANT, expected a LABEL.\00", align 1
@str.31 = private unnamed_addr constant [29 x i8] c"NUM_TO_STR called illegally.\00", align 1
@str.17 = private unnamed_addr constant [43 x i8] c"ASSEMBLER ERROR: PRT_NUM called illegally.\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1.48 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.2.49 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@.str.3.50 = private unnamed_addr constant [3 x i8] c"90\00", align 1
@.str.4.51 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.5.52 = private unnamed_addr constant [3 x i8] c"40\00", align 1
@.str.6.53 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@.str.7.54 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.8.55 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.9.56 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@.str.10.57 = private unnamed_addr constant [5 x i8] c"COMP\00", align 1
@.str.11.58 = private unnamed_addr constant [3 x i8] c"28\00", align 1
@.str.12.59 = private unnamed_addr constant [6 x i8] c"COMPR\00", align 1
@.str.13.60 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.14.61 = private unnamed_addr constant [6 x i8] c"CSECT\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.16.63 = private unnamed_addr constant [3 x i8] c"24\00", align 1
@.str.17.64 = private unnamed_addr constant [5 x i8] c"DIVR\00", align 1
@.str.18.65 = private unnamed_addr constant [3 x i8] c"9C\00", align 1
@.str.19.66 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.20.67 = private unnamed_addr constant [4 x i8] c"EQU\00", align 1
@.str.21.68 = private unnamed_addr constant [7 x i8] c"EXTDEF\00", align 1
@.str.22.69 = private unnamed_addr constant [7 x i8] c"EXTREF\00", align 1
@.str.23.70 = private unnamed_addr constant [4 x i8] c"HIO\00", align 1
@.str.24.71 = private unnamed_addr constant [3 x i8] c"F4\00", align 1
@.str.25.72 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"3C\00", align 1
@.str.27.73 = private unnamed_addr constant [4 x i8] c"JEQ\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"JGT\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"34\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"JLT\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"38\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"JSUB\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"48\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"LDA\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"LDB\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"68\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"LDCH\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"LDL\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"08\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"LDS\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"6C\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"LDT\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"74\00", align 1
@.str.47.74 = private unnamed_addr constant [4 x i8] c"LDX\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"04\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"LPS\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"MULR\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"98\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"44\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"D8\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"RESB\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"RESW\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"RMO\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"RSUB\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"4C\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"SHIFTL\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"SHIFTR\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"A8\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"SIO\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"F0\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"SSK\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"STA\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"0C\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"STB\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"78\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"STCH\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"54\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"STI\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"D4\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"STL\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"STS\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"7C\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"STSW\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"E8\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"STT\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"84\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"STX\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"1C\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"SUBR\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"94\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"SVC\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"E0\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"TIO\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"F8\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"TIX\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"2C\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"TIXR\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"B8\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"WD\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"DC\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"*END OF TABLE*\00", align 1
@OP_TABLE = internal global [60 x %struct.OP_ENTRY] [%struct.OP_ENTRY { ptr @.str.47, i32 2, ptr @.str.1.48, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.2.49, i32 1, ptr @.str.3.50, i32 2, i32 0 }, %struct.OP_ENTRY { ptr @.str.4.51, i32 2, ptr @.str.5.52, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.6.53, i32 3, ptr @.str.7.54, i32 6, i32 1 }, %struct.OP_ENTRY { ptr @.str.8.55, i32 1, ptr @.str.9.56, i32 1, i32 0 }, %struct.OP_ENTRY { ptr @.str.10.57, i32 2, ptr @.str.11.58, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.12.59, i32 1, ptr @.str.13.60, i32 2, i32 0 }, %struct.OP_ENTRY { ptr @.str.14.61, i32 3, ptr @.str.7.54, i32 8, i32 2 }, %struct.OP_ENTRY { ptr @.str.15.62, i32 2, ptr @.str.16.63, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.17.64, i32 1, ptr @.str.18.65, i32 2, i32 0 }, %struct.OP_ENTRY { ptr @.str.19.66, i32 3, ptr @.str.7.54, i32 6, i32 3 }, %struct.OP_ENTRY { ptr @.str.20.67, i32 3, ptr @.str.7.54, i32 8, i32 4 }, %struct.OP_ENTRY { ptr @.str.21.68, i32 3, ptr @.str.7.54, i32 7, i32 5 }, %struct.OP_ENTRY { ptr @.str.22.69, i32 3, ptr @.str.7.54, i32 7, i32 6 }, %struct.OP_ENTRY { ptr @.str.23.70, i32 0, ptr @.str.24.71, i32 0, i32 0 }, %struct.OP_ENTRY { ptr @.str.25.72, i32 2, ptr @.str.26, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.27.73, i32 2, ptr @.str.28, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.29, i32 2, ptr @.str.30, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.31, i32 2, ptr @.str.32, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.33, i32 2, ptr @.str.34, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.35, i32 2, ptr @.str.36, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.37, i32 2, ptr @.str.38, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.39, i32 2, ptr @.str.40, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.41, i32 2, ptr @.str.42, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.43, i32 2, ptr @.str.44, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.45, i32 2, ptr @.str.46, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.47.74, i32 2, ptr @.str.48, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.49, i32 2, ptr @.str.50, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.51, i32 2, ptr @.str.52, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.53, i32 1, ptr @.str.54, i32 2, i32 0 }, %struct.OP_ENTRY { ptr @.str.55, i32 2, ptr @.str.56, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.57, i32 2, ptr @.str.58, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.59, i32 3, ptr @.str.7.54, i32 6, i32 7 }, %struct.OP_ENTRY { ptr @.str.60, i32 3, ptr @.str.7.54, i32 6, i32 8 }, %struct.OP_ENTRY { ptr @.str.61, i32 1, ptr @.str.62, i32 2, i32 0 }, %struct.OP_ENTRY { ptr @.str.63, i32 2, ptr @.str.64, i32 0, i32 0 }, %struct.OP_ENTRY { ptr @.str.65, i32 1, ptr @.str.66, i32 4, i32 0 }, %struct.OP_ENTRY { ptr @.str.67, i32 1, ptr @.str.68, i32 4, i32 0 }, %struct.OP_ENTRY { ptr @.str.69, i32 0, ptr @.str.70, i32 0, i32 0 }, %struct.OP_ENTRY { ptr @.str.71, i32 2, ptr @.str.72, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.73, i32 2, ptr @.str.74, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.75, i32 3, ptr @.str.7.54, i32 8, i32 9 }, %struct.OP_ENTRY { ptr @.str.76, i32 2, ptr @.str.77, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.78, i32 2, ptr @.str.79, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.80, i32 2, ptr @.str.81, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.82, i32 2, ptr @.str.83, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.84, i32 2, ptr @.str.85, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.86, i32 2, ptr @.str.87, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.88, i32 2, ptr @.str.89, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.90, i32 2, ptr @.str.91, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.92, i32 2, ptr @.str.93, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.94, i32 1, ptr @.str.95, i32 2, i32 0 }, %struct.OP_ENTRY { ptr @.str.96, i32 1, ptr @.str.97, i32 5, i32 0 }, %struct.OP_ENTRY { ptr @.str.98, i32 2, ptr @.str.99, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.100, i32 0, ptr @.str.101, i32 0, i32 0 }, %struct.OP_ENTRY { ptr @.str.102, i32 2, ptr @.str.103, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.104, i32 1, ptr @.str.105, i32 1, i32 0 }, %struct.OP_ENTRY { ptr @.str.106, i32 2, ptr @.str.107, i32 3, i32 0 }, %struct.OP_ENTRY { ptr @.str.108, i32 3, ptr @.str.7.54, i32 6, i32 10 }, %struct.OP_ENTRY { ptr @.str.109, i32 4, ptr @.str.36, i32 0, i32 0 }], align 16
@.str.110 = private unnamed_addr constant [51 x i8] c"eERROR[12]: Location exceeds the memory size (%d)\0A\00", align 1
@.str.2.115 = private unnamed_addr constant [6 x i8] c"CSECT\00", align 1
@.str.3.116 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.4.117 = private unnamed_addr constant [39 x i8] c"eERROR[30]: Statements following END.\0A\00", align 1
@.str.5.118 = private unnamed_addr constant [43 x i8] c"eERROR[6]: %s is a multipy defined label.\0A\00", align 1
@.str.6.119 = private unnamed_addr constant [38 x i8] c"eERROR[9]: %s is not a legal OPCODE.\0A\00", align 1
@.str.7.120 = private unnamed_addr constant [41 x i8] c"eERROR[8]: + is an illegal prefix to %s.\00", align 1
@.str.8.121 = private unnamed_addr constant [53 x i8] c"eERROR[35]: No START/CSECT found before statements.\0A\00", align 1
@.str.9.122 = private unnamed_addr constant [60 x i8] c"eERROR[36]: End of File detected without an END statement.\0A\00", align 1
@.str.1.125 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.126 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.3.127 = private unnamed_addr constant [5 x i8] c"E%s\0A\00", align 1
@.str.4.128 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@.str.5.129 = private unnamed_addr constant [6 x i8] c"%c%s\0A\00", align 1
@.str.8.130 = private unnamed_addr constant [42 x i8] c"ERROR[41]: %s Undefined label in EXTDEF.\0A\00", align 1
@.str.9.131 = private unnamed_addr constant [7 x i8] c"000000\00", align 1
@.str.10.132 = private unnamed_addr constant [72 x i8] c"ERROR[42]: %s is wrong type. Expected LABEL, found EXTREF or CONSTANT.\0A\00", align 1
@.str.11.133 = private unnamed_addr constant [4 x i8] c"H%s\00", align 1
@str.134 = private unnamed_addr constant [55 x i8] c"TEMP FILE build incorrectly. This should never happen.\00", align 1
@.str.135 = private unnamed_addr constant [50 x i8] c"eERROR[18]: Null hexidecimal/character constant.\0A\00", align 1
@.str.1.136 = private unnamed_addr constant [34 x i8] c"eERROR[20]: Illegal hexidecimal.\0A\00", align 1
@.str.2.137 = private unnamed_addr constant [74 x i8] c"eERROR[21]: Illegal hexidecimal/character constant. Missing close quote.\0A\00", align 1
@.str.3.138 = private unnamed_addr constant [67 x i8] c"eERROR[22]: Hexidecimal number is not divisible into whole bytes.\0A\00", align 1
@.str.4.139 = private unnamed_addr constant [8 x i8] c"t%dB%s\0A\00", align 1
@.str.5.140 = private unnamed_addr constant [5 x i8] c"t%dB\00", align 1
@.str.7.141 = private unnamed_addr constant [61 x i8] c"eERROR[13]: Expected a <space> after the operand, found %c.\0A\00", align 1
@.str.8.142 = private unnamed_addr constant [57 x i8] c"eERROR[19]: Expected hexidecimal or character constant.\0A\00", align 1
@SEEN_END_OP = internal global i32 3, align 4
@.str.9.143 = private unnamed_addr constant [38 x i8] c"eERROR[27]: Section %s has no 'end'.\0A\00", align 1
@MODULE_NAME = internal global [9 x i8] zeroinitializer, align 1
@MOD_REC_BUF = internal global %struct.BUFFER_TYPE zeroinitializer, align 8
@LOCATION_EXCEEDS_MEM_SIZE = internal global i32 0, align 4
@.str.10.144 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1
@.str.12.145 = private unnamed_addr constant [37 x i8] c"eERROR[26]: CSECT requires a label.\0A\00", align 1
@.str.13.146 = private unnamed_addr constant [43 x i8] c"eERROR[55]: Multiply defined module name.\0A\00", align 1
@.str.14.147 = private unnamed_addr constant [5 x i8] c"s%s\0A\00", align 1
@MAIN_ROUTINE = internal global [9 x i8] zeroinitializer, align 1
@.str.15.148 = private unnamed_addr constant [35 x i8] c"eERROR[28]: Label %s not defined.\0A\00", align 1
@.str.16.149 = private unnamed_addr constant [48 x i8] c"eERROR[28]: Expected label, found constant %s.\0A\00", align 1
@START_ADDRESS = internal global i32 -1, align 4
@.str.17.150 = private unnamed_addr constant [55 x i8] c"eERROR[54]: Multiple starting addresses. Using first.\0A\00", align 1
@.str.18.151 = private unnamed_addr constant [42 x i8] c"eERROR[31]: Expected a Symbol, found %s.\0A\00", align 1
@.str.20.152 = private unnamed_addr constant [35 x i8] c"eERROR[23]: EQU requires a label.\0A\00", align 1
@.str.21.153 = private unnamed_addr constant [40 x i8] c"eERROR[40]: EXTDEF requires arguments.\0A\00", align 1
@.str.22.154 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.23.155 = private unnamed_addr constant [64 x i8] c"eERROR[39]: Invalid list of symbols. Expected symbol found %s.\0A\00", align 1
@.str.24.156 = private unnamed_addr constant [40 x i8] c"eERROR[37]: EXTREF requires arguments.\0A\00", align 1
@.str.25.157 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.26.158 = private unnamed_addr constant [36 x i8] c"eERROR[38]: %s is already defined.\0A\00", align 1
@SEEN_START_OP = internal global i32 0, align 4
@.str.27.159 = private unnamed_addr constant [43 x i8] c"eERROR[32]: Multiple STARTs in this file.\0A\00", align 1
@.str.28.160 = private unnamed_addr constant [37 x i8] c"eERROR[33]: START requires a label.\0A\00", align 1
@.str.29.161 = private unnamed_addr constant [40 x i8] c"eERROR[34]: Negative starting address.\0A\00", align 1
@.str.30.162 = private unnamed_addr constant [5 x i8] c"t%dW\00", align 1
@LOCATION = internal global i32 0, align 4
@IS_INITIALIZED = internal global i32 0, align 4
@INIT_RECORD = internal global [81 x i8] zeroinitializer, align 16
@RECORD = internal global [81 x i8] zeroinitializer, align 16
@MAX_SIZE = internal global i32 0, align 4
@NEXT_COL = internal global i32 0, align 4
@.str.2.171 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4.176 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str.167 = private unnamed_addr constant [36 x i8] c"INITIALIZE_RECORD called illegally.\00", align 1
@str.8.170 = private unnamed_addr constant [29 x i8] c"PRT_RECORD called illegally.\00", align 1
@str.9 = private unnamed_addr constant [32 x i8] c"ADD_TO_RECORD called illegally.\00", align 1
@str.10 = private unnamed_addr constant [34 x i8] c"PRT_TEXT_RECORD called illegally.\00", align 1
@str.11 = private unnamed_addr constant [37 x i8] c"ADD_TO_TEXT_RECORD called illegally.\00", align 1
@.str.187 = private unnamed_addr constant [55 x i8] c"eERROR[1]: Label '%s' is too long (MAX %d characters).\00", align 1
@ERROR_REC_BUF = internal global %struct.BUFFER_TYPE { ptr null, ptr null, i32 1 }, align 8
@.str.1.188 = private unnamed_addr constant [71 x i8] c"eERROR[3]: OpCode field '%s' is too long. Truncating to %d charaters.\0A\00", align 1
@.str.2.191 = private unnamed_addr constant [8 x i8] c"p%d %s\0A\00", align 1
@.str.3.192 = private unnamed_addr constant [76 x i8] c"eERROR[2]: Illegal LABEL/OPCODE seperater('%c') expected <tab> or <blank>.\0A\00", align 1
@.str.5.193 = private unnamed_addr constant [46 x i8] c"eERROR[5]: Expected an OPCODE after the '+'.\0A\00", align 1
@.str.6.194 = private unnamed_addr constant [75 x i8] c"eERROR[4]: Illegal OPCODE/OPERANDS seperater('%c') expected TAB or BLANK.\0A\00", align 1
@CH = internal global i8 32, align 1
@LEX_LEN = internal global i32 128, align 4
@FRONT = internal global ptr null, align 8
@BACK = internal global ptr null, align 8
@LEXEME = internal global [129 x i8] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !tbaa !7
  call void (ptr, ...) @INIT_SYM_TAB(ptr noundef nonnull %3) #23
  %5 = icmp eq i32 %0, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %63

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = call noalias ptr @fopen(ptr noundef %10, ptr noundef nonnull @.str.2) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 8, !tbaa !11
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %14) #24
  br label %63

16:                                               ; preds = %8
  %17 = call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #24
  call void (ptr, ptr, ptr, ...) @PASS1(ptr noundef nonnull %11, ptr noundef nonnull %3, ptr noundef %17) #23
  %18 = call i32 @fclose(ptr noundef nonnull %11) #24
  %19 = call i32 @fclose(ptr noundef %17) #24
  %20 = load ptr, ptr %9, align 8, !tbaa !11
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #25
  %22 = add i64 %21, 5
  %23 = and i64 %22, 4294967295
  %24 = call noalias ptr @malloc(i64 noundef %23) #26
  %25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %20) #23
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #25
  %27 = trunc i64 %26 to i32
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %40

29:                                               ; preds = %35, %16
  %30 = phi i32 [ %36, %35 ], [ %27, %16 ]
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %24, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = icmp eq i8 %33, 46
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = add nsw i32 %30, -1
  %37 = icmp sgt i32 %30, 0
  br i1 %37, label %29, label %40, !llvm.loop !14

38:                                               ; preds = %29
  %.lcssa = phi i32 [ %30, %29 ]
  %39 = icmp eq i32 %.lcssa, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %38, %35, %16
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %27, %40 ], [ %.lcssa, %38 ]
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %24, i64 %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %44, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false) #23
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #25
  %46 = add i64 %45, 5
  %47 = and i64 %46, 4294967295
  %48 = call noalias ptr @malloc(i64 noundef %47) #26
  %49 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) %20) #23
  %50 = getelementptr inbounds i8, ptr %48, i64 %43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %50, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false) #23
  %51 = call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #24
  %52 = call noalias ptr @fopen(ptr noundef %24, ptr noundef nonnull @.str.4) #24
  %53 = call noalias ptr @fopen(ptr noundef %48, ptr noundef nonnull @.str.4) #24
  call void (ptr, ptr, ptr, ptr, ptr, ...) @PASS2(ptr noundef %51, ptr noundef %53, ptr noundef %52, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %54 = call i32 @fclose(ptr noundef %53) #24
  %55 = call i32 @fclose(ptr noundef %52) #24
  %56 = call i32 @fclose(ptr noundef %51) #24
  %57 = call i32 @remove(ptr noundef nonnull @.str) #23
  %58 = load i32, ptr %4, align 4, !tbaa !7
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %41
  %61 = call i32 @remove(ptr noundef nonnull %48) #23
  %62 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %63

63:                                               ; preds = %60, %41, %13, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal void @OUTPUT_BUFFER(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 2
  br label %8

8:                                                ; preds = %21, %6
  %9 = phi ptr [ %4, %6 ], [ %11, %21 ]
  %10 = getelementptr inbounds %struct.BUFFER, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = load ptr, ptr %9, align 8, !tbaa !20
  br i1 %7, label %13, label %19

13:                                               ; preds = %8
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.1, ptr noundef nonnull dereferenceable(1) %12, i64 noundef 6) #25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1.2, ptr noundef nonnull %17) #24
  br label %21

19:                                               ; preds = %13, %8
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.1.2, ptr noundef %12) #24
  br label %21

21:                                               ; preds = %19, %16
  %22 = load ptr, ptr %0, align 8, !tbaa !16
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  tail call void @free(ptr noundef %23) #23
  %24 = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %24) #23
  store ptr %11, ptr %0, align 8, !tbaa !16
  %25 = icmp eq ptr %11, null
  br i1 %25, label %26, label %8, !llvm.loop !21

26:                                               ; preds = %21, %3
  %27 = getelementptr inbounds %struct.BUFFER_TYPE, ptr %0, i64 0, i32 1
  store ptr null, ptr %27, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal void @ADD_TO_END_OF_BUFFER(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  %5 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26
  br i1 %4, label %6, label %8

6:                                                ; preds = %2
  store ptr %5, ptr %0, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.BUFFER_TYPE, ptr %0, i64 0, i32 1
  br label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BUFFER_TYPE, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.BUFFER, ptr %10, i64 0, i32 1
  store ptr %5, ptr %11, align 8, !tbaa !18
  br label %12

12:                                               ; preds = %8, %6
  %13 = phi ptr [ %9, %8 ], [ %7, %6 ]
  store ptr %5, ptr %13, align 8, !tbaa !22
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %15 = add i64 %14, 2
  %16 = and i64 %15, 4294967295
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #26
  store ptr %17, ptr %5, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.BUFFER_TYPE, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  store i8 77, ptr %17, align 1, !tbaa !13
  %22 = getelementptr inbounds i8, ptr %17, i64 1
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi ptr [ %22, %21 ], [ %17, %12 ]
  %25 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %1) #23
  %26 = getelementptr inbounds %struct.BUFFER, ptr %5, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_CODE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca [3 x i8], align 1
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.7) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.1.8) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i64 @fwrite(ptr nonnull @.str.2.9, i64 10, i64 1, ptr %3)
  br label %69

16:                                               ; preds = %11, %4
  %17 = tail call i32 @fgetc(ptr noundef %1) #24
  %18 = shl i32 %17, 24
  %19 = icmp eq i32 %18, 1946157056
  br i1 %19, label %20, label %65

20:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %21 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.3.10, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %7, ptr noundef %1) #23
  %22 = load ptr, ptr %7, align 8, !tbaa !11
  %23 = call i32 @fputs(ptr %22, ptr %3)
  %24 = load ptr, ptr %7, align 8, !tbaa !11
  %25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #25
  %26 = icmp ult i64 %25, 9
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = trunc i64 %25 to i32
  %29 = add nuw nsw i32 %28, 1
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %33, %30 ], [ %29, %27 ]
  %32 = call i32 @fputc(i32 32, ptr %3)
  %33 = add nsw i32 %31, 1
  %34 = icmp eq i32 %33, 11
  br i1 %34, label %37, label %30, !llvm.loop !24

35:                                               ; preds = %20
  %36 = call i64 @fwrite(ptr nonnull @.str.6.11, i64 41, i64 1, ptr %3)
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i8, ptr %6, align 1, !tbaa !13
  %39 = icmp eq i8 %38, 87
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr %7, align 8, !tbaa !11
  %42 = load i32, ptr %5, align 4, !tbaa !7
  call void (ptr, i32, ptr, ...) @ADD_TO_TEXT_RECORD(ptr noundef %41, i32 noundef %42, ptr noundef %2) #23
  br label %64

43:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #22
  %44 = getelementptr inbounds [3 x i8], ptr %8, i64 0, i64 2
  store i8 0, ptr %44, align 1, !tbaa !13
  %45 = load ptr, ptr %7, align 8, !tbaa !11
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = sext i8 %46 to i32
  %48 = call i32 (i32, ...) @eoln(i32 noundef %47) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %50, %43
  %51 = phi i32 [ %56, %50 ], [ 0, %43 ]
  %52 = load ptr, ptr %7, align 8, !tbaa !11
  %53 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %52, i64 noundef 2) #23
  %54 = load i32, ptr %5, align 4, !tbaa !7
  %55 = add nsw i32 %54, %51
  call void (ptr, i32, ptr, ...) @ADD_TO_TEXT_RECORD(ptr noundef nonnull %8, i32 noundef %55, ptr noundef %2) #23
  %56 = add nuw nsw i32 %51, 1
  %57 = load ptr, ptr %7, align 8, !tbaa !11
  %58 = getelementptr inbounds i8, ptr %57, i64 2
  store ptr %58, ptr %7, align 8, !tbaa !11
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = sext i8 %59 to i32
  %61 = call i32 (i32, ...) @eoln(i32 noundef %60) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %50, label %63, !llvm.loop !25

63:                                               ; preds = %50, %43
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #22
  br label %64

64:                                               ; preds = %63, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %69

65:                                               ; preds = %16
  %66 = ashr exact i32 %18, 24
  %67 = tail call i32 @ungetc(i32 noundef %66, ptr noundef %1) #24
  %68 = tail call i64 @fwrite(ptr nonnull @.str.2.9, i64 10, i64 1, ptr %3)
  br label %69

69:                                               ; preds = %65, %64, %14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @GET_REG(ptr nocapture noundef %0) #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = sext i8 %3 to i32
  switch i32 %4, label %21 [
    i32 65, label %22
    i32 88, label %5
    i32 76, label %6
    i32 66, label %7
    i32 83, label %8
    i32 84, label %14
    i32 80, label %15
  ]

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %2, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 87
  %12 = select i1 %11, ptr %9, ptr %2
  %13 = select i1 %11, i32 9, i32 4
  br label %22

14:                                               ; preds = %1
  br label %22

15:                                               ; preds = %1
  %16 = getelementptr inbounds i8, ptr %2, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 67
  %19 = select i1 %18, ptr %16, ptr %2
  %20 = select i1 %18, i32 8, i32 -1
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %15, %14, %8, %7, %6, %5, %1
  %23 = phi ptr [ %2, %21 ], [ %2, %14 ], [ %2, %7 ], [ %2, %6 ], [ %2, %5 ], [ %2, %1 ], [ %12, %8 ], [ %19, %15 ]
  %24 = phi i32 [ -1, %21 ], [ 5, %14 ], [ 3, %7 ], [ 2, %6 ], [ 1, %5 ], [ 0, %1 ], [ %13, %8 ], [ %20, %15 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %25, ptr %0, align 8, !tbaa !11
  ret i32 %24
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @SET_BITS_TO(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #12 {
  %5 = icmp slt i32 %1, %0
  %6 = icmp sgt i32 %1, 31
  %7 = or i1 %5, %6
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = sub nsw i32 %1, %0
  %10 = tail call double @ldexp(double 1.000000e+00, i32 %9) #22
  %11 = fptosi double %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = sext i32 %1 to i64
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ %14, %13 ], [ %27, %15 ]
  %17 = phi i32 [ %2, %13 ], [ %19, %15 ]
  %18 = phi i32 [ %11, %13 ], [ %28, %15 ]
  %19 = sdiv i32 %17, 2
  %20 = shl i32 %19, 25
  %21 = shl i32 %17, 24
  %22 = sub i32 %21, %20
  %23 = lshr exact i32 %22, 24
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, 48
  %26 = getelementptr inbounds i8, ptr %3, i64 %16
  store i8 %25, ptr %26, align 1, !tbaa !13
  %27 = add nsw i64 %16, -1
  %28 = lshr i32 %18, 1
  %29 = icmp ult i32 %18, 2
  br i1 %29, label %30, label %15, !llvm.loop !26

30:                                               ; preds = %15, %8
  %31 = phi i32 [ %2, %8 ], [ %19, %15 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %4
  %34 = phi ptr [ @str.28, %4 ], [ @str.12, %30 ]
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) %34)
  br label %36

36:                                               ; preds = %33, %30
  ret void
}

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @PRT_CODE(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4) #0 {
  %6 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = icmp sgt i32 %1, 8
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %37

10:                                               ; preds = %8
  %11 = zext i32 %1 to i64
  br label %14

12:                                               ; preds = %5
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  br label %47

14:                                               ; preds = %29, %10
  %15 = phi i64 [ 0, %10 ], [ %35, %29 ]
  %16 = shl nsw i64 %15, 2
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i64 [ 0, %14 ], [ %27, %17 ]
  %19 = phi i32 [ 0, %14 ], [ %26, %17 ]
  %20 = shl nsw i32 %19, 1
  %21 = add nuw nsw i64 %18, %16
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = sext i8 %23 to i32
  %25 = tail call i32 (i32, i32, ...) @CHAR_TO_DIGIT(i32 noundef %24, i32 noundef 2) #23
  %26 = add nsw i32 %25, %20
  %27 = add nuw nsw i64 %18, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %29, label %17, !llvm.loop !27

29:                                               ; preds = %17
  %.lcssa = phi i32 [ %26, %17 ]
  %30 = icmp ult i32 %.lcssa, 10
  %31 = trunc i32 %.lcssa to i8
  %32 = select i1 %30, i8 48, i8 55
  %33 = add i8 %32, %31
  %34 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %15
  store i8 %33, ptr %34, align 1
  %35 = add nuw nsw i64 %15, 1
  %36 = icmp eq i64 %35, %11
  br i1 %36, label %37, label %14, !llvm.loop !28

37:                                               ; preds = %29, %8
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !13
  %40 = call i32 @fputs(ptr nonnull %6, ptr %3)
  call void (ptr, i32, ptr, ...) @ADD_TO_TEXT_RECORD(ptr noundef nonnull %6, i32 noundef %2, ptr noundef %4) #23
  %41 = icmp slt i32 %1, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %42, %37
  %43 = phi i32 [ %45, %42 ], [ %1, %37 ]
  %44 = call i32 @fputc(i32 32, ptr %3)
  %45 = add i32 %43, 1
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %42, !llvm.loop !29

47:                                               ; preds = %42, %37, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @REAL_CODE(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef %6, ptr nocapture noundef writeonly %7) #0 {
  %9 = alloca ptr, align 8
  %10 = alloca [33 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca [9 x i8], align 1
  store ptr %2, ptr %9, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %10) #22
  %13 = getelementptr inbounds [33 x i8], ptr %10, i64 0, i64 32
  store i8 0, ptr %13, align 16, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %10, i8 48, i64 32, i1 false), !tbaa !13
  %14 = getelementptr inbounds %struct.OP_ENTRY, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = sext i8 %16 to i32
  %18 = tail call i32 (i32, i32, ...) @CHAR_TO_DIGIT(i32 noundef %17, i32 noundef 16) #23
  %19 = shl nsw i32 %18, 4
  %20 = load ptr, ptr %14, align 8, !tbaa !30
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = sext i8 %22 to i32
  %24 = tail call i32 (i32, i32, ...) @CHAR_TO_DIGIT(i32 noundef %23, i32 noundef 16) #23
  %25 = add nsw i32 %24, %19
  call void @SET_BITS_TO(i32 noundef 0, i32 noundef 7, i32 noundef %25, ptr noundef nonnull %10) #24
  %26 = getelementptr inbounds %struct.OP_ENTRY, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  call void @PRT_CODE(ptr noundef nonnull %10, i32 noundef 2, i32 noundef %3, ptr noundef %6, ptr noundef %5) #24
  %30 = load i32, ptr %26, align 8, !tbaa !32
  br label %31

31:                                               ; preds = %29, %8
  %32 = phi i32 [ %30, %29 ], [ %27, %8 ]
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %112

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.OP_ENTRY, ptr %0, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !33
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i8, ptr %2, align 1, !tbaa !13
  %40 = add i8 %39, -48
  %41 = icmp ult i8 %40, 5
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = zext i8 %39 to i32
  %44 = add nsw i32 %43, -48
  call void @SET_BITS_TO(i32 noundef 8, i32 noundef 11, i32 noundef %44, ptr noundef nonnull %10) #24
  br label %46

45:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.10) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  br label %46

46:                                               ; preds = %45, %42
  %47 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %47, ptr %9, align 8, !tbaa !11
  br label %98

48:                                               ; preds = %34
  %49 = call i32 @GET_REG(ptr noundef nonnull %9) #24, !range !34
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.11) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  %52 = load ptr, ptr %9, align 8, !tbaa !11
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %53, ptr %9, align 8, !tbaa !11
  br label %98

54:                                               ; preds = %48
  call void @SET_BITS_TO(i32 noundef 8, i32 noundef 11, i32 noundef %49, ptr noundef nonnull %10) #24
  %55 = load i32, ptr %35, align 8, !tbaa !33
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %98, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %9, align 8, !tbaa !11
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = icmp eq i8 %59, 44
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.12) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %62, ptr %9, align 8, !tbaa !11
  br label %98

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %64, ptr %9, align 8, !tbaa !11
  %65 = icmp eq i32 %55, 4
  br i1 %65, label %66, label %93

66:                                               ; preds = %63
  %67 = load i8, ptr %64, align 1, !tbaa !13
  %68 = sext i8 %67 to i32
  %69 = tail call i32 (i32, i32, ...) @CHAR_TO_DIGIT(i32 noundef %68, i32 noundef 10) #23
  %70 = getelementptr inbounds i8, ptr %58, i64 2
  store ptr %70, ptr %9, align 8, !tbaa !11
  %71 = icmp slt i32 %69, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.13) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  %73 = getelementptr inbounds i8, ptr %58, i64 3
  store ptr %73, ptr %9, align 8, !tbaa !11
  br label %98

74:                                               ; preds = %66
  %75 = load i8, ptr %70, align 1, !tbaa !13
  %76 = sext i8 %75 to i32
  %77 = tail call i32 (i32, i32, ...) @CHAR_TO_DIGIT(i32 noundef %76, i32 noundef 10) #23
  %78 = icmp sgt i32 %77, -1
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = mul nsw i32 %69, 10
  %81 = load i8, ptr %70, align 1, !tbaa !13
  %82 = sext i8 %81 to i32
  %83 = tail call i32 (i32, i32, ...) @CHAR_TO_DIGIT(i32 noundef %82, i32 noundef 10) #23
  %84 = add nsw i32 %83, %80
  %85 = getelementptr inbounds i8, ptr %58, i64 3
  store ptr %85, ptr %9, align 8, !tbaa !11
  br label %86

86:                                               ; preds = %79, %74
  %87 = phi i32 [ %84, %79 ], [ %69, %74 ]
  %88 = add i32 %87, -17
  %89 = icmp ult i32 %88, -16
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.13) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  br label %98

91:                                               ; preds = %86
  %92 = add nsw i32 %87, -1
  call void @SET_BITS_TO(i32 noundef 12, i32 noundef 15, i32 noundef %92, ptr noundef nonnull %10) #24
  br label %98

93:                                               ; preds = %63
  %94 = call i32 @GET_REG(ptr noundef nonnull %9) #24, !range !34
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.14) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  br label %98

97:                                               ; preds = %93
  call void @SET_BITS_TO(i32 noundef 12, i32 noundef 15, i32 noundef %94, ptr noundef nonnull %10) #24
  br label %98

98:                                               ; preds = %97, %96, %91, %90, %72, %61, %54, %51, %46
  %99 = load ptr, ptr %9, align 8, !tbaa !11
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = sext i8 %100 to i32
  %102 = tail call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %101) #23
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load i8, ptr %99, align 1, !tbaa !13
  %106 = sext i8 %105 to i32
  %107 = tail call i32 (i32, ...) @eoln(i32 noundef %106) #23
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.15) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  br label %110

110:                                              ; preds = %109, %104, %98
  call void @PRT_CODE(ptr noundef nonnull %10, i32 noundef 4, i32 noundef %3, ptr noundef %6, ptr noundef %5) #24
  %111 = load i32, ptr %26, align 8, !tbaa !32
  br label %112

112:                                              ; preds = %110, %31
  %113 = phi ptr [ %99, %110 ], [ %2, %31 ]
  %114 = phi i32 [ %111, %110 ], [ %32, %31 ]
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %207

116:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  store i32 0, ptr %11, align 4, !tbaa !7
  call void @SET_BITS_TO(i32 noundef 11, i32 noundef 11, i32 noundef %1, ptr noundef nonnull %10) #24
  %117 = getelementptr inbounds %struct.OP_ENTRY, ptr %0, i64 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !33
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  call void @SET_BITS_TO(i32 noundef 6, i32 noundef 7, i32 noundef 3, ptr noundef nonnull %10) #24
  %121 = icmp eq i32 %1, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %120
  call void @PRT_CODE(ptr noundef nonnull %10, i32 noundef 8, i32 noundef %3, ptr noundef %6, ptr noundef %5) #24
  br label %206

123:                                              ; preds = %120
  call void @PRT_CODE(ptr noundef nonnull %10, i32 noundef 6, i32 noundef %3, ptr noundef %6, ptr noundef %5) #24
  br label %206

124:                                              ; preds = %116
  %125 = load i8, ptr %113, align 1, !tbaa !13
  %126 = sext i8 %125 to i32
  switch i32 %126, label %131 [
    i32 64, label %127
    i32 35, label %129
  ]

127:                                              ; preds = %124
  call void @SET_BITS_TO(i32 noundef 6, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %10) #24
  %128 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %128, ptr %9, align 8, !tbaa !11
  br label %132

129:                                              ; preds = %124
  call void @SET_BITS_TO(i32 noundef 7, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %10) #24
  %130 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %130, ptr %9, align 8, !tbaa !11
  br label %132

131:                                              ; preds = %124
  call void @SET_BITS_TO(i32 noundef 6, i32 noundef 7, i32 noundef 3, ptr noundef nonnull %10) #24
  br label %132

132:                                              ; preds = %131, %129, %127
  %133 = add nsw i32 %3, 1
  %134 = call i32 (ptr, i32, i32, ptr, ptr, ...) @GET_EXPRESSION(ptr noundef nonnull %9, i32 noundef 21, i32 noundef %133, ptr noundef %4, ptr noundef nonnull %11) #23
  %135 = load ptr, ptr @ERROR_REC_BUF, align 8, !tbaa !16
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  store i32 1, ptr %7, align 4, !tbaa !7
  br label %138

138:                                              ; preds = %137, %132
  %139 = load ptr, ptr %9, align 8, !tbaa !11
  %140 = load i8, ptr %139, align 1, !tbaa !13
  %141 = icmp eq i8 %140, 44
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  %143 = getelementptr inbounds i8, ptr %139, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !13
  %145 = icmp eq i8 %144, 88
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = getelementptr inbounds i8, ptr %139, i64 2
  store ptr %147, ptr %9, align 8, !tbaa !11
  call void @SET_BITS_TO(i32 noundef 8, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %10) #24
  br label %148

148:                                              ; preds = %146, %142, %138
  %149 = icmp eq i32 %1, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %12) #22
  %151 = icmp slt i32 %134, 0
  %152 = add nsw i32 %134, 1048576
  %153 = select i1 %151, i32 %152, i32 %134
  %154 = load i32, ptr %11, align 4, !tbaa !7
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  call void (i32, i32, i32, ptr, ...) @NUM_TO_STR(i32 noundef %133, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %12) #23
  %157 = call i64 @strlen(ptr nonnull dereferenceable(1) %12)
  %158 = getelementptr inbounds i8, ptr %12, i64 %157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %158, ptr noundef nonnull align 1 dereferenceable(3) @.str.16, i64 3, i1 false)
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef nonnull %12) #23
  br label %159

159:                                              ; preds = %156, %150
  call void @SET_BITS_TO(i32 noundef 12, i32 noundef 31, i32 noundef %153, ptr noundef nonnull %10) #24
  call void @PRT_CODE(ptr noundef nonnull %10, i32 noundef 8, i32 noundef %3, ptr noundef %6, ptr noundef %5) #24
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %12) #22
  br label %193

160:                                              ; preds = %148
  %161 = load i32, ptr %11, align 4, !tbaa !7
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.17) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  %164 = load i32, ptr %11, align 4, !tbaa !7
  br label %165

165:                                              ; preds = %163, %160
  %166 = phi i32 [ %164, %163 ], [ %161, %160 ]
  %167 = phi i32 [ 0, %163 ], [ %134, %160 ]
  %168 = icmp eq i32 %166, 2
  %169 = add nsw i32 %3, 3
  %170 = select i1 %168, i32 %169, i32 0
  %171 = sub nsw i32 %167, %170
  %172 = icmp sgt i32 %171, 2047
  %173 = select i1 %168, i1 %172, i1 false
  br i1 %173, label %185, label %174

174:                                              ; preds = %165
  %175 = icmp ne i32 %166, 2
  %176 = icmp sgt i32 %171, 4095
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  %179 = icmp slt i32 %171, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %178
  %181 = add nsw i32 %171, 4096
  %182 = icmp ult i32 %171, -2048
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = select i1 %168, ptr @.str.18, ptr @.str.19
  br label %185

185:                                              ; preds = %183, %174, %165
  %186 = phi ptr [ %184, %183 ], [ @.str.18, %165 ], [ @.str.19, %174 ]
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull %186) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  br label %187

187:                                              ; preds = %185, %180, %178
  %188 = phi i32 [ %181, %180 ], [ %171, %178 ], [ 0, %185 ]
  call void @SET_BITS_TO(i32 noundef 12, i32 noundef 23, i32 noundef %188, ptr noundef nonnull %10) #24
  %189 = load i32, ptr %11, align 4, !tbaa !7
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  call void @SET_BITS_TO(i32 noundef 10, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %10) #24
  br label %192

192:                                              ; preds = %191, %187
  call void @PRT_CODE(ptr noundef nonnull %10, i32 noundef 6, i32 noundef %3, ptr noundef %6, ptr noundef %5) #24
  br label %193

193:                                              ; preds = %192, %159
  %194 = load ptr, ptr %9, align 8, !tbaa !11
  %195 = load i8, ptr %194, align 1, !tbaa !13
  %196 = sext i8 %195 to i32
  %197 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %196) #23
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load ptr, ptr %9, align 8, !tbaa !11
  %201 = load i8, ptr %200, align 1, !tbaa !13
  %202 = sext i8 %201 to i32
  %203 = call i32 (i32, ...) @eoln(i32 noundef %202) #23
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull @.str.15) #23
  store i32 1, ptr %7, align 4, !tbaa !7
  br label %206

206:                                              ; preds = %205, %199, %193, %123, %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  br label %207

207:                                              ; preds = %206, %112
  %208 = call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %6)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %10) #22
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind optsize uwtable
define internal void @CODE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca [9 x i8], align 1
  %7 = alloca [9 x i8], align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #22
  %12 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %10) #23
  %13 = call i32 @getc(ptr noundef %0) #24
  %14 = load i32, ptr %10, align 4, !tbaa !7
  call void (i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ...) @SCAN_LINE(i32 noundef %14, ptr noundef nonnull %9, ptr noundef nonnull %6, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1, ptr noundef null, ptr noundef %0) #23
  call void (ptr, ...) @CAPITALIZE_STRING(ptr noundef nonnull %6) #23
  call void (ptr, ...) @CAPITALIZE_STRING(ptr noundef nonnull %7) #23
  %15 = call ptr (ptr, ...) @LOOK_UP_OP(ptr noundef nonnull %7) #23
  %16 = load i8, ptr %6, align 1
  %17 = icmp eq i8 %16, 0
  %18 = load i8, ptr %7, align 1
  br i1 %17, label %19, label %27

19:                                               ; preds = %5
  %20 = icmp eq i8 %18, 0
  %21 = load i32, ptr %11, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load ptr, ptr %9, align 8, !tbaa !11
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.23, ptr noundef %25) #24
  br label %83

27:                                               ; preds = %19, %5
  %28 = icmp eq i8 %18, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i32, ptr %10, align 4, !tbaa !7
  call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %30, i32 noundef 16, i32 noundef 6, ptr noundef %3) #23
  %31 = call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %3)
  br label %64

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.OP_ENTRY, ptr %15, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !33
  switch i32 %34, label %61 [
    i32 7, label %35
    i32 8, label %37
  ]

35:                                               ; preds = %32
  %36 = call i64 @fwrite(ptr nonnull @.str.24, i64 7, i64 1, ptr %3)
  br label %64

37:                                               ; preds = %32
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %7, ptr noundef nonnull dereferenceable(4) @.str.25, i64 4)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %6, ptr noundef %1) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, ptr %10, align 4, !tbaa !7
  br label %58

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %41, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !35
  store i32 %46, ptr %10, align 4, !tbaa !7
  br label %58

47:                                               ; preds = %37
  br i1 %17, label %48, label %49

48:                                               ; preds = %47
  call void (ptr, ptr, ...) @GET_NEXT_MISSING_LABEL(ptr noundef nonnull %6, ptr noundef %1) #23
  br label %49

49:                                               ; preds = %48, %47
  %50 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef %1) #23
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  %54 = load i32, ptr %10, align 4, !tbaa !7
  br label %58

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %50, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !35
  store i32 %57, ptr %10, align 4, !tbaa !7
  br label %58

58:                                               ; preds = %55, %52, %44, %43
  %59 = phi i32 [ %54, %52 ], [ %57, %55 ], [ 0, %43 ], [ %46, %44 ]
  call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %59, i32 noundef 16, i32 noundef 6, ptr noundef %3) #23
  %60 = call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %3)
  br label %64

61:                                               ; preds = %32
  %62 = load i32, ptr %10, align 4, !tbaa !7
  call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %62, i32 noundef 16, i32 noundef 6, ptr noundef %3) #23
  %63 = call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %3)
  br label %64

64:                                               ; preds = %61, %58, %35, %29
  %65 = load ptr, ptr %9, align 8, !tbaa !11
  %66 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %65) #25
  %67 = add i64 %66, 1
  %68 = and i64 %67, 4294967295
  %69 = call noalias ptr @malloc(i64 noundef %68) #26
  %70 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) %65) #23
  %71 = load ptr, ptr %8, align 8, !tbaa !11
  call void (ptr, ...) @CAPITALIZE_STRING(ptr noundef %71) #23
  %72 = getelementptr inbounds %struct.OP_ENTRY, ptr %15, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !32
  switch i32 %73, label %77 [
    i32 4, label %74
    i32 3, label %76
  ]

74:                                               ; preds = %64
  %75 = call i64 @fwrite(ptr nonnull @.str.2.9, i64 10, i64 1, ptr %3)
  br label %81

76:                                               ; preds = %64
  call void @PSEUDO_CODE(ptr noundef nonnull %7, ptr noundef %0, ptr noundef %2, ptr noundef %3) #24
  br label %81

77:                                               ; preds = %64
  %78 = load i32, ptr %11, align 4, !tbaa !7
  %79 = load ptr, ptr %8, align 8, !tbaa !11
  %80 = load i32, ptr %10, align 4, !tbaa !7
  call void @REAL_CODE(ptr noundef nonnull %15, i32 noundef %78, ptr noundef %79, i32 noundef %80, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  br label %81

81:                                               ; preds = %77, %76, %74
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef %69) #24
  call void @free(ptr noundef %69) #23
  br label %83

83:                                               ; preds = %81, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @RESET_MISSING_LABEL_NAME() #16 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) @MISSING_LABEL_NAME, ptr noundef nonnull align 1 dereferenceable(3) @.str.22, i64 3, i1 false) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @GET_NEXT_MISSING_LABEL(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @MISSING_LABEL_NAME) #23
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @MISSING_LABEL_NAME) #25
  %5 = add i64 %4, -1
  %6 = getelementptr inbounds [3 x i8], ptr @MISSING_LABEL_NAME, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %8 = icmp slt i8 %7, 87
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = add nsw i8 %7, 1
  store i8 %10, ptr %6, align 1, !tbaa !13
  br label %11

11:                                               ; preds = %9, %2
  %12 = tail call i32 (ptr, ptr, i32, i32, ptr, ...) @INSERT_IN_SYM_TAB(ptr noundef nonnull @MODULE_NAME, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %1) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @BLANK_STR(ptr nocapture noundef writeonly %0) #17 {
  store i64 2314885530818453536, ptr %0, align 1
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store i8 0, ptr %2, align 1, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @CHAR_TO_DIGIT(i8 noundef signext %0, i32 noundef %1) #18 {
  %3 = sext i8 %0 to i32
  %4 = add i8 %0, -48
  %5 = icmp ult i8 %4, 10
  %6 = add nsw i32 %3, -48
  %7 = select i1 %5, i32 %6, i32 -1
  %8 = add i8 %0, -65
  %9 = icmp ult i8 %8, 26
  %10 = add nsw i32 %3, -55
  %11 = select i1 %9, i32 %10, i32 %7
  %12 = icmp slt i32 %11, %1
  %13 = select i1 %12, i32 %11, i32 -1
  ret i32 %13
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @NUM_TO_STR(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #12 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  store i8 0, ptr %6, align 1, !tbaa !13
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i64 [ %9, %8 ], [ %13, %10 ]
  %12 = phi i32 [ %0, %8 ], [ %14, %10 ]
  %13 = add nsw i64 %11, -1
  %14 = sdiv i32 %12, %1
  %15 = mul nsw i32 %14, %1
  %16 = srem i32 %12, %1
  %17 = icmp ult i32 %16, 10
  %18 = trunc i32 %16 to i8
  %19 = and i64 %13, 4294967295
  %20 = getelementptr inbounds i8, ptr %3, i64 %19
  %21 = select i1 %17, i8 48, i8 55
  %22 = add i8 %21, %18
  store i8 %22, ptr %20, align 1, !tbaa !13
  %23 = icmp ugt i64 %11, 1
  br i1 %23, label %10, label %24, !llvm.loop !37

24:                                               ; preds = %10, %4
  %25 = phi i32 [ %0, %4 ], [ %14, %10 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PRT_NUM(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) #12 {
  %5 = sitofp i32 %1 to double
  %6 = add nsw i32 %2, -1
  %7 = sitofp i32 %6 to double
  %8 = tail call double @pow(double noundef %5, double noundef %7) #23
  %9 = fptosi double %8 to i32
  %10 = icmp slt i32 %0, 0
  %11 = mul nsw i32 %9, %1
  %12 = select i1 %10, i32 %11, i32 0
  %13 = add nsw i32 %12, %0
  %14 = icmp slt i32 %13, %11
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  br label %17

17:                                               ; preds = %15, %4
  %18 = icmp sgt i32 %9, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %24, %19 ], [ %13, %17 ]
  %21 = phi i32 [ %32, %19 ], [ %9, %17 ]
  %22 = sdiv i32 %20, %21
  %23 = mul nsw i32 %22, %21
  %24 = srem i32 %20, %21
  %25 = icmp ult i32 %22, 10
  %26 = add nuw nsw i32 %22, 48
  %27 = shl i32 %22, 24
  %28 = add i32 %27, 922746880
  %29 = ashr exact i32 %28, 24
  %30 = select i1 %25, i32 %26, i32 %29
  %31 = tail call i32 @fputc(i32 %30, ptr %3)
  %32 = sdiv i32 %21, %1
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %19, label %34, !llvm.loop !38

34:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: nounwind optsize uwtable
define internal i32 @GET_NUM(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %1, -1
  %5 = tail call double @ldexp(double 1.000000e+00, i32 %4) #22
  %6 = fptosi double %5 to i32
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = icmp eq i8 %8, 45
  switch i8 %8, label %37 [
    i8 45, label %10
    i8 43, label %10
  ]

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %11, ptr %0, align 8, !tbaa !11
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = sext i8 %12 to i32
  %14 = add i8 %12, -48
  %15 = icmp ult i8 %14, 10
  %16 = add nsw i32 %13, -48
  %17 = select i1 %15, i32 %16, i32 -1
  %18 = add i8 %12, -65
  %19 = icmp ult i8 %18, 26
  %20 = add nsw i32 %13, -55
  %21 = select i1 %19, i32 %20, i32 %17
  %22 = icmp sge i32 %21, %2
  %23 = icmp eq i32 %21, -1
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %10
  %26 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #26
  %27 = icmp sgt i8 %12, 0
  %28 = load i8, ptr %7, align 1, !tbaa !13
  %29 = sext i8 %28 to i32
  br i1 %27, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) @.str.4.34, i32 noundef %13, i32 noundef %29) #23
  br label %34

32:                                               ; preds = %25
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) @.str.5.35, i32 noundef %29) #23
  br label %34

34:                                               ; preds = %32, %30
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %26) #23
  tail call void @free(ptr noundef %26) #23
  %35 = load ptr, ptr %0, align 8, !tbaa !11
  %36 = load i8, ptr %35, align 1, !tbaa !13
  br label %37

37:                                               ; preds = %34, %10, %3
  %38 = phi i8 [ %8, %3 ], [ %12, %10 ], [ %36, %34 ]
  %39 = sext i8 %38 to i32
  %40 = add i8 %38, -48
  %41 = icmp ult i8 %40, 10
  %42 = add nsw i32 %39, -48
  %43 = select i1 %41, i32 %42, i32 -1
  %44 = add i8 %38, -65
  %45 = icmp ult i8 %44, 26
  %46 = add nsw i32 %39, -55
  %47 = select i1 %45, i32 %46, i32 %43
  %48 = icmp sge i32 %47, %2
  %49 = icmp eq i32 %47, -1
  %50 = or i1 %48, %49
  br i1 %50, label %77, label %51

51:                                               ; preds = %57, %37
  %52 = phi i32 [ %73, %57 ], [ %47, %37 ]
  %53 = phi i32 [ %65, %57 ], [ %39, %37 ]
  %54 = phi i32 [ %61, %57 ], [ 0, %37 ]
  %55 = tail call i32 (i32, ...) @eoln(i32 noundef %53) #23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = icmp sgt i32 %54, %6
  %59 = mul nsw i32 %54, %2
  %60 = add nsw i32 %52, %59
  %61 = select i1 %58, i32 %54, i32 %60
  %62 = load ptr, ptr %0, align 8, !tbaa !11
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %63, ptr %0, align 8, !tbaa !11
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = sext i8 %64 to i32
  %66 = add i8 %64, -48
  %67 = icmp ult i8 %66, 10
  %68 = add nsw i32 %65, -48
  %69 = select i1 %67, i32 %68, i32 -1
  %70 = add i8 %64, -65
  %71 = icmp ult i8 %70, 26
  %72 = add nsw i32 %65, -55
  %73 = select i1 %71, i32 %72, i32 %69
  %74 = icmp sge i32 %73, %2
  %75 = icmp eq i32 %73, -1
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %51, !llvm.loop !39

77:                                               ; preds = %57, %51, %37
  %78 = phi i32 [ 0, %37 ], [ %61, %57 ], [ %54, %51 ]
  %79 = icmp sgt i32 %78, %6
  %80 = and i1 %9, %79
  %81 = xor i1 %80, true
  %82 = icmp slt i32 %78, %6
  %83 = or i1 %9, %82
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %109, label %85

85:                                               ; preds = %77
  %86 = load ptr, ptr %0, align 8, !tbaa !11
  %87 = load i8, ptr %86, align 1, !tbaa !13
  store i8 0, ptr %86, align 1, !tbaa !13
  %88 = sitofp i32 %2 to double
  %89 = tail call double @log10(double noundef %88) #23
  %90 = fptosi double %89 to i32
  %91 = add nsw i32 %90, 80
  %92 = sitofp i32 %6 to double
  %93 = tail call double @log10(double noundef %92) #23
  %94 = fptosi double %93 to i32
  %95 = add nsw i32 %91, %94
  %96 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %97 = trunc i64 %96 to i32
  %98 = add i32 %95, %97
  %99 = zext i32 %98 to i64
  %100 = tail call noalias ptr @malloc(i64 noundef %99) #26
  br i1 %9, label %104, label %101

101:                                              ; preds = %85
  %102 = add nsw i32 %6, -1
  %103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) @.str.6.36, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %102) #23
  br label %107

104:                                              ; preds = %85
  %105 = sub nsw i32 0, %6
  %106 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) @.str.7.37, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %105) #23
  br label %107

107:                                              ; preds = %104, %101
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %100) #23
  tail call void @free(ptr noundef %100) #23
  %108 = load ptr, ptr %0, align 8, !tbaa !11
  store i8 %87, ptr %108, align 1, !tbaa !13
  br label %109

109:                                              ; preds = %107, %77
  %110 = phi i32 [ 0, %107 ], [ %78, %77 ]
  %111 = sub nsw i32 0, %110
  %112 = select i1 %9, i32 %111, i32 %110
  ret i32 %112
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #19

; Function Attrs: nounwind optsize uwtable
define internal i32 @GET_EXPRESSION(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca [80 x i8], align 16
  %7 = alloca [9 x i8], align 1
  %8 = alloca [17 x i8], align 16
  %9 = alloca [9 x i8], align 8
  %10 = alloca [3 x i8], align 1
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = load i32, ptr %4, align 4, !tbaa !7
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %61, label %14

14:                                               ; preds = %5
  %15 = load i8, ptr %11, align 1, !tbaa !13
  %16 = add i8 %15, -48
  %17 = icmp ult i8 %16, 10
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  switch i8 %15, label %61 [
    i8 45, label %19
    i8 43, label %19
    i8 88, label %21
  ]

19:                                               ; preds = %18, %18, %14
  store i32 1, ptr %4, align 4, !tbaa !7
  %20 = tail call i32 @GET_NUM(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 10) #24
  br label %118

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %11, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = icmp eq i8 %23, 39
  br i1 %24, label %25, label %61

25:                                               ; preds = %21
  store i32 1, ptr %4, align 4, !tbaa !7
  %26 = getelementptr inbounds i8, ptr %11, i64 2
  store ptr %26, ptr %0, align 8, !tbaa !11
  %27 = tail call i32 @GET_NUM(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 16) #24
  %28 = load ptr, ptr %0, align 8, !tbaa !11
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = icmp eq i8 %29, 39
  br i1 %30, label %59, label %31

31:                                               ; preds = %40, %25
  %32 = phi i8 [ %42, %40 ], [ %29, %25 ]
  %33 = sext i8 %32 to i32
  %34 = tail call i32 (i32, ...) @eoln(i32 noundef %33) #23
  %35 = icmp eq i32 %34, 0
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %35, label %40, label %37

37:                                               ; preds = %31
  %.lcssa = phi ptr [ %36, %31 ]
  %38 = load i8, ptr %.lcssa, align 1, !tbaa !13
  %39 = sext i8 %38 to i32
  br label %44

40:                                               ; preds = %31
  %41 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %41, ptr %0, align 8, !tbaa !11
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = icmp eq i8 %42, 39
  br i1 %43, label %44, label %31, !llvm.loop !40

44:                                               ; preds = %40, %37
  %45 = phi i32 [ %39, %37 ], [ 39, %40 ]
  %46 = tail call i32 (i32, ...) @eoln(i32 noundef %45) #23
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) %6, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #22
  br label %118

49:                                               ; preds = %44
  %50 = load ptr, ptr %0, align 8, !tbaa !11
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %51, ptr %0, align 8, !tbaa !11
  %52 = load i8, ptr %51, align 1, !tbaa !13
  store i8 0, ptr %51, align 1, !tbaa !13
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #25
  %54 = add i64 %53, 80
  %55 = and i64 %54, 4294967295
  %56 = tail call noalias ptr @malloc(i64 noundef %55) #26
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %11) #23
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %56) #23
  tail call void @free(ptr noundef %56) #23
  %58 = load ptr, ptr %0, align 8, !tbaa !11
  store i8 %52, ptr %58, align 1, !tbaa !13
  br label %118

59:                                               ; preds = %25
  %60 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %60, ptr %0, align 8, !tbaa !11
  br label %118

61:                                               ; preds = %21, %18, %5
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %7) #22
  call void (ptr, ptr, ptr, i32, ...) @GET_LABEL(ptr noundef nonnull %7, ptr noundef %11, ptr noundef nonnull %0, i32 noundef 0) #23
  %62 = load i8, ptr %7, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load ptr, ptr %0, align 8, !tbaa !11
  %66 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %65) #25
  %67 = add i64 %66, 80
  %68 = and i64 %67, 4294967295
  %69 = call noalias ptr @malloc(i64 noundef %68) #26
  %70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) @.str.11.40, ptr noundef %65) #23
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %69) #23
  call void @free(ptr noundef %69) #23
  br label %116

71:                                               ; preds = %61
  %72 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %7, ptr noundef %3) #23
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %76 = add i64 %75, 80
  %77 = and i64 %76, 4294967295
  %78 = call noalias ptr @malloc(i64 noundef %77) #26
  %79 = load i32, ptr %4, align 4, !tbaa !7
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, ptr @.str.13.41, ptr @.str.12.42
  %82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull %7) #23
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %78) #23
  call void @free(ptr noundef %78) #23
  br label %116

83:                                               ; preds = %71
  %84 = load i32, ptr %4, align 4, !tbaa !7
  %85 = icmp eq i32 %84, 2
  %86 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %72, i64 0, i32 4
  %87 = load i32, ptr %86, align 4, !tbaa !41
  br i1 %85, label %95, label %88

88:                                               ; preds = %83
  %89 = icmp eq i32 %87, 1
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  store i32 1, ptr %4, align 4, !tbaa !7
  %91 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %72, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !35
  br label %116

93:                                               ; preds = %88
  %94 = icmp eq i32 %84, 1
  br i1 %94, label %109, label %95

95:                                               ; preds = %93, %83
  switch i32 %87, label %105 [
    i32 1, label %109
    i32 2, label %96
  ]

96:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #22
  call void @NUM_TO_STR(i32 noundef %2, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %8) #24
  %97 = sdiv i32 %1, 4
  call void @NUM_TO_STR(i32 noundef %97, i32 noundef 16, i32 noundef 2, ptr noundef nonnull %10) #24
  %98 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %10) #23
  %99 = call i64 @strlen(ptr nonnull dereferenceable(1) %8)
  %100 = getelementptr inbounds i8, ptr %8, i64 %99
  store i16 43, ptr %100, align 1
  store i64 2314885530818453536, ptr %9, align 8
  %101 = getelementptr inbounds i8, ptr %9, i64 8
  store i8 0, ptr %101, align 8, !tbaa !13
  %102 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %103 = call ptr @strncpy(ptr noundef nonnull %9, ptr noundef nonnull %7, i64 noundef %102) #23
  %104 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %9) #23
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef nonnull %8) #23
  store i32 3, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %8) #22
  br label %106

105:                                              ; preds = %95
  store i32 2, ptr %4, align 4, !tbaa !7
  br label %106

106:                                              ; preds = %105, %96
  %107 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %72, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !35
  br label %116

109:                                              ; preds = %95, %93
  %110 = phi ptr [ @.str.16.43, %95 ], [ @.str.15.44, %93 ]
  %111 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %112 = add i64 %111, 80
  %113 = and i64 %112, 4294967295
  %114 = call noalias ptr @malloc(i64 noundef %113) #26
  %115 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %114, ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull %7) #23
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %114) #23
  call void @free(ptr noundef %114) #23
  br label %116

116:                                              ; preds = %109, %106, %90, %74, %64
  %117 = phi i32 [ %92, %90 ], [ %108, %106 ], [ 0, %74 ], [ 0, %109 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %7) #22
  br label %118

118:                                              ; preds = %116, %59, %49, %48, %19
  %119 = phi i32 [ %20, %19 ], [ %117, %116 ], [ %27, %48 ], [ %27, %49 ], [ %27, %59 ]
  ret i32 %119
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @LOOK_UP_OP(ptr nocapture noundef readonly %0) #20 {
  br label %2

2:                                                ; preds = %12, %1
  %3 = phi i32 [ 58, %1 ], [ %17, %12 ]
  %4 = phi i32 [ 0, %1 ], [ %16, %12 ]
  %5 = add nsw i32 %3, %4
  %6 = sdiv i32 %5, 2
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [60 x %struct.OP_ENTRY], ptr @OP_TABLE, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 16, !tbaa !42
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp sgt i32 %10, 0
  %14 = add nsw i32 %6, -1
  %15 = add nsw i32 %6, 1
  %16 = select i1 %13, i32 %4, i32 %15
  %17 = select i1 %13, i32 %14, i32 %3
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %2, !llvm.loop !43

19:                                               ; preds = %12, %2
  %20 = phi ptr [ %8, %2 ], [ getelementptr inbounds ([60 x %struct.OP_ENTRY], ptr @OP_TABLE, i64 0, i64 59), %12 ]
  ret ptr %20
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @CHANGE_LOCATION(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) #12 {
  %4 = load i32, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 4, !tbaa !7
  %8 = add nsw i32 %7, %1
  %9 = icmp sgt i32 %8, 1048576
  %10 = icmp eq i32 %7, 1048576
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  store i32 1, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef 1048576) #24
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi i32 [ 1048575, %12 ], [ %8, %6 ]
  store i32 %15, ptr %0, align 4, !tbaa !7
  br label %16

16:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: nofree nounwind optsize memory(argmem: readwrite) uwtable
define internal void @CAPITALIZE_STRING(ptr nocapture noundef %0) #21 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi i64 [ %14, %13 ], [ 0, %1 ]
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %5 = icmp ult i64 %4, %3
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 %3
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = add i8 %8, -97
  %10 = icmp ult i8 %9, 26
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = add nsw i8 %8, -32
  store i8 %12, ptr %7, align 1, !tbaa !13
  br label %13

13:                                               ; preds = %11, %6
  %14 = add nuw i64 %3, 1
  br label %2, !llvm.loop !44

15:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PASS1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [9 x i8], align 1
  %5 = alloca [9 x i8], align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store i32 0, ptr %9, align 4, !tbaa !7
  store i8 95, ptr @MODULE_NAME, align 1, !tbaa !13
  store i8 0, ptr getelementptr inbounds ([9 x i8], ptr @MODULE_NAME, i64 0, i64 1), align 1, !tbaa !13
  %10 = tail call i32 (ptr, ptr, i32, i32, ptr, ...) @INSERT_IN_SYM_TAB(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull @MODULE_NAME, i32 noundef 0, i32 noundef 0, ptr noundef %1) #23
  store i8 0, ptr @MAIN_ROUTINE, align 1, !tbaa !13
  store i8 0, ptr %4, align 1, !tbaa !13
  br label %11

11:                                               ; preds = %184, %3
  %12 = call i32 @feof(ptr noundef %0) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %187

14:                                               ; preds = %11
  %15 = load i32, ptr %9, align 4, !tbaa !7
  call void (i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ...) @SCAN_LINE(i32 noundef %15, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0, ptr noundef %2, ptr noundef %0) #23
  br label %16

16:                                               ; preds = %27, %14
  %17 = phi i64 [ %28, %27 ], [ 0, %14 ]
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #25
  %19 = icmp ult i64 %18, %17
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %4, i64 %17
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = add i8 %22, -97
  %24 = icmp ult i8 %23, 26
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = add nsw i8 %22, -32
  store i8 %26, ptr %21, align 1, !tbaa !13
  br label %27

27:                                               ; preds = %25, %20
  %28 = add nuw i64 %17, 1
  br label %16, !llvm.loop !44

29:                                               ; preds = %40, %16
  %30 = phi i64 [ %41, %40 ], [ 0, %16 ]
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #25
  %32 = icmp ult i64 %31, %30
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %5, i64 %30
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = add i8 %35, -97
  %37 = icmp ult i8 %36, 26
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = add nsw i8 %35, -32
  store i8 %39, ptr %34, align 1, !tbaa !13
  br label %40

40:                                               ; preds = %38, %33
  %41 = add nuw i64 %30, 1
  br label %29, !llvm.loop !44

42:                                               ; preds = %29
  %43 = load ptr, ptr %6, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %55, %42
  %45 = phi i64 [ %56, %55 ], [ 0, %42 ]
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #25
  %47 = icmp ult i64 %46, %45
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, ptr %43, i64 %45
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = add i8 %50, -97
  %52 = icmp ult i8 %51, 26
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = add nsw i8 %50, -32
  store i8 %54, ptr %49, align 1, !tbaa !13
  br label %55

55:                                               ; preds = %53, %48
  %56 = add nuw i64 %45, 1
  br label %44, !llvm.loop !44

57:                                               ; preds = %44
  %58 = load i8, ptr %4, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8, ptr %5, align 1
  %62 = icmp ne i8 %61, 0
  %63 = load i32, ptr %8, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  %66 = load i32, ptr @SEEN_END_OP, align 4
  %67 = icmp eq i32 %66, 1
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %72, label %102

69:                                               ; preds = %57
  %70 = load i32, ptr @SEEN_END_OP, align 4, !tbaa !7
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %84

72:                                               ; preds = %69, %60
  %73 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.2.115, i64 6)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %5, ptr noundef nonnull dereferenceable(6) @.str.3.116, i64 6)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = call i64 @fwrite(ptr nonnull @.str.4.117, i64 38, i64 1, ptr %2)
  store i32 2, ptr @SEEN_END_OP, align 4, !tbaa !7
  %80 = load i8, ptr %4, align 1
  br label %81

81:                                               ; preds = %78, %75, %72
  %82 = phi i8 [ %80, %78 ], [ %58, %75 ], [ %58, %72 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %81, %69
  %85 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %4, ptr noundef %1) #23
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i32, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i32, ptr %9, align 4, !tbaa !7
  %92 = icmp sgt i32 %91, 1048575
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  store i32 1, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef 1048576) #24
  %95 = load i32, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  store i32 1048575, ptr %9, align 4, !tbaa !7
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93, %90
  %98 = phi i32 [ 1048575, %93 ], [ %91, %90 ]
  %99 = call i32 (ptr, ptr, i32, i32, ptr, ...) @INSERT_IN_SYM_TAB(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %4, i32 noundef %98, i32 noundef 0, ptr noundef %1) #23
  br label %102

100:                                              ; preds = %84
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5.118, ptr noundef nonnull %4) #24
  br label %102

102:                                              ; preds = %100, %97, %93, %87, %81, %60
  %103 = load i8, ptr %5, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %175, label %105

105:                                              ; preds = %102
  %106 = call ptr (ptr, ...) @LOOK_UP_OP(ptr noundef nonnull %5) #23
  %107 = getelementptr inbounds %struct.OP_ENTRY, ptr %106, i64 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !32
  switch i32 %108, label %175 [
    i32 4, label %109
    i32 0, label %111
    i32 1, label %127
    i32 2, label %143
    i32 3, label %166
  ]

109:                                              ; preds = %105
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.6.119, ptr noundef nonnull %5) #24
  br label %175

111:                                              ; preds = %105
  %112 = load i32, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, ptr %9, align 4, !tbaa !7
  %116 = add nsw i32 %115, 1
  %117 = icmp sgt i32 %115, 1048575
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  store i32 1, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef 1048576) #24
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i32 [ 1048575, %118 ], [ %116, %114 ]
  store i32 %121, ptr %9, align 4, !tbaa !7
  br label %122

122:                                              ; preds = %120, %111
  %123 = load i32, ptr %8, align 4, !tbaa !7
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %175, label %125

125:                                              ; preds = %122
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7.120, ptr noundef nonnull %5) #24
  br label %175

127:                                              ; preds = %105
  %128 = load i32, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i32, ptr %9, align 4, !tbaa !7
  %132 = add nsw i32 %131, 2
  %133 = icmp sgt i32 %131, 1048574
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  store i32 1, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef 1048576) #24
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi i32 [ 1048575, %134 ], [ %132, %130 ]
  store i32 %137, ptr %9, align 4, !tbaa !7
  br label %138

138:                                              ; preds = %136, %127
  %139 = load i32, ptr %8, align 4, !tbaa !7
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %175, label %141

141:                                              ; preds = %138
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7.120, ptr noundef nonnull %5) #24
  br label %175

143:                                              ; preds = %105
  %144 = load i32, ptr %8, align 4, !tbaa !7
  %145 = icmp eq i32 %144, 0
  %146 = load i32, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %147 = icmp eq i32 %146, 0
  br i1 %145, label %157, label %148

148:                                              ; preds = %143
  br i1 %147, label %149, label %175

149:                                              ; preds = %148
  %150 = load i32, ptr %9, align 4, !tbaa !7
  %151 = add nsw i32 %150, 4
  %152 = icmp sgt i32 %150, 1048572
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  store i32 1, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef 1048576) #24
  br label %155

155:                                              ; preds = %153, %149
  %156 = phi i32 [ 1048575, %153 ], [ %151, %149 ]
  store i32 %156, ptr %9, align 4, !tbaa !7
  br label %175

157:                                              ; preds = %143
  br i1 %147, label %158, label %175

158:                                              ; preds = %157
  %159 = load i32, ptr %9, align 4, !tbaa !7
  %160 = add nsw i32 %159, 3
  %161 = icmp sgt i32 %159, 1048573
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  store i32 1, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.110, i32 noundef 1048576) #24
  br label %164

164:                                              ; preds = %162, %158
  %165 = phi i32 [ 1048575, %162 ], [ %160, %158 ]
  store i32 %165, ptr %9, align 4, !tbaa !7
  br label %175

166:                                              ; preds = %105
  %167 = load i32, ptr %8, align 4, !tbaa !7
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7.120, ptr noundef nonnull %5) #24
  br label %171

171:                                              ; preds = %169, %166
  %172 = getelementptr inbounds %struct.OP_ENTRY, ptr %106, i64 0, i32 4
  %173 = load i32, ptr %172, align 4, !tbaa !45
  %174 = load ptr, ptr %6, align 8, !tbaa !11
  call void (i32, ptr, ptr, ptr, ptr, ptr, ...) @DO_PSEUDO(i32 noundef %173, ptr noundef nonnull %4, ptr noundef %174, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2) #23
  br label %175

175:                                              ; preds = %171, %164, %157, %155, %148, %141, %138, %125, %122, %109, %105, %102
  %176 = load i32, ptr @SEEN_END_OP, align 4, !tbaa !7
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i8, ptr %5, align 1
  %180 = icmp eq i8 %179, 0
  %181 = load i8, ptr %4, align 1
  %182 = icmp eq i8 %181, 0
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %184, label %185

184:                                              ; preds = %185, %178, %175
  br label %11, !llvm.loop !46

185:                                              ; preds = %178
  store i32 0, ptr @SEEN_END_OP, align 4, !tbaa !7
  %186 = call i64 @fwrite(ptr nonnull @.str.8.121, i64 52, i64 1, ptr %2)
  br label %184

187:                                              ; preds = %11
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef %2, i32 noundef 1) #23
  %188 = load i32, ptr @SEEN_END_OP, align 4, !tbaa !7
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = call i64 @fwrite(ptr nonnull @.str.9.122, i64 59, i64 1, ptr %2)
  br label %192

192:                                              ; preds = %190, %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @PASS2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca [7 x i8], align 1
  %13 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 0, ptr %8, align 4, !tbaa !7
  store i8 95, ptr @MODULE_NAME, align 1, !tbaa !13
  store i8 0, ptr getelementptr inbounds ([9 x i8], ptr @MODULE_NAME, i64 0, i64 1), align 1, !tbaa !13
  tail call void (...) @RESET_MISSING_LABEL_NAME() #23
  tail call void (...) @INITIALIZE_TEXT_RECORD() #23
  %14 = getelementptr inbounds [9 x i8], ptr %13, i64 0, i64 8
  %15 = getelementptr inbounds [3 x i8], ptr %11, i64 0, i64 2
  br label %16

16:                                               ; preds = %152, %5
  %17 = call i32 @feof(ptr noundef %0) #23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %157

19:                                               ; preds = %16
  %20 = call i32 @getc(ptr noundef %0) #24
  %21 = shl i32 %20, 24
  %22 = ashr exact i32 %21, 24
  switch i32 %22, label %149 [
    i32 112, label %23
    i32 101, label %35
    i32 116, label %38
    i32 69, label %66
    i32 82, label %82
    i32 77, label %85
    i32 100, label %87
    i32 115, label %136
  ]

23:                                               ; preds = %19
  %24 = load i32, ptr %8, align 4, !tbaa !7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @fputc(i32 10, ptr %2)
  br label %28

28:                                               ; preds = %26, %23
  store i32 0, ptr %8, align 4, !tbaa !7
  call void (ptr, ptr, ptr, ptr, ptr, ...) @CODE(ptr noundef %0, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #23
  %29 = load i32, ptr %4, align 4, !tbaa !7
  %30 = icmp ne i32 %29, 0
  %31 = load i32, ptr %8, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  %34 = zext i1 %33 to i32
  store i32 %34, ptr %4, align 4, !tbaa !7
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %2, i32 noundef 2) #23
  br label %152

35:                                               ; preds = %19
  store i32 1, ptr %8, align 4, !tbaa !7
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  %36 = load ptr, ptr %6, align 8, !tbaa !11
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.1.125, ptr noundef %36) #24
  store i32 1, ptr %4, align 4, !tbaa !7
  br label %152

38:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  %39 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.2.126, ptr noundef nonnull %10, ptr noundef nonnull %9) #23
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  %40 = load i8, ptr %9, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 87
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load ptr, ptr %6, align 8, !tbaa !11
  %44 = load i32, ptr %10, align 4, !tbaa !7
  call void (ptr, i32, ptr, ...) @ADD_TO_TEXT_RECORD(ptr noundef %43, i32 noundef %44, ptr noundef %1) #23
  br label %65

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %11) #22
  store i8 0, ptr %15, align 1, !tbaa !13
  %46 = load ptr, ptr %6, align 8, !tbaa !11
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = sext i8 %47 to i32
  %49 = call i32 (i32, ...) @eoln(i32 noundef %48) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %51, %45
  %52 = phi i32 [ %57, %51 ], [ 0, %45 ]
  %53 = load ptr, ptr %6, align 8, !tbaa !11
  %54 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %53, i64 noundef 2) #23
  %55 = load i32, ptr %10, align 4, !tbaa !7
  %56 = add nsw i32 %55, %52
  call void (ptr, i32, ptr, ...) @ADD_TO_TEXT_RECORD(ptr noundef nonnull %11, i32 noundef %56, ptr noundef %1) #23
  %57 = add nuw nsw i32 %52, 1
  %58 = load ptr, ptr %6, align 8, !tbaa !11
  %59 = getelementptr inbounds i8, ptr %58, i64 2
  store ptr %59, ptr %6, align 8, !tbaa !11
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = sext i8 %60 to i32
  %62 = call i32 (i32, ...) @eoln(i32 noundef %61) #23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %51, label %64, !llvm.loop !47

64:                                               ; preds = %51, %45
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %11) #22
  br label %65

65:                                               ; preds = %64, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  br label %152

66:                                               ; preds = %19
  call void (ptr, ...) @PRT_TEXT_RECORD(ptr noundef %1) #23
  call void (...) @INITIALIZE_TEXT_RECORD() #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef %1, i32 noundef 2) #23
  %67 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @MAIN_ROUTINE, ptr noundef nonnull dereferenceable(1) @MODULE_NAME) #25
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %12) #22
  %70 = load i32, ptr @START_ADDRESS, align 4, !tbaa !7
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull @MODULE_NAME, ptr noundef %3) #23
  %74 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !35
  store i32 %75, ptr @START_ADDRESS, align 4, !tbaa !7
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i32 [ %75, %72 ], [ %70, %69 ]
  call void (i32, i32, i32, ptr, ...) @NUM_TO_STR(i32 noundef %77, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %12) #23
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3.127, ptr noundef nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %12) #22
  br label %81

79:                                               ; preds = %66
  %80 = call i64 @fwrite(ptr nonnull @.str.4.128, i64 2, i64 1, ptr %1)
  br label %81

81:                                               ; preds = %79, %76
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  br label %152

82:                                               ; preds = %19
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  %83 = load ptr, ptr %6, align 8, !tbaa !11
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.5.129, i32 noundef 82, ptr noundef %83) #24
  br label %152

85:                                               ; preds = %19
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  %86 = load ptr, ptr %6, align 8, !tbaa !11
  call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef %86) #23
  br label %152

87:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %13) #22
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  %88 = call i32 @fputc(i32 68, ptr %1)
  store i8 0, ptr %14, align 1, !tbaa !13
  %89 = load ptr, ptr %6, align 8, !tbaa !11
  %90 = load i8, ptr %89, align 1, !tbaa !13
  %91 = sext i8 %90 to i32
  %92 = call i32 (i32, ...) @eoln(i32 noundef %91) #23
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %134

94:                                               ; preds = %127, %87
  %95 = load ptr, ptr %6, align 8, !tbaa !11
  %96 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %95, i64 noundef 8) #23
  %97 = call i32 @fputs(ptr nonnull %13, ptr %1)
  br label %98

98:                                               ; preds = %104, %94
  %99 = phi i32 [ 7, %94 ], [ %105, %104 ]
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [9 x i8], ptr %13, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !13
  %103 = icmp eq i8 %102, 32
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = add nsw i32 %99, -1
  %106 = icmp ugt i32 %99, 1
  br i1 %106, label %98, label %107, !llvm.loop !48

107:                                              ; preds = %104, %98
  %108 = phi i32 [ 0, %104 ], [ %99, %98 ]
  %109 = add nuw nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [9 x i8], ptr %13, i64 0, i64 %110
  store i8 0, ptr %111, align 1, !tbaa !13
  %112 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %13, ptr noundef %3) #23
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.8.130, ptr noundef nonnull %13) #24
  %116 = call i64 @fwrite(ptr nonnull @.str.9.131, i64 6, i64 1, ptr %1)
  store i32 1, ptr %4, align 4, !tbaa !7
  br label %127

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %112, i64 0, i32 4
  %119 = load i32, ptr %118, align 4, !tbaa !41
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %117
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.10.132, ptr noundef nonnull %13) #24
  %123 = call i64 @fwrite(ptr nonnull @.str.9.131, i64 6, i64 1, ptr %1)
  store i32 1, ptr %4, align 4, !tbaa !7
  br label %127

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %112, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !35
  call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %126, i32 noundef 16, i32 noundef 6, ptr noundef %1) #23
  br label %127

127:                                              ; preds = %124, %121, %114
  %128 = load ptr, ptr %6, align 8, !tbaa !11
  %129 = getelementptr inbounds i8, ptr %128, i64 8
  store ptr %129, ptr %6, align 8, !tbaa !11
  %130 = load i8, ptr %129, align 1, !tbaa !13
  %131 = sext i8 %130 to i32
  %132 = call i32 (i32, ...) @eoln(i32 noundef %131) #23
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %94, label %134, !llvm.loop !49

134:                                              ; preds = %127, %87
  %135 = call i32 @fputc(i32 10, ptr %1)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %13) #22
  br label %152

136:                                              ; preds = %19
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  call void (ptr, ...) @BLANK_STR(ptr noundef nonnull %7) #23
  %137 = load ptr, ptr %6, align 8, !tbaa !11
  %138 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #25
  %139 = call ptr @strncpy(ptr noundef nonnull %7, ptr noundef %137, i64 noundef %138) #23
  %140 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @MODULE_NAME, ptr noundef nonnull dereferenceable(1) %137) #23
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11.133, ptr noundef nonnull %7) #24
  %142 = load ptr, ptr %6, align 8, !tbaa !11
  %143 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef %142, ptr noundef %142, ptr noundef %3) #23
  %144 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !35
  call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %145, i32 noundef 16, i32 noundef 6, ptr noundef %1) #23
  %146 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %143, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !50
  call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %147, i32 noundef 16, i32 noundef 6, ptr noundef %1) #23
  %148 = call i32 @fputc(i32 10, ptr %1)
  br label %152

149:                                              ; preds = %19
  %150 = call i32 @feof(ptr noundef %0) #23
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %153, %149, %136, %134, %85, %82, %81, %65, %35, %28
  br label %16, !llvm.loop !51

153:                                              ; preds = %149
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %6, ptr noundef %0) #23
  %154 = call i32 @puts(ptr nonnull dereferenceable(1) @str.134)
  %155 = load ptr, ptr %6, align 8, !tbaa !11
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.129, i32 noundef %22, ptr noundef %155) #24
  br label %152

157:                                              ; preds = %16
  call void (ptr, ...) @PRT_TEXT_RECORD(ptr noundef %1) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_BYTE(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = load i32, ptr %2, align 4, !tbaa !7
  %7 = load i8, ptr %1, align 1, !tbaa !13
  %8 = icmp ne i8 %7, 88
  switch i8 %7, label %112 [
    i8 88, label %9
    i8 67, label %9
  ]

9:                                                ; preds = %5, %5
  %10 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 39, ptr %10, align 1, !tbaa !13
  %11 = getelementptr inbounds i8, ptr %1, i64 2
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = icmp eq i8 %12, 39
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = sext i8 %12 to i32
  %16 = tail call i32 (i32, ...) @eoln(i32 noundef %15) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %1, i64 2
  br label %58

20:                                               ; preds = %9
  %21 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 49, i64 1, ptr %4)
  br label %114

22:                                               ; preds = %39, %14
  %23 = phi i64 [ %41, %39 ], [ 2, %14 ]
  %24 = phi i32 [ %45, %39 ], [ 0, %14 ]
  %25 = phi i32 [ %40, %39 ], [ 0, %14 ]
  %26 = getelementptr inbounds i8, ptr %1, i64 %23
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = sext i8 %27 to i32
  %29 = icmp eq i8 %27, 39
  br i1 %29, label %50, label %30

30:                                               ; preds = %22
  br i1 %8, label %39, label %31

31:                                               ; preds = %30
  %32 = icmp eq i32 %25, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = tail call i32 (i32, i32, ...) @CHAR_TO_DIGIT(i32 noundef %28, i32 noundef 16) #23
  %35 = icmp eq i32 %34, -1
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i1 [ true, %31 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i32 [ %38, %36 ], [ %25, %30 ]
  %41 = add nuw nsw i64 %23, 1
  %42 = getelementptr inbounds i8, ptr %1, i64 %41
  %43 = icmp eq i32 %40, 0
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %24, %44
  %46 = load i8, ptr %42, align 1, !tbaa !13
  %47 = sext i8 %46 to i32
  %48 = tail call i32 (i32, ...) @eoln(i32 noundef %47) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %22, label %50, !llvm.loop !52

50:                                               ; preds = %39, %22
  %51 = phi i32 [ %25, %22 ], [ %40, %39 ]
  %52 = phi i32 [ %24, %22 ], [ %45, %39 ]
  %53 = phi i64 [ %23, %22 ], [ %41, %39 ]
  %54 = getelementptr inbounds i8, ptr %1, i64 %53
  %55 = icmp eq i32 %51, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = tail call i64 @fwrite(ptr nonnull @.str.1.136, i64 33, i64 1, ptr %4)
  br label %58

58:                                               ; preds = %56, %50, %18
  %59 = phi i1 [ true, %18 ], [ false, %56 ], [ true, %50 ]
  %60 = phi ptr [ %19, %18 ], [ %54, %56 ], [ %54, %50 ]
  %61 = phi i64 [ 2, %18 ], [ %53, %56 ], [ %53, %50 ]
  %62 = phi i32 [ 0, %18 ], [ %52, %56 ], [ %52, %50 ]
  %63 = load i8, ptr %60, align 1, !tbaa !13
  %64 = icmp eq i8 %63, 39
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = getelementptr inbounds i8, ptr %60, i64 1
  br i1 %8, label %79, label %72

67:                                               ; preds = %58
  %68 = tail call i64 @fwrite(ptr nonnull @.str.2.137, i64 73, i64 1, ptr %4)
  %69 = and i32 %62, 1
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %8, i1 true, i1 %70
  br i1 %71, label %97, label %75

72:                                               ; preds = %65
  %73 = and i32 %62, 1
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72, %67
  %76 = phi ptr [ %66, %72 ], [ %60, %67 ]
  %77 = tail call i64 @fwrite(ptr nonnull @.str.3.138, i64 66, i64 1, ptr %4)
  br label %97

78:                                               ; preds = %72
  br i1 %59, label %80, label %97

79:                                               ; preds = %65
  br i1 %59, label %84, label %97

80:                                               ; preds = %78
  %81 = lshr i32 %62, 1
  tail call void (ptr, i32, ptr, ...) @CHANGE_LOCATION(ptr noundef nonnull %2, i32 noundef %81, ptr noundef %4) #23
  %82 = load i8, ptr %60, align 1, !tbaa !13
  store i8 0, ptr %60, align 1, !tbaa !13
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.4.139, i32 noundef %6, ptr noundef nonnull %11) #24
  store i8 %82, ptr %60, align 1, !tbaa !13
  br label %97

84:                                               ; preds = %79
  tail call void (ptr, i32, ptr, ...) @CHANGE_LOCATION(ptr noundef nonnull %2, i32 noundef %62, ptr noundef %4) #23
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5.140, i32 noundef %6) #24
  %86 = add nsw i64 %61, -1
  %87 = getelementptr inbounds i8, ptr %1, i64 %86
  %88 = icmp slt i64 %61, 3
  br i1 %88, label %95, label %89

89:                                               ; preds = %89, %84
  %90 = phi ptr [ %93, %89 ], [ %11, %84 ]
  %91 = load i8, ptr %90, align 1, !tbaa !13
  %92 = sext i8 %91 to i32
  tail call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %92, i32 noundef 16, i32 noundef 2, ptr noundef %4) #23
  %93 = getelementptr inbounds i8, ptr %90, i64 1
  %94 = icmp ugt ptr %93, %87
  br i1 %94, label %95, label %89, !llvm.loop !53

95:                                               ; preds = %89, %84
  %96 = tail call i32 @fputc(i32 10, ptr %4)
  br label %97

97:                                               ; preds = %95, %80, %79, %78, %75, %67
  %98 = phi ptr [ %66, %79 ], [ %76, %75 ], [ %66, %80 ], [ %66, %95 ], [ %66, %78 ], [ %60, %67 ]
  %99 = load i8, ptr %98, align 1, !tbaa !13
  %100 = sext i8 %99 to i32
  %101 = tail call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %100) #23
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i8, ptr %98, align 1, !tbaa !13
  %105 = sext i8 %104 to i32
  %106 = tail call i32 (i32, ...) @eoln(i32 noundef %105) #23
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i8, ptr %98, align 1, !tbaa !13
  %110 = sext i8 %109 to i32
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %110) #24
  br label %114

112:                                              ; preds = %5
  %113 = tail call i64 @fwrite(ptr nonnull @.str.8.142, i64 56, i64 1, ptr %4)
  br label %114

114:                                              ; preds = %112, %108, %103, %97, %20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_CSECT(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = load i32, ptr @SEEN_END_OP, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9.143, ptr noundef nonnull @MODULE_NAME) #24
  tail call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  store i32 0, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %10 = tail call i64 @fwrite(ptr nonnull @.str.10.144, i64 2, i64 1, ptr %4)
  %11 = tail call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull @MODULE_NAME, ptr noundef %3) #23
  %12 = load i32, ptr %2, align 4, !tbaa !7
  %13 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %11, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !35
  %15 = sub nsw i32 %12, %14
  %16 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %11, i64 0, i32 3
  store i32 %15, ptr %16, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %8, %5
  store i32 0, ptr @SEEN_END_OP, align 4, !tbaa !7
  %18 = load i8, ptr %0, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = tail call i64 @fwrite(ptr nonnull @.str.12.145, i64 36, i64 1, ptr %4)
  tail call void (ptr, ptr, ...) @GET_NEXT_MISSING_LABEL(ptr noundef nonnull %0, ptr noundef %3) #23
  br label %22

22:                                               ; preds = %20, %17
  %23 = tail call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %3) #23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = tail call i64 @fwrite(ptr nonnull @.str.13.146, i64 42, i64 1, ptr %4)
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @MODULE_NAME, ptr noundef nonnull dereferenceable(1) %0) #23
  br label %35

28:                                               ; preds = %22
  %29 = tail call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %0, ptr noundef %3) #23
  %30 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %29, i64 0, i32 2
  store i32 0, ptr %30, align 4, !tbaa !35
  %31 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %29, i64 0, i32 1
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %0) #23
  %33 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @MODULE_NAME, ptr noundef nonnull dereferenceable(1) %0) #23
  store i32 0, ptr %2, align 4, !tbaa !7
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.14.147, ptr noundef nonnull @MODULE_NAME) #24
  br label %35

35:                                               ; preds = %28, %25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_END(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [9 x i8], align 1
  %7 = alloca ptr, align 8
  store i32 1, ptr @SEEN_END_OP, align 4, !tbaa !7
  %8 = load i8, ptr %1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr %1, ptr %7, align 8, !tbaa !11
  call void (ptr, ptr, ptr, i32, ...) @GET_LABEL(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef 0) #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %11 = load i8, ptr %6, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %10
  %14 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MAIN_ROUTINE, ptr noundef nonnull %6, ptr noundef %3) #23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.15.148, ptr noundef nonnull %6) #24
  br label %33

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %14, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !41
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.16.149, ptr noundef nonnull %6) #24
  br label %33

24:                                               ; preds = %18
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  store i32 0, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %25 = call i64 @fwrite(ptr nonnull @.str.10.144, i64 2, i64 1, ptr %4)
  %26 = load i32, ptr @START_ADDRESS, align 4, !tbaa !7
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %14, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !35
  store i32 %30, ptr @START_ADDRESS, align 4, !tbaa !7
  br label %33

31:                                               ; preds = %24
  %32 = call i64 @fwrite(ptr nonnull @.str.17.150, i64 54, i64 1, ptr %4)
  br label %33

33:                                               ; preds = %31, %28, %22, %16
  %34 = load ptr, ptr %7, align 8, !tbaa !11
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = sext i8 %35 to i32
  %37 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %36) #23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load ptr, ptr %7, align 8, !tbaa !11
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = sext i8 %41 to i32
  %43 = call i32 (i32, ...) @eoln(i32 noundef %42) #23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load ptr, ptr %7, align 8, !tbaa !11
  %47 = icmp eq ptr %46, %1
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i8, ptr %46, align 1, !tbaa !13
  %50 = sext i8 %49 to i32
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %50) #24
  br label %54

52:                                               ; preds = %10
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.18.151, ptr noundef nonnull %1) #24
  br label %54

54:                                               ; preds = %52, %48, %45, %39, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %6) #22
  br label %57

55:                                               ; preds = %5
  tail call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  store i32 0, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %56 = tail call i64 @fwrite(ptr nonnull @.str.10.144, i64 2, i64 1, ptr %4)
  br label %57

57:                                               ; preds = %55, %54
  %58 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull @MODULE_NAME, ptr noundef %3) #23
  %59 = load i32, ptr %2, align 4, !tbaa !7
  %60 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %58, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !35
  %62 = sub nsw i32 %59, %61
  %63 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %58, i64 0, i32 3
  store i32 %62, ptr %63, align 8, !tbaa !50
  store i16 95, ptr @MODULE_NAME, align 1
  store i32 0, ptr %2, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_EQU(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = load i8, ptr %0, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i64 @fwrite(ptr nonnull @.str.20.152, i64 34, i64 1, ptr %4)
  br label %37

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 1, ptr %7, align 4, !tbaa !7
  store ptr %1, ptr %6, align 8, !tbaa !11
  %13 = tail call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %0, ptr noundef %3) #23
  %14 = load i32, ptr %2, align 4, !tbaa !7
  %15 = call i32 (ptr, i32, i32, ptr, ptr, ...) @GET_EXPRESSION(ptr noundef nonnull %6, i32 noundef 21, i32 noundef %14, ptr noundef %3, ptr noundef nonnull %7) #23
  %16 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %13, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !35
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %13, i64 0, i32 4
  store i32 1, ptr %17, align 4, !tbaa !41
  %18 = load ptr, ptr %6, align 8, !tbaa !11
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = sext i8 %19 to i32
  %21 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %20) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %12
  %24 = load ptr, ptr %6, align 8, !tbaa !11
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = sext i8 %25 to i32
  %27 = call i32 (i32, ...) @eoln(i32 noundef %26) #23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load ptr, ptr %6, align 8, !tbaa !11
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %30, align 1, !tbaa !13
  %34 = sext i8 %33 to i32
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %34) #24
  br label %36

36:                                               ; preds = %32, %29, %23, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  br label %37

37:                                               ; preds = %36, %10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_EXTDEF(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %8) #22
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call i64 @fwrite(ptr nonnull @.str.21.153, i64 39, i64 1, ptr %4)
  br label %52

13:                                               ; preds = %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  tail call void (ptr, i32, ...) @INITIALIZE_RECORD(ptr noundef nonnull @.str.22.154, i32 noundef 41) #23
  br label %14

14:                                               ; preds = %21, %13
  %15 = phi ptr [ %25, %21 ], [ %1, %13 ]
  call void (ptr, ptr, ptr, i32, ...) @GET_LABEL(ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %6, i32 noundef 0) #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %16 = load i8, ptr %7, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %.lcssa2 = phi ptr [ %15, %14 ]
  %.lcssa = phi i1 [ %17, %14 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !11
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %20, ptr %6, align 8, !tbaa !11
  br label %28

21:                                               ; preds = %14
  call void (ptr, ...) @BLANK_STR(ptr noundef nonnull %8) #23
  %22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %23 = call ptr @strncpy(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef %22) #23
  call void (ptr, ptr, ...) @ADD_TO_RECORD(ptr noundef nonnull %8, ptr noundef %4) #23
  %24 = load ptr, ptr %6, align 8, !tbaa !11
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %25, ptr %6, align 8, !tbaa !11
  %26 = load i8, ptr %24, align 1, !tbaa !13
  %27 = icmp eq i8 %26, 44
  br i1 %27, label %14, label %28, !llvm.loop !54

28:                                               ; preds = %21, %18
  %.lcssa3 = phi ptr [ %15, %21 ], [ %.lcssa2, %18 ]
  %.lcssa1 = phi i1 [ %17, %21 ], [ %.lcssa, %18 ]
  call void (ptr, ...) @PRT_RECORD(ptr noundef %4) #23
  %29 = load ptr, ptr %6, align 8, !tbaa !11
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = sext i8 %30 to i32
  %32 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %31) #23
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load ptr, ptr %6, align 8, !tbaa !11
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = sext i8 %36 to i32
  %38 = call i32 (i32, ...) @eoln(i32 noundef %37) #23
  %39 = icmp ne i32 %38, 0
  %40 = or i1 %.lcssa1, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %6, align 8, !tbaa !11
  %43 = icmp eq ptr %42, %.lcssa3
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %42, i64 -1
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = sext i8 %46 to i32
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %47) #24
  br label %52

49:                                               ; preds = %34, %28
  br i1 %.lcssa1, label %50, label %52

50:                                               ; preds = %49
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.23.155, ptr noundef nonnull %.lcssa3) #24
  br label %52

52:                                               ; preds = %50, %49, %44, %41, %11
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_EXTREF(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %8) #22
  %9 = load i8, ptr %1, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = tail call i64 @fwrite(ptr nonnull @.str.24.156, i64 39, i64 1, ptr %4)
  br label %62

13:                                               ; preds = %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  tail call void (ptr, i32, ...) @INITIALIZE_RECORD(ptr noundef nonnull @.str.25.157, i32 noundef 73) #23
  br label %14

14:                                               ; preds = %24, %13
  %15 = phi ptr [ %28, %24 ], [ %1, %13 ]
  call void (ptr, ptr, ptr, i32, ...) @GET_LABEL(ptr noundef nonnull %7, ptr noundef nonnull %15, ptr noundef nonnull %6, i32 noundef 0) #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %16 = load i8, ptr %7, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 (ptr, ptr, i32, i32, ptr, ...) @INSERT_IN_SYM_TAB(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %7, i32 noundef 0, i32 noundef 2, ptr noundef %3) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %14
  %.lcssa2 = phi ptr [ %15, %18 ], [ %15, %14 ]
  %.lcssa = phi i1 [ %17, %18 ], [ %17, %14 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !11
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %23, ptr %6, align 8, !tbaa !11
  br label %31

24:                                               ; preds = %18
  call void (ptr, ...) @BLANK_STR(ptr noundef nonnull %8) #23
  %25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %26 = call ptr @strncpy(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef %25) #23
  call void (ptr, ptr, ...) @ADD_TO_RECORD(ptr noundef nonnull %8, ptr noundef %4) #23
  %27 = load ptr, ptr %6, align 8, !tbaa !11
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %28, ptr %6, align 8, !tbaa !11
  %29 = load i8, ptr %27, align 1, !tbaa !13
  %30 = icmp eq i8 %29, 44
  br i1 %30, label %14, label %31, !llvm.loop !55

31:                                               ; preds = %24, %21
  %.lcssa3 = phi ptr [ %15, %24 ], [ %.lcssa2, %21 ]
  %.lcssa1 = phi i1 [ %17, %24 ], [ %.lcssa, %21 ]
  %32 = phi i1 [ %.lcssa, %21 ], [ false, %24 ]
  %33 = phi i1 [ true, %21 ], [ false, %24 ]
  call void (ptr, ...) @PRT_RECORD(ptr noundef %4) #23
  %34 = load ptr, ptr %6, align 8, !tbaa !11
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = sext i8 %35 to i32
  %37 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %36) #23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load ptr, ptr %6, align 8, !tbaa !11
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = sext i8 %41 to i32
  %43 = call i32 (i32, ...) @eoln(i32 noundef %42) #23
  %44 = icmp ne i32 %43, 0
  %45 = or i1 %33, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %6, align 8, !tbaa !11
  %48 = icmp eq ptr %47, %.lcssa3
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %47, i64 -1
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = sext i8 %51 to i32
  %53 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %52) #24
  br label %54

54:                                               ; preds = %49, %46, %39, %31
  br i1 %.lcssa1, label %57, label %55

55:                                               ; preds = %54
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.23.155, ptr noundef nonnull %.lcssa3) #24
  br label %57

57:                                               ; preds = %55, %54
  br i1 %32, label %58, label %62

58:                                               ; preds = %57
  %59 = load ptr, ptr %6, align 8, !tbaa !11
  %60 = getelementptr inbounds i8, ptr %59, i64 -1
  store i8 0, ptr %60, align 1, !tbaa !13
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.26.158, ptr noundef nonnull %.lcssa3) #24
  br label %62

62:                                               ; preds = %58, %57, %11
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_RESB(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 1, ptr %7, align 4, !tbaa !7
  store ptr %1, ptr %6, align 8, !tbaa !11
  %8 = load i32, ptr %2, align 4, !tbaa !7
  %9 = call i32 (ptr, i32, i32, ptr, ptr, ...) @GET_EXPRESSION(ptr noundef nonnull %6, i32 noundef 21, i32 noundef %8, ptr noundef %3, ptr noundef nonnull %7) #23
  call void (ptr, i32, ptr, ...) @CHANGE_LOCATION(ptr noundef nonnull %2, i32 noundef %9, ptr noundef %4) #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %10 = load ptr, ptr %6, align 8, !tbaa !11
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %12 = sext i8 %11 to i32
  %13 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %12) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !11
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = sext i8 %17 to i32
  %19 = call i32 (i32, ...) @eoln(i32 noundef %18) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8, !tbaa !11
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr %22, align 1, !tbaa !13
  %26 = sext i8 %25 to i32
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %26) #24
  br label %28

28:                                               ; preds = %24, %21, %15, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_RESW(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 1, ptr %7, align 4, !tbaa !7
  store ptr %1, ptr %6, align 8, !tbaa !11
  %8 = load i32, ptr %2, align 4, !tbaa !7
  %9 = call i32 (ptr, i32, i32, ptr, ptr, ...) @GET_EXPRESSION(ptr noundef nonnull %6, i32 noundef 20, i32 noundef %8, ptr noundef %3, ptr noundef nonnull %7) #23
  %10 = mul nsw i32 %9, 3
  call void (ptr, i32, ptr, ...) @CHANGE_LOCATION(ptr noundef nonnull %2, i32 noundef %10, ptr noundef %4) #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %11 = load ptr, ptr %6, align 8, !tbaa !11
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = sext i8 %12 to i32
  %14 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %13) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %5
  %17 = load ptr, ptr %6, align 8, !tbaa !11
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = sext i8 %18 to i32
  %20 = call i32 (i32, ...) @eoln(i32 noundef %19) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 8, !tbaa !11
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr %23, align 1, !tbaa !13
  %27 = sext i8 %26 to i32
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %27) #24
  br label %29

29:                                               ; preds = %25, %22, %16, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_START(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = load i32, ptr @SEEN_END_OP, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9.143, ptr noundef nonnull @MODULE_NAME) #24
  tail call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @MOD_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  store i32 0, ptr @LOCATION_EXCEEDS_MEM_SIZE, align 4, !tbaa !7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.10.144, i64 2, i64 1, ptr %4)
  %12 = tail call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull @MODULE_NAME, ptr noundef %3) #23
  %13 = load i32, ptr %2, align 4, !tbaa !7
  %14 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %12, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !35
  %16 = sub nsw i32 %13, %15
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %12, i64 0, i32 3
  store i32 %16, ptr %17, align 8, !tbaa !50
  br label %18

18:                                               ; preds = %9, %5
  %19 = load i32, ptr @SEEN_START_OP, align 4, !tbaa !7
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.27.159, i64 42, i64 1, ptr %4)
  br label %23

23:                                               ; preds = %21, %18
  store i32 1, ptr @SEEN_START_OP, align 4, !tbaa !7
  store i32 0, ptr @SEEN_END_OP, align 4, !tbaa !7
  %24 = load i8, ptr %0, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.28.160, i64 36, i64 1, ptr %4)
  tail call void (ptr, ptr, ...) @GET_NEXT_MISSING_LABEL(ptr noundef nonnull %0, ptr noundef %3) #23
  br label %28

28:                                               ; preds = %26, %23
  %29 = tail call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %3) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = tail call i64 @fwrite(ptr nonnull @.str.13.146, i64 42, i64 1, ptr %4)
  %33 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @MODULE_NAME, ptr noundef nonnull dereferenceable(1) %0) #23
  br label %69

34:                                               ; preds = %28
  %35 = tail call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @MODULE_NAME, ptr noundef nonnull %0, ptr noundef %3) #23
  store ptr %1, ptr %6, align 8, !tbaa !11
  %36 = call i32 (ptr, i32, i32, ...) @GET_NUM(ptr noundef nonnull %6, i32 noundef 21, i32 noundef 10) #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i64 @fwrite(ptr nonnull @.str.29.161, i64 39, i64 1, ptr %4)
  br label %42

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %35, i64 0, i32 2
  store i32 %36, ptr %41, align 4, !tbaa !35
  br label %42

42:                                               ; preds = %40, %38
  %43 = load ptr, ptr %6, align 8, !tbaa !11
  %44 = load i8, ptr %43, align 1, !tbaa !13
  %45 = sext i8 %44 to i32
  %46 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %45) #23
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load ptr, ptr %6, align 8, !tbaa !11
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = sext i8 %50 to i32
  %52 = call i32 (i32, ...) @eoln(i32 noundef %51) #23
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load ptr, ptr %6, align 8, !tbaa !11
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i8, ptr %55, align 1, !tbaa !13
  %59 = sext i8 %58 to i32
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %59) #24
  br label %61

61:                                               ; preds = %57, %54, %48, %42
  %62 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %35, i64 0, i32 1
  %63 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(1) %0) #23
  %64 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @MODULE_NAME, ptr noundef nonnull dereferenceable(1) %0) #23
  %65 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @MAIN_ROUTINE, ptr noundef nonnull dereferenceable(1) %0) #23
  %66 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %35, i64 0, i32 2
  %67 = load i32, ptr %66, align 4, !tbaa !35
  store i32 %67, ptr %2, align 4, !tbaa !7
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.14.147, ptr noundef nonnull @MODULE_NAME) #24
  br label %69

69:                                               ; preds = %61, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PSEUDO_WORD(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 1, ptr %7, align 4, !tbaa !7
  store ptr %1, ptr %6, align 8, !tbaa !11
  %8 = load i32, ptr %2, align 4, !tbaa !7
  %9 = call i32 (ptr, i32, i32, ptr, ptr, ...) @GET_EXPRESSION(ptr noundef nonnull %6, i32 noundef 24, i32 noundef %8, ptr noundef %3, ptr noundef nonnull %7) #23
  call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %4, i32 noundef 1) #23
  %10 = load i32, ptr %2, align 4, !tbaa !7
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.30.162, i32 noundef %10) #24
  call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %9, i32 noundef 16, i32 noundef 6, ptr noundef %4) #23
  %12 = call i32 @fputc(i32 10, ptr %4)
  call void (ptr, i32, ptr, ...) @CHANGE_LOCATION(ptr noundef nonnull %2, i32 noundef 3, ptr noundef %4) #23
  %13 = load ptr, ptr %6, align 8, !tbaa !11
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = sext i8 %14 to i32
  %16 = call i32 (i32, ...) @IS_BLANK_OR_TAB(i32 noundef %15) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %5
  %19 = load ptr, ptr %6, align 8, !tbaa !11
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = sext i8 %20 to i32
  %22 = call i32 (i32, ...) @eoln(i32 noundef %21) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8, !tbaa !11
  %26 = icmp eq ptr %25, %1
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr %25, align 1, !tbaa !13
  %29 = sext i8 %28 to i32
  %30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.141, i32 noundef %29) #24
  br label %31

31:                                               ; preds = %27, %24, %18, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DO_PSEUDO(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  switch i32 %0, label %17 [
    i32 1, label %7
    i32 2, label %8
    i32 3, label %9
    i32 4, label %10
    i32 5, label %11
    i32 6, label %12
    i32 7, label %13
    i32 8, label %14
    i32 9, label %15
    i32 10, label %16
  ]

7:                                                ; preds = %6
  tail call void @PSEUDO_BYTE(ptr poison, ptr noundef %2, ptr noundef %3, ptr poison, ptr noundef %5) #24
  br label %17

8:                                                ; preds = %6
  tail call void @PSEUDO_CSECT(ptr noundef %1, ptr poison, ptr noundef %3, ptr noundef %4, ptr noundef %5) #24
  br label %17

9:                                                ; preds = %6
  tail call void @PSEUDO_END(ptr poison, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #24
  br label %17

10:                                               ; preds = %6
  tail call void @PSEUDO_EQU(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #24
  br label %17

11:                                               ; preds = %6
  tail call void @PSEUDO_EXTDEF(ptr poison, ptr noundef %2, ptr poison, ptr poison, ptr noundef %5) #24
  br label %17

12:                                               ; preds = %6
  tail call void @PSEUDO_EXTREF(ptr poison, ptr noundef %2, ptr poison, ptr noundef %4, ptr noundef %5) #24
  br label %17

13:                                               ; preds = %6
  tail call void @PSEUDO_RESB(ptr poison, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #24
  br label %17

14:                                               ; preds = %6
  tail call void @PSEUDO_RESW(ptr poison, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #24
  br label %17

15:                                               ; preds = %6
  tail call void @PSEUDO_START(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #24
  br label %17

16:                                               ; preds = %6
  tail call void @PSEUDO_WORD(ptr poison, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #24
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @INITIALIZE_RECORD(ptr nocapture noundef readonly %0, i32 noundef %1) #12 {
  %3 = icmp sgt i32 %1, 80
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %6 = sext i32 %1 to i64
  %7 = icmp ugt i64 %5, %6
  %8 = load i32, ptr @IS_INITIALIZED, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %4, %2
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.167)
  br label %18

13:                                               ; preds = %4
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @INIT_RECORD, ptr noundef nonnull dereferenceable(1) %0) #23
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @RECORD, ptr noundef nonnull dereferenceable(1) %0) #23
  store i32 %1, ptr @MAX_SIZE, align 4, !tbaa !7
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @RECORD) #25
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr @NEXT_COL, align 4, !tbaa !7
  store i32 1, ptr @IS_INITIALIZED, align 4, !tbaa !7
  br label %18

18:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PRT_RECORD(ptr nocapture noundef %0) #12 {
  %2 = load i32, ptr @IS_INITIALIZED, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.8.170)
  br label %12

6:                                                ; preds = %1
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @RECORD, ptr noundef nonnull dereferenceable(1) @INIT_RECORD) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.171, ptr noundef nonnull @RECORD) #24
  br label %11

11:                                               ; preds = %9, %6
  store i32 0, ptr @IS_INITIALIZED, align 4, !tbaa !7
  br label %12

12:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @ADD_TO_RECORD(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #12 {
  %3 = load i32, ptr @IS_INITIALIZED, align 4, !tbaa !7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @NEXT_COL, align 4, !tbaa !7
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %8 = trunc i64 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = load i32, ptr @MAX_SIZE, align 4, !tbaa !7
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  tail call void @PRT_RECORD(ptr noundef %1) #24
  %13 = load i32, ptr @MAX_SIZE, align 4, !tbaa !7
  tail call void @INITIALIZE_RECORD(ptr noundef nonnull @INIT_RECORD, i32 noundef %13) #24
  %14 = load i32, ptr @NEXT_COL, align 4, !tbaa !7
  %15 = add nsw i32 %14, %8
  %16 = load i32, ptr @MAX_SIZE, align 4, !tbaa !7
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12, %5
  %19 = phi i32 [ %9, %5 ], [ %15, %12 ]
  %20 = phi i32 [ %6, %5 ], [ %14, %12 ]
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [81 x i8], ptr @RECORD, i64 0, i64 %21
  %23 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %0) #23
  store i32 %19, ptr @NEXT_COL, align 4, !tbaa !7
  br label %26

24:                                               ; preds = %12, %2
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %26

26:                                               ; preds = %24, %18
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @INITIALIZE_TEXT_RECORD() #12 {
  tail call void @INITIALIZE_RECORD(ptr noundef nonnull @.str.4.176, i32 noundef 60) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PRT_TEXT_RECORD(ptr noundef %0) #0 {
  %2 = load i32, ptr @IS_INITIALIZED, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %16

6:                                                ; preds = %1
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @RECORD, ptr noundef nonnull dereferenceable(1) @INIT_RECORD) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @fputc(i32 84, ptr %0)
  %11 = load i32, ptr @LOCATION, align 4, !tbaa !7
  tail call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %11, i32 noundef 16, i32 noundef 6, ptr noundef %0) #23
  %12 = load i32, ptr @NEXT_COL, align 4, !tbaa !7
  %13 = sdiv i32 %12, 2
  tail call void (i32, i32, i32, ptr, ...) @PRT_NUM(i32 noundef %13, i32 noundef 16, i32 noundef 2, ptr noundef %0) #23
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.171, ptr noundef nonnull @RECORD) #24
  br label %15

15:                                               ; preds = %9, %6
  store i32 0, ptr @IS_INITIALIZED, align 4, !tbaa !7
  br label %16

16:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ADD_TO_TEXT_RECORD(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %5 = trunc i64 %4 to i32
  %6 = load i32, ptr @IS_INITIALIZED, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr @MAX_SIZE, align 4
  %9 = icmp slt i32 %8, %5
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %39, label %11

11:                                               ; preds = %3
  %12 = load i32, ptr @LOCATION, align 4, !tbaa !7
  %13 = load i32, ptr @NEXT_COL, align 4, !tbaa !7
  %14 = sdiv i32 %13, 2
  %15 = add nsw i32 %14, %12
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  tail call void @PRT_TEXT_RECORD(ptr noundef %2) #24
  store i32 %1, ptr @LOCATION, align 4, !tbaa !7
  tail call void @INITIALIZE_RECORD(ptr noundef nonnull @.str.4.176, i32 noundef 60) #24
  %18 = load i32, ptr @NEXT_COL, align 4, !tbaa !7
  %19 = load i32, ptr @MAX_SIZE, align 4, !tbaa !7
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i32 [ %8, %11 ], [ %19, %17 ]
  %22 = phi i32 [ %13, %11 ], [ %18, %17 ]
  %23 = add nsw i32 %22, %5
  %24 = icmp sgt i32 %23, %21
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  tail call void @PRT_TEXT_RECORD(ptr noundef %2) #24
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @RECORD) #25
  %27 = lshr i64 %26, 1
  %28 = load i32, ptr @LOCATION, align 4, !tbaa !7
  %29 = trunc i64 %27 to i32
  %30 = add i32 %28, %29
  store i32 %30, ptr @LOCATION, align 4, !tbaa !7
  tail call void @INITIALIZE_RECORD(ptr noundef nonnull @.str.4.176, i32 noundef 60) #24
  %31 = load i32, ptr @NEXT_COL, align 4, !tbaa !7
  %32 = add nsw i32 %31, %5
  br label %33

33:                                               ; preds = %25, %20
  %34 = phi i32 [ %23, %20 ], [ %32, %25 ]
  %35 = phi i32 [ %22, %20 ], [ %31, %25 ]
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [81 x i8], ptr @RECORD, i64 0, i64 %36
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %0) #23
  store i32 %34, ptr @NEXT_COL, align 4, !tbaa !7
  br label %41

39:                                               ; preds = %3
  %40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %41

41:                                               ; preds = %39, %33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @IS_BLANK_OR_TAB(i32 noundef %0) #18 {
  %2 = shl i32 %0, 24
  %3 = icmp eq i32 %2, 536870912
  %4 = icmp eq i32 %2, 150994944
  %5 = or i1 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @eoln(i32 noundef %0) #18 {
  %2 = and i32 %0, 255
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind optsize uwtable
define internal void @GET_LABEL(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !11
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = sext i8 %6 to i32
  %8 = shl nsw i32 %7, 24
  %9 = add i32 %8, -1610612737
  %10 = icmp ult i32 %9, 452984831
  %11 = add i8 %6, -32
  %12 = select i1 %10, i8 %11, i8 %6
  %13 = add i8 %12, -65
  %14 = icmp ult i8 %13, 26
  br i1 %14, label %15, label %53

15:                                               ; preds = %15, %4
  %16 = phi ptr [ %18, %15 ], [ %5, %4 ]
  %17 = phi i32 [ %34, %15 ], [ 1, %4 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %18, ptr %2, align 8, !tbaa !11
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = sext i8 %19 to i32
  %21 = shl nsw i32 %20, 24
  %22 = add i32 %21, -1610612737
  %23 = icmp ult i32 %22, 452984831
  %24 = add i8 %19, -32
  %25 = select i1 %23, i8 %24, i8 %19
  %26 = add i8 %25, -91
  %27 = icmp ult i8 %26, -26
  %28 = add i8 %25, -58
  %29 = icmp ult i8 %28, -10
  %30 = and i1 %27, %29
  %31 = and i32 %20, 255
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %32, %30
  %34 = add nuw nsw i32 %17, 1
  br i1 %33, label %35, label %15, !llvm.loop !56

35:                                               ; preds = %15
  %.lcssa = phi i32 [ %17, %15 ]
  %36 = icmp ugt i32 %.lcssa, 8
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = icmp eq i32 %3, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = zext i32 %.lcssa to i64
  %41 = getelementptr inbounds i8, ptr %1, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !13
  store i8 0, ptr %41, align 1, !tbaa !13
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %44 = add i64 %43, 80
  %45 = and i64 %44, 4294967295
  %46 = tail call noalias ptr @malloc(i64 noundef %45) #26
  %47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) @.str.187, ptr noundef %1, i32 noundef 8) #23
  tail call void (ptr, ptr, ...) @ADD_TO_END_OF_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %46) #23
  tail call void @free(ptr noundef %46) #23
  store i8 %42, ptr %41, align 1, !tbaa !13
  br label %48

48:                                               ; preds = %39, %37, %35
  %49 = phi i32 [ %.lcssa, %35 ], [ 8, %39 ], [ 8, %37 ]
  %50 = zext i32 %49 to i64
  %51 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1, i64 noundef %50) #23
  %52 = getelementptr inbounds i8, ptr %0, i64 %50
  br label %53

53:                                               ; preds = %48, %4
  %54 = phi ptr [ %52, %48 ], [ %0, %4 ]
  store i8 0, ptr %54, align 1, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @GET_OPCODE_STR(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) #12 {
  %5 = load ptr, ptr %1, align 8, !tbaa !11
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = sext i8 %6 to i32
  %8 = shl nsw i32 %7, 24
  %9 = add i32 %8, -1610612737
  %10 = icmp ult i32 %9, 452984831
  %11 = add i8 %6, -32
  %12 = select i1 %10, i8 %11, i8 %6
  %13 = add i8 %12, -65
  %14 = icmp ult i8 %13, 26
  br i1 %14, label %15, label %46

15:                                               ; preds = %15, %4
  %16 = phi ptr [ %18, %15 ], [ %5, %4 ]
  %17 = phi i32 [ %31, %15 ], [ 1, %4 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %18, ptr %1, align 8, !tbaa !11
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = sext i8 %19 to i32
  %21 = shl nsw i32 %20, 24
  %22 = add i32 %21, -1610612737
  %23 = icmp ult i32 %22, 452984831
  %24 = add i8 %19, -32
  %25 = select i1 %23, i8 %24, i8 %19
  %26 = add i8 %25, -91
  %27 = icmp ult i8 %26, -26
  %28 = and i32 %20, 255
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %29, %27
  %31 = add nuw nsw i32 %17, 1
  br i1 %30, label %32, label %15, !llvm.loop !57

32:                                               ; preds = %15
  %.lcssa = phi i32 [ %17, %15 ]
  %33 = icmp ugt i32 %.lcssa, 8
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  %35 = icmp eq i32 %2, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = zext i32 %.lcssa to i64
  %38 = getelementptr inbounds i8, ptr %5, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !13
  store i8 0, ptr %38, align 1, !tbaa !13
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1.188, ptr noundef nonnull %5, i32 noundef 8) #24
  store i8 %39, ptr %38, align 1, !tbaa !13
  br label %41

41:                                               ; preds = %36, %34, %32
  %42 = phi i32 [ %.lcssa, %32 ], [ 8, %36 ], [ 8, %34 ]
  %43 = zext i32 %42 to i64
  %44 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %5, i64 noundef %43) #23
  %45 = getelementptr inbounds i8, ptr %0, i64 %43
  br label %46

46:                                               ; preds = %41, %4
  %47 = phi ptr [ %45, %41 ], [ %0, %4 ]
  store i8 0, ptr %47, align 1, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @SCAN_LINE(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  tail call void (ptr, ptr, ...) @GET_LINE(ptr noundef %1, ptr noundef %8) #23
  %11 = load ptr, ptr %1, align 8, !tbaa !11
  store ptr %11, ptr %5, align 8, !tbaa !11
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2.191, i32 noundef %0, ptr noundef %11) #24
  %15 = load ptr, ptr %5, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %11, %9 ]
  store ptr %17, ptr %10, align 8, !tbaa !11
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = icmp eq i8 %18, 46
  br i1 %19, label %72, label %20

20:                                               ; preds = %16
  call void @GET_LABEL(ptr noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %10, i32 noundef %6) #24
  tail call void (ptr, ptr, i32, ...) @OUTPUT_BUFFER(ptr noundef nonnull @ERROR_REC_BUF, ptr noundef %7, i32 noundef 1) #23
  %21 = load ptr, ptr %10, align 8, !tbaa !11
  %22 = load i8, ptr %21, align 1, !tbaa !13
  %23 = sext i8 %22 to i32
  switch i8 %22, label %24 [
    i8 32, label %32
    i8 9, label %32
  ]

24:                                               ; preds = %20
  %25 = and i32 %23, 255
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  br i1 %12, label %28, label %30

28:                                               ; preds = %27
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.3.192, i32 noundef %23) #24
  br label %30

30:                                               ; preds = %28, %27
  %31 = getelementptr inbounds i8, ptr %21, i64 1
  br label %32

32:                                               ; preds = %30, %24, %20, %20
  %33 = phi ptr [ %21, %24 ], [ %31, %30 ], [ %21, %20 ], [ %21, %20 ]
  br label %34

34:                                               ; preds = %37, %32
  %35 = phi ptr [ %38, %37 ], [ %33, %32 ]
  %36 = load i8, ptr %35, align 1, !tbaa !13
  switch i8 %36, label %41 [
    i8 9, label %37
    i8 32, label %37
    i8 43, label %39
  ]

37:                                               ; preds = %34, %34
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  br label %34, !llvm.loop !58

39:                                               ; preds = %34
  %.lcssa2 = phi ptr [ %35, %34 ]
  %40 = getelementptr inbounds i8, ptr %.lcssa2, i64 1
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %40, %39 ], [ %35, %34 ]
  %43 = phi i32 [ 1, %39 ], [ 0, %34 ]
  store ptr %42, ptr %10, align 8, !tbaa !11
  store i32 %43, ptr %3, align 4, !tbaa !7
  call void @GET_OPCODE_STR(ptr noundef %4, ptr noundef nonnull %10, i32 noundef %6, ptr noundef %7) #24
  %44 = load i32, ptr %3, align 4, !tbaa !7
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8, ptr %4, align 1
  %48 = icmp eq i8 %47, 0
  %49 = and i1 %12, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call i64 @fwrite(ptr nonnull @.str.5.193, i64 45, i64 1, ptr %7)
  br label %52

52:                                               ; preds = %50, %46, %41
  %53 = load ptr, ptr %10, align 8, !tbaa !11
  %54 = load i8, ptr %53, align 1, !tbaa !13
  %55 = sext i8 %54 to i32
  switch i8 %54, label %56 [
    i8 32, label %64
    i8 9, label %64
  ]

56:                                               ; preds = %52
  %57 = and i32 %55, 255
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  br i1 %12, label %60, label %62

60:                                               ; preds = %59
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.6.194, i32 noundef %55) #24
  br label %62

62:                                               ; preds = %60, %59
  %63 = getelementptr inbounds i8, ptr %53, i64 1
  br label %64

64:                                               ; preds = %62, %56, %52, %52
  %65 = phi ptr [ %53, %56 ], [ %63, %62 ], [ %53, %52 ], [ %53, %52 ]
  br label %66

66:                                               ; preds = %69, %64
  %67 = phi ptr [ %70, %69 ], [ %65, %64 ]
  %68 = load i8, ptr %67, align 1, !tbaa !13
  switch i8 %68, label %71 [
    i8 9, label %69
    i8 32, label %69
  ]

69:                                               ; preds = %66, %66
  %70 = getelementptr inbounds i8, ptr %67, i64 1
  br label %66, !llvm.loop !59

71:                                               ; preds = %66
  %.lcssa = phi ptr [ %67, %66 ]
  store ptr %.lcssa, ptr %5, align 8, !tbaa !11
  br label %73

72:                                               ; preds = %16
  store i8 0, ptr %2, align 1, !tbaa !13
  store i32 0, ptr %3, align 4, !tbaa !7
  store i8 0, ptr %4, align 1, !tbaa !13
  br label %73

73:                                               ; preds = %72, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @GETCHR(ptr nocapture noundef %0) #12 {
  %2 = tail call i32 @getc(ptr noundef %0) #24
  %3 = trunc i32 %2 to i8
  store i8 %3, ptr @CH, align 1, !tbaa !13
  %4 = load ptr, ptr @FRONT, align 8, !tbaa !11
  %5 = load ptr, ptr @BACK, align 8, !tbaa !11
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = load i32, ptr @LEX_LEN, align 4, !tbaa !7
  %10 = add nsw i32 %9, -3
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %14, ptr @FRONT, align 8, !tbaa !11
  store i8 %3, ptr %14, align 1, !tbaa !13
  %15 = load ptr, ptr @FRONT, align 8, !tbaa !11
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 0, ptr %16, align 1, !tbaa !13
  br label %17

17:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @GET_LINE(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) #12 {
  store i8 0, ptr @LEXEME, align 16, !tbaa !13
  store ptr @LEXEME, ptr @BACK, align 8, !tbaa !11
  store ptr getelementptr inbounds ([129 x i8], ptr @LEXEME, i64 -1, i64 128), ptr @FRONT, align 8, !tbaa !11
  tail call void @GETCHR(ptr noundef %1) #24
  %3 = load i8, ptr @CH, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 10
  br i1 %4, label %11, label %5

5:                                                ; preds = %8, %2
  %6 = tail call i32 @feof(ptr noundef %1) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  tail call void @GETCHR(ptr noundef %1) #24
  %9 = load i8, ptr @CH, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %11, label %5, !llvm.loop !60

11:                                               ; preds = %8, %5, %2
  %12 = load ptr, ptr @FRONT, align 8, !tbaa !11
  store i8 0, ptr %12, align 1, !tbaa !13
  store ptr @LEXEME, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @INIT_SYM_TAB(ptr nocapture noundef writeonly %0) #17 {
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @LOOK_UP_SYMBOL(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #20 {
  %4 = load ptr, ptr %2, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %14, %3
  %7 = phi ptr [ %16, %14 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %7, i64 0, i32 1
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %7, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !61

18:                                               ; preds = %14, %11, %3
  %19 = phi ptr [ null, %3 ], [ null, %14 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @INSERT_IN_SYM_TAB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #12 {
  %6 = tail call ptr @LOOK_UP_SYMBOL(ptr noundef %0, ptr noundef %1, ptr noundef %4) #24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #26
  %10 = load ptr, ptr %4, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 1
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #23
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #23
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 2
  store i32 %2, ptr %15, align 4, !tbaa !35
  %16 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 4
  store i32 %3, ptr %17, align 4, !tbaa !41
  store ptr %9, ptr %4, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %8, %5
  %19 = phi i32 [ 1, %8 ], [ 0, %5 ]
  ret i32 %19
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree willreturn }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!16 = !{!17, !12, i64 0}
!17 = !{!"BUFFER_TYPE", !12, i64 0, !12, i64 8, !8, i64 16}
!18 = !{!19, !12, i64 8}
!19 = !{!"BUFFER", !12, i64 0, !12, i64 8}
!20 = !{!19, !12, i64 0}
!21 = distinct !{!21, !15}
!22 = !{!17, !12, i64 8}
!23 = !{!17, !8, i64 16}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = !{!31, !12, i64 16}
!31 = !{!"OP_ENTRY", !12, i64 0, !9, i64 8, !12, i64 16, !9, i64 24, !8, i64 28}
!32 = !{!31, !9, i64 8}
!33 = !{!31, !9, i64 24}
!34 = !{i32 -1, i32 10}
!35 = !{!36, !8, i64 20}
!36 = !{!"SYMBOL_TABLE_ENTRY", !9, i64 0, !9, i64 9, !8, i64 20, !8, i64 24, !9, i64 28, !12, i64 32}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = !{!36, !9, i64 28}
!42 = !{!31, !12, i64 0}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = !{!31, !8, i64 28}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = !{!36, !8, i64 24}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = !{!36, !12, i64 32}
