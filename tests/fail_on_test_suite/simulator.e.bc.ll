; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/simulator/simulator.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.COMMAND_TYPE = type { ptr, ptr, i32 }
%struct.INSTR_INFO = type { ptr, i32, i32 }
%struct.DEVICE_ENTRY = type { i32, ptr }
%struct.BUFFER = type { ptr, ptr }
%struct.SYMBOL_TABLE_ENTRY = type { [9 x i8], [9 x i8], i32, i32, i32, ptr }
%struct.BUFFER_ELEMENT = type { i32, i32, ptr }

@str = private unnamed_addr constant [29 x i8] c"NUM_TO_STR called illegally.\00", align 1
@NUM_BREAK_POINTS = internal global i32 0, align 4
@TRACE = internal global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Expected an decimal, found '%s'. Ignoring command.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Expected an identifier, found '%s'. Ignoring command.\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Unknown identifier, found '%s'. Ignoring command.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"   Found $%c. Ignoring command.\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Expected an hexidecimal, found '%s'. Ignoring command.\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"   Found %s. Ignoring command.\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"Expected end of statement, found '%s'. Ignoring command.\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Set \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Register %s = \00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c" is a legal memory [word] address.\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Location %s = \00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BREAK_POINTS = internal global [17 x i32] zeroinitializer, align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"Set B\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"= \00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Address specified \00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c" out of range. No break point set.\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"All \00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c" breakpoints are in use.\0A\00", align 1
@SORTED_BREAK_POINTS = internal global [17 x i32] zeroinitializer, align 16
@.str.27 = private unnamed_addr constant [30 x i8] c" is not a legal break point.\0A\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"Expected a number 0 - \00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c". Command ignored.\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Break point \00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c" is not set. Command ignored.\0A\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Removed break point \00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Break point encountered at \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Instr\00", align 1
@.str.62 = private unnamed_addr constant [62 x i8] c"Expected valid mode (H,D, or I). Found %s. Ignoring command.\0A\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"STEP\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"BREAK\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"LOC\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"RB\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"RESET\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"RUN\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"MODE\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"PROCEED\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"UNTRACE\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@COMMANDS = internal global [11 x %struct.COMMAND_TYPE] [%struct.COMMAND_TYPE { ptr @.str.63, ptr @.str.64, i32 1 }, %struct.COMMAND_TYPE { ptr @.str.65, ptr @.str.66, i32 2 }, %struct.COMMAND_TYPE { ptr @.str.67, ptr @.str.68, i32 3 }, %struct.COMMAND_TYPE { ptr @.str.69, ptr @.str.70, i32 4 }, %struct.COMMAND_TYPE { ptr @.str.71, ptr @.str.72, i32 5 }, %struct.COMMAND_TYPE { ptr @.str.73, ptr @.str.74, i32 6 }, %struct.COMMAND_TYPE { ptr @.str.75, ptr @.str.76, i32 7 }, %struct.COMMAND_TYPE { ptr @.str.77, ptr @.str.78, i32 8 }, %struct.COMMAND_TYPE { ptr @.str.79, ptr @.str.80, i32 9 }, %struct.COMMAND_TYPE { ptr @.str.81, ptr @.str.82, i32 10 }, %struct.COMMAND_TYPE { ptr @.str.83, ptr @.str.84, i32 11 }], align 16
@.str.85 = private unnamed_addr constant [5 x i8] c"%s> \00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"'%s' is not a legal command. Ignoring it.\0A\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"error code =\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@str.1 = private unnamed_addr constant [52 x i8] c"Expected an type-in mode specifier ($C, $D, or $S).\00", align 1
@str.99 = private unnamed_addr constant [51 x i8] c"Expected an type-in mode specifier ($D, $S or $R).\00", align 1
@str.100 = private unnamed_addr constant [41 x i8] c"Expected an type-in mode specifier ($D).\00", align 1
@str.101 = private unnamed_addr constant [47 x i8] c"Expected an type-in mode specifier ($D or $S).\00", align 1
@str.102 = private unnamed_addr constant [56 x i8] c"Expected a valid register name (A,X,L,B,S,T,SW, or PC).\00", align 1
@str.103 = private unnamed_addr constant [21 x i8] c"No break points set.\00", align 1
@str.105 = private unnamed_addr constant [39 x i8] c"Can not continue. Instruction ignored.\00", align 1
@str.106 = private unnamed_addr constant [18 x i8] c"List of commands:\00", align 1
@str.107 = private unnamed_addr constant [40 x i8] c"   Short      Long            Function\0A\00", align 1
@str.108 = private unnamed_addr constant [57 x i8] c"   B<addr>    BREAK<addr>     Set break point at <addr>.\00", align 1
@str.109 = private unnamed_addr constant [57 x i8] c"   B?         BREAK?          List out the break points.\00", align 1
@str.110 = private unnamed_addr constant [51 x i8] c"   H          HELP            Displays this table.\00", align 1
@str.111 = private unnamed_addr constant [73 x i8] c"   L<loc>     LOC<loc>        Examines contents of memory and registers.\00", align 1
@str.112 = private unnamed_addr constant [73 x i8] c"   L<loc>=<v> LOC<loc>=<v>    Examines contents of memory and registers.\00", align 1
@str.113 = private unnamed_addr constant [49 x i8] c"   M<mode>    MODE<mode>      Set type out mode.\00", align 1
@str.114 = private unnamed_addr constant [56 x i8] c"   P          PROCEED         Proceed from break point.\00", align 1
@str.115 = private unnamed_addr constant [45 x i8] c"   Q          QUIT            Exit Debugger.\00", align 1
@str.116 = private unnamed_addr constant [62 x i8] c"   R          RUN             Start execution at entry point.\00", align 1
@str.117 = private unnamed_addr constant [55 x i8] c"   RB<num>    RESET<num>      Remve break point <num>.\00", align 1
@str.118 = private unnamed_addr constant [55 x i8] c"   S          STEP            Execute one instruction.\00", align 1
@str.119 = private unnamed_addr constant [51 x i8] c"   T          TRACE           Trace the execution.\00", align 1
@str.120 = private unnamed_addr constant [58 x i8] c"   U          UNTRACE         Stop tracing the execution.\00", align 1
@str.121 = private unnamed_addr constant [34 x i8] c"<addr> = memory address or label.\00", align 1
@str.122 = private unnamed_addr constant [44 x i8] c"<loc>  = memory address, label or register.\00", align 1
@str.123 = private unnamed_addr constant [59 x i8] c"<mode> = H (hexidecimal), D (decimal), or I (instruction).\00", align 1
@str.124 = private unnamed_addr constant [62 x i8] c"<v>    = hexidecimal number, decimal number, or 1 character.\0A\00", align 1
@str.125 = private unnamed_addr constant [17 x i8] c"Trace is now on.\00", align 1
@str.126 = private unnamed_addr constant [21 x i8] c"Trace is already on.\00", align 1
@str.127 = private unnamed_addr constant [22 x i8] c"Trace is already off.\00", align 1
@str.128 = private unnamed_addr constant [18 x i8] c"Trace is now off.\00", align 1
@str.129 = private unnamed_addr constant [45 x i8] c"Unexpected end of command. Ignoring command.\00", align 1
@str.130 = private unnamed_addr constant [25 x i8] c"Segment length exceeded.\00", align 1
@str.131 = private unnamed_addr constant [30 x i8] c"Segment-protection violation.\00", align 1
@str.132 = private unnamed_addr constant [15 x i8] c"Segment fault.\00", align 1
@str.133 = private unnamed_addr constant [12 x i8] c"Page fault.\00", align 1
@str.134 = private unnamed_addr constant [20 x i8] c"Aritmetic overflow.\00", align 1
@str.135 = private unnamed_addr constant [29 x i8] c"Memory-protection violation.\00", align 1
@str.136 = private unnamed_addr constant [22 x i8] c"Address out of range.\00", align 1
@str.137 = private unnamed_addr constant [37 x i8] c"Privileged instruction in user mode.\00", align 1
@str.138 = private unnamed_addr constant [21 x i8] c"Illegal instruction.\00", align 1
@str.139 = private unnamed_addr constant [42 x i8] c"Type HELP for the list of legal commands.\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Set A to \00", align 1
@.str.1.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.8.7 = private unnamed_addr constant [9 x i8] c"Jump to \00", align 1
@.str.9.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15.9 = private unnamed_addr constant [5 x i8] c"Put \00", align 1
@.str.16.10 = private unnamed_addr constant [21 x i8] c" into L and jump to \00", align 1
@.str.17.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18.12 = private unnamed_addr constant [10 x i8] c"Set B to \00", align 1
@.str.19.13 = private unnamed_addr constant [10 x i8] c"Set L to \00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Set S to \00", align 1
@.str.21.14 = private unnamed_addr constant [10 x i8] c"Set T to \00", align 1
@.str.22.15 = private unnamed_addr constant [10 x i8] c"Set X to \00", align 1
@.str.25.16 = private unnamed_addr constant [9 x i8] c"RSUB to \00", align 1
@.str.27.17 = private unnamed_addr constant [7 x i8] c" into \00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Set CC to <. Marked Device \00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c" as in use.\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c" and set CC to =.\0A\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c" and set CC to <.\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c" and set CC to >.\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"Wrote ASCII char \00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" to device \00", align 1
@str.6 = private unnamed_addr constant [13 x i8] c"Set CC to >.\00", align 1
@str.48 = private unnamed_addr constant [13 x i8] c"Set CC to <.\00", align 1
@str.50 = private unnamed_addr constant [28 x i8] c"Attempted division by zero.\00", align 1
@str.52 = private unnamed_addr constant [30 x i8] c"J m, m is an illegal address.\00", align 1
@str.54 = private unnamed_addr constant [32 x i8] c"JEQ m, m is an illegal address.\00", align 1
@str.57 = private unnamed_addr constant [32 x i8] c"JGT m, m is an illegal address.\00", align 1
@str.59 = private unnamed_addr constant [31 x i8] c"Returning to Operating System.\00", align 1
@str.61 = private unnamed_addr constant [17 x i8] c"No action taken.\00", align 1
@str.62 = private unnamed_addr constant [33 x i8] c"JSUB m, m is an illegal address.\00", align 1
@str.64 = private unnamed_addr constant [19 x i8] c"RD illegal device.\00", align 1
@str.65 = private unnamed_addr constant [26 x i8] c"RSUB to Operating System.\00", align 1
@str.66 = private unnamed_addr constant [32 x i8] c"JLT m, m is an illegal address.\00", align 1
@str.67 = private unnamed_addr constant [32 x i8] c"STA m, m is an illegal address.\00", align 1
@str.68 = private unnamed_addr constant [32 x i8] c"STB m, m is an illegal address.\00", align 1
@str.69 = private unnamed_addr constant [33 x i8] c"STI is a privileged instruction.\00", align 1
@str.70 = private unnamed_addr constant [32 x i8] c"STI m, m is an illegal address.\00", align 1
@str.71 = private unnamed_addr constant [32 x i8] c"STL m, m is an illegal address.\00", align 1
@str.72 = private unnamed_addr constant [32 x i8] c"STS m, m is an illegal address.\00", align 1
@str.73 = private unnamed_addr constant [34 x i8] c"STSW is a privileged instruction.\00", align 1
@str.74 = private unnamed_addr constant [33 x i8] c"STSW m, m is an illegal address.\00", align 1
@str.75 = private unnamed_addr constant [32 x i8] c"STT m, m is an illegal address.\00", align 1
@str.76 = private unnamed_addr constant [32 x i8] c"STX m, m is an illegal address.\00", align 1
@str.77 = private unnamed_addr constant [13 x i8] c"Set CC to =.\00", align 1
@str.78 = private unnamed_addr constant [19 x i8] c"TD illegal device.\00", align 1
@str.79 = private unnamed_addr constant [18 x i8] c"X has overflowed.\00", align 1
@str.81 = private unnamed_addr constant [19 x i8] c"WD illegal device.\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Set \00", align 1
@.str.1.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.36 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.3.37 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.8.39 = private unnamed_addr constant [28 x i8] c"Generated SVC interupt %d.\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Set X to \00", align 1
@.str.11.40 = private unnamed_addr constant [19 x i8] c" and set CC to =.\0A\00", align 1
@.str.12.41 = private unnamed_addr constant [19 x i8] c" and set CC to <.\0A\00", align 1
@.str.13.42 = private unnamed_addr constant [19 x i8] c" and set CC to >.\0A\00", align 1
@str.38 = private unnamed_addr constant [13 x i8] c"Set CC to >.\00", align 1
@str.14 = private unnamed_addr constant [13 x i8] c"Set CC to <.\00", align 1
@str.15 = private unnamed_addr constant [13 x i8] c"Set CC to =.\00", align 1
@str.16 = private unnamed_addr constant [28 x i8] c"Attempted division by zero.\00", align 1
@str.17 = private unnamed_addr constant [18 x i8] c"X has overflowed.\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"_GLOBAL \00", align 1
@str.46 = private unnamed_addr constant [50 x i8] c"ERROR: Input is not an executable file. Aborting.\00", align 1
@INTERVAL_TIMER = internal global i32 0, align 4
@.str.93 = private unnamed_addr constant [4 x i8] c"LDA\00", align 1
@.str.1.94 = private unnamed_addr constant [4 x i8] c"LDX\00", align 1
@.str.2.95 = private unnamed_addr constant [4 x i8] c"LDL\00", align 1
@.str.3.96 = private unnamed_addr constant [4 x i8] c"STA\00", align 1
@.str.4.97 = private unnamed_addr constant [4 x i8] c"STX\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"STL\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"SUB\00", align 1
@.str.8.98 = private unnamed_addr constant [4 x i8] c"MUL\00", align 1
@.str.9.99 = private unnamed_addr constant [4 x i8] c"DIV\00", align 1
@.str.10.100 = private unnamed_addr constant [5 x i8] c"COMP\00", align 1
@.str.11.101 = private unnamed_addr constant [4 x i8] c"TIX\00", align 1
@.str.12.102 = private unnamed_addr constant [4 x i8] c"JEQ\00", align 1
@.str.13.103 = private unnamed_addr constant [4 x i8] c"JGT\00", align 1
@.str.14.104 = private unnamed_addr constant [4 x i8] c"JLT\00", align 1
@.str.15.105 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.16.106 = private unnamed_addr constant [4 x i8] c"AND\00", align 1
@.str.17.107 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.18.108 = private unnamed_addr constant [5 x i8] c"JSUB\00", align 1
@.str.19.109 = private unnamed_addr constant [5 x i8] c"RSUB\00", align 1
@.str.20.110 = private unnamed_addr constant [5 x i8] c"LDCH\00", align 1
@.str.21.111 = private unnamed_addr constant [5 x i8] c"STCH\00", align 1
@.str.22.112 = private unnamed_addr constant [5 x i8] c"ADDF\00", align 1
@.str.23.113 = private unnamed_addr constant [5 x i8] c"SUBF\00", align 1
@.str.24.114 = private unnamed_addr constant [5 x i8] c"MULF\00", align 1
@.str.25.115 = private unnamed_addr constant [5 x i8] c"DIVF\00", align 1
@.str.26.116 = private unnamed_addr constant [4 x i8] c"LDB\00", align 1
@.str.27.117 = private unnamed_addr constant [4 x i8] c"LDS\00", align 1
@.str.28.118 = private unnamed_addr constant [4 x i8] c"LDF\00", align 1
@.str.29.119 = private unnamed_addr constant [4 x i8] c"LDT\00", align 1
@.str.30.120 = private unnamed_addr constant [4 x i8] c"STB\00", align 1
@.str.31.121 = private unnamed_addr constant [4 x i8] c"STS\00", align 1
@.str.32.122 = private unnamed_addr constant [4 x i8] c"STF\00", align 1
@.str.33.123 = private unnamed_addr constant [4 x i8] c"STT\00", align 1
@.str.34.124 = private unnamed_addr constant [6 x i8] c"COMPF\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"ADDR\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"SUBR\00", align 1
@.str.38.125 = private unnamed_addr constant [5 x i8] c"MULR\00", align 1
@.str.39.126 = private unnamed_addr constant [5 x i8] c"DIVR\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"COMPR\00", align 1
@.str.41.127 = private unnamed_addr constant [7 x i8] c"SHIFTL\00", align 1
@.str.42.128 = private unnamed_addr constant [7 x i8] c"SHIFTR\00", align 1
@.str.43.129 = private unnamed_addr constant [4 x i8] c"RMO\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"SVC\00", align 1
@.str.45.130 = private unnamed_addr constant [6 x i8] c"CLEAR\00", align 1
@.str.46.131 = private unnamed_addr constant [5 x i8] c"TIXR\00", align 1
@.str.47.132 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"FIX\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"NORM\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"LPS\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"STI\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"WD\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"TD\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"STSW\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"SSK\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"SIO\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"HIO\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"TIO\00", align 1
@INSTR = internal global [64 x %struct.INSTR_INFO] [%struct.INSTR_INFO { ptr @.str.93, i32 3, i32 22 }, %struct.INSTR_INFO { ptr @.str.1.94, i32 3, i32 1 }, %struct.INSTR_INFO { ptr @.str.2.95, i32 3, i32 2 }, %struct.INSTR_INFO { ptr @.str.3.96, i32 3, i32 3 }, %struct.INSTR_INFO { ptr @.str.4.97, i32 3, i32 4 }, %struct.INSTR_INFO { ptr @.str.5, i32 3, i32 5 }, %struct.INSTR_INFO { ptr @.str.6, i32 3, i32 6 }, %struct.INSTR_INFO { ptr @.str.7, i32 3, i32 7 }, %struct.INSTR_INFO { ptr @.str.8.98, i32 3, i32 8 }, %struct.INSTR_INFO { ptr @.str.9.99, i32 3, i32 9 }, %struct.INSTR_INFO { ptr @.str.10.100, i32 3, i32 10 }, %struct.INSTR_INFO { ptr @.str.11.101, i32 3, i32 11 }, %struct.INSTR_INFO { ptr @.str.12.102, i32 3, i32 12 }, %struct.INSTR_INFO { ptr @.str.13.103, i32 3, i32 13 }, %struct.INSTR_INFO { ptr @.str.14.104, i32 3, i32 14 }, %struct.INSTR_INFO { ptr @.str.15.105, i32 3, i32 15 }, %struct.INSTR_INFO { ptr @.str.16.106, i32 3, i32 16 }, %struct.INSTR_INFO { ptr @.str.17.107, i32 3, i32 17 }, %struct.INSTR_INFO { ptr @.str.18.108, i32 3, i32 18 }, %struct.INSTR_INFO { ptr @.str.19.109, i32 3, i32 19 }, %struct.INSTR_INFO { ptr @.str.20.110, i32 3, i32 20 }, %struct.INSTR_INFO { ptr @.str.21.111, i32 3, i32 21 }, %struct.INSTR_INFO { ptr @.str.22.112, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.23.113, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.24.114, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.25.115, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.26.116, i32 3, i32 23 }, %struct.INSTR_INFO { ptr @.str.27.117, i32 3, i32 24 }, %struct.INSTR_INFO { ptr @.str.28.118, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.29.119, i32 3, i32 25 }, %struct.INSTR_INFO { ptr @.str.30.120, i32 3, i32 26 }, %struct.INSTR_INFO { ptr @.str.31.121, i32 3, i32 27 }, %struct.INSTR_INFO { ptr @.str.32.122, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.33.123, i32 3, i32 28 }, %struct.INSTR_INFO { ptr @.str.34.124, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.35, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.36, i32 2, i32 29 }, %struct.INSTR_INFO { ptr @.str.37, i32 2, i32 30 }, %struct.INSTR_INFO { ptr @.str.38.125, i32 2, i32 31 }, %struct.INSTR_INFO { ptr @.str.39.126, i32 2, i32 32 }, %struct.INSTR_INFO { ptr @.str.40, i32 2, i32 33 }, %struct.INSTR_INFO { ptr @.str.41.127, i32 2, i32 34 }, %struct.INSTR_INFO { ptr @.str.42.128, i32 2, i32 35 }, %struct.INSTR_INFO { ptr @.str.43.129, i32 2, i32 36 }, %struct.INSTR_INFO { ptr @.str.44, i32 2, i32 37 }, %struct.INSTR_INFO { ptr @.str.45.130, i32 2, i32 38 }, %struct.INSTR_INFO { ptr @.str.46.131, i32 2, i32 39 }, %struct.INSTR_INFO { ptr @.str.35, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.47.132, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.48, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.49, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.35, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.50, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.51, i32 3, i32 40 }, %struct.INSTR_INFO { ptr @.str.52, i32 3, i32 41 }, %struct.INSTR_INFO { ptr @.str.53, i32 3, i32 42 }, %struct.INSTR_INFO { ptr @.str.54, i32 3, i32 43 }, %struct.INSTR_INFO { ptr @.str.35, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.55, i32 3, i32 44 }, %struct.INSTR_INFO { ptr @.str.56, i32 3, i32 0 }, %struct.INSTR_INFO { ptr @.str.57, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.58, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.59, i32 1, i32 0 }, %struct.INSTR_INFO { ptr @.str.35, i32 1, i32 0 }], align 16
@REG_NAMES = internal global [10 x [3 x i8]] [[3 x i8] c"A\00\00", [3 x i8] c"X\00\00", [3 x i8] c"L\00\00", [3 x i8] c"B\00\00", [3 x i8] c"S\00\00", [3 x i8] c"T\00\00", [3 x i8] c"F\00\00", [3 x i8] c"7\00\00", [3 x i8] c"PC\00", [3 x i8] c"SW\00"], align 16
@PRINT_INSTR = internal global i32 0, align 4
@DEVICE = internal global [256 x %struct.DEVICE_ENTRY] zeroinitializer, align 16
@.str.60 = private unnamed_addr constant [7 x i8] c"%S%S%S\00", align 1
@REGISTER = internal global [10 x i32] zeroinitializer, align 16
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.62.70 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.63.71 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.64.74 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.65.75 = private unnamed_addr constant [17 x i8] c"%s%s [base 10]%s\00", align 1
@.str.66.76 = private unnamed_addr constant [17 x i8] c"%s%s [base 16]%s\00", align 1
@.str.68.83 = private unnamed_addr constant [8 x i8] c"======>\00", align 1
@.str.69.84 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.72.85 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.76.86 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.77.87 = private unnamed_addr constant [18 x i8] c"illegal register,\00", align 1
@.str.78.88 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.79.89 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80.90 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.83.91 = private unnamed_addr constant [16 x i8] c"invalid address\00", align 1
@.str.84.92 = private unnamed_addr constant [3 x i8] c",X\00", align 1
@.str.85.135 = private unnamed_addr constant [7 x i8] c"%d %s \00", align 1
@.str.86.136 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@RETURN_STATUS = internal global i32 1, align 4
@str.63 = private unnamed_addr constant [26 x i8] c"SET_CC called improperly.\00", align 1
@str.88 = private unnamed_addr constant [17 x i8] c"illegal argument\00", align 1
@str.89 = private unnamed_addr constant [17 x i8] c"illegal register\00", align 1
@str.90 = private unnamed_addr constant [22 x i8] c"Address out of range.\00", align 1
@LOCATIONS_USED = internal global %struct.BUFFER zeroinitializer, align 8
@.str.1.142 = private unnamed_addr constant [34 x i8] c"ERROR: Illegal store VALUE = %s.\0A\00", align 1
@.str.2.143 = private unnamed_addr constant [51 x i8] c"ERROR: Illegal store[1] ADDRESS = %d, BYTES = %d.\0A\00", align 1
@str.141 = private unnamed_addr constant [32 x i8] c"CREATE_MEMORY called illegally.\00", align 1
@START_ADDRESS = internal global i32 0, align 4
@.str.1.147 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.2.148 = private unnamed_addr constant [44 x i8] c"Illegal command directive, '%s'. Ignoring.\0A\00", align 1
@SYM_TAB = internal global ptr null, align 8
@MEMORY = internal global ptr null, align 8
@.str.4.150 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5.151 = private unnamed_addr constant [31 x i8] c"%s: No such file or directory\0A\00", align 1
@TYPE_OUT_MODE = internal global [6 x i8] c"Hex\00\00\00", align 4
@MAIN_ROUTINE = internal global [9 x i8] zeroinitializer, align 1
@str.149 = private unnamed_addr constant [27 x i8] c"run: requires a file name.\00", align 1
@str.6.146 = private unnamed_addr constant [22 x i8] c"usage:  run [-n] file\00", align 1
@CH = internal global i8 32, align 1
@LEX_LEN = internal global i32 128, align 4
@FRONT = internal global ptr null, align 8
@BACK = internal global ptr null, align 8
@LEXEME = internal global [129 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @eoln(i8 noundef signext %0) #0 {
  %2 = icmp eq i8 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @CHAR_TO_DIGIT(i8 noundef signext %0, i32 noundef %1) #0 {
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
define internal void @NUM_TO_STR(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  store i8 0, ptr %6, align 1, !tbaa !7
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
  store i8 %22, ptr %20, align 1, !tbaa !7
  %23 = icmp ugt i64 %11, 1
  br i1 %23, label %10, label %24, !llvm.loop !10

24:                                               ; preds = %10, %4
  %25 = phi i32 [ %0, %4 ], [ %14, %10 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %29

29:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @STR_TO_NUM(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #3 {
  store i32 0, ptr %3, align 4, !tbaa !12
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %26, %7
  %10 = phi i32 [ 0, %7 ], [ %28, %26 ]
  %11 = phi i64 [ 0, %7 ], [ %29, %26 ]
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = sext i8 %13 to i32
  %15 = add i8 %13, -48
  %16 = icmp ult i8 %15, 10
  %17 = add nsw i32 %14, -48
  %18 = select i1 %16, i32 %17, i32 -1
  %19 = add i8 %13, -65
  %20 = icmp ult i8 %19, 26
  %21 = add nsw i32 %14, -55
  %22 = select i1 %20, i32 %21, i32 %18
  %23 = icmp slt i32 %22, %2
  %24 = icmp ne i32 %22, -1
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %9
  %27 = mul nsw i32 %10, %2
  %28 = add nsw i32 %27, %22
  store i32 %28, ptr %3, align 4, !tbaa !12
  %29 = add nuw nsw i64 %11, 1
  %30 = icmp ult i64 %29, %8
  %31 = and i1 %30, %25
  br i1 %31, label %9, label %33, !llvm.loop !14

32:                                               ; preds = %9
  store i32 1, ptr %4, align 4, !tbaa !12
  br label %33

33:                                               ; preds = %32, %26, %5
  ret void
}

; Function Attrs: nofree nounwind optsize memory(argmem: read) uwtable
define internal i32 @IS_PREFIX_TO(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %4 = shl i64 %3, 32
  %5 = ashr exact i64 %4, 32
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = trunc i64 %3 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = and i64 %3, 4294967295
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, %12
  br i1 %15, label %23, label %16, !llvm.loop !15

16:                                               ; preds = %13, %11
  %17 = phi i64 [ 0, %11 ], [ %14, %13 ]
  %18 = getelementptr inbounds i8, ptr %0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = getelementptr inbounds i8, ptr %1, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = icmp eq i8 %19, %21
  br i1 %22, label %13, label %23

23:                                               ; preds = %16, %13, %8, %2
  %24 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 0, %16 ], [ 1, %13 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @TYPE_IN(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #6 {
  %4 = alloca [9 x i8], align 1
  store i32 1, ptr %1, align 4, !tbaa !12
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  br label %6

6:                                                ; preds = %9, %3
  %7 = phi ptr [ %10, %9 ], [ %5, %3 ]
  %8 = load i8, ptr %7, align 1, !tbaa !7
  switch i8 %8, label %112 [
    i8 32, label %9
    i8 9, label %9
    i8 36, label %11
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %10, ptr %0, align 8, !tbaa !16
  br label %6, !llvm.loop !18

11:                                               ; preds = %6
  %.lcssa7 = phi ptr [ %7, %6 ]
  %12 = getelementptr inbounds i8, ptr %.lcssa7, i64 1
  store ptr %12, ptr %0, align 8, !tbaa !16
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = sext i8 %13 to i32
  switch i32 %14, label %95 [
    i32 68, label %15
    i32 67, label %37
    i32 83, label %46
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %.lcssa7, i64 2
  store ptr %16, ptr %0, align 8, !tbaa !16
  %17 = load i8, ptr %16, align 1, !tbaa !7
  %18 = tail call i32 @CHAR_TO_DIGIT(i8 noundef signext %17, i32 noundef 10) #22
  %19 = icmp eq i32 %18, -1
  %20 = load ptr, ptr %0, align 8, !tbaa !16
  br i1 %19, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %20) #23
  br label %95

23:                                               ; preds = %29, %15
  %24 = phi ptr [ %36, %29 ], [ %20, %15 ]
  %25 = phi i32 [ %34, %29 ], [ 0, %15 ]
  %26 = load i8, ptr %24, align 1, !tbaa !7
  %27 = tail call i32 @CHAR_TO_DIGIT(i8 noundef signext %26, i32 noundef 10) #22
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %91, label %29

29:                                               ; preds = %23
  %30 = mul nsw i32 %25, 10
  %31 = load ptr, ptr %0, align 8, !tbaa !16
  %32 = load i8, ptr %31, align 1, !tbaa !7
  %33 = tail call i32 @CHAR_TO_DIGIT(i8 noundef signext %32, i32 noundef 10) #22
  %34 = add nsw i32 %33, %30
  %35 = load ptr, ptr %0, align 8, !tbaa !16
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr %0, align 8, !tbaa !16
  br label %23, !llvm.loop !19

37:                                               ; preds = %11
  %38 = icmp eq i32 %2, 3
  br i1 %38, label %39, label %95

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %.lcssa7, i64 2
  store ptr %40, ptr %0, align 8, !tbaa !16
  %41 = load i8, ptr %40, align 1, !tbaa !7
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %91, label %43

43:                                               ; preds = %39
  %44 = sext i8 %41 to i32
  %45 = getelementptr inbounds i8, ptr %.lcssa7, i64 3
  store ptr %45, ptr %0, align 8, !tbaa !16
  br label %91

46:                                               ; preds = %11
  %47 = icmp eq i32 %2, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %98

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %.lcssa7, i64 2
  br label %51

51:                                               ; preds = %54, %49
  %52 = phi ptr [ %50, %49 ], [ %55, %54 ]
  store ptr %52, ptr %0, align 8, !tbaa !16
  %53 = load i8, ptr %52, align 1, !tbaa !7
  switch i8 %53, label %56 [
    i8 32, label %54
    i8 9, label %54
  ]

54:                                               ; preds = %51, %51
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  br label %51, !llvm.loop !18

56:                                               ; preds = %51
  %.lcssa3 = phi ptr [ %52, %51 ]
  %.lcssa2 = phi i8 [ %53, %51 ]
  %57 = add i8 %.lcssa2, -65
  %58 = icmp ult i8 %57, 26
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %.lcssa3) #23
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %132

61:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #24
  br label %62

62:                                               ; preds = %68, %61
  %63 = phi i64 [ 0, %61 ], [ %71, %68 ]
  %64 = phi ptr [ %.lcssa3, %61 ], [ %70, %68 ]
  %65 = load i8, ptr %64, align 1, !tbaa !7
  %66 = add i8 %65, -65
  %67 = icmp ult i8 %66, 26
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds [9 x i8], ptr %4, i64 0, i64 %63
  store i8 %65, ptr %69, align 1, !tbaa !7
  %70 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %70, ptr %0, align 8, !tbaa !16
  %71 = add nuw nsw i64 %63, 1
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %82, label %62, !llvm.loop !20

73:                                               ; preds = %62
  %.lcssa = phi i64 [ %63, %62 ]
  %74 = and i64 %.lcssa, 4294967288
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = and i64 %.lcssa, 4294967295
  %78 = getelementptr i8, ptr %4, i64 %77
  %79 = sub nsw i64 7, %.lcssa
  %80 = and i64 %79, 4294967295
  %81 = add nuw nsw i64 %80, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %78, i8 32, i64 %81, i1 false), !tbaa !7
  br label %82

82:                                               ; preds = %76, %73, %68
  %83 = getelementptr inbounds [9 x i8], ptr %4, i64 0, i64 8
  store i8 0, ptr %83, align 1, !tbaa !7
  %84 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @.str.2, ptr noundef nonnull %4, ptr noundef nonnull @SYM_TAB) #22
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %4) #23
  store i32 0, ptr %1, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #24
  br label %132

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %84, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #24
  br label %91

91:                                               ; preds = %88, %43, %39, %23
  %92 = phi i32 [ 0, %39 ], [ %44, %43 ], [ %90, %88 ], [ %25, %23 ]
  %93 = load i32, ptr %1, align 4, !tbaa !12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %132

95:                                               ; preds = %37, %21, %11
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ %92, %91 ], [ 0, %95 ]
  switch i32 %2, label %106 [
    i32 0, label %102
    i32 2, label %98
    i32 1, label %100
    i32 3, label %101
  ]

98:                                               ; preds = %96, %48
  %99 = phi i32 [ 0, %48 ], [ %97, %96 ]
  br label %102

100:                                              ; preds = %96
  br label %102

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %100, %98, %96
  %103 = phi ptr [ @str.1, %101 ], [ @str.99, %100 ], [ @str.100, %98 ], [ @str.101, %96 ]
  %104 = phi i32 [ %97, %101 ], [ %97, %100 ], [ %99, %98 ], [ %97, %96 ]
  %105 = call i32 @puts(ptr nonnull dereferenceable(1) %103)
  br label %106

106:                                              ; preds = %102, %96
  %107 = phi i32 [ %97, %96 ], [ %104, %102 ]
  %108 = load ptr, ptr %0, align 8, !tbaa !16
  %109 = load i8, ptr %108, align 1, !tbaa !7
  %110 = sext i8 %109 to i32
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %110) #23
  br label %132

112:                                              ; preds = %6
  %.lcssa4 = phi i8 [ %8, %6 ]
  %113 = tail call i32 @CHAR_TO_DIGIT(i8 noundef signext %.lcssa4, i32 noundef 16) #22
  %114 = icmp eq i32 %113, -1
  %115 = load ptr, ptr %0, align 8, !tbaa !16
  br i1 %114, label %116, label %118

116:                                              ; preds = %112
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %115) #23
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %132

118:                                              ; preds = %124, %112
  %119 = phi ptr [ %131, %124 ], [ %115, %112 ]
  %120 = phi i32 [ %129, %124 ], [ 0, %112 ]
  %121 = load i8, ptr %119, align 1, !tbaa !7
  %122 = tail call i32 @CHAR_TO_DIGIT(i8 noundef signext %121, i32 noundef 16) #22
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %132, label %124

124:                                              ; preds = %118
  %125 = shl nsw i32 %120, 4
  %126 = load ptr, ptr %0, align 8, !tbaa !16
  %127 = load i8, ptr %126, align 1, !tbaa !7
  %128 = tail call i32 @CHAR_TO_DIGIT(i8 noundef signext %127, i32 noundef 16) #22
  %129 = add nsw i32 %128, %125
  %130 = load ptr, ptr %0, align 8, !tbaa !16
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  store ptr %131, ptr %0, align 8, !tbaa !16
  br label %118, !llvm.loop !23

132:                                              ; preds = %118, %116, %106, %91, %86, %59
  %133 = phi i32 [ 0, %59 ], [ %92, %91 ], [ %107, %106 ], [ 0, %116 ], [ 0, %86 ], [ %120, %118 ]
  ret i32 %133
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nounwind optsize uwtable
define internal void @EXAMINE(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi ptr [ %10, %9 ], [ %0, %2 ]
  %8 = load i8, ptr %7, align 1, !tbaa !7
  switch i8 %8, label %11 [
    i8 32, label %9
    i8 9, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  br label %6, !llvm.loop !18

11:                                               ; preds = %6
  %.lcssa4 = phi ptr [ %7, %6 ]
  %.lcssa3 = phi i8 [ %8, %6 ]
  store ptr %.lcssa4, ptr %3, align 8, !tbaa !16
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa4) #21
  %13 = icmp ugt i64 %12, 1
  %14 = icmp eq i8 %.lcssa3, 36
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %.lcssa4, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !7
  %19 = icmp eq i8 %18, 82
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %.lcssa4, i64 2
  store ptr %21, ptr %3, align 8, !tbaa !16
  %22 = load i8, ptr %21, align 1, !tbaa !7
  %23 = sext i8 %22 to i32
  switch i32 %23, label %38 [
    i32 65, label %41
    i32 88, label %24
    i32 76, label %25
    i32 66, label %26
    i32 83, label %27
    i32 84, label %32
    i32 80, label %33
  ]

24:                                               ; preds = %20
  br label %41

25:                                               ; preds = %20
  br label %41

26:                                               ; preds = %20
  br label %41

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %.lcssa4, i64 3
  %29 = load i8, ptr %28, align 1, !tbaa !7
  %30 = icmp eq i8 %29, 87
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  store ptr %28, ptr %3, align 8, !tbaa !16
  br label %41

32:                                               ; preds = %20
  br label %41

33:                                               ; preds = %20
  %34 = getelementptr inbounds i8, ptr %.lcssa4, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !7
  %36 = icmp eq i8 %35, 67
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store ptr %34, ptr %3, align 8, !tbaa !16
  br label %41

38:                                               ; preds = %33, %20
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.102)
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %21) #23
  br label %176

41:                                               ; preds = %37, %32, %31, %27, %26, %25, %24, %20
  %42 = phi ptr [ %21, %27 ], [ %21, %20 ], [ %21, %24 ], [ %21, %25 ], [ %21, %26 ], [ %28, %31 ], [ %21, %32 ], [ %34, %37 ]
  %43 = phi i64 [ 4, %27 ], [ 0, %20 ], [ 1, %24 ], [ 2, %25 ], [ 3, %26 ], [ 9, %31 ], [ 5, %32 ], [ 8, %37 ]
  %44 = getelementptr inbounds i8, ptr %42, i64 1
  br label %45

45:                                               ; preds = %48, %41
  %46 = phi ptr [ %44, %41 ], [ %49, %48 ]
  %47 = load i8, ptr %46, align 1, !tbaa !7
  switch i8 %47, label %50 [
    i8 32, label %48
    i8 9, label %48
  ]

48:                                               ; preds = %45, %45
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  br label %45, !llvm.loop !18

50:                                               ; preds = %45
  %.lcssa = phi ptr [ %46, %45 ]
  store ptr %.lcssa, ptr %3, align 8, !tbaa !16
  %51 = load i8, ptr %.lcssa, align 1, !tbaa !7
  switch i8 %51, label %65 [
    i8 61, label %52
    i8 0, label %64
  ]

52:                                               ; preds = %50
  %53 = getelementptr inbounds i8, ptr %.lcssa, i64 1
  store ptr %53, ptr %3, align 8, !tbaa !16
  %54 = call i32 @TYPE_IN(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 3) #23
  store i32 %54, ptr %4, align 4, !tbaa !12
  %55 = load i32, ptr %5, align 4, !tbaa !12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %176, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8, !tbaa !16
  br label %59

59:                                               ; preds = %62, %57
  %60 = phi ptr [ %63, %62 ], [ %58, %57 ]
  %61 = load i8, ptr %60, align 1, !tbaa !7
  switch i8 %61, label %65 [
    i8 32, label %62
    i8 9, label %62
    i8 0, label %68
  ]

62:                                               ; preds = %59, %59
  %63 = getelementptr inbounds i8, ptr %60, i64 1
  br label %59, !llvm.loop !18

64:                                               ; preds = %50
  store i8 0, ptr %44, align 1, !tbaa !7
  br label %72

65:                                               ; preds = %59, %50
  %66 = phi ptr [ %.lcssa, %50 ], [ %60, %59 ]
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %66) #23
  br label %176

68:                                               ; preds = %59
  store i8 0, ptr %44, align 1, !tbaa !7
  %69 = load i32, ptr %4, align 4, !tbaa !12
  %70 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %43
  store i32 %69, ptr %70, align 4, !tbaa !12
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #23
  br label %72

72:                                               ; preds = %68, %64
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %.lcssa4) #23
  %74 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %43
  %75 = load i32, ptr %74, align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15, i32 noundef %75, ptr noundef nonnull @.str.16) #22
  br label %176

76:                                               ; preds = %16, %11
  %77 = call i32 @TYPE_IN(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 1) #23
  %78 = load ptr, ptr %3, align 8, !tbaa !16
  br label %79

79:                                               ; preds = %82, %76
  %80 = phi ptr [ %83, %82 ], [ %78, %76 ]
  %81 = load i8, ptr %80, align 1, !tbaa !7
  switch i8 %81, label %84 [
    i8 32, label %82
    i8 9, label %82
  ]

82:                                               ; preds = %79, %79
  %83 = getelementptr inbounds i8, ptr %80, i64 1
  br label %79, !llvm.loop !18

84:                                               ; preds = %79
  %.lcssa2 = phi ptr [ %80, %79 ]
  %.lcssa1 = phi i8 [ %81, %79 ]
  %85 = load i32, ptr %5, align 4, !tbaa !12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %176, label %87

87:                                               ; preds = %84
  %88 = icmp slt i32 %77, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %87
  %90 = add nuw nsw i32 %77, 2
  %91 = icmp ugt i32 %77, 1048573
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %87
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15, i32 noundef %77, ptr noundef nonnull @.str.17) #22
  br label %176

93:                                               ; preds = %89
  switch i8 %.lcssa1, label %111 [
    i8 61, label %94
    i8 0, label %106
  ]

94:                                               ; preds = %93
  %95 = getelementptr inbounds i8, ptr %.lcssa2, i64 1
  store ptr %95, ptr %3, align 8, !tbaa !16
  %96 = call i32 @TYPE_IN(ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef 3) #23
  store i32 %96, ptr %4, align 4, !tbaa !12
  %97 = load i32, ptr %5, align 4, !tbaa !12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %176, label %99

99:                                               ; preds = %94
  %100 = load ptr, ptr %3, align 8, !tbaa !16
  br label %101

101:                                              ; preds = %104, %99
  %102 = phi ptr [ %105, %104 ], [ %100, %99 ]
  %103 = load i8, ptr %102, align 1, !tbaa !7
  switch i8 %103, label %111 [
    i8 32, label %104
    i8 9, label %104
    i8 0, label %114
  ]

104:                                              ; preds = %101, %101
  %105 = getelementptr inbounds i8, ptr %102, i64 1
  br label %101, !llvm.loop !18

106:                                              ; preds = %93
  store i8 0, ptr %78, align 1, !tbaa !7
  %107 = zext i32 %77 to i64
  %108 = add nuw nsw i32 %77, 1
  %109 = zext i32 %108 to i64
  %110 = zext i32 %90 to i64
  br label %147

111:                                              ; preds = %101, %93
  %112 = phi ptr [ %.lcssa2, %93 ], [ %102, %101 ]
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %112) #23
  br label %176

114:                                              ; preds = %101
  store i8 0, ptr %78, align 1, !tbaa !7
  %115 = load i32, ptr %4, align 4, !tbaa !12
  %116 = zext i32 %77 to i64
  %117 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %116
  store i32 %115, ptr %117, align 4, !tbaa !12
  %118 = sdiv i32 %115, 65536
  %119 = trunc i32 %118 to i8
  %120 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %121 = getelementptr inbounds i8, ptr %120, i64 %116
  store i8 %119, ptr %121, align 1, !tbaa !7
  %122 = load i32, ptr %4, align 4, !tbaa !12
  %123 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %124 = getelementptr inbounds i8, ptr %123, i64 %116
  %125 = load i8, ptr %124, align 1, !tbaa !7
  %126 = sext i8 %125 to i32
  %127 = tail call i32 (i32, ...) @INT(i32 noundef %126) #22
  %128 = shl nsw i32 %127, 16
  %129 = sub nsw i32 %122, %128
  %130 = sdiv i32 %129, 256
  %131 = trunc i32 %130 to i8
  %132 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %133 = add nuw nsw i32 %77, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %132, i64 %134
  store i8 %131, ptr %135, align 1, !tbaa !7
  %136 = load i32, ptr %4, align 4, !tbaa !12
  %137 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %138 = getelementptr inbounds i8, ptr %137, i64 %134
  %139 = load i8, ptr %138, align 1, !tbaa !7
  %140 = sext i8 %139 to i32
  %141 = tail call i32 (i32, ...) @INT(i32 noundef %140) #22
  %142 = trunc i32 %136 to i8
  %143 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %144 = sext i32 %90 to i64
  %145 = getelementptr inbounds i8, ptr %143, i64 %144
  store i8 %142, ptr %145, align 1, !tbaa !7
  %146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #23
  br label %147

147:                                              ; preds = %114, %106
  %148 = phi i64 [ %110, %106 ], [ %144, %114 ]
  %149 = phi i64 [ %109, %106 ], [ %134, %114 ]
  %150 = phi i64 [ %107, %106 ], [ %116, %114 ]
  %151 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %152 = getelementptr inbounds i8, ptr %151, i64 %150
  %153 = load i8, ptr %152, align 1, !tbaa !7
  %154 = sext i8 %153 to i32
  %155 = tail call i32 (i32, ...) @INT(i32 noundef %154) #22
  %156 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %157 = getelementptr inbounds i8, ptr %156, i64 %149
  %158 = load i8, ptr %157, align 1, !tbaa !7
  %159 = sext i8 %158 to i32
  %160 = tail call i32 (i32, ...) @INT(i32 noundef %159) #22
  %161 = shl i32 %155, 16
  %162 = shl i32 %160, 8
  %163 = add i32 %162, %161
  %164 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %165 = getelementptr inbounds i8, ptr %164, i64 %148
  %166 = load i8, ptr %165, align 1, !tbaa !7
  %167 = sext i8 %166 to i32
  %168 = tail call i32 (i32, ...) @INT(i32 noundef %167) #22
  %169 = add nsw i32 %163, %168
  store i32 %169, ptr %4, align 4, !tbaa !12
  %170 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %.lcssa4) #23
  %171 = load i8, ptr @TYPE_OUT_MODE, align 4, !tbaa !7
  %172 = icmp eq i8 %171, 73
  br i1 %172, label %174, label %173

173:                                              ; preds = %147
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.15, i32 noundef %169, ptr noundef nonnull @.str.16) #22
  br label %176

174:                                              ; preds = %147
  %175 = tail call i32 @putchar(i32 10)
  call void (i32, i32, ptr, ...) @PRINT_INSTRUCTION(i32 noundef %77, i32 noundef 1, ptr noundef nonnull %4) #22
  br label %176

176:                                              ; preds = %174, %173, %111, %94, %92, %84, %72, %65, %52, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @LIST_BP(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i8, ptr %4, align 1, !tbaa !7
  switch i8 %5, label %8 [
    i8 32, label %6
    i8 9, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !18

8:                                                ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  store i32 1, ptr %1, align 4, !tbaa !12
  %9 = load i8, ptr %.lcssa, align 1, !tbaa !7
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %29

13:                                               ; preds = %8
  %14 = load i32, ptr @NUM_BREAK_POINTS, align 4, !tbaa !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.103)
  br label %29

18:                                               ; preds = %26, %13
  %19 = phi i64 [ %27, %26 ], [ 0, %13 ]
  %20 = getelementptr inbounds [17 x i32], ptr @BREAK_POINTS, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !12
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = trunc i64 %19 to i32
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.21, i32 noundef %24, ptr noundef nonnull @.str.22) #22
  %25 = load i32, ptr %20, align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.15, i32 noundef %25, ptr noundef nonnull @.str.19) #22
  br label %26

26:                                               ; preds = %23, %18
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, 16
  br i1 %28, label %29, label %18, !llvm.loop !24

29:                                               ; preds = %26, %16, %11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @SET_BP(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  %5 = load i8, ptr %0, align 1, !tbaa !7
  %6 = icmp eq i8 %5, 63
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  tail call void @LIST_BP(ptr noundef nonnull %8, ptr noundef %1) #23
  br label %72

9:                                                ; preds = %2
  store i32 1, ptr %1, align 4, !tbaa !12
  %10 = call i32 @TYPE_IN(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #23
  %11 = load ptr, ptr %3, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %15, %9
  %13 = phi ptr [ %16, %15 ], [ %11, %9 ]
  %14 = load i8, ptr %13, align 1, !tbaa !7
  switch i8 %14, label %17 [
    i8 32, label %15
    i8 9, label %15
  ]

15:                                               ; preds = %12, %12
  %16 = getelementptr inbounds i8, ptr %13, i64 1
  br label %12, !llvm.loop !18

17:                                               ; preds = %12
  %.lcssa4 = phi ptr [ %13, %12 ]
  %.lcssa3 = phi i8 [ %14, %12 ]
  %18 = load i32, ptr %4, align 4, !tbaa !12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %72, label %20

20:                                               ; preds = %17
  %21 = icmp ugt i32 %10, 1048575
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.23, i32 noundef %10, ptr noundef nonnull @.str.24) #22
  br label %72

23:                                               ; preds = %20
  %24 = load i32, ptr @NUM_BREAK_POINTS, align 4, !tbaa !12
  %25 = icmp eq i32 %24, 16
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.25, i32 noundef 16, ptr noundef nonnull @.str.26) #22
  br label %72

27:                                               ; preds = %23
  %28 = icmp eq i8 %.lcssa3, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa4) #23
  br label %72

31:                                               ; preds = %31, %27
  %32 = phi i64 [ %36, %31 ], [ 0, %27 ]
  %33 = getelementptr inbounds [17 x i32], ptr @BREAK_POINTS, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !12
  %35 = icmp eq i32 %34, -1
  %36 = add nuw i64 %32, 1
  br i1 %35, label %37, label %31, !llvm.loop !25

37:                                               ; preds = %31
  %.lcssa2 = phi i64 [ %32, %31 ]
  %.lcssa1 = phi ptr [ %33, %31 ]
  %38 = trunc i64 %.lcssa2 to i32
  store i32 %10, ptr %.lcssa1, align 4, !tbaa !12
  %39 = sext i32 %24 to i64
  %40 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !12
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [17 x i32], ptr @BREAK_POINTS, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !12
  %45 = icmp sgt i32 %44, %10
  %46 = icmp sgt i32 %24, 0
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %65

48:                                               ; preds = %48, %37
  %49 = phi i64 [ %54, %48 ], [ %39, %37 ]
  %50 = phi i32 [ %56, %48 ], [ %41, %37 ]
  %51 = add nsw i64 %49, 1
  %52 = and i64 %51, 4294967295
  %53 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %52
  store i32 %50, ptr %53, align 4, !tbaa !12
  %54 = add nsw i64 %49, -1
  %55 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !12
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [17 x i32], ptr @BREAK_POINTS, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !12
  %60 = icmp sgt i32 %59, %10
  %61 = icmp sgt i64 %49, 1
  %62 = and i1 %61, %60
  br i1 %62, label %48, label %63, !llvm.loop !26

63:                                               ; preds = %48
  %.lcssa = phi i64 [ %54, %48 ]
  %64 = trunc i64 %.lcssa to i32
  br label %65

65:                                               ; preds = %63, %37
  %66 = phi i32 [ %24, %37 ], [ %64, %63 ]
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %68
  store i32 %38, ptr %69, align 4, !tbaa !12
  %70 = add nsw i32 %24, 1
  store i32 %70, ptr @NUM_BREAK_POINTS, align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.21, i32 noundef %38, ptr noundef nonnull @.str.22) #22
  %71 = load i32, ptr %.lcssa1, align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.15, i32 noundef %71, ptr noundef nonnull @.str.19) #22
  br label %72

72:                                               ; preds = %65, %29, %26, %22, %17, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @RESET_BP(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  store i32 1, ptr %1, align 4, !tbaa !12
  %5 = call i32 @TYPE_IN(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2) #23
  %6 = load ptr, ptr %3, align 8, !tbaa !16
  br label %7

7:                                                ; preds = %10, %2
  %8 = phi ptr [ %11, %10 ], [ %6, %2 ]
  %9 = load i8, ptr %8, align 1, !tbaa !7
  switch i8 %9, label %12 [
    i8 32, label %10
    i8 9, label %10
  ]

10:                                               ; preds = %7, %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  br label %7, !llvm.loop !18

12:                                               ; preds = %7
  %.lcssa2 = phi ptr [ %8, %7 ]
  %.lcssa1 = phi i8 [ %9, %7 ]
  %13 = load i32, ptr %4, align 4, !tbaa !12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = icmp sgt i32 %5, -1
  %17 = load i32, ptr @NUM_BREAK_POINTS, align 4
  %18 = icmp sgt i32 %17, %5
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15, i32 noundef %5, ptr noundef nonnull @.str.27) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.28, i32 noundef 16, ptr noundef nonnull @.str.29) #22
  br label %56

21:                                               ; preds = %15
  %22 = icmp eq i8 %.lcssa1, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa2) #23
  br label %56

25:                                               ; preds = %21
  %26 = zext i32 %5 to i64
  %27 = getelementptr inbounds [17 x i32], ptr @BREAK_POINTS, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = sext i32 %17 to i64
  br label %33

32:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.30, i32 noundef %5, ptr noundef nonnull @.str.31) #22
  br label %56

33:                                               ; preds = %33, %30
  %34 = phi i64 [ 1, %30 ], [ %40, %33 ]
  %35 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = icmp ne i32 %36, %5
  %38 = icmp sle i64 %34, %31
  %39 = select i1 %37, i1 %38, i1 false
  %40 = add nuw nsw i64 %34, 1
  br i1 %39, label %33, label %41, !llvm.loop !27

41:                                               ; preds = %33
  %.lcssa = phi i64 [ %34, %33 ]
  %42 = trunc i64 %.lcssa to i32
  store i32 -1, ptr %27, align 4, !tbaa !12
  %43 = icmp slt i32 %17, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = add i32 %17, 1
  %46 = zext i32 %45 to i64
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi i64 [ %.lcssa, %44 ], [ %49, %47 ]
  %49 = add nuw nsw i64 %48, 1
  %50 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !12
  %52 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %48
  store i32 %51, ptr %52, align 4, !tbaa !12
  %53 = icmp eq i64 %49, %46
  br i1 %53, label %54, label %47, !llvm.loop !28

54:                                               ; preds = %47, %41
  %55 = add nsw i32 %17, -1
  store i32 %55, ptr @NUM_BREAK_POINTS, align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.32, i32 noundef %5, ptr noundef nonnull @.str.16) #22
  br label %56

56:                                               ; preds = %54, %32, %23, %20, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @AT_BREAK_POINT() #6 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #24
  %2 = load i32, ptr @NUM_BREAK_POINTS, align 4, !tbaa !12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  call void (i32, i32, ptr, ...) @PRINT_INSTRUCTION(i32 noundef %5, i32 noundef 0, ptr noundef nonnull %1) #22
  %6 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %7 = load i32, ptr %1, align 4
  %8 = add nsw i32 %7, %6
  br label %9

9:                                                ; preds = %23, %4
  %10 = phi i32 [ %2, %4 ], [ %27, %23 ]
  %11 = phi i32 [ 1, %4 ], [ %28, %23 ]
  %12 = add nsw i32 %11, %10
  %13 = sdiv i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [17 x i32], ptr @SORTED_BREAK_POINTS, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [17 x i32], ptr @BREAK_POINTS, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !12
  %20 = icmp sge i32 %19, %6
  %21 = icmp slt i32 %19, %8
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %30, label %23

23:                                               ; preds = %9
  %24 = icmp sgt i32 %19, %6
  %25 = add nsw i32 %13, 1
  %26 = add nsw i32 %13, -1
  %27 = select i1 %24, i32 %26, i32 %10
  %28 = select i1 %24, i32 %11, i32 %25
  %29 = icmp sgt i32 %28, %27
  br i1 %29, label %30, label %9, !llvm.loop !29

30:                                               ; preds = %23, %9, %0
  %31 = phi i32 [ 0, %0 ], [ 0, %23 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #24
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal void @RUN_IT(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %0, %2 ], [ %8, %7 ]
  %6 = load i8, ptr %5, align 1, !tbaa !7
  switch i8 %6, label %9 [
    i8 32, label %7
    i8 9, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !18

9:                                                ; preds = %4
  %.lcssa = phi ptr [ %5, %4 ]
  store i32 1, ptr %1, align 4, !tbaa !12
  %10 = load i8, ptr %.lcssa, align 1, !tbaa !7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %46

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr @RETURN_STATUS, align 4, !tbaa !12
  store i32 16777215, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  %15 = load i32, ptr @START_ADDRESS, align 4, !tbaa !12
  store i32 %15, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  tail call void (...) @RESET_DEVICES() #22
  store i32 61440, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  %16 = load i32, ptr @TRACE, align 4, !tbaa !12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  call void (i32, i32, ptr, ...) @PRINT_INSTRUCTION(i32 noundef %19, i32 noundef 1, ptr noundef nonnull %3) #22
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %37, %20
  %24 = call i32 @AT_BREAK_POINT() #23, !range !30
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, ptr @TRACE, align 4, !tbaa !12
  call void (i32, i32, ...) @EXEC(i32 noundef 1, i32 noundef %27) #22
  %28 = load i32, ptr @TRACE, align 4, !tbaa !12
  %29 = icmp ne i32 %28, 0
  %30 = load i32, ptr @RETURN_STATUS, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = call i32 @putchar(i32 10)
  %35 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  call void (i32, i32, ptr, ...) @PRINT_INSTRUCTION(i32 noundef %35, i32 noundef 1, ptr noundef nonnull %3) #22
  %36 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  br label %37

37:                                               ; preds = %33, %26
  %38 = phi i32 [ %36, %33 ], [ %30, %26 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %23, label %45, !llvm.loop !31

40:                                               ; preds = %23
  %41 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.33, i32 noundef %44, ptr noundef nonnull @.str.16) #22
  br label %45

45:                                               ; preds = %43, %40, %37, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  br label %46

46:                                               ; preds = %45, %12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PROCEED(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  br label %4

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %0, %2 ], [ %8, %7 ]
  %6 = load i8, ptr %5, align 1, !tbaa !7
  switch i8 %6, label %9 [
    i8 32, label %7
    i8 9, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !18

9:                                                ; preds = %4
  %.lcssa = phi ptr [ %5, %4 ]
  store i32 1, ptr %1, align 4, !tbaa !12
  %10 = load i8, ptr %.lcssa, align 1, !tbaa !7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %41

14:                                               ; preds = %9
  %15 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  br label %36

19:                                               ; preds = %33, %14
  %20 = load i32, ptr @TRACE, align 4, !tbaa !12
  call void (i32, i32, ...) @EXEC(i32 noundef 1, i32 noundef %20) #22
  %21 = load i32, ptr @TRACE, align 4, !tbaa !12
  %22 = icmp ne i32 %21, 0
  %23 = load i32, ptr @RETURN_STATUS, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = call i32 @putchar(i32 10)
  %28 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  call void (i32, i32, ptr, ...) @PRINT_INSTRUCTION(i32 noundef %28, i32 noundef 1, ptr noundef nonnull %3) #22
  %29 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  br label %30

30:                                               ; preds = %26, %19
  %31 = phi i32 [ %23, %19 ], [ %29, %26 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = call i32 @AT_BREAK_POINT() #23, !range !30
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %19, label %36, !llvm.loop !32

36:                                               ; preds = %33, %30, %17
  %37 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.33, i32 noundef %40, ptr noundef nonnull @.str.16) #22
  br label %41

41:                                               ; preds = %39, %36, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STEP(ptr noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  br label %4

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %0, %2 ], [ %8, %7 ]
  %6 = load i8, ptr %5, align 1, !tbaa !7
  switch i8 %6, label %9 [
    i8 32, label %7
    i8 9, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !18

9:                                                ; preds = %4
  %.lcssa = phi ptr [ %5, %4 ]
  store i32 1, ptr %1, align 4, !tbaa !12
  %10 = load i8, ptr %.lcssa, align 1, !tbaa !7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %25

14:                                               ; preds = %9
  %15 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  br label %25

19:                                               ; preds = %14
  tail call void (i32, i32, ...) @EXEC(i32 noundef 1, i32 noundef 1) #22
  %20 = tail call i32 @putchar(i32 10)
  %21 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  call void (i32, i32, ptr, ...) @PRINT_INSTRUCTION(i32 noundef %24, i32 noundef 1, ptr noundef nonnull %3) #22
  br label %25

25:                                               ; preds = %23, %19, %17, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @HELP(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i8, ptr %4, align 1, !tbaa !7
  switch i8 %5, label %8 [
    i8 32, label %6
    i8 9, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !18

8:                                                ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  store i32 1, ptr %1, align 4, !tbaa !12
  %9 = load i8, ptr %.lcssa, align 1, !tbaa !7
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %34

13:                                               ; preds = %8
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.106)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.107)
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.108)
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.109)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.110)
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.111)
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.112)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.113)
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.114)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.115)
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.116)
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.117)
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.118)
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.119)
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.120)
  %29 = tail call i32 @putchar(i32 10)
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.121)
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.122)
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.123)
  %33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.124)
  br label %34

34:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @QUIT(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i8, ptr %4, align 1, !tbaa !7
  switch i8 %5, label %8 [
    i8 32, label %6
    i8 9, label %6
    i8 0, label %10
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !18

8:                                                ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %11

10:                                               ; preds = %3
  store i32 3, ptr @RETURN_STATUS, align 4, !tbaa !12
  br label %11

11:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @TRACE_P(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i8, ptr %4, align 1, !tbaa !7
  switch i8 %5, label %8 [
    i8 32, label %6
    i8 9, label %6
    i8 0, label %10
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !18

8:                                                ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %17

10:                                               ; preds = %3
  %11 = load i32, ptr @TRACE, align 4, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.126)
  br label %17

15:                                               ; preds = %10
  store i32 1, ptr @TRACE, align 4, !tbaa !12
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.125)
  br label %17

17:                                               ; preds = %15, %13, %8
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @UNTRACE(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i8, ptr %4, align 1, !tbaa !7
  switch i8 %5, label %8 [
    i8 32, label %6
    i8 9, label %6
    i8 0, label %10
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !18

8:                                                ; preds = %3
  %.lcssa = phi ptr [ %4, %3 ]
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %.lcssa) #23
  br label %17

10:                                               ; preds = %3
  %11 = load i32, ptr @TRACE, align 4, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.127)
  br label %17

15:                                               ; preds = %10
  store i32 0, ptr @TRACE, align 4, !tbaa !12
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.128)
  br label %17

17:                                               ; preds = %15, %13, %8
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @MODE(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %3

3:                                                ; preds = %6, %2
  %4 = phi ptr [ %0, %2 ], [ %7, %6 ]
  %5 = load i8, ptr %4, align 1, !tbaa !7
  switch i8 %5, label %8 [
    i8 32, label %6
    i8 9, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  br label %3, !llvm.loop !18

8:                                                ; preds = %3
  %.lcssa1 = phi ptr [ %4, %3 ]
  %.lcssa = phi i8 [ %5, %3 ]
  %9 = sext i8 %.lcssa to i32
  %10 = icmp eq i8 %.lcssa, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.129)
  br label %23

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %.lcssa1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !7
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  switch i32 %9, label %21 [
    i32 72, label %18
    i32 68, label %19
    i32 73, label %20
  ]

18:                                               ; preds = %17
  store i32 7890248, ptr @TYPE_OUT_MODE, align 4
  br label %23

19:                                               ; preds = %17
  store i32 6513988, ptr @TYPE_OUT_MODE, align 4
  br label %23

20:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) @TYPE_OUT_MODE, ptr noundef nonnull align 1 dereferenceable(6) @.str.61, i64 6, i1 false) #22
  br label %23

21:                                               ; preds = %17, %13
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, ptr noundef nonnull %.lcssa1) #23
  br label %23

23:                                               ; preds = %21, %20, %19, %18, %11
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind optsize uwtable
define internal void @CALL_FUNCTION(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #6 {
  switch i32 %0, label %15 [
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 6, label %9
    i32 7, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 11, label %14
  ]

4:                                                ; preds = %3
  tail call void @STEP(ptr noundef %1, ptr noundef %2) #23
  br label %15

5:                                                ; preds = %3
  tail call void @SET_BP(ptr noundef %1, ptr noundef %2) #23
  br label %15

6:                                                ; preds = %3
  tail call void @EXAMINE(ptr noundef %1, ptr noundef %2) #23
  br label %15

7:                                                ; preds = %3
  tail call void @RESET_BP(ptr noundef %1, ptr noundef %2) #23
  br label %15

8:                                                ; preds = %3
  tail call void @RUN_IT(ptr noundef %1, ptr noundef %2) #23
  br label %15

9:                                                ; preds = %3
  tail call void @HELP(ptr noundef %1, ptr noundef %2) #23
  br label %15

10:                                               ; preds = %3
  tail call void @MODE(ptr noundef %1, ptr noundef %2) #23
  br label %15

11:                                               ; preds = %3
  tail call void @PROCEED(ptr noundef %1, ptr noundef %2) #23
  br label %15

12:                                               ; preds = %3
  tail call void @TRACE_P(ptr noundef %1, ptr noundef %2) #23
  br label %15

13:                                               ; preds = %3
  tail call void @UNTRACE(ptr noundef %1, ptr noundef %2) #23
  br label %15

14:                                               ; preds = %3
  tail call void @QUIT(ptr noundef %1, ptr noundef %2) #23
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DEBUGGER(i32 noundef %0) #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) @BREAK_POINTS, i8 -1, i64 68, i1 false), !tbaa !12
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %92, label %10

8:                                                ; preds = %1
  store i32 0, ptr @RETURN_STATUS, align 4, !tbaa !12
  store i32 16777215, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  %9 = load i32, ptr @START_ADDRESS, align 4, !tbaa !12
  store i32 %9, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  store i32 61440, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  tail call void (i32, i32, ...) @EXEC(i32 noundef 0, i32 noundef 0) #22
  br label %92

10:                                               ; preds = %89, %5
  store i32 0, ptr %3, align 4, !tbaa !12
  %11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @TYPE_OUT_MODE) #23
  %12 = load ptr, ptr @stdin, align 8, !tbaa !16
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %2, ptr noundef %12) #22
  %13 = load ptr, ptr %2, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %17, %10
  %15 = phi ptr [ %18, %17 ], [ %13, %10 ]
  %16 = load i8, ptr %15, align 1, !tbaa !7
  switch i8 %16, label %19 [
    i8 32, label %17
    i8 9, label %17
    i8 0, label %61
  ]

17:                                               ; preds = %14, %14
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %18, ptr %2, align 8, !tbaa !16
  br label %14, !llvm.loop !18

19:                                               ; preds = %30, %14
  %.lcssa = phi ptr [ %.lcssa, %30 ], [ %15, %14 ]
  %20 = phi i64 [ %31, %30 ], [ 0, %14 ]
  %21 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa) #21
  %22 = icmp ult i64 %21, %20
  br i1 %22, label %32, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %.lcssa, i64 %20
  %25 = load i8, ptr %24, align 1, !tbaa !7
  %26 = add i8 %25, -97
  %27 = icmp ult i8 %26, 26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = add nsw i8 %25, -32
  store i8 %29, ptr %24, align 1, !tbaa !7
  br label %30

30:                                               ; preds = %28, %23
  %31 = add nuw i64 %20, 1
  br label %19, !llvm.loop !33

32:                                               ; preds = %50, %19
  %.lcssa.lcssa = phi ptr [ %.lcssa.lcssa, %50 ], [ %.lcssa, %19 ]
  %33 = phi i64 [ %51, %50 ], [ 0, %19 ]
  %34 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], ptr @COMMANDS, i64 0, i64 %33, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = load ptr, ptr %2, align 8, !tbaa !16
  %37 = call i32 @IS_PREFIX_TO(ptr noundef %35, ptr noundef %36) #23, !range !30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], ptr @COMMANDS, i64 0, i64 %33
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  %42 = call i32 @IS_PREFIX_TO(ptr noundef %41, ptr noundef %36) #23, !range !30
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39, %32
  %45 = phi ptr [ %35, %32 ], [ %41, %39 ]
  %46 = getelementptr inbounds [11 x %struct.COMMAND_TYPE], ptr @COMMANDS, i64 0, i64 %33, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !37
  %48 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #21
  %49 = getelementptr inbounds i8, ptr %36, i64 %48
  call void @CALL_FUNCTION(i32 noundef %47, ptr noundef %49, ptr noundef nonnull %3) #23
  br label %50

50:                                               ; preds = %44, %39
  %51 = add nuw nsw i64 %33, 1
  %52 = icmp ult i64 %33, 10
  %53 = load i32, ptr %3, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %32, label %56, !llvm.loop !38

56:                                               ; preds = %50
  %.lcssa2 = phi i1 [ %54, %50 ]
  %.lcssa.lcssa.lcssa = phi ptr [ %.lcssa.lcssa, %50 ]
  br i1 %.lcssa2, label %57, label %61

57:                                               ; preds = %56
  %58 = load ptr, ptr %2, align 8, !tbaa !16
  %59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, ptr noundef %58) #23
  %60 = call i32 @puts(ptr nonnull dereferenceable(1) @str.139)
  br label %61

61:                                               ; preds = %57, %56, %14
  %62 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %89

64:                                               ; preds = %61
  store i32 1, ptr @RETURN_STATUS, align 4, !tbaa !12
  %65 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  %66 = srem i32 %65, 256
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.88, i32 noundef %66, ptr noundef nonnull @.str.89) #22
  switch i32 %66, label %85 [
    i32 0, label %67
    i32 1, label %69
    i32 2, label %71
    i32 3, label %73
    i32 4, label %75
    i32 10, label %77
    i32 11, label %79
    i32 12, label %81
    i32 13, label %83
  ]

67:                                               ; preds = %64
  %68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.138)
  br label %87

69:                                               ; preds = %64
  %70 = call i32 @puts(ptr nonnull dereferenceable(1) @str.137)
  br label %87

71:                                               ; preds = %64
  %72 = call i32 @puts(ptr nonnull dereferenceable(1) @str.136)
  br label %87

73:                                               ; preds = %64
  %74 = call i32 @puts(ptr nonnull dereferenceable(1) @str.135)
  br label %87

75:                                               ; preds = %64
  %76 = call i32 @puts(ptr nonnull dereferenceable(1) @str.134)
  br label %87

77:                                               ; preds = %64
  %78 = call i32 @puts(ptr nonnull dereferenceable(1) @str.133)
  br label %87

79:                                               ; preds = %64
  %80 = call i32 @puts(ptr nonnull dereferenceable(1) @str.132)
  br label %87

81:                                               ; preds = %64
  %82 = call i32 @puts(ptr nonnull dereferenceable(1) @str.131)
  br label %87

83:                                               ; preds = %64
  %84 = call i32 @puts(ptr nonnull dereferenceable(1) @str.130)
  br label %87

85:                                               ; preds = %64
  %86 = call i32 @putchar(i32 10)
  br label %87

87:                                               ; preds = %85, %83, %81, %79, %77, %75, %73, %71, %69, %67
  %88 = load i32, ptr @RETURN_STATUS, align 4, !tbaa !12
  br label %89

89:                                               ; preds = %87, %61
  %90 = phi i32 [ %88, %87 ], [ %62, %61 ]
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %10, !llvm.loop !39

92:                                               ; preds = %89, %8, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @FORMAT2(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %4 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %3, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !7
  %9 = sext i8 %8 to i32
  %10 = tail call i32 (i32, ...) @INT(i32 noundef %9) #22
  %11 = sdiv i32 %10, 16
  store i32 %11, ptr %0, align 4, !tbaa !12
  %12 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %13 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !7
  %18 = sext i8 %17 to i32
  %19 = tail call i32 (i32, ...) @INT(i32 noundef %18) #22
  %20 = load i32, ptr %0, align 4, !tbaa !12
  %21 = shl nsw i32 %20, 4
  %22 = sub nsw i32 %19, %21
  store i32 %22, ptr %1, align 4, !tbaa !12
  %23 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %24 = add nsw i32 %23, 2
  store i32 %24, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @FORMAT3_4(i32 noundef %0, i32 noundef %1) #6 {
  %3 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #24
  %4 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %5 = icmp sgt i32 %4, 1048573
  br i1 %5, label %207, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !7
  %11 = sext i8 %10 to i32
  %12 = tail call i32 (i32, ...) @INT(i32 noundef %11) #22
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %12, i32 noundef 1, ptr noundef nonnull %3) #22
  %13 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %14 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !7
  %19 = sext i8 %18 to i32
  %20 = call i32 (i32, ...) @INT(i32 noundef %19) #22
  %21 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 8
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %20, i32 noundef 1, ptr noundef nonnull %21) #22
  %22 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %23 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %22, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !7
  %28 = sext i8 %27 to i32
  %29 = call i32 (i32, ...) @INT(i32 noundef %28) #22
  %30 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 16
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %29, i32 noundef 1, ptr noundef nonnull %30) #22
  %31 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 11
  %32 = load i32, ptr %31, align 4, !tbaa !12
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %54

34:                                               ; preds = %6
  %35 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 6
  %36 = load i32, ptr %35, align 8, !tbaa !12
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 7
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %54, label %42

42:                                               ; preds = %34
  %43 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %44 = icmp sgt i32 %43, 1048572
  br i1 %44, label %207, label %45

45:                                               ; preds = %42
  %46 = add nsw i32 %43, 3
  %47 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !7
  %51 = sext i8 %50 to i32
  %52 = call i32 (i32, ...) @INT(i32 noundef %51) #22
  %53 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 24
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %52, i32 noundef 1, ptr noundef nonnull %53) #22
  br label %54

54:                                               ; preds = %45, %34, %6
  %55 = phi i1 [ true, %6 ], [ false, %45 ], [ true, %34 ]
  %56 = phi i32 [ 3, %6 ], [ 4, %45 ], [ 3, %34 ]
  %57 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %58 = add nsw i32 %57, %56
  store i32 %58, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %59 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 6
  %60 = load i32, ptr %59, align 8, !tbaa !12
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 7
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %61, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 12
  %68 = call i32 (ptr, i32, ...) @BITS_TO_BYTE(ptr noundef nonnull %67, i32 noundef 12) #22
  br label %114

69:                                               ; preds = %54
  br i1 %55, label %70, label %98

70:                                               ; preds = %69
  %71 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 12
  %72 = call i32 (ptr, i32, ...) @BITS_TO_BYTE(ptr noundef nonnull %71, i32 noundef 12) #22
  %73 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 9
  %74 = load i32, ptr %73, align 4, !tbaa !12
  %75 = icmp eq i32 %74, 1
  %76 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 10
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, 1
  %79 = select i1 %75, i1 %78, i1 false
  br i1 %79, label %207, label %80

80:                                               ; preds = %70
  %81 = load i32, ptr %21, align 16, !tbaa !12
  %82 = icmp eq i32 %81, 1
  %83 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4
  %84 = select i1 %82, i32 %83, i32 0
  %85 = add nsw i32 %84, %72
  %86 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 3), align 4
  %87 = select i1 %75, i32 %86, i32 0
  %88 = add nsw i32 %85, %87
  br i1 %78, label %89, label %114

89:                                               ; preds = %80
  %90 = icmp sgt i32 %88, 2047
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = add nsw i32 %88, -4096
  %93 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %94 = add nsw i32 %92, %93
  br label %114

95:                                               ; preds = %89
  %96 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %97 = add nsw i32 %96, %88
  br label %114

98:                                               ; preds = %69
  %99 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 9
  %100 = load i32, ptr %99, align 4, !tbaa !12
  %101 = icmp eq i32 %100, 1
  %102 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 10
  %103 = load i32, ptr %102, align 8
  %104 = icmp eq i32 %103, 1
  %105 = select i1 %101, i1 true, i1 %104
  br i1 %105, label %207, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds [32 x i32], ptr %3, i64 0, i64 12
  %108 = call i32 (ptr, i32, ...) @BITS_TO_BYTE(ptr noundef nonnull %107, i32 noundef 20) #22
  %109 = load i32, ptr %21, align 16, !tbaa !12
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %113 = add nsw i32 %112, %108
  br label %114

114:                                              ; preds = %111, %106, %95, %91, %80, %66
  %115 = phi i32 [ %68, %66 ], [ %94, %91 ], [ %97, %95 ], [ %88, %80 ], [ %113, %111 ], [ %108, %106 ]
  %116 = load i32, ptr %59, align 8, !tbaa !12
  %117 = icmp eq i32 %116, 1
  %118 = load i32, ptr %62, align 4
  %119 = icmp eq i32 %118, 1
  %120 = select i1 %117, i1 %119, i1 false
  br i1 %120, label %121, label %147

121:                                              ; preds = %114
  %122 = icmp eq i32 %0, 1
  br i1 %122, label %123, label %209

123:                                              ; preds = %121
  %124 = icmp ugt i32 %115, 1048573
  br i1 %124, label %207, label %125

125:                                              ; preds = %123
  %126 = icmp sgt i32 %1, 0
  br i1 %126, label %127, label %209

127:                                              ; preds = %125
  %128 = zext i32 %115 to i64
  %129 = zext i32 %1 to i64
  br label %130

130:                                              ; preds = %130, %127
  %131 = phi i64 [ 0, %127 ], [ %142, %130 ]
  %132 = phi i32 [ 0, %127 ], [ %141, %130 ]
  %133 = shl nsw i32 %132, 8
  %134 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %135 = add nuw nsw i64 %131, %128
  %136 = getelementptr inbounds i8, ptr %134, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !7
  %138 = sext i8 %137 to i32
  %139 = call i32 (i32, ...) @INT(i32 noundef %138) #22
  %140 = add nsw i32 %139, %133
  %141 = freeze i32 %140
  %142 = add nuw nsw i64 %131, 1
  %143 = icmp eq i64 %142, %129
  br i1 %143, label %144, label %130, !llvm.loop !40

144:                                              ; preds = %130
  %.lcssa = phi i32 [ %141, %130 ]
  %145 = icmp sgt i32 %.lcssa, 16777215
  %146 = select i1 %145, i32 0, i32 %.lcssa
  br label %209

147:                                              ; preds = %114
  %148 = icmp eq i32 %118, 0
  %149 = select i1 %117, i1 %148, i1 false
  br i1 %149, label %150, label %202

150:                                              ; preds = %147
  %151 = icmp ugt i32 %115, 1048573
  br i1 %151, label %207, label %152

152:                                              ; preds = %150
  %153 = add nuw nsw i32 %115, 2
  %154 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %155 = zext i32 %115 to i64
  %156 = getelementptr inbounds i8, ptr %154, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !7
  %158 = sext i8 %157 to i32
  %159 = call i32 (i32, ...) @INT(i32 noundef %158) #22
  %160 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %161 = add nuw nsw i32 %115, 1
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %160, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !7
  %165 = sext i8 %164 to i32
  %166 = call i32 (i32, ...) @INT(i32 noundef %165) #22
  %167 = shl i32 %159, 16
  %168 = shl i32 %166, 8
  %169 = add i32 %168, %167
  %170 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %171 = zext i32 %153 to i64
  %172 = getelementptr inbounds i8, ptr %170, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !7
  %174 = sext i8 %173 to i32
  %175 = call i32 (i32, ...) @INT(i32 noundef %174) #22
  %176 = add nsw i32 %169, %175
  %177 = icmp eq i32 %0, 1
  br i1 %177, label %178, label %209

178:                                              ; preds = %152
  %179 = icmp sgt i32 %176, 1048576
  br i1 %179, label %207, label %180

180:                                              ; preds = %178
  %181 = icmp sgt i32 %1, 0
  br i1 %181, label %182, label %209

182:                                              ; preds = %180
  %183 = sext i32 %176 to i64
  %184 = zext i32 %1 to i64
  br label %185

185:                                              ; preds = %185, %182
  %186 = phi i64 [ 0, %182 ], [ %197, %185 ]
  %187 = phi i32 [ 0, %182 ], [ %196, %185 ]
  %188 = shl nsw i32 %187, 8
  %189 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %190 = add nsw i64 %186, %183
  %191 = getelementptr inbounds i8, ptr %189, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !7
  %193 = sext i8 %192 to i32
  %194 = call i32 (i32, ...) @INT(i32 noundef %193) #22
  %195 = add nsw i32 %194, %188
  %196 = freeze i32 %195
  %197 = add nuw nsw i64 %186, 1
  %198 = icmp eq i64 %197, %184
  br i1 %198, label %199, label %185, !llvm.loop !41

199:                                              ; preds = %185
  %.lcssa1 = phi i32 [ %196, %185 ]
  %200 = icmp sgt i32 %.lcssa1, 16777215
  %201 = select i1 %200, i32 0, i32 %.lcssa1
  br label %209

202:                                              ; preds = %147
  %203 = icmp eq i32 %116, 0
  %204 = select i1 %203, i1 %119, i1 false
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = icmp sgt i32 %115, 16777215
  br i1 %206, label %207, label %209

207:                                              ; preds = %205, %178, %150, %123, %98, %70, %42, %2
  %208 = phi i32 [ 2, %2 ], [ 2, %42 ], [ 0, %70 ], [ 0, %98 ], [ 0, %123 ], [ 0, %150 ], [ 2, %178 ], [ 0, %205 ]
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef %208) #22
  br label %209

209:                                              ; preds = %207, %205, %202, %199, %180, %152, %144, %125, %121
  %210 = phi i32 [ %115, %121 ], [ %176, %152 ], [ %115, %205 ], [ 0, %202 ], [ 0, %125 ], [ 0, %180 ], [ %146, %144 ], [ %201, %199 ], [ 0, %207 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #24
  ret i32 %210
}

; Function Attrs: nounwind optsize uwtable
define internal void @ADD_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %3 = icmp ugt i32 %2, 16777215
  %4 = select i1 %3, i32 0, i32 %2
  %5 = icmp slt i32 %4, 8388608
  %6 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %7 = icmp slt i32 %6, 8388608
  %8 = and i1 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = add nsw i32 %4, %6
  store i32 %10, ptr @REGISTER, align 16, !tbaa !12
  %11 = icmp sgt i32 %10, 8388607
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i32 [ %6, %1 ], [ %10, %9 ]
  %15 = phi i32 [ 0, %1 ], [ %12, %9 ]
  %16 = xor i1 %5, %7
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = add nsw i32 %14, %4
  %19 = srem i32 %18, 16777216
  store i32 %19, ptr @REGISTER, align 16, !tbaa !12
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ %14, %13 ]
  %22 = or i1 %7, %5
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = add nsw i32 %21, %4
  %25 = srem i32 %24, 16777216
  store i32 %25, ptr @REGISTER, align 16, !tbaa !12
  %26 = icmp slt i32 %25, 8388608
  %27 = select i1 %26, i32 1, i32 %15
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i32 [ %21, %20 ], [ %25, %23 ]
  %30 = phi i32 [ %15, %20 ], [ %27, %23 ]
  %31 = icmp eq i32 %0, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %29, ptr noundef nonnull @.str.1.5) #22
  br label %33

33:                                               ; preds = %32, %28
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 4) #22
  br label %36

36:                                               ; preds = %35, %33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @AND_P(i32 noundef %0) #6 {
  %2 = alloca [24 x i32], align 16
  %3 = alloca [24 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #24
  %4 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %5 = icmp ugt i32 %4, 16777215
  %6 = select i1 %5, i32 0, i32 %4
  %7 = load i32, ptr @REGISTER, align 16, !tbaa !12
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %7, i32 noundef 3, ptr noundef nonnull %2) #22
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %6, i32 noundef 3, ptr noundef nonnull %3) #22
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %18, %8 ]
  %10 = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 %9
  %11 = load <4 x i32>, ptr %10, align 16, !tbaa !12
  %12 = icmp ne <4 x i32> %11, zeroinitializer
  %13 = getelementptr [24 x i32], ptr %3, i64 0, i64 %9
  %14 = load <4 x i32>, ptr %13, align 16, !tbaa !12
  %15 = icmp ne <4 x i32> %14, zeroinitializer
  %16 = select <4 x i1> %12, <4 x i1> %15, <4 x i1> zeroinitializer
  %17 = zext <4 x i1> %16 to <4 x i32>
  store <4 x i32> %17, ptr %10, align 16, !tbaa !12
  %18 = add nuw i64 %9, 4
  %19 = icmp eq i64 %18, 24
  br i1 %19, label %20, label %8, !llvm.loop !42

20:                                               ; preds = %8
  %21 = call i32 (ptr, i32, ...) @BITS_TO_BYTE(ptr noundef nonnull %2, i32 noundef 24) #22
  store i32 %21, ptr @REGISTER, align 16, !tbaa !12
  %22 = icmp eq i32 %0, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %21, ptr noundef nonnull @.str.1.5) #22
  br label %24

24:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @COMP_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %3 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %4 = icmp sgt i32 %3, 8388607
  %5 = add nsw i32 %3, -16777216
  %6 = select i1 %4, i32 %5, i32 %3
  %7 = icmp sgt i32 %2, 8388607
  %8 = add nsw i32 %2, -16777216
  %9 = select i1 %7, i32 %8, i32 %2
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  tail call void (i32, ...) @SET_CC(i32 noundef 0) #22
  %12 = icmp eq i32 %0, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.77)
  br label %15

15:                                               ; preds = %13, %1
  %16 = icmp slt i32 %6, %9
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  tail call void (i32, ...) @SET_CC(i32 noundef 1) #22
  %18 = icmp eq i32 %0, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  br label %21

21:                                               ; preds = %19, %17, %15, %11
  %22 = icmp sgt i32 %6, %9
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  tail call void (i32, ...) @SET_CC(i32 noundef 2) #22
  %24 = icmp eq i32 %0, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  br label %27

27:                                               ; preds = %25, %23, %21
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DIV_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %3 = icmp ugt i32 %2, 16777215
  %4 = select i1 %3, i32 1, i32 %2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 4) #22
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.50)
  br label %44

10:                                               ; preds = %1
  %11 = icmp slt i32 %4, 8388608
  %12 = xor i1 %11, true
  %13 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %14 = icmp slt i32 %13, 8388608
  %15 = xor i1 %14, true
  %16 = and i1 %11, %14
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = sdiv i32 %13, %4
  store i32 %18, ptr @REGISTER, align 16, !tbaa !12
  br label %19

19:                                               ; preds = %17, %10
  %20 = phi i32 [ %18, %17 ], [ %13, %10 ]
  %21 = and i1 %11, %15
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = sub nsw i32 16777216, %20
  br label %28

24:                                               ; preds = %19
  %25 = and i1 %14, %12
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  %27 = sub nsw i32 16777216, %4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %27, %26 ], [ %4, %22 ]
  %30 = phi i32 [ %20, %26 ], [ %23, %22 ]
  %31 = sdiv i32 %30, %29
  %32 = sub nsw i32 16777216, %31
  store i32 %32, ptr @REGISTER, align 16, !tbaa !12
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ %20, %24 ], [ %32, %28 ]
  %35 = and i1 %12, %15
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = sub nsw i32 16777216, %34
  %38 = sub nsw i32 16777216, %4
  %39 = sdiv i32 %37, %38
  store i32 %39, ptr @REGISTER, align 16, !tbaa !12
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %39, %36 ], [ %34, %33 ]
  %42 = icmp eq i32 %0, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %41, ptr noundef nonnull @.str.1.5) #22
  br label %44

44:                                               ; preds = %43, %40, %8, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @J_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = icmp ugt i32 %2, 1048575
  %6 = icmp ne i32 %2, 16777215
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  br label %19

12:                                               ; preds = %4
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %2, 16777215
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %19

18:                                               ; preds = %14
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.8.7, i32 noundef %2, ptr noundef nonnull @.str.9.8) #22
  br label %19

19:                                               ; preds = %18, %16, %12, %10, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @JEQ_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = tail call i32 (...) @CC() #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %26

9:                                                ; preds = %1
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = icmp ugt i32 %2, 1048575
  %13 = icmp ne i32 %2, 16777215
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %9
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  br label %26

19:                                               ; preds = %11
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %2, 16777215
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %26

25:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.8.7, i32 noundef %2, ptr noundef nonnull @.str.9.8) #22
  br label %26

26:                                               ; preds = %25, %23, %19, %17, %15, %7, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @JGT_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = tail call i32 (...) @CC() #22
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %26

9:                                                ; preds = %1
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = icmp ugt i32 %2, 1048575
  %13 = icmp ne i32 %2, 16777215
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %9
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  br label %26

19:                                               ; preds = %11
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %2, 16777215
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %26

25:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.8.7, i32 noundef %2, ptr noundef nonnull @.str.9.8) #22
  br label %26

26:                                               ; preds = %25, %23, %19, %17, %15, %7, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @JLT_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = tail call i32 (...) @CC() #22
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %5
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %26

9:                                                ; preds = %1
  %10 = icmp slt i32 %2, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = icmp ugt i32 %2, 1048575
  %13 = icmp ne i32 %2, 16777215
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %9
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  br label %26

19:                                               ; preds = %11
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %2, 16777215
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %26

25:                                               ; preds = %21
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.8.7, i32 noundef %2, ptr noundef nonnull @.str.9.8) #22
  br label %26

26:                                               ; preds = %25, %23, %19, %17, %15, %7, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @JSUB_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp ugt i32 %2, 1048575
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  br label %13

8:                                                ; preds = %1
  %9 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  store i32 %9, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %10 = icmp eq i32 %0, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.15.9, i32 noundef %9, ptr noundef nonnull @.str.16.10) #22
  %12 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %12, ptr noundef nonnull @.str.1.5) #22
  br label %13

13:                                               ; preds = %11, %8, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LDA_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  store i32 %2, ptr @REGISTER, align 16, !tbaa !12
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LDB_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 3), align 4, !tbaa !12
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.18.12, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LDCH_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 1) #22
  %3 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %4 = sdiv i32 %3, 256
  %5 = shl nsw i32 %4, 8
  %6 = add nsw i32 %5, %2
  store i32 %6, ptr @REGISTER, align 16, !tbaa !12
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %6, ptr noundef nonnull @.str.1.5) #22
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LDL_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.19.13, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LDS_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 4), align 16, !tbaa !12
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.20, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LDT_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 5), align 4, !tbaa !12
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.21.14, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LDX_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.22.15, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @MUL_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %3 = icmp ugt i32 %2, 16777215
  %4 = select i1 %3, i32 0, i32 %2
  %5 = icmp slt i32 %4, 8388608
  %6 = xor i1 %5, true
  %7 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %8 = icmp slt i32 %7, 8388608
  %9 = xor i1 %8, true
  %10 = and i1 %8, %5
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = sitofp i32 %7 to double
  %13 = sitofp i32 %4 to double
  %14 = fmul double %12, %13
  %15 = fcmp ult double %14, 0x4160000000000000
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = fptosi double %14 to i32
  store i32 %17, ptr @REGISTER, align 16, !tbaa !12
  br label %18

18:                                               ; preds = %16, %11, %1
  %19 = phi i32 [ %17, %16 ], [ %7, %1 ], [ %7, %11 ]
  %20 = phi i32 [ 0, %16 ], [ 0, %1 ], [ 1, %11 ]
  %21 = and i1 %5, %9
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = sub nsw i32 16777216, %19
  %24 = sitofp i32 %23 to double
  %25 = sitofp i32 %4 to double
  %26 = fmul double %25, %24
  %27 = fmul double %26, 0x3E70000000000000
  %28 = fptosi double %27 to i32
  %29 = shl nsw i32 %28, 24
  %30 = sitofp i32 %29 to double
  %31 = fsub double %26, %30
  %32 = fcmp ogt double %31, 0x4160000000000000
  br i1 %32, label %50, label %46

33:                                               ; preds = %18
  %34 = and i1 %8, %6
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = sitofp i32 %19 to double
  %37 = sub nsw i32 16777216, %4
  %38 = sitofp i32 %37 to double
  %39 = fmul double %38, %36
  %40 = fmul double %39, 0x3E70000000000000
  %41 = fptosi double %40 to i32
  %42 = shl nsw i32 %41, 24
  %43 = sitofp i32 %42 to double
  %44 = fsub double %39, %43
  %45 = fcmp ogt double %44, 0x4160000000000000
  br i1 %45, label %50, label %46

46:                                               ; preds = %35, %22
  %47 = phi double [ %31, %22 ], [ %44, %35 ]
  %48 = fptosi double %47 to i32
  %49 = sub nsw i32 16777216, %48
  store i32 %49, ptr @REGISTER, align 16, !tbaa !12
  br label %50

50:                                               ; preds = %46, %35, %33, %22
  %51 = phi i32 [ %19, %33 ], [ %19, %35 ], [ %19, %22 ], [ %49, %46 ]
  %52 = phi i32 [ %20, %33 ], [ 1, %35 ], [ 1, %22 ], [ %20, %46 ]
  %53 = and i1 %9, %6
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = sub nsw i32 16777216, %51
  %56 = sitofp i32 %55 to double
  %57 = sub nsw i32 16777216, %4
  %58 = sitofp i32 %57 to double
  %59 = fmul double %58, %56
  %60 = fcmp ult double %59, 0x4160000000000000
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = fptosi double %59 to i32
  store i32 %62, ptr @REGISTER, align 16, !tbaa !12
  br label %63

63:                                               ; preds = %61, %54, %50
  %64 = phi i32 [ %62, %61 ], [ %51, %50 ], [ %51, %54 ]
  %65 = phi i32 [ %52, %61 ], [ %52, %50 ], [ 1, %54 ]
  %66 = icmp eq i32 %0, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %64, ptr noundef nonnull @.str.1.5) #22
  br label %68

68:                                               ; preds = %67, %63
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 4) #22
  br label %71

71:                                               ; preds = %70, %68
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @OR_P(i32 noundef %0) #6 {
  %2 = alloca [24 x i32], align 16
  %3 = alloca [24 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #24
  %4 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %5 = icmp ugt i32 %4, 16777215
  %6 = select i1 %5, i32 0, i32 %4
  %7 = load i32, ptr @REGISTER, align 16, !tbaa !12
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %7, i32 noundef 3, ptr noundef nonnull %2) #22
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %6, i32 noundef 3, ptr noundef nonnull %3) #22
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi i64 [ 0, %1 ], [ %18, %8 ]
  %10 = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 %9
  %11 = load <4 x i32>, ptr %10, align 16, !tbaa !12
  %12 = icmp ne <4 x i32> %11, zeroinitializer
  %13 = getelementptr [24 x i32], ptr %3, i64 0, i64 %9
  %14 = load <4 x i32>, ptr %13, align 16, !tbaa !12
  %15 = icmp ne <4 x i32> %14, zeroinitializer
  %16 = select <4 x i1> %12, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i1> %15
  %17 = zext <4 x i1> %16 to <4 x i32>
  store <4 x i32> %17, ptr %10, align 16, !tbaa !12
  %18 = add nuw i64 %9, 4
  %19 = icmp eq i64 %18, 24
  br i1 %19, label %20, label %8, !llvm.loop !45

20:                                               ; preds = %8
  %21 = call i32 (ptr, i32, ...) @BITS_TO_BYTE(ptr noundef nonnull %2, i32 noundef 24) #22
  store i32 %21, ptr @REGISTER, align 16, !tbaa !12
  %22 = icmp eq i32 %0, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %21, ptr noundef nonnull @.str.1.5) #22
  br label %24

24:                                               ; preds = %23, %20
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @RD_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 1) #22
  %3 = icmp ugt i32 %2, 255
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  br label %33

8:                                                ; preds = %1
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %9
  %11 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 16, !tbaa !48
  %16 = icmp eq i32 %15, 0
  %17 = icmp ugt i32 %2, 127
  %18 = or i1 %17, %16
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %8
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  br label %33

23:                                               ; preds = %14
  %24 = tail call i32 @fgetc(ptr noundef nonnull %12) #23
  %25 = icmp eq i32 %24, -1
  %26 = select i1 %25, i32 0, i32 %24
  %27 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %28 = sdiv i32 %27, 256
  %29 = shl nsw i32 %28, 8
  %30 = add nsw i32 %29, %26
  store i32 %30, ptr @REGISTER, align 16, !tbaa !12
  store i32 0, ptr %10, align 16, !tbaa !48
  %31 = icmp eq i32 %0, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %30, ptr noundef nonnull @.str.1.5) #22
  br label %33

33:                                               ; preds = %32, %23, %21, %19, %6, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal void @SUB_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %3 = icmp ugt i32 %2, 16777215
  %4 = select i1 %3, i32 0, i32 %2
  %5 = icmp slt i32 %4, 8388608
  %6 = xor i1 %5, true
  %7 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %8 = icmp slt i32 %7, 8388608
  %9 = xor i1 %8, true
  %10 = and i1 %8, %5
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = sub nsw i32 %7, %4
  store i32 %12, ptr @REGISTER, align 16, !tbaa !12
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = add nsw i32 %12, 16777216
  store i32 %15, ptr @REGISTER, align 16, !tbaa !12
  br label %16

16:                                               ; preds = %14, %11, %1
  %17 = phi i32 [ %12, %11 ], [ %15, %14 ], [ %7, %1 ]
  %18 = and i1 %5, %9
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = sub i32 %17, %4
  %21 = add i32 %20, 16777216
  %22 = srem i32 %21, 16777216
  store i32 %22, ptr @REGISTER, align 16, !tbaa !12
  %23 = icmp slt i32 %22, 8388608
  br label %30

24:                                               ; preds = %16
  %25 = and i1 %8, %6
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = sub i32 %17, %4
  %28 = add i32 %27, 16777216
  store i32 %28, ptr @REGISTER, align 16, !tbaa !12
  %29 = icmp sgt i32 %28, 8388607
  br label %30

30:                                               ; preds = %26, %24, %19
  %31 = phi i32 [ %17, %24 ], [ %28, %26 ], [ %22, %19 ]
  %32 = phi i1 [ false, %24 ], [ %29, %26 ], [ %23, %19 ]
  %33 = and i1 %9, %6
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = sub i32 %31, %4
  %36 = add i32 %35, 16777216
  %37 = srem i32 %36, 16777216
  store i32 %37, ptr @REGISTER, align 16, !tbaa !12
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %37, %34 ], [ %31, %30 ]
  %40 = icmp eq i32 %0, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.4, i32 noundef %39, ptr noundef nonnull @.str.1.5) #22
  br label %42

42:                                               ; preds = %41, %38
  br i1 %32, label %43, label %44

43:                                               ; preds = %42
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 4) #22
  br label %44

44:                                               ; preds = %43, %42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @RSUB_P(i32 noundef %0) #6 {
  %2 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = icmp ugt i32 %2, 1048575
  %6 = icmp ne i32 %2, 16777215
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %4, %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  br label %19

12:                                               ; preds = %4
  store i32 %2, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %2, 16777215
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  br label %19

18:                                               ; preds = %14
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.25.16, i32 noundef %2, ptr noundef nonnull @.str.9.8) #22
  br label %19

19:                                               ; preds = %18, %16, %12, %10, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STA_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp sgt i32 %2, 1048573
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.67)
  br label %43

8:                                                ; preds = %1
  %9 = add nsw i32 %2, 2
  %10 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %11 = sdiv i32 %10, 65536
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %15, align 1, !tbaa !7
  %16 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %17 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %18 = getelementptr inbounds i8, ptr %17, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = tail call i32 (i32, ...) @INT(i32 noundef %20) #22
  %22 = shl nsw i32 %21, 16
  %23 = sub nsw i32 %16, %22
  %24 = sdiv i32 %23, 256
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %25, ptr %29, align 1, !tbaa !7
  %30 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %31 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = tail call i32 (i32, ...) @INT(i32 noundef %34) #22
  %36 = trunc i32 %30 to i8
  %37 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %38 = sext i32 %9 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !7
  %40 = icmp eq i32 %0, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = load i32, ptr @REGISTER, align 16, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %42, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %43

43:                                               ; preds = %41, %8, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STB_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp sgt i32 %2, 1048573
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.68)
  br label %43

8:                                                ; preds = %1
  %9 = add nsw i32 %2, 2
  %10 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 3), align 4, !tbaa !12
  %11 = sdiv i32 %10, 65536
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %15, align 1, !tbaa !7
  %16 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 3), align 4, !tbaa !12
  %17 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %18 = getelementptr inbounds i8, ptr %17, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = tail call i32 (i32, ...) @INT(i32 noundef %20) #22
  %22 = shl nsw i32 %21, 16
  %23 = sub nsw i32 %16, %22
  %24 = sdiv i32 %23, 256
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %25, ptr %29, align 1, !tbaa !7
  %30 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 3), align 4, !tbaa !12
  %31 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = tail call i32 (i32, ...) @INT(i32 noundef %34) #22
  %36 = trunc i32 %30 to i8
  %37 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %38 = sext i32 %9 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !7
  %40 = icmp eq i32 %0, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 3), align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %42, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %43

43:                                               ; preds = %41, %8, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STCH_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 1) #22
  %3 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %4 = trunc i32 %3 to i8
  %5 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  store i8 %4, ptr %7, align 1, !tbaa !7
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr @REGISTER, align 16, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %10, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %11

11:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STI_P(i32 noundef %0) #6 {
  %2 = tail call i32 (...) @SUPERVISOR_MODE() #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 1) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.69)
  br label %50

8:                                                ; preds = %1
  %9 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %10 = icmp sgt i32 %9, 1048573
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %12 = icmp eq i32 %0, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.70)
  br label %50

15:                                               ; preds = %8
  %16 = add nsw i32 %9, 2
  %17 = load i32, ptr @INTERVAL_TIMER, align 4, !tbaa !12
  %18 = sdiv i32 %17, 65536
  %19 = trunc i32 %18 to i8
  %20 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  store i8 %19, ptr %22, align 1, !tbaa !7
  %23 = load i32, ptr @INTERVAL_TIMER, align 4, !tbaa !12
  %24 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %25 = getelementptr inbounds i8, ptr %24, i64 %21
  %26 = load i8, ptr %25, align 1, !tbaa !7
  %27 = sext i8 %26 to i32
  %28 = tail call i32 (i32, ...) @INT(i32 noundef %27) #22
  %29 = shl nsw i32 %28, 16
  %30 = sub nsw i32 %23, %29
  %31 = sdiv i32 %30, 256
  %32 = trunc i32 %31 to i8
  %33 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %34 = add nsw i32 %9, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  store i8 %32, ptr %36, align 1, !tbaa !7
  %37 = load i32, ptr @INTERVAL_TIMER, align 4, !tbaa !12
  %38 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %39 = getelementptr inbounds i8, ptr %38, i64 %35
  %40 = load i8, ptr %39, align 1, !tbaa !7
  %41 = sext i8 %40 to i32
  %42 = tail call i32 (i32, ...) @INT(i32 noundef %41) #22
  %43 = trunc i32 %37 to i8
  %44 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %45 = sext i32 %16 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  store i8 %43, ptr %46, align 1, !tbaa !7
  %47 = icmp eq i32 %0, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %15
  %49 = load i32, ptr @INTERVAL_TIMER, align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %49, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %9, ptr noundef nonnull @.str.1.5) #22
  br label %50

50:                                               ; preds = %48, %15, %13, %11, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STL_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp sgt i32 %2, 1048573
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.71)
  br label %43

8:                                                ; preds = %1
  %9 = add nsw i32 %2, 2
  %10 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  %11 = sdiv i32 %10, 65536
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %15, align 1, !tbaa !7
  %16 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  %17 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %18 = getelementptr inbounds i8, ptr %17, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = tail call i32 (i32, ...) @INT(i32 noundef %20) #22
  %22 = shl nsw i32 %21, 16
  %23 = sub nsw i32 %16, %22
  %24 = sdiv i32 %23, 256
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %25, ptr %29, align 1, !tbaa !7
  %30 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  %31 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = tail call i32 (i32, ...) @INT(i32 noundef %34) #22
  %36 = trunc i32 %30 to i8
  %37 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %38 = sext i32 %9 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !7
  %40 = icmp eq i32 %0, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 2), align 8, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %42, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %43

43:                                               ; preds = %41, %8, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STS_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp sgt i32 %2, 1048573
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.72)
  br label %43

8:                                                ; preds = %1
  %9 = add nsw i32 %2, 2
  %10 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 4), align 16, !tbaa !12
  %11 = sdiv i32 %10, 65536
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %15, align 1, !tbaa !7
  %16 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 4), align 16, !tbaa !12
  %17 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %18 = getelementptr inbounds i8, ptr %17, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = tail call i32 (i32, ...) @INT(i32 noundef %20) #22
  %22 = shl nsw i32 %21, 16
  %23 = sub nsw i32 %16, %22
  %24 = sdiv i32 %23, 256
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %25, ptr %29, align 1, !tbaa !7
  %30 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 4), align 16, !tbaa !12
  %31 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = tail call i32 (i32, ...) @INT(i32 noundef %34) #22
  %36 = trunc i32 %30 to i8
  %37 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %38 = sext i32 %9 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !7
  %40 = icmp eq i32 %0, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 4), align 16, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %42, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %43

43:                                               ; preds = %41, %8, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STSW_P(i32 noundef %0) #6 {
  %2 = tail call i32 (...) @SUPERVISOR_MODE() #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 1) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.73)
  br label %50

8:                                                ; preds = %1
  %9 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %10 = icmp sgt i32 %9, 1048573
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %12 = icmp eq i32 %0, 0
  br i1 %12, label %50, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.74)
  br label %50

15:                                               ; preds = %8
  %16 = add nsw i32 %9, 2
  %17 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  %18 = sdiv i32 %17, 65536
  %19 = trunc i32 %18 to i8
  %20 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  store i8 %19, ptr %22, align 1, !tbaa !7
  %23 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  %24 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %25 = getelementptr inbounds i8, ptr %24, i64 %21
  %26 = load i8, ptr %25, align 1, !tbaa !7
  %27 = sext i8 %26 to i32
  %28 = tail call i32 (i32, ...) @INT(i32 noundef %27) #22
  %29 = shl nsw i32 %28, 16
  %30 = sub nsw i32 %23, %29
  %31 = sdiv i32 %30, 256
  %32 = trunc i32 %31 to i8
  %33 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %34 = add nsw i32 %9, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  store i8 %32, ptr %36, align 1, !tbaa !7
  %37 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  %38 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %39 = getelementptr inbounds i8, ptr %38, i64 %35
  %40 = load i8, ptr %39, align 1, !tbaa !7
  %41 = sext i8 %40 to i32
  %42 = tail call i32 (i32, ...) @INT(i32 noundef %41) #22
  %43 = trunc i32 %37 to i8
  %44 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %45 = sext i32 %16 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  store i8 %43, ptr %46, align 1, !tbaa !7
  %47 = icmp eq i32 %0, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %15
  %49 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %49, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %9, ptr noundef nonnull @.str.1.5) #22
  br label %50

50:                                               ; preds = %48, %15, %13, %11, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STT_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp sgt i32 %2, 1048573
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.75)
  br label %43

8:                                                ; preds = %1
  %9 = add nsw i32 %2, 2
  %10 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 5), align 4, !tbaa !12
  %11 = sdiv i32 %10, 65536
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %15, align 1, !tbaa !7
  %16 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 5), align 4, !tbaa !12
  %17 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %18 = getelementptr inbounds i8, ptr %17, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = tail call i32 (i32, ...) @INT(i32 noundef %20) #22
  %22 = shl nsw i32 %21, 16
  %23 = sub nsw i32 %16, %22
  %24 = sdiv i32 %23, 256
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %25, ptr %29, align 1, !tbaa !7
  %30 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 5), align 4, !tbaa !12
  %31 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = tail call i32 (i32, ...) @INT(i32 noundef %34) #22
  %36 = trunc i32 %30 to i8
  %37 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %38 = sext i32 %9 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !7
  %40 = icmp eq i32 %0, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 5), align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %42, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %43

43:                                               ; preds = %41, %8, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STX_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 0, i32 noundef 3) #22
  %3 = icmp sgt i32 %2, 1048573
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 2) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.76)
  br label %43

8:                                                ; preds = %1
  %9 = add nsw i32 %2, 2
  %10 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %11 = sdiv i32 %10, 65536
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %14 = sext i32 %2 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %15, align 1, !tbaa !7
  %16 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %17 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %18 = getelementptr inbounds i8, ptr %17, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = sext i8 %19 to i32
  %21 = tail call i32 (i32, ...) @INT(i32 noundef %20) #22
  %22 = shl nsw i32 %21, 16
  %23 = sub nsw i32 %16, %22
  %24 = sdiv i32 %23, 256
  %25 = trunc i32 %24 to i8
  %26 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 %25, ptr %29, align 1, !tbaa !7
  %30 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %31 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %32 = getelementptr inbounds i8, ptr %31, i64 %28
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = tail call i32 (i32, ...) @INT(i32 noundef %34) #22
  %36 = trunc i32 %30 to i8
  %37 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %38 = sext i32 %9 to i64
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  store i8 %36, ptr %39, align 1, !tbaa !7
  %40 = icmp eq i32 %0, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.15.9, i32 noundef %42, ptr noundef nonnull @.str.27.17) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_ADDRESS(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.1.5) #22
  br label %43

43:                                               ; preds = %41, %8, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TD_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 1) #22
  %3 = icmp ugt i32 %2, 255
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.78)
  br label %20

8:                                                ; preds = %1
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %9
  %11 = load i32, ptr %10, align 16, !tbaa !48
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  tail call void (i32, ...) @OPEN_DEVICE(i32 noundef %2) #22
  tail call void (i32, ...) @SET_CC(i32 noundef 1) #22
  %14 = icmp eq i32 %0, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.38, i32 noundef %2, ptr noundef nonnull @.str.39) #22
  br label %20

16:                                               ; preds = %8
  tail call void (i32, ...) @SET_CC(i32 noundef 0) #22
  %17 = icmp eq i32 %0, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.77)
  br label %20

20:                                               ; preds = %18, %16, %15, %13, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TIX_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %3 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %4 = add nsw i32 %3, 1
  %5 = srem i32 %4, 16777216
  store i32 %5, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %6 = icmp eq i32 %5, 8388608
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 4) #22
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.79)
  br label %35

11:                                               ; preds = %1
  %12 = icmp sgt i32 %5, 8388607
  %13 = add nsw i32 %5, -16777216
  %14 = select i1 %12, i32 %13, i32 %5
  %15 = icmp sgt i32 %2, 8388607
  %16 = add nsw i32 %2, -16777216
  %17 = select i1 %15, i32 %16, i32 %2
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  tail call void (i32, ...) @SET_CC(i32 noundef 0) #22
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.22.15, i32 noundef %22, ptr noundef nonnull @.str.41) #22
  br label %23

23:                                               ; preds = %21, %11
  %24 = icmp slt i32 %14, %17
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  tail call void (i32, ...) @SET_CC(i32 noundef 1) #22
  %26 = icmp eq i32 %0, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.22.15, i32 noundef %28, ptr noundef nonnull @.str.42) #22
  br label %29

29:                                               ; preds = %27, %25, %23, %19
  %30 = icmp sgt i32 %14, %17
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  tail call void (i32, ...) @SET_CC(i32 noundef 2) #22
  %32 = icmp eq i32 %0, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.22.15, i32 noundef %34, ptr noundef nonnull @.str.43) #22
  br label %35

35:                                               ; preds = %33, %31, %29, %9, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @WD_P(i32 noundef %0) #6 {
  %2 = tail call i32 (i32, i32, ...) @FORMAT3_4(i32 noundef 1, i32 noundef 1) #22
  %3 = icmp ugt i32 %2, 255
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.81)
  br label %30

8:                                                ; preds = %1
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %9
  %11 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 16, !tbaa !48
  %16 = icmp eq i32 %15, 0
  %17 = icmp ult i32 %2, 128
  %18 = or i1 %17, %16
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %8
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.81)
  br label %30

23:                                               ; preds = %14
  %24 = load i32, ptr @REGISTER, align 16, !tbaa !12
  %25 = srem i32 %24, 256
  %26 = tail call i32 @fputc(i32 %25, ptr nonnull %12)
  %27 = icmp eq i32 %0, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.46, i32 noundef %25, ptr noundef nonnull @.str.47) #22
  tail call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.17.11, i32 noundef %2, ptr noundef nonnull @.str.9.8) #22
  br label %29

29:                                               ; preds = %28, %23
  store i32 0, ptr %10, align 16, !tbaa !48
  br label %30

30:                                               ; preds = %29, %21, %19, %6, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @ADDR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 10
  %7 = load i32, ptr %3, align 4
  %8 = icmp ult i32 %7, 10
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = icmp slt i32 %13, 8388608
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !12
  %18 = icmp slt i32 %17, 8388608
  %19 = and i1 %14, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = add nsw i32 %17, %13
  store i32 %21, ptr %16, align 4, !tbaa !12
  %22 = icmp sgt i32 %21, 8388607
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi i32 [ %17, %10 ], [ %21, %20 ]
  %26 = phi i32 [ 0, %10 ], [ %23, %20 ]
  %27 = xor i1 %14, %18
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, ptr %12, align 4, !tbaa !12
  %30 = add nsw i32 %29, %25
  %31 = srem i32 %30, 16777216
  store i32 %31, ptr %16, align 4, !tbaa !12
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i32 [ %31, %28 ], [ %25, %24 ]
  %34 = or i1 %14, %18
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, ptr %12, align 4, !tbaa !12
  %37 = add nsw i32 %36, %33
  %38 = srem i32 %37, 16777216
  store i32 %38, ptr %16, align 4, !tbaa !12
  %39 = icmp slt i32 %38, 8388608
  %40 = select i1 %39, i32 1, i32 %26
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i32 [ %26, %32 ], [ %40, %35 ]
  %43 = icmp eq i32 %0, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %7, ptr noundef nonnull @.str.1.35) #22
  %45 = load i32, ptr %3, align 4, !tbaa !12
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %48, ptr noundef nonnull @.str.3.37) #22
  br label %49

49:                                               ; preds = %44, %41
  %50 = icmp eq i32 %42, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %49, %1
  %52 = phi i32 [ 0, %1 ], [ 4, %49 ]
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef %52) #22
  br label %53

53:                                               ; preds = %51, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @CLEAR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  br label %17

8:                                                ; preds = %1
  %9 = zext i32 %5 to i64
  %10 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %9
  store i32 0, ptr %10, align 4, !tbaa !12
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %5, ptr noundef nonnull @.str.1.35) #22
  %13 = load i32, ptr %2, align 4, !tbaa !12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %16, ptr noundef nonnull @.str.3.37) #22
  br label %17

17:                                               ; preds = %12, %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @COMPR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4, !tbaa !12
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = icmp sgt i32 %8, 8388607
  %10 = add nsw i32 %8, -16777216
  %11 = select i1 %9, i32 %10, i32 %8
  %12 = load i32, ptr %3, align 4, !tbaa !12
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !12
  %16 = add nsw i32 %15, -16777216
  %17 = select i1 %9, i32 %16, i32 %15
  %18 = icmp eq i32 %11, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  call void (i32, ...) @SET_CC(i32 noundef 0) #22
  %20 = icmp eq i32 %0, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  br label %23

23:                                               ; preds = %21, %1
  %24 = icmp slt i32 %11, %17
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  call void (i32, ...) @SET_CC(i32 noundef 1) #22
  %26 = icmp eq i32 %0, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  br label %29

29:                                               ; preds = %27, %25, %23, %19
  %30 = icmp sgt i32 %11, %17
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  call void (i32, ...) @SET_CC(i32 noundef 2) #22
  %32 = icmp eq i32 %0, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  br label %35

35:                                               ; preds = %33, %31, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DIVR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 10
  %7 = load i32, ptr %3, align 4
  %8 = icmp ult i32 %7, 10
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  br label %55

11:                                               ; preds = %1
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 4) #22
  %17 = icmp eq i32 %0, 0
  br i1 %17, label %63, label %18

18:                                               ; preds = %16
  %19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %57

20:                                               ; preds = %11
  %21 = icmp slt i32 %14, 8388608
  %22 = xor i1 %21, true
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !12
  %26 = icmp slt i32 %25, 8388608
  %27 = xor i1 %26, true
  %28 = and i1 %21, %26
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = sdiv i32 %25, %14
  store i32 %30, ptr %24, align 4, !tbaa !12
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ %25, %20 ]
  %33 = and i1 %21, %27
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = sub nsw i32 16777216, %32
  %36 = load i32, ptr %13, align 4, !tbaa !12
  %37 = sdiv i32 %35, %36
  br label %44

38:                                               ; preds = %31
  %39 = and i1 %26, %22
  br i1 %39, label %40, label %47

40:                                               ; preds = %38
  %41 = load i32, ptr %13, align 4, !tbaa !12
  %42 = sub nsw i32 16777216, %41
  %43 = sdiv i32 %32, %42
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i32 [ %37, %34 ], [ %43, %40 ]
  %46 = sub nsw i32 16777216, %45
  store i32 %46, ptr %24, align 4, !tbaa !12
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %32, %38 ], [ %46, %44 ]
  %49 = and i1 %22, %27
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = sub nsw i32 16777216, %48
  %52 = load i32, ptr %13, align 4, !tbaa !12
  %53 = sub nsw i32 16777216, %52
  %54 = sdiv i32 %51, %53
  store i32 %54, ptr %24, align 4, !tbaa !12
  br label %55

55:                                               ; preds = %50, %47, %10
  %56 = icmp eq i32 %0, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %55, %18
  %58 = load i32, ptr %3, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %58, ptr noundef nonnull @.str.1.35) #22
  %59 = load i32, ptr %3, align 4, !tbaa !12
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %62, ptr noundef nonnull @.str.3.37) #22
  br label %63

63:                                               ; preds = %57, %55, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @MULR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 10
  %7 = load i32, ptr %3, align 4
  %8 = icmp ult i32 %7, 10
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %87

10:                                               ; preds = %1
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = icmp slt i32 %13, 8388608
  %15 = xor i1 %14, true
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = icmp slt i32 %18, 8388608
  %20 = xor i1 %19, true
  %21 = and i1 %14, %19
  br i1 %21, label %22, label %29

22:                                               ; preds = %10
  %23 = sitofp i32 %18 to double
  %24 = sitofp i32 %13 to double
  %25 = fmul double %24, %23
  %26 = fcmp ult double %25, 0x4160000000000000
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = fptosi double %25 to i32
  store i32 %28, ptr %17, align 4, !tbaa !12
  br label %29

29:                                               ; preds = %27, %22, %10
  %30 = phi i32 [ %28, %27 ], [ %18, %10 ], [ %18, %22 ]
  %31 = phi i32 [ 0, %27 ], [ 0, %10 ], [ 1, %22 ]
  %32 = and i1 %14, %20
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = sub nsw i32 16777216, %30
  %35 = sitofp i32 %34 to double
  %36 = load i32, ptr %12, align 4, !tbaa !12
  %37 = sitofp i32 %36 to double
  %38 = fmul double %35, %37
  %39 = fmul double %38, 0x3E70000000000000
  %40 = fptosi double %39 to i32
  %41 = shl nsw i32 %40, 24
  %42 = sitofp i32 %41 to double
  %43 = fsub double %38, %42
  %44 = fcmp ult double %43, 0x4160000000000000
  br i1 %44, label %59, label %63

45:                                               ; preds = %29
  %46 = and i1 %19, %15
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = sitofp i32 %30 to double
  %49 = load i32, ptr %12, align 4, !tbaa !12
  %50 = sub nsw i32 16777216, %49
  %51 = sitofp i32 %50 to double
  %52 = fmul double %48, %51
  %53 = fmul double %52, 0x3E70000000000000
  %54 = fptosi double %53 to i32
  %55 = shl nsw i32 %54, 24
  %56 = sitofp i32 %55 to double
  %57 = fsub double %52, %56
  %58 = fcmp ult double %57, 0x4160000000000000
  br i1 %58, label %59, label %63

59:                                               ; preds = %47, %33
  %60 = phi double [ %43, %33 ], [ %57, %47 ]
  %61 = fptosi double %60 to i32
  %62 = sub nsw i32 16777216, %61
  store i32 %62, ptr %17, align 4, !tbaa !12
  br label %63

63:                                               ; preds = %59, %47, %45, %33
  %64 = phi i32 [ %30, %45 ], [ %30, %47 ], [ %30, %33 ], [ %62, %59 ]
  %65 = phi i32 [ %31, %45 ], [ 1, %47 ], [ 1, %33 ], [ %31, %59 ]
  %66 = and i1 %15, %20
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = sub nsw i32 16777216, %64
  %69 = sitofp i32 %68 to double
  %70 = load i32, ptr %12, align 4, !tbaa !12
  %71 = sub nsw i32 16777216, %70
  %72 = sitofp i32 %71 to double
  %73 = fmul double %69, %72
  %74 = fcmp ult double %73, 0x4160000000000000
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = fptosi double %73 to i32
  store i32 %76, ptr %17, align 4, !tbaa !12
  br label %77

77:                                               ; preds = %75, %67, %63
  %78 = phi i32 [ %65, %75 ], [ %65, %63 ], [ 1, %67 ]
  %79 = icmp eq i32 %0, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %7, ptr noundef nonnull @.str.1.35) #22
  %81 = load i32, ptr %3, align 4, !tbaa !12
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %84, ptr noundef nonnull @.str.3.37) #22
  br label %85

85:                                               ; preds = %80, %77
  %86 = icmp eq i32 %78, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %85, %1
  %88 = phi i32 [ 0, %1 ], [ 4, %85 ]
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef %88) #22
  br label %89

89:                                               ; preds = %87, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @RMO_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 10
  %7 = load i32, ptr %3, align 4
  %8 = icmp ult i32 %7, 10
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  br label %23

11:                                               ; preds = %1
  %12 = sext i32 %5 to i64
  %13 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = sext i32 %7 to i64
  %16 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !12
  %17 = icmp eq i32 %0, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %7, ptr noundef nonnull @.str.1.35) #22
  %19 = load i32, ptr %3, align 4, !tbaa !12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %22, ptr noundef nonnull @.str.3.37) #22
  br label %23

23:                                               ; preds = %18, %11, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @SHIFTL_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [24 x i32], align 16
  %5 = alloca [24 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %6 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %7 = load i32, ptr %2, align 4
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  br label %38

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #24
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !12
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %13, i32 noundef 3, ptr noundef nonnull %4) #22
  %14 = load i32, ptr %3, align 4, !tbaa !12
  br label %15

15:                                               ; preds = %15, %10
  %16 = phi i64 [ 0, %10 ], [ %17, %15 ]
  %17 = add nuw nsw i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = add i32 %14, %18
  %20 = srem i32 %19, 24
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [24 x i32], ptr %4, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = getelementptr inbounds [24 x i32], ptr %5, i64 0, i64 %16
  store i32 %23, ptr %24, align 4, !tbaa !12
  %25 = icmp eq i64 %17, 24
  br i1 %25, label %26, label %15, !llvm.loop !49

26:                                               ; preds = %15
  %27 = call i32 (ptr, i32, ...) @BITS_TO_BYTE(ptr noundef nonnull %5, i32 noundef 24) #22
  %28 = load i32, ptr %2, align 4, !tbaa !12
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %29
  store i32 %27, ptr %30, align 4, !tbaa !12
  %31 = icmp eq i32 %0, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %28, ptr noundef nonnull @.str.1.35) #22
  %33 = load i32, ptr %2, align 4, !tbaa !12
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %36, ptr noundef nonnull @.str.3.37) #22
  br label %37

37:                                               ; preds = %32, %26
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #24
  br label %38

38:                                               ; preds = %37, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @SHIFTR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [24 x i32], align 16
  %5 = alloca [24 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %6 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %7 = load i32, ptr %2, align 4
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  br label %44

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #24
  %11 = zext i32 %7 to i64
  %12 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !12
  call void (i32, i32, ptr, ...) @BYTES_TO_BITS(i32 noundef %13, i32 noundef 3, ptr noundef nonnull %4) #22
  %14 = load i32, ptr %3, align 4, !tbaa !12
  %15 = load i32, ptr %4, align 16
  %16 = xor i32 %14, -1
  %17 = sext i32 %14 to i64
  br label %18

18:                                               ; preds = %27, %10
  %19 = phi i64 [ 0, %10 ], [ %30, %27 ]
  %20 = icmp sgt i64 %19, %17
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = trunc i64 %19 to i32
  %23 = add i32 %22, %16
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [24 x i32], ptr %4, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !12
  br label %27

27:                                               ; preds = %21, %18
  %28 = phi i32 [ %26, %21 ], [ %15, %18 ]
  %29 = getelementptr inbounds [24 x i32], ptr %5, i64 0, i64 %19
  store i32 %28, ptr %29, align 4
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, 24
  br i1 %31, label %32, label %18, !llvm.loop !50

32:                                               ; preds = %27
  %33 = call i32 (ptr, i32, ...) @BITS_TO_BYTE(ptr noundef nonnull %5, i32 noundef 24) #22
  %34 = load i32, ptr %2, align 4, !tbaa !12
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %35
  store i32 %33, ptr %36, align 4, !tbaa !12
  %37 = icmp eq i32 %0, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %34, ptr noundef nonnull @.str.1.35) #22
  %39 = load i32, ptr %2, align 4, !tbaa !12
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %42, ptr noundef nonnull @.str.3.37) #22
  br label %43

43:                                               ; preds = %38, %32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #24
  br label %44

44:                                               ; preds = %43, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @SUBR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 10
  %7 = load i32, ptr %3, align 4
  %8 = icmp ult i32 %7, 10
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = sext i32 %5 to i64
  %12 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = icmp slt i32 %13, 8388608
  %15 = xor i1 %14, true
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = icmp slt i32 %18, 8388608
  %20 = xor i1 %19, true
  %21 = and i1 %14, %19
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = sub i32 %18, %13
  %24 = add i32 %23, 16777216
  %25 = srem i32 %24, 16777216
  store i32 %25, ptr %17, align 4, !tbaa !12
  br label %26

26:                                               ; preds = %22, %10
  %27 = phi i32 [ %25, %22 ], [ %18, %10 ]
  %28 = and i1 %14, %20
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, ptr %12, align 4, !tbaa !12
  %31 = add i32 %27, 16777216
  %32 = sub i32 %31, %30
  %33 = srem i32 %32, 16777216
  store i32 %33, ptr %17, align 4, !tbaa !12
  %34 = icmp slt i32 %33, 8388608
  br label %42

35:                                               ; preds = %26
  %36 = and i1 %19, %15
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load i32, ptr %12, align 4, !tbaa !12
  %39 = sub i32 %27, %38
  %40 = add i32 %39, 16777216
  store i32 %40, ptr %17, align 4, !tbaa !12
  %41 = icmp sgt i32 %40, 8388607
  br label %42

42:                                               ; preds = %37, %35, %29
  %43 = phi i32 [ %27, %35 ], [ %40, %37 ], [ %33, %29 ]
  %44 = phi i1 [ false, %35 ], [ %41, %37 ], [ %34, %29 ]
  %45 = and i1 %15, %20
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, ptr %12, align 4, !tbaa !12
  %48 = add i32 %43, 16777216
  %49 = sub i32 %48, %47
  %50 = srem i32 %49, 16777216
  store i32 %50, ptr %17, align 4, !tbaa !12
  br label %51

51:                                               ; preds = %46, %42
  %52 = icmp eq i32 %0, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  call void (ptr, i32, ptr, ...) @PRINT_REG_NAME(ptr noundef nonnull @.str.34, i32 noundef %7, ptr noundef nonnull @.str.1.35) #22
  %54 = load i32, ptr %3, align 4, !tbaa !12
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.2.36, i32 noundef %57, ptr noundef nonnull @.str.3.37) #22
  br label %58

58:                                               ; preds = %53, %51
  br i1 %44, label %59, label %61

59:                                               ; preds = %58, %1
  %60 = phi i32 [ 0, %1 ], [ 4, %58 ]
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef %60) #22
  br label %61

61:                                               ; preds = %59, %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @SVC_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ugt i32 %5, 4
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  br label %13

8:                                                ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 1, i32 noundef %5) #22
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %2, align 4, !tbaa !12
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.39, i32 noundef %11) #23
  br label %13

13:                                               ; preds = %10, %8, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TIXR_P(i32 noundef %0) #6 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call i32 (ptr, ptr, ...) @FORMAT2(ptr noundef nonnull %2, ptr noundef nonnull %3) #22
  %5 = load i32, ptr %2, align 4
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 0) #22
  br label %44

8:                                                ; preds = %1
  %9 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %10 = add nsw i32 %9, 1
  %11 = srem i32 %10, 16777216
  store i32 %11, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  %12 = icmp eq i32 %11, 8388608
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 2, i32 noundef 4) #22
  %14 = icmp eq i32 %0, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %13
  %16 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  br label %44

17:                                               ; preds = %8
  %18 = icmp sgt i32 %11, 8388607
  %19 = add nsw i32 %11, -16777216
  %20 = select i1 %18, i32 %19, i32 %11
  %21 = zext i32 %5 to i64
  %22 = getelementptr inbounds [10 x i32], ptr @REGISTER, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !12
  %24 = icmp sgt i32 %23, 8388607
  %25 = add nsw i32 %23, -16777216
  %26 = select i1 %24, i32 %25, i32 %23
  %27 = icmp eq i32 %20, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  call void (i32, ...) @SET_CC(i32 noundef 0) #22
  %29 = icmp eq i32 %0, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.10, i32 noundef %31, ptr noundef nonnull @.str.11.40) #22
  br label %32

32:                                               ; preds = %30, %17
  %33 = icmp slt i32 %20, %26
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  call void (i32, ...) @SET_CC(i32 noundef 1) #22
  %35 = icmp eq i32 %0, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.10, i32 noundef %37, ptr noundef nonnull @.str.12.41) #22
  br label %38

38:                                               ; preds = %36, %34, %32, %28
  %39 = icmp sgt i32 %20, %26
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  call void (i32, ...) @SET_CC(i32 noundef 2) #22
  %41 = icmp eq i32 %0, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 1), align 4, !tbaa !12
  call void (ptr, i32, ptr, ...) @PRINT_CONSTANT(ptr noundef nonnull @.str.10, i32 noundef %43, ptr noundef nonnull @.str.13.42) #22
  br label %44

44:                                               ; preds = %42, %40, %38, %15, %13, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @SIGNAL_INTERUPT(i32 noundef %0, i32 noundef %1) #11 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  %6 = sdiv i32 %5, 256
  %7 = shl nsw i32 %6, 8
  %8 = add nsw i32 %7, %1
  store i32 %8, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  store i32 2, ptr @RETURN_STATUS, align 4, !tbaa !12
  br label %9

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @LOAD(i32 noundef %0, ptr noundef %1, ptr noundef %2) #6 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  store i32 0, ptr %6, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %7) #24
  %8 = getelementptr inbounds [9 x i8], ptr %7, i64 0, i64 8
  store i8 0, ptr %8, align 1, !tbaa !7
  %9 = tail call i32 @feof(ptr noundef %2) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %27

12:                                               ; preds = %3
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %4, ptr noundef %2) #22
  %13 = load ptr, ptr %4, align 8, !tbaa !16
  %14 = load i8, ptr %13, align 1, !tbaa !7
  %15 = icmp eq i8 %14, 83
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #21
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %12
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %27

20:                                               ; preds = %16
  %21 = icmp eq i32 %0, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  store i8 0, ptr getelementptr inbounds ([9 x i8], ptr @MAIN_ROUTINE, i64 0, i64 8), align 1, !tbaa !7
  %23 = getelementptr inbounds i8, ptr %13, i64 1
  %24 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @MAIN_ROUTINE, ptr noundef nonnull dereferenceable(1) %23, i64 noundef 8) #22
  br label %25

25:                                               ; preds = %22, %20
  %26 = getelementptr inbounds i8, ptr %13, i64 9
  call void (ptr, i32, i32, ptr, ptr, ...) @STR_TO_NUM(ptr noundef nonnull %26, i32 noundef 5, i32 noundef 16, ptr noundef nonnull @START_ADDRESS, ptr noundef %1) #22
  br label %27

27:                                               ; preds = %25, %19, %11
  %28 = icmp eq i32 %0, 0
  br label %29

29:                                               ; preds = %42, %27
  %30 = call i32 @feof(ptr noundef %2) #22
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %6, align 4
  %33 = icmp slt i32 %32, 1048577
  %34 = select i1 %31, i1 %33, i1 false
  %35 = load i32, ptr %1, align 4, !tbaa !12
  %36 = icmp eq i32 %35, 0
  br i1 %34, label %37, label %94

37:                                               ; preds = %29
  br i1 %36, label %38, label %95

38:                                               ; preds = %37
  call void (ptr, ptr, ...) @GET_LINE(ptr noundef nonnull %4, ptr noundef %2) #22
  %39 = load ptr, ptr %4, align 8, !tbaa !16
  %40 = load i8, ptr %39, align 1, !tbaa !7
  %41 = sext i8 %40 to i32
  switch i32 %41, label %42 [
    i32 84, label %43
    i32 77, label %63
    i32 71, label %81
  ]

42:                                               ; preds = %86, %85, %84, %68, %67, %66, %59, %58, %46, %38
  br label %29, !llvm.loop !51

43:                                               ; preds = %38
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #21
  %45 = icmp ult i64 %44, 9
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %42

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %39, i64 1
  call void (ptr, i32, i32, ptr, ptr, ...) @STR_TO_NUM(ptr noundef nonnull %48, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %6, ptr noundef nonnull %1) #22
  %49 = load ptr, ptr %4, align 8, !tbaa !16
  %50 = getelementptr inbounds i8, ptr %49, i64 7
  call void (ptr, i32, i32, ptr, ptr, ...) @STR_TO_NUM(ptr noundef nonnull %50, i32 noundef 2, i32 noundef 16, ptr noundef nonnull %5, ptr noundef nonnull %1) #22
  %51 = load ptr, ptr %4, align 8, !tbaa !16
  %52 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #21
  %53 = load i32, ptr %5, align 4, !tbaa !12
  %54 = shl nsw i32 %53, 1
  %55 = add nsw i32 %54, 9
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %52, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %47
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %42

59:                                               ; preds = %47
  %60 = getelementptr inbounds i8, ptr %51, i64 9
  %61 = load i32, ptr %6, align 4, !tbaa !12
  %62 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  call void (ptr, i32, i32, ptr, ptr, ...) @STORE_AT(ptr noundef nonnull %60, i32 noundef %53, i32 noundef %61, ptr noundef %62, ptr noundef nonnull %1) #22
  br label %42

63:                                               ; preds = %38
  %64 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #21
  %65 = icmp eq i64 %64, 21
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %42

67:                                               ; preds = %63
  br i1 %28, label %42, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds i8, ptr %39, i64 1
  %70 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %69, i64 noundef 8) #22
  %71 = getelementptr inbounds i8, ptr %39, i64 9
  call void (ptr, i32, i32, ptr, ptr, ...) @STR_TO_NUM(ptr noundef nonnull %71, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %6, ptr noundef nonnull %1) #22
  %72 = load i32, ptr %6, align 4, !tbaa !12
  %73 = call i32 (ptr, ptr, i32, i32, ptr, ...) @INSERT_IN_SYM_TAB(ptr noundef nonnull @.str.45, ptr noundef nonnull %7, i32 noundef %72, i32 noundef 3, ptr noundef nonnull @SYM_TAB) #22
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, ptr %1, align 4, !tbaa !12
  %76 = load ptr, ptr %4, align 8, !tbaa !16
  %77 = getelementptr inbounds i8, ptr %76, i64 15
  call void (ptr, i32, i32, ptr, ptr, ...) @STR_TO_NUM(ptr noundef nonnull %77, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %5, ptr noundef nonnull %1) #22
  %78 = load i32, ptr %5, align 4, !tbaa !12
  %79 = call ptr (ptr, ptr, ptr, ...) @LOOK_UP_SYMBOL(ptr noundef nonnull @.str.45, ptr noundef nonnull %7, ptr noundef nonnull @SYM_TAB) #22
  %80 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %79, i64 0, i32 3
  store i32 %78, ptr %80, align 8, !tbaa !52
  br label %42

81:                                               ; preds = %38
  %82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #21
  %83 = icmp eq i64 %82, 15
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 1, ptr %1, align 4, !tbaa !12
  br label %42

85:                                               ; preds = %81
  br i1 %28, label %42, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds i8, ptr %39, i64 1
  %88 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %87, i64 noundef 8) #22
  %89 = getelementptr inbounds i8, ptr %39, i64 9
  call void (ptr, i32, i32, ptr, ptr, ...) @STR_TO_NUM(ptr noundef nonnull %89, i32 noundef 6, i32 noundef 16, ptr noundef nonnull %6, ptr noundef nonnull %1) #22
  %90 = load i32, ptr %6, align 4, !tbaa !12
  %91 = call i32 (ptr, ptr, i32, i32, ptr, ...) @INSERT_IN_SYM_TAB(ptr noundef nonnull @.str.45, ptr noundef nonnull %7, i32 noundef %90, i32 noundef 4, ptr noundef nonnull @SYM_TAB) #22
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, ptr %1, align 4, !tbaa !12
  br label %42

94:                                               ; preds = %29
  %.lcssa = phi i1 [ %36, %29 ]
  br i1 %.lcssa, label %97, label %95

95:                                               ; preds = %94, %37
  %96 = call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  br label %97

97:                                               ; preds = %95, %94
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal void @CALL_FUNCTION1(i32 noundef %0, i32 noundef %1) #6 {
  switch i32 %0, label %47 [
    i32 22, label %3
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 6, label %9
    i32 7, label %10
    i32 8, label %11
    i32 9, label %12
    i32 10, label %13
    i32 11, label %14
    i32 12, label %15
    i32 13, label %16
    i32 14, label %17
    i32 15, label %18
    i32 16, label %19
    i32 17, label %20
    i32 18, label %21
    i32 19, label %22
    i32 20, label %23
    i32 21, label %24
    i32 44, label %46
    i32 23, label %25
    i32 24, label %26
    i32 25, label %27
    i32 26, label %28
    i32 27, label %29
    i32 28, label %30
    i32 29, label %31
    i32 30, label %32
    i32 31, label %33
    i32 32, label %34
    i32 33, label %35
    i32 34, label %36
    i32 35, label %37
    i32 36, label %38
    i32 37, label %39
    i32 38, label %40
    i32 39, label %41
    i32 40, label %42
    i32 41, label %43
    i32 42, label %44
    i32 43, label %45
  ]

3:                                                ; preds = %2
  tail call void (i32, ...) @LDA_P(i32 noundef %1) #22
  br label %47

4:                                                ; preds = %2
  tail call void (i32, ...) @LDX_P(i32 noundef %1) #22
  br label %47

5:                                                ; preds = %2
  tail call void (i32, ...) @LDL_P(i32 noundef %1) #22
  br label %47

6:                                                ; preds = %2
  tail call void (i32, ...) @STA_P(i32 noundef %1) #22
  br label %47

7:                                                ; preds = %2
  tail call void (i32, ...) @STX_P(i32 noundef %1) #22
  br label %47

8:                                                ; preds = %2
  tail call void (i32, ...) @STL_P(i32 noundef %1) #22
  br label %47

9:                                                ; preds = %2
  tail call void (i32, ...) @ADD_P(i32 noundef %1) #22
  br label %47

10:                                               ; preds = %2
  tail call void (i32, ...) @SUB_P(i32 noundef %1) #22
  br label %47

11:                                               ; preds = %2
  tail call void (i32, ...) @MUL_P(i32 noundef %1) #22
  br label %47

12:                                               ; preds = %2
  tail call void (i32, ...) @DIV_P(i32 noundef %1) #22
  br label %47

13:                                               ; preds = %2
  tail call void (i32, ...) @COMP_P(i32 noundef %1) #22
  br label %47

14:                                               ; preds = %2
  tail call void (i32, ...) @TIX_P(i32 noundef %1) #22
  br label %47

15:                                               ; preds = %2
  tail call void (i32, ...) @JEQ_P(i32 noundef %1) #22
  br label %47

16:                                               ; preds = %2
  tail call void (i32, ...) @JGT_P(i32 noundef %1) #22
  br label %47

17:                                               ; preds = %2
  tail call void (i32, ...) @JLT_P(i32 noundef %1) #22
  br label %47

18:                                               ; preds = %2
  tail call void (i32, ...) @J_P(i32 noundef %1) #22
  br label %47

19:                                               ; preds = %2
  tail call void (i32, ...) @AND_P(i32 noundef %1) #22
  br label %47

20:                                               ; preds = %2
  tail call void (i32, ...) @OR_P(i32 noundef %1) #22
  br label %47

21:                                               ; preds = %2
  tail call void (i32, ...) @JSUB_P(i32 noundef %1) #22
  br label %47

22:                                               ; preds = %2
  tail call void (i32, ...) @RSUB_P(i32 noundef %1) #22
  br label %47

23:                                               ; preds = %2
  tail call void (i32, ...) @LDCH_P(i32 noundef %1) #22
  br label %47

24:                                               ; preds = %2
  tail call void (i32, ...) @STCH_P(i32 noundef %1) #22
  br label %47

25:                                               ; preds = %2
  tail call void (i32, ...) @LDB_P(i32 noundef %1) #22
  br label %47

26:                                               ; preds = %2
  tail call void (i32, ...) @LDS_P(i32 noundef %1) #22
  br label %47

27:                                               ; preds = %2
  tail call void (i32, ...) @LDT_P(i32 noundef %1) #22
  br label %47

28:                                               ; preds = %2
  tail call void (i32, ...) @STB_P(i32 noundef %1) #22
  br label %47

29:                                               ; preds = %2
  tail call void (i32, ...) @STS_P(i32 noundef %1) #22
  br label %47

30:                                               ; preds = %2
  tail call void (i32, ...) @STT_P(i32 noundef %1) #22
  br label %47

31:                                               ; preds = %2
  tail call void (i32, ...) @ADDR_P(i32 noundef %1) #22
  br label %47

32:                                               ; preds = %2
  tail call void (i32, ...) @SUBR_P(i32 noundef %1) #22
  br label %47

33:                                               ; preds = %2
  tail call void (i32, ...) @MULR_P(i32 noundef %1) #22
  br label %47

34:                                               ; preds = %2
  tail call void (i32, ...) @DIVR_P(i32 noundef %1) #22
  br label %47

35:                                               ; preds = %2
  tail call void (i32, ...) @COMPR_P(i32 noundef %1) #22
  br label %47

36:                                               ; preds = %2
  tail call void (i32, ...) @SHIFTL_P(i32 noundef %1) #22
  br label %47

37:                                               ; preds = %2
  tail call void (i32, ...) @SHIFTR_P(i32 noundef %1) #22
  br label %47

38:                                               ; preds = %2
  tail call void (i32, ...) @RMO_P(i32 noundef %1) #22
  br label %47

39:                                               ; preds = %2
  tail call void (i32, ...) @SVC_P(i32 noundef %1) #22
  br label %47

40:                                               ; preds = %2
  tail call void (i32, ...) @CLEAR_P(i32 noundef %1) #22
  br label %47

41:                                               ; preds = %2
  tail call void (i32, ...) @TIXR_P(i32 noundef %1) #22
  br label %47

42:                                               ; preds = %2
  tail call void (i32, ...) @STI_P(i32 noundef %1) #22
  br label %47

43:                                               ; preds = %2
  tail call void (i32, ...) @RD_P(i32 noundef %1) #22
  br label %47

44:                                               ; preds = %2
  tail call void (i32, ...) @WD_P(i32 noundef %1) #22
  br label %47

45:                                               ; preds = %2
  tail call void (i32, ...) @TD_P(i32 noundef %1) #22
  br label %47

46:                                               ; preds = %2
  tail call void (i32, ...) @STSW_P(i32 noundef %1) #22
  br label %47

47:                                               ; preds = %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @RESET_DEVICES() #1 {
  store i32 0, ptr @DEVICE, align 16, !tbaa !48
  store ptr null, ptr getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 0, i32 1), align 8, !tbaa !46
  store i32 0, ptr getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 128), align 16, !tbaa !48
  store ptr null, ptr getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 128, i32 1), align 8, !tbaa !46
  br label %1

1:                                                ; preds = %13, %0
  %2 = phi i64 [ 0, %0 ], [ %14, %13 ]
  %3 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %2
  %4 = load i32, ptr %3, align 16, !tbaa !48
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, ptr %3, align 16, !tbaa !48
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %2, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @fclose(ptr noundef nonnull %9) #23
  store ptr null, ptr %8, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %11, %7
  %14 = add nuw nsw i64 %2, 1
  %15 = icmp eq i64 %14, 256
  br i1 %15, label %16, label %1, !llvm.loop !53

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PRINT_REG_NAME(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [10 x [3 x i8]], ptr @REG_NAMES, i64 0, i64 %4
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %0, ptr noundef nonnull %5, ptr noundef %2) #23
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: write) uwtable
define internal void @BYTES_TO_BITS(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #13 {
  %4 = icmp slt i32 %1, 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = shl i32 %1, 3
  %7 = sext i32 %6 to i64
  %8 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  %9 = add nuw nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i64 [ 1, %5 ], [ %19, %11 ]
  %13 = phi i32 [ %0, %5 ], [ %14, %11 ]
  %14 = sdiv i32 %13, 2
  %15 = shl nsw i32 %14, 1
  %16 = sub nsw i32 %13, %15
  %17 = sub nsw i64 %7, %12
  %18 = getelementptr inbounds i32, ptr %2, i64 %17
  store i32 %16, ptr %18, align 4, !tbaa !12
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %21, label %11, !llvm.loop !54

21:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal i32 @BITS_TO_BYTE(ptr nocapture noundef readonly %0, i32 noundef %1) #15 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %12, %6 ]
  %9 = shl nsw i32 %8, 1
  %10 = getelementptr inbounds i32, ptr %0, i64 %7
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = add nsw i32 %11, %9
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %15, label %6, !llvm.loop !55

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @SET_CC(i32 noundef %0) #1 {
  %2 = alloca [24 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #24
  %3 = icmp ult i32 %0, 4
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 1, %4 ], [ %14, %6 ]
  %8 = phi i32 [ %5, %4 ], [ %9, %6 ]
  %9 = sdiv i32 %8, 2
  %10 = shl nsw i32 %9, 1
  %11 = sub nsw i32 %8, %10
  %12 = sub nuw nsw i64 24, %7
  %13 = getelementptr inbounds i32, ptr %2, i64 %12
  store i32 %11, ptr %13, align 4, !tbaa !12
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 25
  br i1 %15, label %16, label %6, !llvm.loop !54

16:                                               ; preds = %6
  %17 = lshr i32 %0, 1
  %18 = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 6
  store i32 %17, ptr %18, align 8, !tbaa !12
  %19 = and i32 %0, 1
  %20 = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 7
  store i32 %19, ptr %20, align 4, !tbaa !12
  br label %21

21:                                               ; preds = %21, %16
  %22 = phi i64 [ 0, %16 ], [ %28, %21 ]
  %23 = phi i32 [ 0, %16 ], [ %27, %21 ]
  %24 = shl nsw i32 %23, 1
  %25 = getelementptr inbounds i32, ptr %2, i64 %22
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = add nsw i32 %26, %24
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, 24
  br i1 %29, label %30, label %21, !llvm.loop !55

30:                                               ; preds = %21
  %.lcssa = phi i32 [ %27, %21 ]
  store i32 %.lcssa, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  br label %33

31:                                               ; preds = %1
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  br label %33

33:                                               ; preds = %31, %30
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @CC() #16 {
  %1 = alloca [24 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %1) #24
  %2 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ 1, %0 ], [ %11, %3 ]
  %5 = phi i32 [ %2, %0 ], [ %6, %3 ]
  %6 = sdiv i32 %5, 2
  %7 = shl nsw i32 %6, 1
  %8 = sub nsw i32 %5, %7
  %9 = sub nuw nsw i64 24, %4
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  store i32 %8, ptr %10, align 4, !tbaa !12
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 25
  br i1 %12, label %13, label %3, !llvm.loop !54

13:                                               ; preds = %3
  %14 = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 6
  %15 = load i32, ptr %14, align 8, !tbaa !12
  %16 = shl nsw i32 %15, 1
  %17 = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 7
  %18 = load i32, ptr %17, align 4, !tbaa !12
  %19 = add nsw i32 %16, %18
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %1) #24
  ret i32 %19
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @SUPERVISOR_MODE() #16 {
  %1 = alloca [24 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %1) #24
  %2 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 9), align 4, !tbaa !12
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ 1, %0 ], [ %11, %3 ]
  %5 = phi i32 [ %2, %0 ], [ %6, %3 ]
  %6 = sdiv i32 %5, 2
  %7 = shl nsw i32 %6, 1
  %8 = sub nsw i32 %5, %7
  %9 = sub nuw nsw i64 24, %4
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  store i32 %8, ptr %10, align 4, !tbaa !12
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 25
  br i1 %12, label %13, label %3, !llvm.loop !54

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 16, !tbaa !12
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %1) #24
  ret i32 %16
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @OPEN_DEVICE(i32 noundef %0) #1 {
  %2 = alloca [6 x i8], align 1
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %3
  store i32 1, ptr %4, align 16, !tbaa !48
  %5 = getelementptr inbounds [256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 %3, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #24
  store i8 100, ptr %2, align 1, !tbaa !7
  %9 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 1
  store i8 101, ptr %9, align 1, !tbaa !7
  %10 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 2
  store i8 118, ptr %10, align 1, !tbaa !7
  %11 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 5
  store i8 0, ptr %11, align 1, !tbaa !7
  switch i32 %0, label %16 [
    i32 0, label %12
    i32 128, label %14
  ]

12:                                               ; preds = %8
  %13 = load ptr, ptr @stdin, align 8, !tbaa !16
  store ptr %13, ptr getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 0, i32 1), align 8, !tbaa !46
  br label %35

14:                                               ; preds = %8
  %15 = load ptr, ptr @stdout, align 8, !tbaa !16
  store ptr %15, ptr getelementptr inbounds ([256 x %struct.DEVICE_ENTRY], ptr @DEVICE, i64 0, i64 128, i32 1), align 8, !tbaa !46
  br label %35

16:                                               ; preds = %8
  %17 = sdiv i32 %0, 16
  %18 = icmp slt i32 %0, 160
  %19 = trunc i32 %17 to i8
  %20 = select i1 %18, i8 48, i8 55
  %21 = add i8 %20, %19
  %22 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 3
  store i8 %21, ptr %22, align 1, !tbaa !7
  %23 = shl nsw i32 %17, 4
  %24 = sub nsw i32 %0, %23
  %25 = icmp slt i32 %24, 10
  %26 = trunc i32 %24 to i8
  %27 = select i1 %25, i8 48, i8 55
  %28 = add i8 %27, %26
  %29 = getelementptr inbounds [6 x i8], ptr %2, i64 0, i64 4
  store i8 %28, ptr %29, align 1, !tbaa !7
  %30 = icmp slt i32 %0, 128
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.62.70) #23
  store ptr %32, ptr %5, align 8, !tbaa !46
  br label %35

33:                                               ; preds = %16
  %34 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.63.71) #23
  store ptr %34, ptr %5, align 8, !tbaa !46
  br label %35

35:                                               ; preds = %33, %31, %14, %12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #24
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal void @PRINT_ADDRESS(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6 {
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #24
  %5 = load ptr, ptr @SYM_TAB, align 8, !tbaa !16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %28, %3
  %8 = phi ptr [ %30, %28 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !21
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %28

12:                                               ; preds = %18, %7
  %.lcssa = phi ptr [ %.lcssa, %18 ], [ %8, %7 ]
  %13 = phi i32 [ %19, %18 ], [ 7, %7 ]
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [9 x i8], ptr %.lcssa, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !7
  %17 = icmp eq i8 %16, 32
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = add nsw i32 %13, -1
  %20 = icmp ugt i32 %13, 1
  br i1 %20, label %12, label %21, !llvm.loop !56

21:                                               ; preds = %18, %12
  %.lcssa.lcssa = phi ptr [ %.lcssa, %18 ], [ %.lcssa, %12 ]
  %22 = phi i32 [ 0, %18 ], [ %13, %12 ]
  %23 = add nuw nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [9 x i8], ptr %.lcssa.lcssa, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !7
  store i8 0, ptr %25, align 1, !tbaa !7
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64.74, ptr noundef %0, ptr noundef nonnull %.lcssa.lcssa, ptr noundef %2) #23
  store i8 %26, ptr %25, align 1, !tbaa !7
  br label %44

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %8, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %7, !llvm.loop !57

32:                                               ; preds = %28, %3
  %33 = load i8, ptr @TYPE_OUT_MODE, align 1, !tbaa !7
  %34 = icmp eq i8 %33, 68
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  call void (i32, i32, i32, ptr, ...) @NUM_TO_STR(i32 noundef %1, i32 noundef 10, i32 noundef 8, ptr noundef nonnull %4) #22
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65.75, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #23
  br label %44

37:                                               ; preds = %32
  call void (i32, i32, i32, ptr, ...) @NUM_TO_STR(i32 noundef %1, i32 noundef 16, i32 noundef 6, ptr noundef nonnull %4) #22
  %38 = load i32, ptr @PRINT_INSTR, align 4, !tbaa !12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66.76, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #23
  br label %44

42:                                               ; preds = %37
  %43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64.74, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #23
  br label %44

44:                                               ; preds = %42, %40, %35, %21
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PRINT_CONSTANT(ptr noundef %0, i32 noundef %1, ptr noundef %2) #6 {
  %4 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #24
  %5 = load i8, ptr @TYPE_OUT_MODE, align 1, !tbaa !7
  %6 = icmp eq i8 %5, 68
  %7 = icmp eq i32 %1, 0
  br i1 %6, label %8, label %17

8:                                                ; preds = %3
  br i1 %7, label %15, label %9

9:                                                ; preds = %8
  %10 = sitofp i32 %1 to double
  %11 = tail call double @log(double noundef %10) #22
  %12 = fdiv double %11, 0x40026BB1BBB55516
  %13 = fptosi double %12 to i32
  %14 = add nsw i32 %13, 1
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ %14, %9 ], [ 1, %8 ]
  call void (i32, i32, i32, ptr, ...) @NUM_TO_STR(i32 noundef %1, i32 noundef 10, i32 noundef %16, ptr noundef nonnull %4) #22
  br label %29

17:                                               ; preds = %3
  br i1 %7, label %24, label %18

18:                                               ; preds = %17
  %19 = sitofp i32 %1 to double
  %20 = tail call double @log(double noundef %19) #22
  %21 = fdiv double %20, 0x40062E42FEFA39EF
  %22 = fptosi double %21 to i32
  %23 = add nsw i32 %22, 1
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi i32 [ %23, %18 ], [ 1, %17 ]
  call void (i32, i32, i32, ptr, ...) @NUM_TO_STR(i32 noundef %1, i32 noundef 16, i32 noundef %25, ptr noundef nonnull %4) #22
  %26 = load i32, ptr @PRINT_INSTR, align 4, !tbaa !12
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.66.76, ptr @.str.64.74
  br label %29

29:                                               ; preds = %24, %15
  %30 = phi ptr [ @.str.65.75, %15 ], [ %28, %24 ]
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %30, ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define internal void @PRINT_INSTRUCTION(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) #6 {
  %4 = alloca [32 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #24
  store i32 1, ptr @PRINT_INSTR, align 4, !tbaa !12
  %7 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !7
  %11 = sext i8 %10 to i32
  %12 = tail call i32 (i32, ...) @INT(i32 noundef %11) #22
  %13 = sdiv i32 %12, 4
  %14 = icmp ugt i32 %0, 1048575
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !12
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %247, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.90)
  br label %114

19:                                               ; preds = %3
  %20 = sext i32 %13 to i64
  %21 = getelementptr inbounds [64 x %struct.INSTR_INFO], ptr @INSTR, i64 0, i64 %20, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !58
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %110, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %26 = zext i32 %0 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !7
  %29 = sext i8 %28 to i32
  %30 = tail call i32 (i32, ...) @INT(i32 noundef %29) #22
  br label %31

31:                                               ; preds = %31, %24
  %32 = phi i64 [ 1, %24 ], [ %39, %31 ]
  %33 = phi i32 [ %30, %24 ], [ %34, %31 ]
  %34 = sdiv i32 %33, 2
  %35 = shl nsw i32 %34, 1
  %36 = sub nsw i32 %33, %35
  %37 = sub nuw nsw i64 8, %32
  %38 = getelementptr inbounds i32, ptr %4, i64 %37
  store i32 %36, ptr %38, align 4, !tbaa !12
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, 9
  br i1 %40, label %41, label %31, !llvm.loop !54

41:                                               ; preds = %31
  %42 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %43 = add nuw nsw i32 %0, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !7
  %47 = sext i8 %46 to i32
  %48 = tail call i32 (i32, ...) @INT(i32 noundef %47) #22
  %49 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 8
  br label %50

50:                                               ; preds = %50, %41
  %51 = phi i64 [ 1, %41 ], [ %58, %50 ]
  %52 = phi i32 [ %48, %41 ], [ %53, %50 ]
  %53 = sdiv i32 %52, 2
  %54 = shl nsw i32 %53, 1
  %55 = sub nsw i32 %52, %54
  %56 = sub nuw nsw i64 8, %51
  %57 = getelementptr inbounds i32, ptr %49, i64 %56
  store i32 %55, ptr %57, align 4, !tbaa !12
  %58 = add nuw nsw i64 %51, 1
  %59 = icmp eq i64 %58, 9
  br i1 %59, label %60, label %50, !llvm.loop !54

60:                                               ; preds = %50
  %61 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %62 = add nuw nsw i32 %0, 2
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !7
  %66 = sext i8 %65 to i32
  %67 = tail call i32 (i32, ...) @INT(i32 noundef %66) #22
  %68 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 16
  br label %69

69:                                               ; preds = %69, %60
  %70 = phi i64 [ 1, %60 ], [ %77, %69 ]
  %71 = phi i32 [ %67, %60 ], [ %72, %69 ]
  %72 = sdiv i32 %71, 2
  %73 = shl nsw i32 %72, 1
  %74 = sub nsw i32 %71, %73
  %75 = sub nuw nsw i64 8, %70
  %76 = getelementptr inbounds i32, ptr %68, i64 %75
  store i32 %74, ptr %76, align 4, !tbaa !12
  %77 = add nuw nsw i64 %70, 1
  %78 = icmp eq i64 %77, 9
  br i1 %78, label %79, label %69, !llvm.loop !54

79:                                               ; preds = %69
  %80 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 11
  %81 = load i32, ptr %80, align 4, !tbaa !12
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 6
  %85 = load i32, ptr %84, align 8, !tbaa !12
  %86 = icmp eq i32 %85, 0
  %87 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 7
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %86, i1 %89, i1 false
  br i1 %90, label %110, label %91

91:                                               ; preds = %83
  store i32 4, ptr %2, align 4, !tbaa !12
  %92 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %93 = add nuw nsw i32 %0, 3
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %92, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !7
  %97 = sext i8 %96 to i32
  %98 = tail call i32 (i32, ...) @INT(i32 noundef %97) #22
  %99 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 24
  br label %100

100:                                              ; preds = %100, %91
  %101 = phi i64 [ 1, %91 ], [ %108, %100 ]
  %102 = phi i32 [ %98, %91 ], [ %103, %100 ]
  %103 = sdiv i32 %102, 2
  %104 = shl nsw i32 %103, 1
  %105 = sub nsw i32 %102, %104
  %106 = sub nuw nsw i64 8, %101
  %107 = getelementptr inbounds i32, ptr %99, i64 %106
  store i32 %105, ptr %107, align 4, !tbaa !12
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, 9
  br i1 %109, label %112, label %100, !llvm.loop !54

110:                                              ; preds = %83, %79, %19
  %111 = phi i32 [ %22, %19 ], [ 3, %83 ], [ 3, %79 ]
  store i32 %111, ptr %2, align 4, !tbaa !12
  br label %112

112:                                              ; preds = %110, %100
  %113 = icmp eq i32 %1, 0
  br i1 %113, label %247, label %114

114:                                              ; preds = %112, %17
  tail call void @PRINT_ADDRESS(ptr noundef nonnull @.str.68.83, i32 noundef %0, ptr noundef nonnull @.str.69.84) #23
  %115 = load i32, ptr %2, align 4, !tbaa !12
  %116 = icmp eq i32 %115, 4
  %117 = select i1 %116, i32 43, i32 32
  %118 = tail call i32 @putchar(i32 %117)
  %119 = sext i32 %13 to i64
  %120 = getelementptr inbounds [64 x %struct.INSTR_INFO], ptr @INSTR, i64 0, i64 %119
  %121 = load ptr, ptr %120, align 16, !tbaa !60
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72.85, ptr noundef %121) #23
  %123 = load i32, ptr %2, align 4, !tbaa !12
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  store i32 0, ptr @PRINT_INSTR, align 4, !tbaa !12
  br label %247

126:                                              ; preds = %114
  %127 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  store i32 %0, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %128 = load i32, ptr %2, align 4, !tbaa !12
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %179

130:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  call void @FORMAT2(ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  store i32 %127, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %131 = add nsw i32 %13, -45
  %132 = icmp ult i32 %131, 2
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32, ptr %5, align 4, !tbaa !12
  %135 = icmp sgt i32 %134, 9
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [10 x [3 x i8]], ptr @REG_NAMES, i64 0, i64 %136
  %138 = select i1 %135, ptr @str.89, ptr %137
  %139 = call i32 @puts(ptr nonnull dereferenceable(1) %138)
  br label %178

140:                                              ; preds = %130
  %141 = and i32 %12, -4
  %142 = icmp eq i32 %141, 176
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, ptr %5, align 4, !tbaa !12
  %145 = icmp sgt i32 %144, 4
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = call i32 @puts(ptr nonnull dereferenceable(1) @str.88)
  br label %178

148:                                              ; preds = %143
  %149 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76.86, i32 noundef %144) #23
  br label %178

150:                                              ; preds = %140
  %151 = add nsw i32 %13, -41
  %152 = icmp ult i32 %151, 2
  %153 = load i32, ptr %5, align 4, !tbaa !12
  %154 = icmp sgt i32 %153, 9
  br i1 %152, label %155, label %164

155:                                              ; preds = %150
  br i1 %154, label %156, label %158

156:                                              ; preds = %155
  %157 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77.87) #23
  br label %162

158:                                              ; preds = %155
  %159 = sext i32 %153 to i64
  %160 = getelementptr inbounds [10 x [3 x i8]], ptr @REG_NAMES, i64 0, i64 %159
  %161 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78.88, ptr noundef nonnull %160) #23
  br label %162

162:                                              ; preds = %158, %156
  %163 = load i32, ptr %6, align 4, !tbaa !12
  call void @PRINT_CONSTANT(ptr noundef nonnull @.str.79.89, i32 noundef %163, ptr noundef nonnull @.str.80.90) #23
  br label %178

164:                                              ; preds = %150
  br i1 %154, label %165, label %167

165:                                              ; preds = %164
  %166 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77.87) #23
  br label %171

167:                                              ; preds = %164
  %168 = sext i32 %153 to i64
  %169 = getelementptr inbounds [10 x [3 x i8]], ptr @REG_NAMES, i64 0, i64 %168
  %170 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78.88, ptr noundef nonnull %169) #23
  br label %171

171:                                              ; preds = %167, %165
  %172 = load i32, ptr %6, align 4, !tbaa !12
  %173 = icmp sgt i32 %172, 9
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds [10 x [3 x i8]], ptr @REG_NAMES, i64 0, i64 %174
  %176 = select i1 %173, ptr @str.89, ptr %175
  %177 = call i32 @puts(ptr nonnull dereferenceable(1) %176)
  br label %178

178:                                              ; preds = %171, %162, %148, %146, %133
  store i32 0, ptr @PRINT_INSTR, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  br label %247

179:                                              ; preds = %126
  %180 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 6
  %181 = load i32, ptr %180, align 8, !tbaa !12
  %182 = icmp eq i32 %181, 1
  %183 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 7
  %184 = load i32, ptr %183, align 4
  %185 = icmp eq i32 %184, 0
  %186 = select i1 %182, i1 %185, i1 false
  %187 = icmp eq i32 %181, 0
  %188 = icmp eq i32 %184, 1
  %189 = select i1 %187, i1 %188, i1 false
  %190 = select i1 %189, i32 35, i32 32
  %191 = select i1 %186, i32 64, i32 %190
  %192 = tail call i32 @putchar(i32 %191)
  %193 = load i32, ptr %2, align 4, !tbaa !12
  %194 = icmp eq i32 %193, 3
  %195 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 12
  br i1 %194, label %196, label %224

196:                                              ; preds = %196, %179
  %197 = phi i64 [ %203, %196 ], [ 0, %179 ]
  %198 = phi i32 [ %202, %196 ], [ 0, %179 ]
  %199 = shl nsw i32 %198, 1
  %200 = getelementptr inbounds i32, ptr %195, i64 %197
  %201 = load i32, ptr %200, align 4, !tbaa !12
  %202 = add nsw i32 %201, %199
  %203 = add nuw nsw i64 %197, 1
  %204 = icmp eq i64 %203, 12
  br i1 %204, label %205, label %196, !llvm.loop !55

205:                                              ; preds = %196
  %.lcssa = phi i32 [ %202, %196 ]
  %206 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 9
  %207 = load i32, ptr %206, align 4, !tbaa !12
  %208 = icmp eq i32 %207, 1
  %209 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 3), align 4
  %210 = select i1 %208, i32 %209, i32 0
  %211 = add nsw i32 %210, %.lcssa
  %212 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 10
  %213 = load i32, ptr %212, align 8, !tbaa !12
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %233

215:                                              ; preds = %205
  %216 = icmp sgt i32 %211, 2047
  %217 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  br i1 %216, label %218, label %221

218:                                              ; preds = %215
  %219 = add nsw i32 %211, -4093
  %220 = add i32 %219, %217
  br label %233

221:                                              ; preds = %215
  %222 = add nsw i32 %211, 3
  %223 = add i32 %222, %217
  br label %233

224:                                              ; preds = %224, %179
  %225 = phi i64 [ %231, %224 ], [ 0, %179 ]
  %226 = phi i32 [ %230, %224 ], [ 0, %179 ]
  %227 = shl nsw i32 %226, 1
  %228 = getelementptr inbounds i32, ptr %195, i64 %225
  %229 = load i32, ptr %228, align 4, !tbaa !12
  %230 = add nsw i32 %229, %227
  %231 = add nuw nsw i64 %225, 1
  %232 = icmp eq i64 %231, 20
  br i1 %232, label %233, label %224, !llvm.loop !55

233:                                              ; preds = %224, %221, %218, %205
  %234 = phi i32 [ %220, %218 ], [ %223, %221 ], [ %211, %205 ], [ %230, %224 ]
  %235 = icmp slt i32 %234, 1048576
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  tail call void @PRINT_ADDRESS(ptr noundef nonnull @.str.79.89, i32 noundef %234, ptr noundef nonnull @.str.79.89) #23
  br label %239

237:                                              ; preds = %233
  %238 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83.91) #23
  br label %239

239:                                              ; preds = %237, %236
  %240 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 8
  %241 = load i32, ptr %240, align 16, !tbaa !12
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84.92) #23
  br label %245

245:                                              ; preds = %243, %239
  store i32 %127, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %246 = tail call i32 @putchar(i32 10)
  store i32 0, ptr @PRINT_INSTR, align 4, !tbaa !12
  br label %247

247:                                              ; preds = %245, %178, %125, %112, %15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @EXEC(i32 noundef %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %0, 0
  %4 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  br label %5

5:                                                ; preds = %77, %2
  %6 = phi i32 [ %78, %77 ], [ %4, %2 ]
  %7 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !7
  %11 = sext i8 %10 to i32
  %12 = tail call i32 (i32, ...) @INT(i32 noundef %11) #22
  %13 = sdiv i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [64 x %struct.INSTR_INFO], ptr @INSTR, i64 0, i64 %14, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !61
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %19 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !7
  %23 = sext i8 %22 to i32
  %24 = tail call i32 (i32, ...) @INT(i32 noundef %23) #22
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  br i1 %17, label %27, label %62

27:                                               ; preds = %5
  %28 = getelementptr inbounds [64 x %struct.INSTR_INFO], ptr @INSTR, i64 0, i64 %26
  %29 = load ptr, ptr %28, align 16, !tbaa !60
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85.135, i32 noundef %18, ptr noundef %29) #23
  %31 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %32 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !7
  %36 = sext i8 %35 to i32
  %37 = tail call i32 (i32, ...) @INT(i32 noundef %36) #22
  %38 = sdiv i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x %struct.INSTR_INFO], ptr @INSTR, i64 0, i64 %39, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !58
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = tail call i32 @FORMAT3_4(i32 noundef 1, i32 noundef 3) #22
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86.136, i32 noundef %44) #23
  br label %60

46:                                               ; preds = %27
  %47 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %48 = load ptr, ptr @MEMORY, align 8, !tbaa !16
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !7
  %52 = sext i8 %51 to i32
  %53 = tail call i32 (i32, ...) @INT(i32 noundef %52) #22
  %54 = sdiv i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [64 x %struct.INSTR_INFO], ptr @INSTR, i64 0, i64 %55, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !58
  %58 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %59 = add nsw i32 %58, %57
  store i32 %59, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  br label %60

60:                                               ; preds = %46, %43
  %61 = tail call i32 @putchar(i32 10)
  br label %65

62:                                               ; preds = %5
  %63 = getelementptr inbounds [64 x %struct.INSTR_INFO], ptr @INSTR, i64 0, i64 %26, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !61
  tail call void @CALL_FUNCTION1(i32 noundef %64, i32 noundef %1) #23
  br label %65

65:                                               ; preds = %62, %60
  %66 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  %67 = icmp eq i32 %66, 16777215
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, ptr @RETURN_STATUS, align 4, !tbaa !12
  br label %77

69:                                               ; preds = %65
  %70 = load i32, ptr @INTERVAL_TIMER, align 4, !tbaa !12
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = add nsw i32 %70, -1
  store i32 %73, ptr @INTERVAL_TIMER, align 4, !tbaa !12
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  tail call void (i32, i32, ...) @SIGNAL_INTERUPT(i32 noundef 3, i32 noundef 0) #22
  %76 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @REGISTER, i64 0, i64 8), align 16, !tbaa !12
  br label %77

77:                                               ; preds = %75, %72, %69, %68
  %78 = phi i32 [ 16777215, %68 ], [ %66, %72 ], [ %76, %75 ], [ %66, %69 ]
  %79 = load i32, ptr @RETURN_STATUS, align 4
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %3, i1 %80, i1 false
  br i1 %81, label %5, label %82, !llvm.loop !62

82:                                               ; preds = %77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @INT(i8 noundef signext %0) #0 {
  %2 = sext i8 %0 to i32
  %3 = icmp slt i8 %0, 0
  %4 = add nsw i32 %2, 256
  %5 = select i1 %3, i32 %4, i32 %2
  ret i32 %5
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @CREATE_MEMORY(ptr nocapture noundef %0) #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.141)
  br label %8

6:                                                ; preds = %1
  %7 = tail call noalias dereferenceable_or_null(1048576) ptr @malloc(i64 noundef 1048576) #25
  store ptr %7, ptr %0, align 8, !tbaa !16
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal void @DO_STORE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5) #6 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  store i32 0, ptr %7, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  %9 = add nsw i32 %2, %1
  %10 = icmp ult i32 %9, 1048577
  br i1 %10, label %11, label %53

11:                                               ; preds = %6
  %12 = icmp eq i32 %5, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr @LOCATIONS_USED, align 8, !tbaa !63
  %15 = icmp eq ptr %14, null
  %16 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25
  %17 = load ptr, ptr getelementptr inbounds (%struct.BUFFER, ptr @LOCATIONS_USED, i64 0, i32 1), align 8
  %18 = getelementptr inbounds %struct.BUFFER_ELEMENT, ptr %17, i64 0, i32 2
  %19 = select i1 %15, ptr @LOCATIONS_USED, ptr %18
  store ptr %16, ptr %19, align 8, !tbaa !16
  store ptr %16, ptr getelementptr inbounds (%struct.BUFFER, ptr @LOCATIONS_USED, i64 0, i32 1), align 8, !tbaa !65
  store i32 %2, ptr %16, align 8, !tbaa !66
  %20 = getelementptr inbounds %struct.BUFFER_ELEMENT, ptr %16, i64 0, i32 1
  store i32 %1, ptr %20, align 4, !tbaa !68
  %21 = getelementptr inbounds %struct.BUFFER_ELEMENT, ptr %16, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !69
  br label %22

22:                                               ; preds = %13, %11
  %23 = icmp sgt i32 %1, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %22
  %25 = sext i32 %2 to i64
  %26 = zext i32 %1 to i64
  br label %27

27:                                               ; preds = %37, %24
  %28 = phi i64 [ 0, %24 ], [ %44, %37 ]
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !7
  %31 = sext i8 %30 to i32
  %32 = call i32 (i32, ...) @eoln(i32 noundef %31) #22
  %33 = icmp eq i32 %32, 0
  %34 = load i32, ptr %7, align 4
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = shl nuw nsw i64 %28, 1
  %39 = getelementptr inbounds i8, ptr %0, i64 %38
  call void (ptr, i32, i32, ptr, ptr, ...) @STR_TO_NUM(ptr noundef %39, i32 noundef 2, i32 noundef 16, ptr noundef nonnull %8, ptr noundef nonnull %7) #22
  %40 = load i32, ptr %8, align 4, !tbaa !12
  %41 = trunc i32 %40 to i8
  %42 = add nsw i64 %28, %25
  %43 = getelementptr inbounds i8, ptr %3, i64 %42
  store i8 %41, ptr %43, align 1, !tbaa !7
  %44 = add nuw nsw i64 %28, 1
  %45 = icmp eq i64 %44, %26
  br i1 %45, label %46, label %27, !llvm.loop !70

46:                                               ; preds = %37
  %47 = load i32, ptr %7, align 4, !tbaa !12
  br label %48

48:                                               ; preds = %46, %27
  %49 = phi i32 [ %47, %46 ], [ %34, %27 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.142, ptr noundef nonnull %0) #23
  br label %55

53:                                               ; preds = %6
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.143, i32 noundef %2, i32 noundef %1) #23
  br label %55

55:                                               ; preds = %53, %51
  store i32 1, ptr %4, align 4, !tbaa !12
  br label %56

56:                                               ; preds = %55, %48, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @STORE_AT(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #6 {
  tail call void @DO_STORE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 1) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  store i32 0, ptr %3, align 4, !tbaa !12
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6.146)
  br label %58

7:                                                ; preds = %2
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %38

9:                                                ; preds = %7
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = load i8, ptr %11, align 1, !tbaa !7
  %13 = icmp eq i8 %12, 45
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = zext i32 %0 to i64
  br label %16

16:                                               ; preds = %29, %14
  %17 = phi i64 [ 1, %14 ], [ %27, %29 ]
  %18 = phi i32 [ 1, %14 ], [ %26, %29 ]
  %19 = getelementptr inbounds ptr, ptr %1, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.1.147) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.148, ptr noundef %20) #23
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %18, %23 ], [ 0, %16 ]
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp ult i64 %27, %15
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds ptr, ptr %1, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = load i8, ptr %31, align 1, !tbaa !7
  %33 = icmp eq i8 %32, 45
  br i1 %33, label %16, label %34, !llvm.loop !71

34:                                               ; preds = %29
  %.lcssa3 = phi i32 [ %26, %29 ]
  %.lcssa1 = phi i64 [ %27, %29 ]
  %35 = and i64 %.lcssa1, 4294967295
  br label %42

36:                                               ; preds = %25
  %.lcssa2 = phi i32 [ %26, %25 ]
  %.lcssa = phi i64 [ %27, %25 ]
  %37 = and i64 %.lcssa, 4294967295
  br label %38

38:                                               ; preds = %36, %7
  %39 = phi i64 [ %37, %36 ], [ 1, %7 ]
  %40 = phi i32 [ %.lcssa2, %36 ], [ 1, %7 ]
  %41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.149)
  br label %42

42:                                               ; preds = %38, %34, %9
  %43 = phi i64 [ %39, %38 ], [ %35, %34 ], [ 1, %9 ]
  %44 = phi i32 [ %40, %38 ], [ %.lcssa3, %34 ], [ 1, %9 ]
  tail call void (ptr, ...) @INIT_SYM_TAB(ptr noundef nonnull @SYM_TAB) #22
  tail call void (ptr, ...) @CREATE_MEMORY(ptr noundef nonnull @MEMORY) #22
  %45 = getelementptr inbounds ptr, ptr %1, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = tail call noalias ptr @fopen(ptr noundef %46, ptr noundef nonnull @.str.4.150) #23
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load ptr, ptr %45, align 8, !tbaa !16
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.151, ptr noundef %50) #23
  br label %58

52:                                               ; preds = %42
  call void (i32, ptr, ptr, ...) @LOAD(i32 noundef %44, ptr noundef nonnull %3, ptr noundef nonnull %47) #22
  %53 = load i32, ptr %3, align 4, !tbaa !12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  call void (i32, ...) @DEBUGGER(i32 noundef %44) #22
  br label %56

56:                                               ; preds = %55, %52
  %57 = call i32 @fclose(ptr noundef nonnull %47) #23
  br label %58

58:                                               ; preds = %56, %49, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize uwtable
define internal void @GETCHR(ptr nocapture noundef %0) #1 {
  %2 = tail call i32 @getc(ptr noundef %0) #23
  %3 = trunc i32 %2 to i8
  store i8 %3, ptr @CH, align 1, !tbaa !7
  %4 = load ptr, ptr @FRONT, align 8, !tbaa !16
  %5 = load ptr, ptr @BACK, align 8, !tbaa !16
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = load i32, ptr @LEX_LEN, align 4, !tbaa !12
  %10 = add nsw i32 %9, -3
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %14, ptr @FRONT, align 8, !tbaa !16
  store i8 %3, ptr %14, align 1, !tbaa !7
  %15 = load ptr, ptr @FRONT, align 8, !tbaa !16
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 0, ptr %16, align 1, !tbaa !7
  br label %17

17:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal void @GET_LINE(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) #1 {
  store i8 0, ptr @LEXEME, align 16, !tbaa !7
  store ptr @LEXEME, ptr @BACK, align 8, !tbaa !16
  store ptr getelementptr inbounds ([129 x i8], ptr @LEXEME, i64 -1, i64 128), ptr @FRONT, align 8, !tbaa !16
  tail call void @GETCHR(ptr noundef %1) #23
  %3 = load i8, ptr @CH, align 1, !tbaa !7
  %4 = icmp eq i8 %3, 10
  br i1 %4, label %11, label %5

5:                                                ; preds = %8, %2
  %6 = tail call i32 @feof(ptr noundef %1) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  tail call void @GETCHR(ptr noundef %1) #23
  %9 = load i8, ptr @CH, align 1, !tbaa !7
  %10 = icmp eq i8 %9, 10
  br i1 %10, label %11, label %5, !llvm.loop !72

11:                                               ; preds = %8, %5, %2
  %12 = load ptr, ptr @FRONT, align 8, !tbaa !16
  store i8 0, ptr %12, align 1, !tbaa !7
  store ptr @LEXEME, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @INIT_SYM_TAB(ptr nocapture noundef writeonly %0) #19 {
  store ptr null, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @LOOK_UP_SYMBOL(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #20 {
  %4 = load ptr, ptr %2, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %14, %3
  %7 = phi ptr [ %16, %14 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %7, i64 0, i32 1
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11, %6
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %7, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !73

18:                                               ; preds = %14, %11, %3
  %19 = phi ptr [ null, %3 ], [ null, %14 ], [ %7, %11 ]
  ret ptr %19
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @INSERT_IN_SYM_TAB(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #1 {
  %6 = tail call ptr @LOOK_UP_SYMBOL(ptr noundef %0, ptr noundef %1, ptr noundef %4) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #25
  %10 = load ptr, ptr %4, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 5
  store ptr %10, ptr %11, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 1
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #22
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #22
  %15 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 2
  store i32 %2, ptr %15, align 4, !tbaa !21
  %16 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 3
  store i32 0, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.SYMBOL_TABLE_ENTRY, ptr %9, i64 0, i32 4
  store i32 %3, ptr %17, align 4, !tbaa !75
  store ptr %9, ptr %4, align 8, !tbaa !16
  br label %18

18:                                               ; preds = %8, %5
  %19 = phi i32 [ 1, %8 ], [ 0, %5 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind optsize willreturn memory(read) }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize allocsize(0) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = !{!22, !13, i64 20}
!22 = !{!"SYMBOL_TABLE_ENTRY", !8, i64 0, !8, i64 9, !13, i64 20, !13, i64 24, !8, i64 28, !17, i64 32}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = !{i32 0, i32 2}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = !{!35, !17, i64 8}
!35 = !{!"COMMAND_TYPE", !17, i64 0, !17, i64 8, !13, i64 16}
!36 = !{!35, !17, i64 0}
!37 = !{!35, !13, i64 16}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !11, !43, !44}
!46 = !{!47, !17, i64 8}
!47 = !{!"DEVICE_ENTRY", !13, i64 0, !17, i64 8}
!48 = !{!47, !13, i64 0}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = !{!22, !13, i64 24}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = !{!59, !13, i64 8}
!59 = !{!"INSTR_INFO", !17, i64 0, !13, i64 8, !13, i64 12}
!60 = !{!59, !17, i64 0}
!61 = !{!59, !13, i64 12}
!62 = distinct !{!62, !11}
!63 = !{!64, !17, i64 0}
!64 = !{!"BUFFER", !17, i64 0, !17, i64 8}
!65 = !{!64, !17, i64 8}
!66 = !{!67, !13, i64 0}
!67 = !{!"BUFFER_ELEMENT", !13, i64 0, !13, i64 4, !17, i64 8}
!68 = !{!67, !13, i64 4}
!69 = !{!67, !17, i64 8}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = !{!22, !17, i64 32}
!75 = !{!22, !8, i64 28}
