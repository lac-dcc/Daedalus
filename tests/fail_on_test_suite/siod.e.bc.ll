; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/siod/siod.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.ucontext_t = type { i64, ptr, %struct.stack_t, %struct.mcontext_t, %struct.__sigset_t, %struct._libc_fpstate, [4 x i64] }
%struct.stack_t = type { ptr, i32, i64 }
%struct.mcontext_t = type { [23 x i64], ptr, [8 x i64] }
%struct._libc_fpstate = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %struct._libc_fpxreg], [16 x %struct._libc_xmmreg], [24 x i32] }
%struct._libc_fpxreg = type { [4 x i16], i16, [3 x i16] }
%struct._libc_xmmreg = type { [4 x i32] }
%struct.obj = type { i16, i16, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.catch_frame = type { ptr, ptr, [1 x %struct.__jmp_buf_tag], ptr }
%struct.user_type_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tms = type { i64, i64, i64, i64 }
%struct.gc_protected = type { ptr, i64, ptr }
%struct.repl_hooks = type { ptr, ptr, ptr, ptr }
%struct.gen_readio = type { ptr, ptr, ptr }
%struct.timeval = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.group = type { ptr, ptr, i32, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timeval, %struct.timeval, %struct.timeval, [3 x i64] }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@siod_argv = internal global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], align 16
@.str = private unnamed_addr constant [5 x i8] c"siod\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"-h100000:10\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-g0\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-o1000\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"-s200000\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-n2048\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"3.5 5-MAY-97\00", align 1
@nheaps = internal global i64 2, align 8
@heap_size = internal global i64 5000, align 8
@gc_status_flag = internal global i64 1, align 8
@init_file = internal global ptr null, align 8
@gc_kind_copying = internal global i64 0, align 8
@gc_cells_allocated = internal global i64 0, align 8
@stack_start_ptr = internal global ptr null, align 8
@errjmp_ok = internal global i64 0, align 8
@oblistvar = internal global ptr null, align 8
@eof_val = internal global ptr null, align 8
@sym_errobj = internal global ptr null, align 8
@sym_catchall = internal global ptr null, align 8
@sym_progn = internal global ptr null, align 8
@sym_lambda = internal global ptr null, align 8
@sym_quote = internal global ptr null, align 8
@sym_dot = internal global ptr null, align 8
@sym_after_gc = internal global ptr null, align 8
@sym_eval_history_ptr = internal global ptr null, align 8
@unbound_marker = internal global ptr null, align 8
@obarray_dim = internal global i64 100, align 8
@repl_puts = internal global ptr null, align 8
@repl_read = internal global ptr null, align 8
@repl_eval = internal global ptr null, align 8
@repl_print = internal global ptr null, align 8
@inums_dim = internal global i64 256, align 8
@user_types = internal global ptr null, align 8
@user_tc_next = internal global i64 50, align 8
@protected_registers = internal global ptr null, align 8
@.str.1.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@user_ch_readm = internal global ptr @.str.1.9, align 8
@user_te_readm = internal global ptr @.str.1.9, align 8
@user_readm = internal global ptr null, align 8
@user_readt = internal global ptr null, align 8
@fatal_exit_hook = internal global ptr null, align 8
@stack_size = internal global i64 50000, align 8
@.str.2.5 = private unnamed_addr constant [20 x i8] c"/usr/local/lib/siod\00", align 1
@process_cla.siod_lib_set = internal unnamed_addr global i1 false, align 4
@.str.3.3 = private unnamed_addr constant [9 x i8] c"SIOD_LIB\00", align 1
@.str.4.4 = private unnamed_addr constant [13 x i8] c"bad arg: %s\0A\00", align 1
@.str.5.6 = private unnamed_addr constant [50 x i8] c"Welcome to SIOD, Scheme In One Defun, Version %s\0A\00", align 1
@.str.7.8 = private unnamed_addr constant [61 x i8] c"%ld heaps. size = %ld cells, %ld bytes. %ld inums. GC is %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"stop and copy\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"mark and sweep\00", align 1
@heaps = internal global ptr null, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"floating point exception\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"control-c interrupt\00", align 1
@repl_driver.osigint = internal unnamed_addr global ptr null, align 8
@repl_driver.osigfpe = internal unnamed_addr global ptr null, align 8
@errjmp = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@repl_c_string_print_len = internal unnamed_addr global i64 0, align 8
@repl_c_string_out = internal unnamed_addr global ptr null, align 8
@repl_c_string_arg = internal unnamed_addr global ptr null, align 8
@repl_c_string_flag = internal unnamed_addr global i1 false, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"GC took %g seconds, %ld compressed to %ld, %ld free\0A\00", align 1
@old_heap_used = internal global i64 0, align 8
@heap_org = internal global ptr null, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@gc_time_taken = internal global double 0.000000e+00, align 8
@inside_err = internal unnamed_addr global i1 false, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"ERROR: %s (errobj %s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"ERROR: %s (see errobj)\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"BUG. Reached impossible case\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"the currently assigned stack limit has been exceded\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Stack_size = %ld bytes, [%p,%p]\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"not a symbol or string\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"ran out of storage\00", align 1
@freelist = internal global ptr null, align 8
@.str.27 = private unnamed_addr constant [11 x i8] c"wta to car\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"wta to cdr\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"wta to setcar\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"wta to setcdr\00", align 1
@inums = internal global ptr null, align 8
@.str.31 = private unnamed_addr constant [17 x i8] c"wta(1st) to plus\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"wta(2nd) to plus\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"wta(1st) to times\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"wta(2nd) to times\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"wta(1st) to difference\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"wta(2nd) to difference\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"wta(1st) to quotient\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"wta(2nd) to quotient\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"wta to abs\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"wta to sqrt\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"wta(1st) to greaterp\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"wta(2nd) to greaterp\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"wta(1st) to lessp\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"wta(2nd) to lessp\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"wta(1st) to max\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"wta(2nd) to max\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"wta(1st) to min\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"wta(2nd) to min\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"unbound variable\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"not a symbol\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"failed to allocate storage from system\00", align 1
@obarray = internal global ptr null, align 8
@.str.52 = private unnamed_addr constant [24 x i8] c"invalid number of heaps\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"**unbound-marker**\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"let\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"let-internal-macro\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"let*\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"let*-macro\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"letrec\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"letrec-macro\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"errobj\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"*after-gc*\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"*eval-history-ptr*\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"improper list to assq\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"type number out of range\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"ran out of user type codes\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"[allocating heap %ld]\0A\00", align 1
@save_regs_gc_mark = internal global %struct.ucontext_t zeroinitializer, align 8
@gc_rt = internal global double 0.000000e+00, align 8
@gc_cells_collected = internal global i64 0, align 8
@.str.76 = private unnamed_addr constant [47 x i8] c"[GC took %g cpu seconds, %ld cells collected]\0A\00", align 1
@.str.77 = private unnamed_addr constant [62 x i8] c"cannot perform operation with stop-and-copy GC mode. Use -g0\0A\00", align 1
@.str.78 = private unnamed_addr constant [26 x i8] c"garbage collection is on\0A\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"garbage collection is off\0A\00", align 1
@.str.80 = private unnamed_addr constant [24 x i8] c"%ld allocated %ld free\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"garbage collection verbose\0A\00", align 1
@.str.82 = private unnamed_addr constant [27 x i8] c"garbage collection silent\0A\00", align 1
@.str.83 = private unnamed_addr constant [39 x i8] c"%ld/%ld heaps, %ld allocated %ld free\0A\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"bad syntax argument list\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"damaged frame\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"too few arguments\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"damaged env\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"closure code type not valid\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"bad function\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"cannot be applied\00", align 1
@.str.91 = private unnamed_addr constant [27 x i8] c"have eval, dont know apply\00", align 1
@.str.92 = private unnamed_addr constant [26 x i8] c"wta(non-symbol) to setvar\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"wta(non-symbol) to define\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"no *catch found with this tag\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"set!\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"let-internal\00", align 1
@.str.97 = private unnamed_addr constant [30 x i8] c"wta(non-symbol) to symbolconc\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"symbolconc buffer overflow\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"subr_0\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"subr_1\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"subr_2\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"subr_2n\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"subr_3\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"subr_4\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"subr_5\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"lsubr\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"fsubr\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"msubr\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"#<%s \00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"#<CLOSURE \00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"#<UNKNOWN %d %p>\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.122 = private unnamed_addr constant [24 x i8] c"end of file inside read\00", align 1
@.str.123 = private unnamed_addr constant [23 x i8] c"unexpected close paren\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"+internal-backquote\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"+internal-comma-atsign\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"+internal-comma-dot\00", align 1
@.str.127 = private unnamed_addr constant [16 x i8] c"+internal-comma\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"()'`,;\22\00", align 1
@.str.129 = private unnamed_addr constant [28 x i8] c"token larger than TKBUFFERN\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"end of file inside list\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"missing close paren\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"could not open \00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"not a file\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c"parser:\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c".scm\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"loading \00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"-loaded*\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.145 = private unnamed_addr constant [27 x i8] c"bad argument to save-forms\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"appending\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"saving\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c" forms to \00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"#<FILE \00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c" %p\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"file is closed\00", align 1
@last_c_errmsg.serrmsg = internal global [100 x i8] zeroinitializer, align 16
@.str.152 = private unnamed_addr constant [9 x i8] c"errno %d\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"cons\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"car\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"cdr\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"set-car!\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"set-cdr!\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"eq?\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"eqv?\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"assq\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"delq\00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"parser_read\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"*parser_read.scm-loaded*\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"eof-val\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"prin1\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"*catch\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"*throw\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"apropos\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"copy-list\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"gc-status\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"pair?\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"symbol?\00", align 1
@.str.196 = private unnamed_addr constant [8 x i8] c"number?\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"symbol-bound?\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"symbol-value\00", align 1
@.str.199 = private unnamed_addr constant [18 x i8] c"set-symbol-value!\00", align 1
@.str.200 = private unnamed_addr constant [16 x i8] c"the-environment\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"null?\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"env-lookup\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"symbolconc\00", align 1
@.str.207 = private unnamed_addr constant [11 x i8] c"save-forms\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"getc\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"ungetc\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"putc\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"puts\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"ftell\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"fseek\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"parse-number\00", align 1
@.str.217 = private unnamed_addr constant [14 x i8] c"%%stack-limit\00", align 1
@.str.218 = private unnamed_addr constant [7 x i8] c"intern\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"%%closure\00", align 1
@.str.220 = private unnamed_addr constant [15 x i8] c"%%closure-code\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"%%closure-env\00", align 1
@.str.222 = private unnamed_addr constant [9 x i8] c"nreverse\00", align 1
@.str.223 = private unnamed_addr constant [14 x i8] c"allocate-heap\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"gc-info\00", align 1
@.str.225 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"caar\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"cadr\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"cdar\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"cddr\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"srand\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"last-c-error\00", align 1
@.str.234 = private unnamed_addr constant [18 x i8] c"os-classification\00", align 1
@.str.237 = private unnamed_addr constant [29 x i8] c"repl_c_string_print overflow\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"*slib-version*\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"$Id$\00", align 1
@str = private unnamed_addr constant [49 x i8] c"(C) Copyright 1988-1994 Paradigm Associates Inc.\00", align 1
@str.241 = private unnamed_addr constant [52 x i8] c"FATAL ERROR DURING STARTUP OR CRITICAL CODE SECTION\00", align 1
@str.242 = private unnamed_addr constant [14 x i8] c"[starting GC]\00", align 1
@switch.table.subr_kind_str = private unnamed_addr constant [18 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.109, ptr @.str.109, ptr @.str.109, ptr @.str.109, ptr @.str.109, ptr @.str.109, ptr @.str.109, ptr @.str.104, ptr @.str.105, ptr @.str.102], align 8
@bashnum = internal global ptr null, align 8
@heap = internal global ptr null, align 8
@heap_end = internal global ptr null, align 8
@.str.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"\22\\\0A\0D\09\00", align 1
@.str.2.79 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.3.77 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4.78 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5.80 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@tkbuffer = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.7.81 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8.82 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.9.83 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"#%ld\22\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.12.88 = private unnamed_addr constant [25 x i8] c"print to string overflow\00", align 1
@.str.13.89 = private unnamed_addr constant [13 x i8] c"not a string\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"bad index to aref\00", align 1
@.str.15.90 = private unnamed_addr constant [23 x i8] c"negative index to aref\00", align 1
@.str.16.91 = private unnamed_addr constant [16 x i8] c"index too large\00", align 1
@.str.17.92 = private unnamed_addr constant [25 x i8] c"invalid argument to aref\00", align 1
@.str.18.95 = private unnamed_addr constant [24 x i8] c"index to aset too large\00", align 1
@.str.19.94 = private unnamed_addr constant [28 x i8] c"bad value to store in array\00", align 1
@.str.20.93 = private unnamed_addr constant [18 x i8] c"bad index to aset\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"negative index to aset\00", align 1
@.str.22.96 = private unnamed_addr constant [25 x i8] c"invalid argument to aset\00", align 1
@.str.23.18 = private unnamed_addr constant [28 x i8] c"bad dimension to cons-array\00", align 1
@.str.24.19 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.25.20 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.26.21 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.27.22 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.28.23 = private unnamed_addr constant [5 x i8] c"lisp\00", align 1
@.str.29.24 = private unnamed_addr constant [18 x i8] c"bad type of array\00", align 1
@.str.30.99 = private unnamed_addr constant [16 x i8] c"bad start index\00", align 1
@.str.31.100 = private unnamed_addr constant [14 x i8] c"bad end index\00", align 1
@.str.32.103 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.33.106 = private unnamed_addr constant [12 x i8] c"eof after \\\00", align 1
@.str.34.107 = private unnamed_addr constant [13 x i8] c"eof after \\0\00", align 1
@.str.35.108 = private unnamed_addr constant [21 x i8] c"read string overflow\00", align 1
@.str.36.111 = private unnamed_addr constant [29 x i8] c"readsharp syntax not handled\00", align 1
@stack_limit_ptr = internal global ptr null, align 8
@sym_t = internal global ptr null, align 8
@.str.37.16 = private unnamed_addr constant [17 x i8] c"not a hash table\00", align 1
@.str.38.17 = private unnamed_addr constant [21 x i8] c"sxhash inconsistency\00", align 1
@.str.39.15 = private unnamed_addr constant [23 x i8] c"improper list to assoc\00", align 1
@.str.40.114 = private unnamed_addr constant [22 x i8] c"improper list to assv\00", align 1
@.str.41.12 = private unnamed_addr constant [21 x i8] c"symbol name too long\00", align 1
@.str.42.25 = private unnamed_addr constant [18 x i8] c"cannot fast-print\00", align 1
@.str.43.13 = private unnamed_addr constant [25 x i8] c"unknown fast-read opcode\00", align 1
@.str.44.14 = private unnamed_addr constant [13 x i8] c"not a number\00", align 1
@.str.45.115 = private unnamed_addr constant [22 x i8] c"write length too long\00", align 1
@.str.46.112 = private unnamed_addr constant [24 x i8] c"improper list to length\00", align 1
@.str.47.113 = private unnamed_addr constant [14 x i8] c"wta to length\00", align 1
@.str.48.116 = private unnamed_addr constant [4 x i8] c"wta\00", align 1
@.str.49.117 = private unnamed_addr constant [15 x i8] c"width too long\00", align 1
@.str.50.118 = private unnamed_addr constant [20 x i8] c"precision too large\00", align 1
@sym_e = internal global ptr null, align 8
@sym_f = internal global ptr null, align 8
@.str.51.121 = private unnamed_addr constant [7 x i8] c"% *.*g\00", align 1
@.str.52.119 = private unnamed_addr constant [7 x i8] c"% *.*e\00", align 1
@.str.53.120 = private unnamed_addr constant [7 x i8] c"% *.*f\00", align 1
@.str.54.124 = private unnamed_addr constant [5 x i8] c"% *g\00", align 1
@.str.55.122 = private unnamed_addr constant [5 x i8] c"% *e\00", align 1
@.str.56.123 = private unnamed_addr constant [5 x i8] c"% *f\00", align 1
@.str.57.127 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.58.125 = private unnamed_addr constant [5 x i8] c"%.*e\00", align 1
@.str.59.126 = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@.str.60.128 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.61.129 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.62.132 = private unnamed_addr constant [6 x i8] c"%0*ld\00", align 1
@.str.63.130 = private unnamed_addr constant [6 x i8] c"%0*lo\00", align 1
@.str.64.131 = private unnamed_addr constant [6 x i8] c"%0*lX\00", align 1
@.str.65.133 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.66.134 = private unnamed_addr constant [4 x i8] c"%lX\00", align 1
@.str.67.135 = private unnamed_addr constant [24 x i8] c"number base not handled\00", align 1
@.str.68.136 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.69.137 = private unnamed_addr constant [16 x i8] c"string too long\00", align 1
@base64_decode_table = internal unnamed_addr global ptr null, align 8
@.str.70.139 = private unnamed_addr constant [27 x i8] c"illegal base64 data length\00", align 1
@.str.71.140 = private unnamed_addr constant [22 x i8] c"improper list to memq\00", align 1
@.str.72.141 = private unnamed_addr constant [24 x i8] c"improper list to member\00", align 1
@.str.73.142 = private unnamed_addr constant [22 x i8] c"improper list to memv\00", align 1
@.str.74.143 = private unnamed_addr constant [15 x i8] c"bad arg to nth\00", align 1
@.str.75.144 = private unnamed_addr constant [3 x i8] c"-:\00", align 1
@.str.76.145 = private unnamed_addr constant [16 x i8] c"bad arg to last\00", align 1
@.str.77.146 = private unnamed_addr constant [14 x i8] c"list is empty\00", align 1
@.str.78.147 = private unnamed_addr constant [11 x i8] c"not a list\00", align 1
@.str.79.150 = private unnamed_addr constant [18 x i8] c"bad list to qsort\00", align 1
@.str.80.151 = private unnamed_addr constant [24 x i8] c"mapcar case not handled\00", align 1
@.str.81.152 = private unnamed_addr constant [17 x i8] c"wta(1st) to fmod\00", align 1
@.str.82.153 = private unnamed_addr constant [17 x i8] c"wta(2nd) to fmod\00", align 1
@.str.83.154 = private unnamed_addr constant [21 x i8] c"improper list to ass\00", align 1
@siod_verbose_level = internal global i64 4, align 8
@.str.84.157 = private unnamed_addr constant [14 x i8] c"fast loading \00", align 1
@.str.85.158 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.86.159 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.87.160 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@.str.88.161 = private unnamed_addr constant [22 x i8] c"fast saving forms to \00", align 1
@.str.89.162 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.90.163 = private unnamed_addr constant [32 x i8] c"# Siod Binary Object Save File\0A\00", align 1
@.str.91.164 = private unnamed_addr constant [43 x i8] c"# sizeof(long) = %d\0A# sizeof(double) = %d\0A\00", align 1
@.str.92.166 = private unnamed_addr constant [10 x i8] c"# 1 = %s\0A\00", align 1
@.str.93.167 = private unnamed_addr constant [12 x i8] c"# 1.0 = %s\0A\00", align 1
@.str.94.168 = private unnamed_addr constant [23 x i8] c"no object repeat count\00", align 1
@.str.95.169 = private unnamed_addr constant [16 x i8] c"wta(1st) to pow\00", align 1
@.str.96.170 = private unnamed_addr constant [16 x i8] c"wta(2nd) to pow\00", align 1
@.str.97.171 = private unnamed_addr constant [16 x i8] c"not implemented\00", align 1
@.str.98.172 = private unnamed_addr constant [7 x i8] c"tc_nil\00", align 1
@.str.99.173 = private unnamed_addr constant [8 x i8] c"tc_cons\00", align 1
@.str.100.174 = private unnamed_addr constant [10 x i8] c"tc_flonum\00", align 1
@.str.101.175 = private unnamed_addr constant [10 x i8] c"tc_symbol\00", align 1
@.str.102.176 = private unnamed_addr constant [10 x i8] c"tc_subr_0\00", align 1
@.str.103.177 = private unnamed_addr constant [10 x i8] c"tc_subr_1\00", align 1
@.str.104.178 = private unnamed_addr constant [10 x i8] c"tc_subr_2\00", align 1
@.str.105.179 = private unnamed_addr constant [11 x i8] c"tc_subr_2n\00", align 1
@.str.106.180 = private unnamed_addr constant [10 x i8] c"tc_subr_3\00", align 1
@.str.107.181 = private unnamed_addr constant [10 x i8] c"tc_subr_4\00", align 1
@.str.108.182 = private unnamed_addr constant [10 x i8] c"tc_subr_5\00", align 1
@.str.109.183 = private unnamed_addr constant [9 x i8] c"tc_lsubr\00", align 1
@.str.110.184 = private unnamed_addr constant [9 x i8] c"tc_fsubr\00", align 1
@.str.111.185 = private unnamed_addr constant [9 x i8] c"tc_msubr\00", align 1
@.str.112.186 = private unnamed_addr constant [11 x i8] c"tc_closure\00", align 1
@.str.113.187 = private unnamed_addr constant [13 x i8] c"tc_free_cell\00", align 1
@.str.114.188 = private unnamed_addr constant [10 x i8] c"tc_string\00", align 1
@.str.115.189 = private unnamed_addr constant [14 x i8] c"tc_byte_array\00", align 1
@.str.116.190 = private unnamed_addr constant [16 x i8] c"tc_double_array\00", align 1
@.str.117.191 = private unnamed_addr constant [14 x i8] c"tc_long_array\00", align 1
@.str.118.192 = private unnamed_addr constant [14 x i8] c"tc_lisp_array\00", align 1
@.str.119.193 = private unnamed_addr constant [10 x i8] c"tc_c_file\00", align 1
@.str.120.196 = private unnamed_addr constant [19 x i8] c"*eval-history-ptr*\00", align 1
@.str.121.197 = private unnamed_addr constant [15 x i8] c"*eval-history*\00", align 1
@.str.122.200 = private unnamed_addr constant [5 x i8] c"aref\00", align 1
@.str.123.201 = private unnamed_addr constant [5 x i8] c"aset\00", align 1
@.str.124.202 = private unnamed_addr constant [14 x i8] c"string-append\00", align 1
@.str.125.203 = private unnamed_addr constant [13 x i8] c"bytes-append\00", align 1
@.str.126.204 = private unnamed_addr constant [14 x i8] c"string-length\00", align 1
@.str.127.205 = private unnamed_addr constant [17 x i8] c"string-dimension\00", align 1
@.str.128.206 = private unnamed_addr constant [17 x i8] c"read-from-string\00", align 1
@.str.129.207 = private unnamed_addr constant [16 x i8] c"print-to-string\00", align 1
@.str.130.208 = private unnamed_addr constant [11 x i8] c"cons-array\00", align 1
@.str.131.209 = private unnamed_addr constant [7 x i8] c"sxhash\00", align 1
@.str.132.210 = private unnamed_addr constant [7 x i8] c"equal?\00", align 1
@.str.133.211 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.134.212 = private unnamed_addr constant [5 x i8] c"hset\00", align 1
@.str.135.213 = private unnamed_addr constant [6 x i8] c"assoc\00", align 1
@.str.136.214 = private unnamed_addr constant [5 x i8] c"assv\00", align 1
@.str.137.215 = private unnamed_addr constant [10 x i8] c"fast-read\00", align 1
@.str.138.216 = private unnamed_addr constant [11 x i8] c"fast-print\00", align 1
@.str.139.217 = private unnamed_addr constant [10 x i8] c"make-list\00", align 1
@.str.140.218 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@.str.141.219 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.142.220 = private unnamed_addr constant [7 x i8] c"fflush\00", align 1
@.str.143.221 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.144.222 = private unnamed_addr constant [15 x i8] c"number->string\00", align 1
@.str.145.223 = private unnamed_addr constant [15 x i8] c"string->number\00", align 1
@.str.146.224 = private unnamed_addr constant [10 x i8] c"substring\00", align 1
@.str.147.225 = private unnamed_addr constant [14 x i8] c"string-search\00", align 1
@.str.148.226 = private unnamed_addr constant [12 x i8] c"string-trim\00", align 1
@.str.149.227 = private unnamed_addr constant [17 x i8] c"string-trim-left\00", align 1
@.str.150.228 = private unnamed_addr constant [18 x i8] c"string-trim-right\00", align 1
@.str.151.229 = private unnamed_addr constant [14 x i8] c"string-upcase\00", align 1
@.str.152.230 = private unnamed_addr constant [16 x i8] c"string-downcase\00", align 1
@.str.153.231 = private unnamed_addr constant [7 x i8] c"strcmp\00", align 1
@.str.154.232 = private unnamed_addr constant [7 x i8] c"strcat\00", align 1
@.str.155.233 = private unnamed_addr constant [7 x i8] c"strcpy\00", align 1
@.str.156.234 = private unnamed_addr constant [11 x i8] c"strbreakup\00", align 1
@.str.157.235 = private unnamed_addr constant [13 x i8] c"unbreakupstr\00", align 1
@.str.158.236 = private unnamed_addr constant [8 x i8] c"string?\00", align 1
@.str.159.237 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.160.238 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@sym_plists = internal global ptr null, align 8
@.str.161.239 = private unnamed_addr constant [9 x i8] c"*plists*\00", align 1
@.str.162.240 = private unnamed_addr constant [13 x i8] c"lref-default\00", align 1
@.str.163.241 = private unnamed_addr constant [13 x i8] c"larg-default\00", align 1
@.str.164.242 = private unnamed_addr constant [13 x i8] c"lkey-default\00", align 1
@.str.165.243 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.166.244 = private unnamed_addr constant [7 x i8] c"writes\00", align 1
@.str.167.245 = private unnamed_addr constant [6 x i8] c"qsort\00", align 1
@.str.168.246 = private unnamed_addr constant [13 x i8] c"string-lessp\00", align 1
@.str.169.247 = private unnamed_addr constant [7 x i8] c"mapcar\00", align 1
@.str.170.248 = private unnamed_addr constant [8 x i8] c"mapcar2\00", align 1
@.str.171.249 = private unnamed_addr constant [8 x i8] c"mapcar1\00", align 1
@.str.172.250 = private unnamed_addr constant [19 x i8] c"benchmark-funcall1\00", align 1
@.str.173.251 = private unnamed_addr constant [19 x i8] c"benchmark-funcall2\00", align 1
@.str.174.252 = private unnamed_addr constant [15 x i8] c"benchmark-eval\00", align 1
@.str.175.253 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str.176.254 = private unnamed_addr constant [7 x i8] c"subset\00", align 1
@.str.177.255 = private unnamed_addr constant [13 x i8] c"base64encode\00", align 1
@.str.178.256 = private unnamed_addr constant [13 x i8] c"base64decode\00", align 1
@.str.179.257 = private unnamed_addr constant [4 x i8] c"ass\00", align 1
@.str.180.258 = private unnamed_addr constant [8 x i8] c"append2\00", align 1
@.str.181.259 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.182.260 = private unnamed_addr constant [10 x i8] c"fast-save\00", align 1
@.str.183.261 = private unnamed_addr constant [10 x i8] c"fast-load\00", align 1
@.str.184.262 = private unnamed_addr constant [7 x i8] c"swrite\00", align 1
@.str.185.263 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.186.264 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str.187.265 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.188.266 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.189.267 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str.190.268 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.191.269 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str.192.270 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str.193.271 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str.194.272 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str.195.273 = private unnamed_addr constant [7 x i8] c"typeof\00", align 1
@.str.196.274 = private unnamed_addr constant [6 x i8] c"caaar\00", align 1
@.str.197.275 = private unnamed_addr constant [6 x i8] c"caadr\00", align 1
@.str.198.276 = private unnamed_addr constant [6 x i8] c"cadar\00", align 1
@.str.199.277 = private unnamed_addr constant [6 x i8] c"caddr\00", align 1
@.str.200.278 = private unnamed_addr constant [6 x i8] c"cdaar\00", align 1
@.str.201.279 = private unnamed_addr constant [6 x i8] c"cdadr\00", align 1
@.str.202.280 = private unnamed_addr constant [6 x i8] c"cddar\00", align 1
@.str.203.281 = private unnamed_addr constant [6 x i8] c"cdddr\00", align 1
@.str.204.282 = private unnamed_addr constant [5 x i8] c"*pi*\00", align 1
@.str.205.283 = private unnamed_addr constant [14 x i8] c"array->hexstr\00", align 1
@.str.206.284 = private unnamed_addr constant [14 x i8] c"hexstr->bytes\00", align 1
@.str.207.285 = private unnamed_addr constant [8 x i8] c"bit-and\00", align 1
@.str.208.286 = private unnamed_addr constant [7 x i8] c"bit-or\00", align 1
@.str.209.287 = private unnamed_addr constant [8 x i8] c"bit-xor\00", align 1
@.str.210.288 = private unnamed_addr constant [8 x i8] c"bit-not\00", align 1
@.str.211.289 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.212.290 = private unnamed_addr constant [6 x i8] c"prog1\00", align 1
@.str.213.291 = private unnamed_addr constant [7 x i8] c"strspn\00", align 1
@.str.214.292 = private unnamed_addr constant [8 x i8] c"strcspn\00", align 1
@.str.215.293 = private unnamed_addr constant [17 x i8] c"substring-equal?\00", align 1
@.str.216.294 = private unnamed_addr constant [21 x i8] c"substring-equalcase?\00", align 1
@.str.217.295 = private unnamed_addr constant [8 x i8] c"butlast\00", align 1
@.str.218.296 = private unnamed_addr constant [4 x i8] c"ash\00", align 1
@.str.219.297 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.220.298 = private unnamed_addr constant [8 x i8] c"setprop\00", align 1
@.str.221.299 = private unnamed_addr constant [8 x i8] c"putprop\00", align 1
@.str.222.300 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.223.301 = private unnamed_addr constant [5 x i8] c"memq\00", align 1
@.str.224.302 = private unnamed_addr constant [5 x i8] c"memv\00", align 1
@.str.225.303 = private unnamed_addr constant [7 x i8] c"member\00", align 1
@.str.226.304 = private unnamed_addr constant [4 x i8] c"nth\00", align 1
@.str.227.305 = private unnamed_addr constant [6 x i8] c"nconc\00", align 1
@.str.228.306 = private unnamed_addr constant [17 x i8] c"set-eval-history\00", align 1
@.str.229.307 = private unnamed_addr constant [12 x i8] c"parser_fasl\00", align 1
@.str.230.308 = private unnamed_addr constant [25 x i8] c"*parser_fasl.scm-loaded*\00", align 1
@.str.231.309 = private unnamed_addr constant [17 x i8] c"parser_fasl_hook\00", align 1
@.str.232.138 = private unnamed_addr constant [66 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=\00", align 1
@.str.233.165 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.234.310 = private unnamed_addr constant [16 x i8] c"*sliba-version*\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"$Id$\00", align 1
@sym_channels = internal global ptr null, align 8
@tc_opendir = internal global i64 0, align 8
@.str.539 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@ld_library_path_env = internal global ptr @.str.539, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.311 = private unnamed_addr constant [30 x i8] c"Cannot execute system calls!\0A\00", align 1
@.str.2.312 = private unnamed_addr constant [7 x i8] c"getcwd\00", align 1
@.str.3.313 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4.314 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1
@.str.5.315 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.6.316 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.7.317 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.8.318 = private unnamed_addr constant [6 x i8] c"gecos\00", align 1
@.str.9.319 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.10.320 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@.str.11.321 = private unnamed_addr constant [8 x i8] c"seteuid\00", align 1
@.str.12.322 = private unnamed_addr constant [16 x i8] c"bad access mode\00", align 1
@.str.13.323 = private unnamed_addr constant [8 x i8] c"symlink\00", align 1
@.str.14.324 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.15.325 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.16.326 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.17.327 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.18.328 = private unnamed_addr constant [9 x i8] c"readlink\00", align 1
@.str.19.329 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.20.330 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.21.331 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.22.332 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.23.333 = private unnamed_addr constant [27 x i8] c"contains undefined options\00", align 1
@.str.24.334 = private unnamed_addr constant [11 x i8] c"WCONTINUED\00", align 1
@.str.25.335 = private unnamed_addr constant [8 x i8] c"WNOWAIT\00", align 1
@.str.26.336 = private unnamed_addr constant [8 x i8] c"WNOHANG\00", align 1
@.str.27.337 = private unnamed_addr constant [10 x i8] c"WUNTRACED\00", align 1
@.str.28.338 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.29.339 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.30.340 = private unnamed_addr constant [8 x i8] c"setpgid\00", align 1
@.str.31.341 = private unnamed_addr constant [13 x i8] c"wta to trunc\00", align 1
@.str.32.342 = private unnamed_addr constant [7 x i8] c"putenv\00", align 1
@nointerrupt = internal global i64 1, align 8
@handle_sigalrm_flag = internal unnamed_addr global i32 0, align 4
@interrupt_differed = internal global i64 0, align 8
@.str.33.343 = private unnamed_addr constant [13 x i8] c"alarm signal\00", align 1
@.str.34.344 = private unnamed_addr constant [8 x i8] c"opendir\00", align 1
@.str.35.345 = private unnamed_addr constant [15 x i8] c"not an opendir\00", align 1
@.str.36.346 = private unnamed_addr constant [17 x i8] c"opendir not open\00", align 1
@.str.37.347 = private unnamed_addr constant [9 x i8] c"closedir\00", align 1
@.str.38.348 = private unnamed_addr constant [14 x i8] c"#<OPENDIR %p>\00", align 1
@.str.39.349 = private unnamed_addr constant [5 x i8] c"SUID\00", align 1
@.str.40.350 = private unnamed_addr constant [5 x i8] c"SGID\00", align 1
@.str.41.351 = private unnamed_addr constant [5 x i8] c"RUSR\00", align 1
@.str.42.352 = private unnamed_addr constant [5 x i8] c"WUSR\00", align 1
@.str.43.353 = private unnamed_addr constant [5 x i8] c"XUSR\00", align 1
@.str.44.354 = private unnamed_addr constant [5 x i8] c"RGRP\00", align 1
@.str.45.355 = private unnamed_addr constant [5 x i8] c"WGRP\00", align 1
@.str.46.356 = private unnamed_addr constant [5 x i8] c"XGRP\00", align 1
@.str.47.357 = private unnamed_addr constant [5 x i8] c"ROTH\00", align 1
@.str.48.358 = private unnamed_addr constant [5 x i8] c"WOTH\00", align 1
@.str.49.359 = private unnamed_addr constant [5 x i8] c"XOTH\00", align 1
@.str.50.360 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.51.362 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1
@.str.52.361 = private unnamed_addr constant [4 x i8] c"CHR\00", align 1
@.str.53.363 = private unnamed_addr constant [4 x i8] c"BLK\00", align 1
@.str.54.364 = private unnamed_addr constant [4 x i8] c"REG\00", align 1
@.str.55.365 = private unnamed_addr constant [4 x i8] c"LNK\00", align 1
@.str.56.366 = private unnamed_addr constant [5 x i8] c"SOCK\00", align 1
@.str.57.367 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.58.368 = private unnamed_addr constant [4 x i8] c"ino\00", align 1
@.str.59.369 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.60.370 = private unnamed_addr constant [6 x i8] c"nlink\00", align 1
@.str.61.371 = private unnamed_addr constant [5 x i8] c"rdev\00", align 1
@.str.62.372 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.63.373 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.64.374 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.65.375 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.66.376 = private unnamed_addr constant [8 x i8] c"blksize\00", align 1
@.str.67.377 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.68.378 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.69.379 = private unnamed_addr constant [6 x i8] c"utime\00", align 1
@.str.70.380 = private unnamed_addr constant [7 x i8] c"fchmod\00", align 1
@.str.71.381 = private unnamed_addr constant [9 x i8] c"NONBLOCK\00", align 1
@.str.72.382 = private unnamed_addr constant [7 x i8] c"APPEND\00", align 1
@.str.73.383 = private unnamed_addr constant [7 x i8] c"RDONLY\00", align 1
@.str.74.384 = private unnamed_addr constant [7 x i8] c"WRONLY\00", align 1
@.str.75.385 = private unnamed_addr constant [5 x i8] c"RDWR\00", align 1
@.str.76.386 = private unnamed_addr constant [6 x i8] c"CREAT\00", align 1
@.str.77.387 = private unnamed_addr constant [6 x i8] c"TRUNC\00", align 1
@.str.78.388 = private unnamed_addr constant [5 x i8] c"EXCL\00", align 1
@.str.79.389 = private unnamed_addr constant [29 x i8] c"%04d%02d%02d%02d%02d%02d%02d\00", align 1
@.str.80.392 = private unnamed_addr constant [36 x i8] c"%s, %02d %s %04d %02d:%02d:%02d GMT\00", align 1
@.str.81.390 = private unnamed_addr constant [28 x i8] c"Sun\00Mon\00Tue\00Wed\00Thu\00Fri\00Sat\00", align 1
@.str.82.391 = private unnamed_addr constant [48 x i8] c"Jan\00Feb\00Mar\00Apr\00May\00Jun\00Jul\00Aug\00Sep\00Oct\00Nov\00Dec\00", align 1
@.str.83.393 = private unnamed_addr constant [6 x i8] c"*-._@\00", align 1
@.str.84.394 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@.str.85.395 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.86.396 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.87.397 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.88.398 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.89.399 = private unnamed_addr constant [18 x i8] c"size must be >= 0\00", align 1
@.str.90.400 = private unnamed_addr constant [28 x i8] c"not handling buffer of size\00", align 1
@.str.91.401 = private unnamed_addr constant [6 x i8] c"chown\00", align 1
@.str.92.402 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.93.403 = private unnamed_addr constant [7 x i8] c"pclose\00", align 1
@.str.94.404 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.95.405 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.96.406 = private unnamed_addr constant [6 x i8] c"init_\00", align 1
@.str.97.407 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@.str.98.408 = private unnamed_addr constant [12 x i8] c"so-loading \00", align 1
@.str.99.409 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.100.410 = private unnamed_addr constant [22 x i8] c"did not load function\00", align 1
@.str.101.411 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@siod_lib = internal global ptr @.str.2.5, align 8
@catch_framep = internal global ptr null, align 8
@.str.102.412 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.103.413 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.104.414 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.105.415 = private unnamed_addr constant [5 x i8] c"mday\00", align 1
@.str.106.416 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@.str.107.417 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.108.418 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str.109.419 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str.110.420 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str.111.421 = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.112.422 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@.str.113.423 = private unnamed_addr constant [7 x i8] c"fchdir\00", align 1
@.str.114.424 = private unnamed_addr constant [6 x i8] c"chdir\00", align 1
@.str.115.425 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.116.426 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.117.427 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.118.429 = private unnamed_addr constant [16 x i8] c"index too large\00", align 1
@.str.119.428 = private unnamed_addr constant [15 x i8] c"negative index\00", align 1
@.str.120.430 = private unnamed_addr constant [14 x i8] c"unknown CTYPE\00", align 1
@.str.121.431 = private unnamed_addr constant [8 x i8] c"sdatref\00", align 1
@.str.122.434 = private unnamed_addr constant [3 x i8] c",-\00", align 1
@.str.123.435 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.125.436 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.126.437 = private unnamed_addr constant [7 x i8] c"*args*\00", align 1
@.str.127.438 = private unnamed_addr constant [6 x i8] c"*env*\00", align 1
@.str.128.439 = private unnamed_addr constant [11 x i8] c"__cgi-main\00", align 1
@.str.129.440 = private unnamed_addr constant [38 x i8] c"(__cgi-main (*catch 'errobj (main))))\00", align 1
@.str.130.441 = private unnamed_addr constant [7 x i8] c"(main)\00", align 1
@.str.132.538 = private unnamed_addr constant [4 x i8] c" \09\0D\00", align 1
@.str.137.457 = private unnamed_addr constant [11 x i8] c"*channels*\00", align 1
@.str.138.458 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.139.459 = private unnamed_addr constant [7 x i8] c"getgid\00", align 1
@.str.140.460 = private unnamed_addr constant [7 x i8] c"getuid\00", align 1
@.str.141.461 = private unnamed_addr constant [9 x i8] c"getpwuid\00", align 1
@.str.142.462 = private unnamed_addr constant [9 x i8] c"getpwnam\00", align 1
@.str.143.463 = private unnamed_addr constant [9 x i8] c"getpwent\00", align 1
@.str.144.464 = private unnamed_addr constant [9 x i8] c"setpwent\00", align 1
@.str.145.465 = private unnamed_addr constant [9 x i8] c"endpwent\00", align 1
@.str.146.466 = private unnamed_addr constant [8 x i8] c"geteuid\00", align 1
@.str.147.467 = private unnamed_addr constant [16 x i8] c"access-problem?\00", align 1
@.str.148.468 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.149.469 = private unnamed_addr constant [8 x i8] c"srandom\00", align 1
@.str.150.470 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.151.471 = private unnamed_addr constant [5 x i8] c"rest\00", align 1
@.str.152.472 = private unnamed_addr constant [8 x i8] c"getpgrp\00", align 1
@.str.153.473 = private unnamed_addr constant [9 x i8] c"getgrgid\00", align 1
@.str.154.474 = private unnamed_addr constant [10 x i8] c"%%%memref\00", align 1
@.str.155.475 = private unnamed_addr constant [7 x i8] c"getpid\00", align 1
@.str.156.476 = private unnamed_addr constant [8 x i8] c"getppid\00", align 1
@.str.157.477 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.158.478 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.159.479 = private unnamed_addr constant [8 x i8] c"readdir\00", align 1
@.str.160.480 = private unnamed_addr constant [12 x i8] c"delete-file\00", align 1
@.str.161.481 = private unnamed_addr constant [11 x i8] c"file-times\00", align 1
@.str.162.482 = private unnamed_addr constant [19 x i8] c"unix-time->strtime\00", align 1
@.str.163.483 = private unnamed_addr constant [10 x i8] c"unix-time\00", align 1
@.str.164.484 = private unnamed_addr constant [11 x i8] c"unix-ctime\00", align 1
@.str.165.485 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str.166.486 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.167.487 = private unnamed_addr constant [11 x i8] c"url-encode\00", align 1
@.str.168.488 = private unnamed_addr constant [11 x i8] c"url-decode\00", align 1
@.str.169.489 = private unnamed_addr constant [5 x i8] c"gets\00", align 1
@.str.170.490 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.171.491 = private unnamed_addr constant [12 x i8] c"html-encode\00", align 1
@.str.172.492 = private unnamed_addr constant [12 x i8] c"html-decode\00", align 1
@.str.173.493 = private unnamed_addr constant [17 x i8] c"decode-file-mode\00", align 1
@.str.174.494 = private unnamed_addr constant [17 x i8] c"encode-file-mode\00", align 1
@.str.175.495 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.176.496 = private unnamed_addr constant [6 x i8] c"fstat\00", align 1
@.str.177.497 = private unnamed_addr constant [18 x i8] c"encode-open-flags\00", align 1
@.str.178.498 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.179.499 = private unnamed_addr constant [10 x i8] c"http-date\00", align 1
@.str.180.500 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str.181.501 = private unnamed_addr constant [8 x i8] c"load-so\00", align 1
@.str.182.502 = private unnamed_addr constant [11 x i8] c"require-so\00", align 1
@.str.183.503 = private unnamed_addr constant [7 x i8] c"so-ext\00", align 1
@.str.184.504 = private unnamed_addr constant [9 x i8] c"SEEK_SET\00", align 1
@.str.185.505 = private unnamed_addr constant [9 x i8] c"SEEK_CUR\00", align 1
@.str.186.506 = private unnamed_addr constant [9 x i8] c"SEEK_END\00", align 1
@.str.187.507 = private unnamed_addr constant [8 x i8] c"F_RDLCK\00", align 1
@.str.188.508 = private unnamed_addr constant [8 x i8] c"F_WRLCK\00", align 1
@.str.189.509 = private unnamed_addr constant [8 x i8] c"F_UNLCK\00", align 1
@.str.190.510 = private unnamed_addr constant [8 x i8] c"F_SETLK\00", align 1
@.str.191.511 = private unnamed_addr constant [9 x i8] c"F_SETLKW\00", align 1
@.str.192.512 = private unnamed_addr constant [8 x i8] c"F_GETLK\00", align 1
@.str.193.513 = private unnamed_addr constant [9 x i8] c"siod-lib\00", align 1
@.str.194.515 = private unnamed_addr constant [10 x i8] c"%s=%s%s%s\00", align 1
@.str.195.514 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.196.516 = private unnamed_addr constant [6 x i8] c"tzset\00", align 1
@.str.197.517 = private unnamed_addr constant [7 x i8] c"mktime\00", align 1
@.str.198.518 = private unnamed_addr constant [9 x i8] c"strptime\00", align 1
@.str.199.519 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@.str.200.520 = private unnamed_addr constant [8 x i8] c"getpass\00", align 1
@.str.201.521 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@.str.202.522 = private unnamed_addr constant [12 x i8] c"CTYPE_FLOAT\00", align 1
@.str.203.523 = private unnamed_addr constant [13 x i8] c"CTYPE_DOUBLE\00", align 1
@.str.204.524 = private unnamed_addr constant [11 x i8] c"CTYPE_LONG\00", align 1
@.str.205.525 = private unnamed_addr constant [12 x i8] c"CTYPE_SHORT\00", align 1
@.str.206.526 = private unnamed_addr constant [11 x i8] c"CTYPE_CHAR\00", align 1
@.str.207.527 = private unnamed_addr constant [10 x i8] c"CTYPE_INT\00", align 1
@.str.208.528 = private unnamed_addr constant [12 x i8] c"CTYPE_ULONG\00", align 1
@.str.209.529 = private unnamed_addr constant [13 x i8] c"CTYPE_USHORT\00", align 1
@.str.210.530 = private unnamed_addr constant [12 x i8] c"CTYPE_UCHAR\00", align 1
@.str.211.531 = private unnamed_addr constant [11 x i8] c"CTYPE_UINT\00", align 1
@.str.212.532 = private unnamed_addr constant [7 x i8] c"datref\00", align 1
@.str.213.533 = private unnamed_addr constant [9 x i8] c"mkdatref\00", align 1
@.str.214.534 = private unnamed_addr constant [10 x i8] c"datlength\00", align 1
@.str.215.535 = private unnamed_addr constant [16 x i8] c"position-script\00", align 1
@.str.216.448 = private unnamed_addr constant [40 x i8] c"Status: 500 Server Error (Application)\0A\00", align 1
@.str.217.449 = private unnamed_addr constant [26 x i8] c"Content-type: text/html\0A\0A\00", align 1
@.str.218.450 = private unnamed_addr constant [62 x i8] c"<HTML><HEAD><TITLE>Server Error (Application)</TITLE></HEAD>\0A\00", align 1
@.str.219.451 = private unnamed_addr constant [43 x i8] c"<BODY><H1>Server Error (Application)</H1>\0A\00", align 1
@.str.220.452 = private unnamed_addr constant [56 x i8] c"An application on this server has encountered an error\0A\00", align 1
@.str.221.453 = private unnamed_addr constant [48 x i8] c"which prevents it from fulfilling your request.\00", align 1
@.str.222.454 = private unnamed_addr constant [31 x i8] c"<P><PRE><B>Error Message:</B> \00", align 1
@.str.223.455 = private unnamed_addr constant [22 x i8] c"</PRE></BODY></HTML>\0A\00", align 1
@.str.224.456 = private unnamed_addr constant [9 x i8] c"cgi-main\00", align 1
@.str.225.443 = private unnamed_addr constant [7 x i8] c"(repl)\00", align 1
@.str.226.444 = private unnamed_addr constant [5 x i8] c"repl\00", align 1
@.str.227.445 = private unnamed_addr constant [11 x i8] c"(require \22\00", align 1
@.str.228.446 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.229.447 = private unnamed_addr constant [3 x i8] c"\22)\00", align 1
@.str.230.536 = private unnamed_addr constant [16 x i8] c"*slibu-version*\00", align 1
@.str.231.537 = private unnamed_addr constant [5 x i8] c"$Id$\00", align 1
@str.442 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@str.232 = private unnamed_addr constant [28 x i8] c"Content-type: text/plain\0D\0A\0D\00", align 1
@switch.table.decode_st_moden = private unnamed_addr constant [12 x ptr] [ptr @.str.50.360, ptr @.str.52.361, ptr @.str.50.360, ptr @.str.51.362, ptr @.str.50.360, ptr @.str.53.363, ptr @.str.50.360, ptr @.str.54.364, ptr @.str.50.360, ptr @.str.55.365, ptr @.str.50.360, ptr @.str.56.366], align 8
@sym_begin = internal global ptr null, align 8
@sym_quote.540 = internal global ptr null, align 8
@tc_closure_traced = internal unnamed_addr global i64 0, align 8
@.str.541 = private unnamed_addr constant [28 x i8] c"not a closure, cannot trace\00", align 1
@.str.1.542 = private unnamed_addr constant [30 x i8] c"not a closure, cannot untrace\00", align 1
@.str.2.543 = private unnamed_addr constant [19 x i8] c"#<CLOSURE(TRACED) \00", align 1
@.str.3.544 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4.545 = private unnamed_addr constant [2 x i8] c">\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5.546 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.6.547 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7.548 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@sym_traced = internal global ptr null, align 8
@.str.8.551 = private unnamed_addr constant [9 x i8] c"*traced*\00", align 1
@.str.9.552 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.10.553 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.11.554 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.12.555 = private unnamed_addr constant [8 x i8] c"untrace\00", align 1
@.str.13.556 = private unnamed_addr constant [16 x i8] c"*trace-version*\00", align 1
@.str.14.557 = private unnamed_addr constant [5 x i8] c"$Id$\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  tail call void @process_cla(i32 noundef 6, ptr noundef nonnull @siod_argv, i32 noundef 1) #38
  %4 = tail call i32 @siod_main(i32 noundef %0, ptr noundef %1, ptr noundef %2) #38
  ret i32 %4
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @process_cla(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = load i1, ptr @process_cla.siod_lib_set, align 4
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.3.3) #38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr @siod_lib, align 8, !tbaa !7
  store i1 true, ptr @process_cla.siod_lib_set, align 4
  br label %9

9:                                                ; preds = %8, %5, %3
  %10 = icmp sgt i32 %0, 1
  br i1 %10, label %11, label %63

11:                                               ; preds = %9
  %12 = icmp eq i32 %2, 0
  %13 = zext i32 %0 to i64
  br label %14

14:                                               ; preds = %60, %11
  %15 = phi i64 [ 1, %11 ], [ %61, %60 ]
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #39
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %60, label %20

20:                                               ; preds = %14
  %21 = load i8, ptr %17, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 45
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  br i1 %12, label %60, label %24

24:                                               ; preds = %23
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.4, ptr noundef nonnull %17) #40
  br label %60

26:                                               ; preds = %20
  %27 = getelementptr inbounds i8, ptr %17, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !11
  %29 = sext i8 %28 to i32
  switch i32 %29, label %57 [
    i32 108, label %30
    i32 104, label %32
    i32 111, label %40
    i32 105, label %43
    i32 110, label %45
    i32 103, label %48
    i32 115, label %51
    i32 118, label %54
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %31, ptr @siod_lib, align 8, !tbaa !7
  br label %60

32:                                               ; preds = %26
  %33 = getelementptr inbounds i8, ptr %17, i64 2
  %34 = tail call i64 @atol(ptr nocapture noundef nonnull %33) #39
  store i64 %34, ptr @heap_size, align 8, !tbaa !12
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 58) #39
  %36 = icmp eq ptr %35, null
  br i1 %36, label %60, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %35, i64 1
  %39 = tail call i64 @atol(ptr nocapture noundef nonnull %38) #39
  store i64 %39, ptr @nheaps, align 8, !tbaa !12
  br label %60

40:                                               ; preds = %26
  %41 = getelementptr inbounds i8, ptr %17, i64 2
  %42 = tail call i64 @atol(ptr nocapture noundef nonnull %41) #39
  store i64 %42, ptr @obarray_dim, align 8, !tbaa !12
  br label %60

43:                                               ; preds = %26
  %44 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %44, ptr @init_file, align 8, !tbaa !7
  br label %60

45:                                               ; preds = %26
  %46 = getelementptr inbounds i8, ptr %17, i64 2
  %47 = tail call i64 @atol(ptr nocapture noundef nonnull %46) #39
  store i64 %47, ptr @inums_dim, align 8, !tbaa !12
  br label %60

48:                                               ; preds = %26
  %49 = getelementptr inbounds i8, ptr %17, i64 2
  %50 = tail call i64 @atol(ptr nocapture noundef nonnull %49) #39
  store i64 %50, ptr @gc_kind_copying, align 8, !tbaa !12
  br label %60

51:                                               ; preds = %26
  %52 = getelementptr inbounds i8, ptr %17, i64 2
  %53 = tail call i64 @atol(ptr nocapture noundef nonnull %52) #39
  store i64 %53, ptr @stack_size, align 8, !tbaa !12
  br label %60

54:                                               ; preds = %26
  %55 = getelementptr inbounds i8, ptr %17, i64 2
  %56 = tail call i64 @atol(ptr nocapture noundef nonnull %55) #39
  store i64 %56, ptr @siod_verbose_level, align 8, !tbaa !12
  br label %60

57:                                               ; preds = %26
  br i1 %12, label %60, label %58

58:                                               ; preds = %57
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.4, ptr noundef nonnull %17) #40
  br label %60

60:                                               ; preds = %58, %57, %54, %51, %48, %45, %43, %40, %37, %32, %30, %24, %23, %14
  %61 = add nuw nsw i64 %15, 1
  %62 = icmp eq i64 %61, %13
  br i1 %62, label %63, label %14, !llvm.loop !14

63:                                               ; preds = %60, %9
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i64 @atol(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_welcome() #1 {
  %1 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %2 = icmp sgt i64 %1, 1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.6, ptr noundef nonnull @.str.7) #40
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_hs_1() #1 {
  %1 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %2 = icmp sgt i64 %1, 1
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i64, ptr @nheaps, align 8, !tbaa !12
  %5 = load i64, ptr @heap_size, align 8, !tbaa !12
  %6 = mul i64 %5, 24
  %7 = load i64, ptr @inums_dim, align 8, !tbaa !12
  %8 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %9 = icmp eq i64 %8, 1
  %10 = select i1 %9, ptr @.str.8, ptr @.str.9
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7.8, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef nonnull %10) #40
  br label %12

12:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @no_interrupt(i64 noundef %0) #0 {
  %2 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 %0, ptr @nointerrupt, align 8, !tbaa !12
  %3 = icmp eq i64 %0, 0
  %4 = load i64, ptr @interrupt_differed, align 8
  %5 = icmp eq i64 %4, 1
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %8 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %9

9:                                                ; preds = %7, %1
  ret i64 %2
}

; Function Attrs: nounwind optsize uwtable
define dso_local ptr @err(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i1, ptr @inside_err, align 8
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %4 = icmp ne ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %68, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !16
  %18 = icmp eq i16 %17, 13
  br i1 %18, label %19, label %68

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi ptr [ %1, %19 ], [ null, %2 ]
  %26 = phi ptr [ %23, %19 ], [ %1, %2 ]
  %27 = phi ptr [ %21, %19 ], [ %0, %2 ]
  %28 = icmp eq ptr %26, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.obj, ptr %26, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !16
  br label %32

32:                                               ; preds = %29, %7
  %33 = phi i16 [ %31, %29 ], [ %9, %7 ]
  %34 = phi ptr [ %27, %29 ], [ null, %7 ]
  %35 = phi ptr [ %26, %29 ], [ %1, %7 ]
  %36 = phi ptr [ %25, %29 ], [ null, %7 ]
  switch i16 %33, label %49 [
    i16 3, label %37
    i16 13, label %39
  ]

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.obj, ptr %35, i64 0, i32 2
  br label %41

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.obj, ptr %35, i64 0, i32 2, i32 0, i32 1
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %40, %39 ], [ %38, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) %43, i32 noundef 0, i64 noundef 80) #39
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr null, ptr %43
  br label %49

49:                                               ; preds = %45, %41, %32
  %50 = phi ptr [ %48, %45 ], [ null, %41 ], [ null, %32 ]
  %51 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %52 = icmp sgt i64 %51, 0
  %53 = icmp ne ptr %34, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %62, label %68

55:                                               ; preds = %24
  %56 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %57 = icmp sgt i64 %56, 0
  %58 = icmp ne ptr %27, null
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %27) #40
  br label %68

62:                                               ; preds = %49
  %63 = icmp eq ptr %50, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %34, ptr noundef nonnull %50) #40
  br label %68

66:                                               ; preds = %62
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %34) #40
  br label %68

68:                                               ; preds = %66, %64, %60, %55, %49, %15, %11
  %69 = phi i1 [ true, %60 ], [ true, %66 ], [ true, %64 ], [ %53, %49 ], [ %58, %55 ], [ false, %15 ], [ false, %11 ]
  %70 = phi ptr [ %27, %60 ], [ %34, %66 ], [ %34, %64 ], [ %34, %49 ], [ %27, %55 ], [ null, %15 ], [ null, %11 ]
  %71 = phi ptr [ null, %60 ], [ %35, %66 ], [ %35, %64 ], [ %35, %49 ], [ null, %55 ], [ %1, %15 ], [ %1, %11 ]
  %72 = phi ptr [ %25, %60 ], [ %36, %66 ], [ %36, %64 ], [ %36, %49 ], [ %25, %55 ], [ null, %15 ], [ null, %11 ]
  %73 = load i64, ptr @errjmp_ok, align 8, !tbaa !12
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %107

75:                                               ; preds = %68
  store i1 true, ptr @inside_err, align 8
  %76 = load ptr, ptr @sym_errobj, align 8, !tbaa !7
  %77 = tail call ptr @setvar(ptr noundef %76, ptr noundef %71, ptr noundef null) #40
  %78 = load ptr, ptr @catch_framep, align 8, !tbaa !7
  %79 = icmp eq ptr %78, null
  br i1 %79, label %105, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr @sym_errobj, align 8, !tbaa !7
  %82 = load ptr, ptr @sym_catchall, align 8
  br label %83

83:                                               ; preds = %101, %80
  %84 = phi ptr [ %78, %80 ], [ %103, %101 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !19
  %86 = icmp eq ptr %85, %81
  %87 = icmp eq ptr %85, %82
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %.lcssa = phi ptr [ %84, %83 ]
  %90 = icmp ne ptr %72, null
  %91 = select i1 %90, i1 true, i1 %3
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = select i1 %69, ptr %70, ptr @.str.20
  %94 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %93) #39
  %95 = tail call ptr @strcons(i64 noundef %94, ptr noundef nonnull %93) #38
  %96 = tail call ptr @cons(ptr noundef %95, ptr noundef %71) #40
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi ptr [ %96, %92 ], [ %72, %89 ]
  %99 = getelementptr inbounds %struct.catch_frame, ptr %.lcssa, i64 0, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !21
  store i64 0, ptr @nointerrupt, align 8, !tbaa !12
  store i1 false, ptr @inside_err, align 8
  %100 = getelementptr inbounds %struct.catch_frame, ptr %.lcssa, i64 0, i32 2
  tail call void @longjmp(ptr noundef nonnull %100, i32 noundef 2) #41
  unreachable

101:                                              ; preds = %83
  %102 = getelementptr inbounds %struct.catch_frame, ptr %84, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !7
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %83, !llvm.loop !22

105:                                              ; preds = %101, %75
  store i1 false, ptr @inside_err, align 8
  %106 = select i1 %69, i32 1, i32 2
  tail call void @longjmp(ptr noundef nonnull @errjmp, i32 noundef %106) #41
  unreachable

107:                                              ; preds = %68
  %108 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.241)
  br label %112

112:                                              ; preds = %110, %107
  %113 = load ptr, ptr @fatal_exit_hook, align 8, !tbaa !7
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  tail call void %113() #38
  ret ptr null

116:                                              ; preds = %112
  tail call void @exit(i32 noundef 10) #41
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal ptr @setvar(ptr noundef %0, ptr noundef returned %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 3
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @err(ptr noundef nonnull @.str.92, ptr noundef %0) #40
  br label %11

11:                                               ; preds = %9, %5
  %12 = tail call ptr @envlookup(ptr noundef %0, ptr noundef %2) #40
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2
  %15 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %16 = select i1 %13, ptr %15, ptr %14
  store ptr %1, ptr %16, align 8, !tbaa !11
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cons(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load ptr, ptr @heap, align 8, !tbaa !7
  %7 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %6, i64 1
  store ptr %12, ptr @heap, align 8, !tbaa !7
  br label %24

13:                                               ; preds = %2
  %14 = load ptr, ptr @freelist, align 8, !tbaa !7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  tail call void @gc_for_newcell() #40
  %17 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %20 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  store ptr %21, ptr @freelist, align 8, !tbaa !7
  %22 = load i64, ptr @gc_cells_allocated, align 8, !tbaa !12
  %23 = add nsw i64 %22, 1
  store i64 %23, ptr @gc_cells_allocated, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %18, %11
  %25 = phi ptr [ %6, %11 ], [ %19, %18 ]
  store i16 0, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 1
  store i16 1, ptr %26, align 2, !tbaa !16
  %27 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2
  store ptr %0, ptr %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !11
  ret ptr %25
}

; Function Attrs: noreturn nounwind optsize
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal void @gc_for_newcell() #0 {
  %1 = load ptr, ptr @heap, align 8, !tbaa !7
  %2 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  store ptr %1, ptr @freelist, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.obj, ptr %1, i64 1
  store ptr %6, ptr @heap, align 8, !tbaa !7
  br label %47

7:                                                ; preds = %0
  %8 = load i64, ptr @errjmp_ok, align 8, !tbaa !12
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  store i64 0, ptr @errjmp_ok, align 8, !tbaa !12
  tail call void @gc_mark_and_sweep() #40
  store i64 1, ptr @errjmp_ok, align 8, !tbaa !12
  store i64 %13, ptr @nointerrupt, align 8, !tbaa !12
  %14 = icmp eq i64 %13, 0
  %15 = load i64, ptr @interrupt_differed, align 8
  %16 = icmp eq i64 %15, 1
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %19 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %20

20:                                               ; preds = %18, %12
  %21 = load ptr, ptr @freelist, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = phi i64 [ %27, %23 ], [ 0, %20 ]
  %26 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 2, i32 0, i32 1
  %27 = add nuw nsw i64 %25, 1
  %28 = load ptr, ptr %26, align 8, !tbaa !11
  %29 = icmp ult i64 %25, 99
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %23, label %37, !llvm.loop !24

32:                                               ; preds = %20
  %33 = tail call ptr @allocate_aheap() #40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %47

37:                                               ; preds = %23
  %.lcssa = phi i64 [ %27, %23 ]
  %38 = icmp eq i64 %.lcssa, 100
  %39 = load ptr, ptr @sym_after_gc, align 8
  %40 = icmp ne ptr %39, null
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = tail call ptr @leval(ptr noundef nonnull %39, ptr noundef null) #40
  %44 = tail call ptr @leval(ptr noundef %43, ptr noundef null) #40
  br label %47

45:                                               ; preds = %37
  %46 = tail call ptr @allocate_aheap() #40
  br label %47

47:                                               ; preds = %45, %42, %35, %32, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @gc_mark_and_sweep() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #42
  call void @gc_ms_stats_start() #40
  %2 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %3 = load ptr, ptr @heap, align 8, !tbaa !7
  %4 = icmp ult ptr %3, %2
  br i1 %4, label %5, label %11

5:                                                ; preds = %5, %0
  %6 = phi ptr [ %8, %5 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 1
  store i16 12, ptr %7, align 2, !tbaa !16
  store i16 0, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.obj, ptr %6, i64 1
  %9 = icmp ult ptr %8, %2
  br i1 %9, label %5, label %10, !llvm.loop !25

10:                                               ; preds = %5
  %.lcssa = phi ptr [ %8, %5 ]
  store ptr %.lcssa, ptr @heap, align 8, !tbaa !7
  br label %11

11:                                               ; preds = %10, %0
  %12 = call i32 @getcontext(ptr noundef nonnull @save_regs_gc_mark) #43
  call void @mark_locations_array(ptr noundef nonnull getelementptr inbounds (%struct.ucontext_t, ptr @save_regs_gc_mark, i64 0, i32 3), i64 noundef 32) #40
  call void @mark_protected_registers() #40
  %13 = load ptr, ptr @stack_start_ptr, align 8, !tbaa !7
  %14 = icmp ugt ptr %13, %1
  %15 = select i1 %14, ptr %13, ptr %1
  %16 = select i1 %14, ptr %1, ptr %13
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  call void @mark_locations_array(ptr noundef %16, i64 noundef %20) #40
  call void @gc_sweep() #40
  call void @gc_ms_stats_end() #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @allocate_aheap() #0 {
  %1 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %2 = icmp eq i64 %1, 1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @err(ptr noundef nonnull @.str.77, ptr noundef null) #40
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i64, ptr @nheaps, align 8, !tbaa !12
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %62

8:                                                ; preds = %5
  %9 = load ptr, ptr @heaps, align 8, !tbaa !7
  br label %10

10:                                               ; preds = %59, %8
  %11 = phi i64 [ 0, %8 ], [ %60, %59 ]
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %10
  %.lcssa = phi i64 [ %11, %10 ]
  %16 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %17 = load i64, ptr @gc_status_flag, align 8, !tbaa !12
  %18 = icmp ne i64 %17, 0
  %19 = load i64, ptr @siod_verbose_level, align 8
  %20 = icmp sgt i64 %19, 3
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, i64 noundef %.lcssa) #40
  br label %24

24:                                               ; preds = %22, %15
  %25 = load i64, ptr @heap_size, align 8, !tbaa !12
  %26 = mul i64 %25, 24
  %27 = tail call ptr @must_malloc(i64 noundef %26) #40
  %28 = load ptr, ptr @heaps, align 8, !tbaa !7
  %29 = getelementptr inbounds ptr, ptr %28, i64 %.lcssa
  store ptr %27, ptr %29, align 8, !tbaa !7
  %30 = load ptr, ptr @heaps, align 8, !tbaa !7
  %31 = getelementptr inbounds ptr, ptr %30, i64 %.lcssa
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = load i64, ptr @heap_size, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.obj, ptr %32, i64 %33
  %35 = getelementptr inbounds %struct.obj, ptr %32, i64 0, i32 1
  store i16 12, ptr %35, align 2, !tbaa !16
  %36 = icmp sgt i64 %33, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.obj, ptr %32, i64 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi ptr [ %44, %39 ], [ %38, %37 ]
  %41 = phi ptr [ %40, %39 ], [ %32, %37 ]
  %42 = getelementptr inbounds %struct.obj, ptr %41, i64 0, i32 2, i32 0, i32 1
  store ptr %40, ptr %42, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.obj, ptr %40, i64 0, i32 1
  store i16 12, ptr %43, align 2, !tbaa !16
  %44 = getelementptr inbounds %struct.obj, ptr %40, i64 1
  %45 = icmp ult ptr %44, %34
  br i1 %45, label %39, label %46

46:                                               ; preds = %39, %24
  %47 = phi ptr [ %32, %24 ], [ %40, %39 ]
  %48 = load ptr, ptr @freelist, align 8, !tbaa !7
  %49 = getelementptr inbounds %struct.obj, ptr %47, i64 0, i32 2, i32 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !11
  %50 = load ptr, ptr %31, align 8, !tbaa !7
  store ptr %50, ptr @freelist, align 8, !tbaa !7
  store i64 %16, ptr @nointerrupt, align 8, !tbaa !12
  %51 = icmp eq i64 %16, 0
  %52 = load i64, ptr @interrupt_differed, align 8
  %53 = icmp eq i64 %52, 1
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %56 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %57

57:                                               ; preds = %55, %46
  %58 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %62

59:                                               ; preds = %10
  %60 = add nuw nsw i64 %11, 1
  %61 = icmp eq i64 %60, %6
  br i1 %61, label %62, label %10, !llvm.loop !26

62:                                               ; preds = %59, %57, %5
  %63 = phi ptr [ %58, %57 ], [ null, %5 ], [ null, %59 ]
  ret ptr %63
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  store ptr %1, ptr %4, align 8, !tbaa !7
  %5 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call ptr @err(ptr noundef nonnull @.str.23, ptr noundef null) #40
  br label %9

9:                                                ; preds = %7, %2
  br label %10

10:                                               ; preds = %301, %9
  %11 = load ptr, ptr @sym_eval_history_ptr, align 8, !tbaa !7
  %12 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8, !tbaa !7
  br label %26

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !16
  %20 = icmp eq i16 %19, 1
  %21 = load ptr, ptr %3, align 8, !tbaa !7
  br i1 %20, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 2
  store ptr %21, ptr %23, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  store ptr %25, ptr %12, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %22, %17, %15
  %27 = phi ptr [ %16, %15 ], [ %21, %22 ], [ %21, %17 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %438, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.obj, ptr %27, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !16
  %32 = sext i16 %31 to i32
  switch i32 %32, label %438 [
    i32 3, label %33
    i32 1, label %48
  ]

33:                                               ; preds = %29
  %.lcssa39 = phi ptr [ %27, %29 ]
  %34 = load ptr, ptr %4, align 8, !tbaa !7
  %35 = call ptr @envlookup(ptr noundef nonnull %.lcssa39, ptr noundef %34) #40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.obj, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  br label %440

40:                                               ; preds = %33
  %41 = load ptr, ptr %3, align 8, !tbaa !7
  %42 = getelementptr inbounds %struct.obj, ptr %41, i64 0, i32 2, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = load ptr, ptr @unbound_marker, align 8, !tbaa !7
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %440

46:                                               ; preds = %40
  %47 = call ptr @err(ptr noundef nonnull @.str.49, ptr noundef nonnull %41) #40
  br label %440

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.obj, ptr %27, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %424, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.obj, ptr %50, i64 0, i32 1
  %54 = load i16, ptr %53, align 2, !tbaa !16
  %55 = sext i16 %54 to i32
  switch i32 %55, label %82 [
    i32 3, label %56
    i32 1, label %73
  ]

56:                                               ; preds = %52
  %57 = load ptr, ptr %4, align 8, !tbaa !7
  %58 = call ptr @envlookup(ptr noundef nonnull %50, ptr noundef %57) #40
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.obj, ptr %58, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  br label %76

63:                                               ; preds = %56
  %64 = load ptr, ptr %3, align 8, !tbaa !7
  %65 = getelementptr inbounds %struct.obj, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.obj, ptr %66, i64 0, i32 2, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !11
  %69 = load ptr, ptr @unbound_marker, align 8, !tbaa !7
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = call ptr @err(ptr noundef nonnull @.str.49, ptr noundef nonnull %66) #40
  br label %76

73:                                               ; preds = %52
  %74 = load ptr, ptr %4, align 8, !tbaa !7
  %75 = call ptr @leval(ptr noundef nonnull %50, ptr noundef %74) #40
  br label %76

76:                                               ; preds = %73, %71, %63, %60
  %77 = phi ptr [ %75, %73 ], [ %62, %60 ], [ %68, %71 ], [ %68, %63 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %424, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.obj, ptr %77, i64 0, i32 1
  %81 = load i16, ptr %80, align 2, !tbaa !16
  br label %82

82:                                               ; preds = %79, %52
  %83 = phi i16 [ %81, %79 ], [ %54, %52 ]
  %84 = phi ptr [ %77, %79 ], [ %50, %52 ]
  %85 = sext i16 %83 to i32
  switch i32 %85, label %422 [
    i32 4, label %86
    i32 5, label %90
    i32 6, label %100
    i32 21, label %120
    i32 7, label %160
    i32 19, label %185
    i32 20, label %216
    i32 8, label %254
    i32 9, label %263
    i32 10, label %271
    i32 11, label %278
    i32 3, label %414
  ]

86:                                               ; preds = %82
  %.lcssa21 = phi ptr [ %84, %82 ]
  %87 = getelementptr inbounds %struct.obj, ptr %.lcssa21, i64 0, i32 2, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = call ptr %88() #38
  br label %440

90:                                               ; preds = %82
  %.lcssa22 = phi ptr [ %84, %82 ]
  %91 = getelementptr inbounds %struct.obj, ptr %.lcssa22, i64 0, i32 2, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !11
  %93 = load ptr, ptr %3, align 8, !tbaa !7
  %94 = getelementptr inbounds %struct.obj, ptr %93, i64 0, i32 2, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !11
  %96 = call ptr @car(ptr noundef %95) #40
  %97 = load ptr, ptr %4, align 8, !tbaa !7
  %98 = call ptr @leval(ptr noundef %96, ptr noundef %97) #40
  %99 = call ptr %92(ptr noundef %98) #38
  br label %440

100:                                              ; preds = %82
  %.lcssa23 = phi ptr [ %84, %82 ]
  %101 = load ptr, ptr %3, align 8, !tbaa !7
  %102 = getelementptr inbounds %struct.obj, ptr %101, i64 0, i32 2, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  store ptr %103, ptr %3, align 8, !tbaa !7
  %104 = call ptr @car(ptr noundef %103) #40
  %105 = load ptr, ptr %4, align 8, !tbaa !7
  %106 = call ptr @leval(ptr noundef %104, ptr noundef %105) #40
  %107 = load ptr, ptr %3, align 8, !tbaa !7
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.obj, ptr %107, i64 0, i32 2, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !11
  br label %112

112:                                              ; preds = %109, %100
  %113 = phi ptr [ %111, %109 ], [ null, %100 ]
  store ptr %113, ptr %3, align 8, !tbaa !7
  %114 = getelementptr inbounds %struct.obj, ptr %.lcssa23, i64 0, i32 2, i32 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !11
  %116 = call ptr @car(ptr noundef %113) #40
  %117 = load ptr, ptr %4, align 8, !tbaa !7
  %118 = call ptr @leval(ptr noundef %116, ptr noundef %117) #40
  %119 = call ptr %115(ptr noundef %106, ptr noundef %118) #38
  br label %440

120:                                              ; preds = %82
  %.lcssa24 = phi ptr [ %84, %82 ]
  %121 = load ptr, ptr %3, align 8, !tbaa !7
  %122 = getelementptr inbounds %struct.obj, ptr %121, i64 0, i32 2, i32 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  store ptr %123, ptr %3, align 8, !tbaa !7
  %124 = call ptr @car(ptr noundef %123) #40
  %125 = load ptr, ptr %4, align 8, !tbaa !7
  %126 = call ptr @leval(ptr noundef %124, ptr noundef %125) #40
  %127 = load ptr, ptr %3, align 8, !tbaa !7
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.obj, ptr %127, i64 0, i32 2, i32 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !11
  br label %132

132:                                              ; preds = %129, %120
  %133 = phi ptr [ %131, %129 ], [ null, %120 ]
  store ptr %133, ptr %3, align 8, !tbaa !7
  %134 = getelementptr inbounds %struct.obj, ptr %.lcssa24, i64 0, i32 2, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !11
  %136 = call ptr @car(ptr noundef %133) #40
  %137 = load ptr, ptr %4, align 8, !tbaa !7
  %138 = call ptr @leval(ptr noundef %136, ptr noundef %137) #40
  %139 = call ptr %135(ptr noundef %126, ptr noundef %138) #38
  %140 = load ptr, ptr %3, align 8, !tbaa !7
  %141 = call ptr @cdr(ptr noundef %140) #40
  store ptr %141, ptr %3, align 8, !tbaa !7
  %142 = icmp eq ptr %141, null
  br i1 %142, label %440, label %143

143:                                              ; preds = %149, %132
  %144 = phi ptr [ %155, %149 ], [ %139, %132 ]
  %145 = phi ptr [ %158, %149 ], [ %141, %132 ]
  %146 = getelementptr inbounds %struct.obj, ptr %145, i64 0, i32 1
  %147 = load i16, ptr %146, align 2, !tbaa !16
  %148 = icmp eq i16 %147, 1
  br i1 %148, label %149, label %440

149:                                              ; preds = %143
  %150 = load ptr, ptr %134, align 8, !tbaa !11
  %151 = getelementptr inbounds %struct.obj, ptr %145, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !11
  %153 = load ptr, ptr %4, align 8, !tbaa !7
  %154 = call ptr @leval(ptr noundef %152, ptr noundef %153) #40
  %155 = call ptr %150(ptr noundef %144, ptr noundef %154) #38
  %156 = load ptr, ptr %3, align 8, !tbaa !7
  %157 = getelementptr inbounds %struct.obj, ptr %156, i64 0, i32 2, i32 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !11
  store ptr %158, ptr %3, align 8, !tbaa !7
  %159 = icmp eq ptr %158, null
  br i1 %159, label %440, label %143, !llvm.loop !27

160:                                              ; preds = %82
  %.lcssa25 = phi ptr [ %84, %82 ]
  %161 = load ptr, ptr %3, align 8, !tbaa !7
  %162 = getelementptr inbounds %struct.obj, ptr %161, i64 0, i32 2, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !11
  store ptr %163, ptr %3, align 8, !tbaa !7
  %164 = call ptr @car(ptr noundef %163) #40
  %165 = load ptr, ptr %4, align 8, !tbaa !7
  %166 = call ptr @leval(ptr noundef %164, ptr noundef %165) #40
  %167 = load ptr, ptr %3, align 8, !tbaa !7
  %168 = icmp eq ptr %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.obj, ptr %167, i64 0, i32 2, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !11
  br label %172

172:                                              ; preds = %169, %160
  %173 = phi ptr [ %171, %169 ], [ null, %160 ]
  store ptr %173, ptr %3, align 8, !tbaa !7
  %174 = getelementptr inbounds %struct.obj, ptr %.lcssa25, i64 0, i32 2, i32 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !11
  %176 = call ptr @car(ptr noundef %173) #40
  %177 = load ptr, ptr %4, align 8, !tbaa !7
  %178 = call ptr @leval(ptr noundef %176, ptr noundef %177) #40
  %179 = load ptr, ptr %3, align 8, !tbaa !7
  %180 = call ptr @cdr(ptr noundef %179) #40
  %181 = call ptr @car(ptr noundef %180) #40
  %182 = load ptr, ptr %4, align 8, !tbaa !7
  %183 = call ptr @leval(ptr noundef %181, ptr noundef %182) #40
  %184 = call ptr %175(ptr noundef %166, ptr noundef %178, ptr noundef %183) #38
  br label %440

185:                                              ; preds = %82
  %.lcssa26 = phi ptr [ %84, %82 ]
  %186 = load ptr, ptr %3, align 8, !tbaa !7
  %187 = getelementptr inbounds %struct.obj, ptr %186, i64 0, i32 2, i32 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !11
  store ptr %188, ptr %3, align 8, !tbaa !7
  %189 = call ptr @car(ptr noundef %188) #40
  %190 = load ptr, ptr %4, align 8, !tbaa !7
  %191 = call ptr @leval(ptr noundef %189, ptr noundef %190) #40
  %192 = load ptr, ptr %3, align 8, !tbaa !7
  %193 = icmp eq ptr %192, null
  br i1 %193, label %197, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.obj, ptr %192, i64 0, i32 2, i32 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !11
  br label %197

197:                                              ; preds = %194, %185
  %198 = phi ptr [ %196, %194 ], [ null, %185 ]
  store ptr %198, ptr %3, align 8, !tbaa !7
  %199 = getelementptr inbounds %struct.obj, ptr %.lcssa26, i64 0, i32 2, i32 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !11
  %201 = call ptr @car(ptr noundef %198) #40
  %202 = load ptr, ptr %4, align 8, !tbaa !7
  %203 = call ptr @leval(ptr noundef %201, ptr noundef %202) #40
  %204 = load ptr, ptr %3, align 8, !tbaa !7
  %205 = call ptr @cdr(ptr noundef %204) #40
  %206 = call ptr @car(ptr noundef %205) #40
  %207 = load ptr, ptr %4, align 8, !tbaa !7
  %208 = call ptr @leval(ptr noundef %206, ptr noundef %207) #40
  %209 = load ptr, ptr %3, align 8, !tbaa !7
  %210 = call ptr @cdr(ptr noundef %209) #40
  %211 = call ptr @cdr(ptr noundef %210) #40
  %212 = call ptr @car(ptr noundef %211) #40
  %213 = load ptr, ptr %4, align 8, !tbaa !7
  %214 = call ptr @leval(ptr noundef %212, ptr noundef %213) #40
  %215 = call ptr %200(ptr noundef %191, ptr noundef %203, ptr noundef %208, ptr noundef %214) #38
  br label %440

216:                                              ; preds = %82
  %.lcssa27 = phi ptr [ %84, %82 ]
  %217 = load ptr, ptr %3, align 8, !tbaa !7
  %218 = getelementptr inbounds %struct.obj, ptr %217, i64 0, i32 2, i32 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !11
  store ptr %219, ptr %3, align 8, !tbaa !7
  %220 = call ptr @car(ptr noundef %219) #40
  %221 = load ptr, ptr %4, align 8, !tbaa !7
  %222 = call ptr @leval(ptr noundef %220, ptr noundef %221) #40
  %223 = load ptr, ptr %3, align 8, !tbaa !7
  %224 = icmp eq ptr %223, null
  br i1 %224, label %228, label %225

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.obj, ptr %223, i64 0, i32 2, i32 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !11
  br label %228

228:                                              ; preds = %225, %216
  %229 = phi ptr [ %227, %225 ], [ null, %216 ]
  store ptr %229, ptr %3, align 8, !tbaa !7
  %230 = getelementptr inbounds %struct.obj, ptr %.lcssa27, i64 0, i32 2, i32 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !11
  %232 = call ptr @car(ptr noundef %229) #40
  %233 = load ptr, ptr %4, align 8, !tbaa !7
  %234 = call ptr @leval(ptr noundef %232, ptr noundef %233) #40
  %235 = load ptr, ptr %3, align 8, !tbaa !7
  %236 = call ptr @cdr(ptr noundef %235) #40
  %237 = call ptr @car(ptr noundef %236) #40
  %238 = load ptr, ptr %4, align 8, !tbaa !7
  %239 = call ptr @leval(ptr noundef %237, ptr noundef %238) #40
  %240 = load ptr, ptr %3, align 8, !tbaa !7
  %241 = call ptr @cdr(ptr noundef %240) #40
  %242 = call ptr @cdr(ptr noundef %241) #40
  %243 = call ptr @car(ptr noundef %242) #40
  %244 = load ptr, ptr %4, align 8, !tbaa !7
  %245 = call ptr @leval(ptr noundef %243, ptr noundef %244) #40
  %246 = load ptr, ptr %3, align 8, !tbaa !7
  %247 = call ptr @cdr(ptr noundef %246) #40
  %248 = call ptr @cdr(ptr noundef %247) #40
  %249 = call ptr @cdr(ptr noundef %248) #40
  %250 = call ptr @car(ptr noundef %249) #40
  %251 = load ptr, ptr %4, align 8, !tbaa !7
  %252 = call ptr @leval(ptr noundef %250, ptr noundef %251) #40
  %253 = call ptr %231(ptr noundef %222, ptr noundef %234, ptr noundef %239, ptr noundef %245, ptr noundef %252) #38
  br label %440

254:                                              ; preds = %82
  %.lcssa28 = phi ptr [ %84, %82 ]
  %255 = getelementptr inbounds %struct.obj, ptr %.lcssa28, i64 0, i32 2, i32 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !11
  %257 = load ptr, ptr %3, align 8, !tbaa !7
  %258 = getelementptr inbounds %struct.obj, ptr %257, i64 0, i32 2, i32 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !11
  %260 = load ptr, ptr %4, align 8, !tbaa !7
  %261 = call ptr @leval_args(ptr noundef %259, ptr noundef %260) #40
  %262 = call ptr %256(ptr noundef %261) #38
  br label %440

263:                                              ; preds = %82
  %.lcssa29 = phi ptr [ %84, %82 ]
  %264 = getelementptr inbounds %struct.obj, ptr %.lcssa29, i64 0, i32 2, i32 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !11
  %266 = load ptr, ptr %3, align 8, !tbaa !7
  %267 = getelementptr inbounds %struct.obj, ptr %266, i64 0, i32 2, i32 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !11
  %269 = load ptr, ptr %4, align 8, !tbaa !7
  %270 = call ptr %265(ptr noundef %268, ptr noundef %269) #38
  br label %440

271:                                              ; preds = %82
  %272 = getelementptr inbounds %struct.obj, ptr %84, i64 0, i32 2, i32 0, i32 1
  %273 = load ptr, ptr %272, align 8, !tbaa !11
  %274 = call ptr %273(ptr noundef nonnull %3, ptr noundef nonnull %4) #38
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %301

276:                                              ; preds = %271
  %277 = load ptr, ptr %3, align 8, !tbaa !7
  br label %440

278:                                              ; preds = %82
  %279 = getelementptr inbounds %struct.obj, ptr %84, i64 0, i32 2
  %280 = getelementptr inbounds %struct.obj, ptr %84, i64 0, i32 2, i32 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !11
  %282 = icmp eq ptr %281, null
  br i1 %282, label %412, label %283

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.obj, ptr %281, i64 0, i32 1
  %285 = load i16, ptr %284, align 2, !tbaa !16
  %286 = sext i16 %285 to i32
  switch i32 %286, label %412 [
    i32 1, label %287
    i32 5, label %302
    i32 6, label %307
    i32 7, label %319
    i32 19, label %341
    i32 20, label %368
    i32 8, label %401
  ]

287:                                              ; preds = %283
  %288 = load ptr, ptr %3, align 8, !tbaa !7
  %289 = getelementptr inbounds %struct.obj, ptr %288, i64 0, i32 2, i32 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !11
  %291 = load ptr, ptr %4, align 8, !tbaa !7
  %292 = call ptr @leval_args(ptr noundef %290, ptr noundef %291) #40
  %293 = load ptr, ptr %280, align 8, !tbaa !11
  %294 = getelementptr inbounds %struct.obj, ptr %293, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !11
  %296 = load ptr, ptr %279, align 8, !tbaa !11
  %297 = call ptr @extend_env(ptr noundef %292, ptr noundef %295, ptr noundef %296) #40
  store ptr %297, ptr %4, align 8, !tbaa !7
  %298 = load ptr, ptr %280, align 8, !tbaa !11
  %299 = getelementptr inbounds %struct.obj, ptr %298, i64 0, i32 2, i32 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !11
  store ptr %300, ptr %3, align 8, !tbaa !7
  br label %301

301:                                              ; preds = %431, %414, %287, %271
  br label %10

302:                                              ; preds = %283
  %.lcssa15 = phi ptr [ %279, %283 ]
  %.lcssa1 = phi ptr [ %281, %283 ]
  %303 = getelementptr inbounds %struct.obj, ptr %.lcssa1, i64 0, i32 2, i32 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !11
  %305 = load ptr, ptr %.lcssa15, align 8, !tbaa !11
  %306 = call ptr %304(ptr noundef %305) #38
  br label %440

307:                                              ; preds = %283
  %.lcssa16 = phi ptr [ %279, %283 ]
  %.lcssa9 = phi ptr [ %280, %283 ]
  %308 = load ptr, ptr %3, align 8, !tbaa !7
  %309 = getelementptr inbounds %struct.obj, ptr %308, i64 0, i32 2, i32 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !11
  store ptr %310, ptr %3, align 8, !tbaa !7
  %311 = call ptr @car(ptr noundef %310) #40
  %312 = load ptr, ptr %4, align 8, !tbaa !7
  %313 = call ptr @leval(ptr noundef %311, ptr noundef %312) #40
  %314 = load ptr, ptr %.lcssa9, align 8, !tbaa !11
  %315 = getelementptr inbounds %struct.obj, ptr %314, i64 0, i32 2, i32 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !11
  %317 = load ptr, ptr %.lcssa16, align 8, !tbaa !11
  %318 = call ptr %316(ptr noundef %317, ptr noundef %313) #38
  br label %440

319:                                              ; preds = %283
  %.lcssa17 = phi ptr [ %279, %283 ]
  %.lcssa10 = phi ptr [ %280, %283 ]
  %320 = load ptr, ptr %3, align 8, !tbaa !7
  %321 = getelementptr inbounds %struct.obj, ptr %320, i64 0, i32 2, i32 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !11
  store ptr %322, ptr %3, align 8, !tbaa !7
  %323 = call ptr @car(ptr noundef %322) #40
  %324 = load ptr, ptr %4, align 8, !tbaa !7
  %325 = call ptr @leval(ptr noundef %323, ptr noundef %324) #40
  %326 = load ptr, ptr %3, align 8, !tbaa !7
  %327 = icmp eq ptr %326, null
  br i1 %327, label %331, label %328

328:                                              ; preds = %319
  %329 = getelementptr inbounds %struct.obj, ptr %326, i64 0, i32 2, i32 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !11
  br label %331

331:                                              ; preds = %328, %319
  %332 = phi ptr [ %330, %328 ], [ null, %319 ]
  store ptr %332, ptr %3, align 8, !tbaa !7
  %333 = load ptr, ptr %.lcssa10, align 8, !tbaa !11
  %334 = getelementptr inbounds %struct.obj, ptr %333, i64 0, i32 2, i32 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !11
  %336 = load ptr, ptr %.lcssa17, align 8, !tbaa !11
  %337 = call ptr @car(ptr noundef %332) #40
  %338 = load ptr, ptr %4, align 8, !tbaa !7
  %339 = call ptr @leval(ptr noundef %337, ptr noundef %338) #40
  %340 = call ptr %335(ptr noundef %336, ptr noundef %325, ptr noundef %339) #38
  br label %440

341:                                              ; preds = %283
  %.lcssa18 = phi ptr [ %279, %283 ]
  %.lcssa11 = phi ptr [ %280, %283 ]
  %342 = load ptr, ptr %3, align 8, !tbaa !7
  %343 = getelementptr inbounds %struct.obj, ptr %342, i64 0, i32 2, i32 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !11
  store ptr %344, ptr %3, align 8, !tbaa !7
  %345 = call ptr @car(ptr noundef %344) #40
  %346 = load ptr, ptr %4, align 8, !tbaa !7
  %347 = call ptr @leval(ptr noundef %345, ptr noundef %346) #40
  %348 = load ptr, ptr %3, align 8, !tbaa !7
  %349 = icmp eq ptr %348, null
  br i1 %349, label %353, label %350

350:                                              ; preds = %341
  %351 = getelementptr inbounds %struct.obj, ptr %348, i64 0, i32 2, i32 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !11
  br label %353

353:                                              ; preds = %350, %341
  %354 = phi ptr [ %352, %350 ], [ null, %341 ]
  store ptr %354, ptr %3, align 8, !tbaa !7
  %355 = load ptr, ptr %.lcssa11, align 8, !tbaa !11
  %356 = getelementptr inbounds %struct.obj, ptr %355, i64 0, i32 2, i32 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !11
  %358 = load ptr, ptr %.lcssa18, align 8, !tbaa !11
  %359 = call ptr @car(ptr noundef %354) #40
  %360 = load ptr, ptr %4, align 8, !tbaa !7
  %361 = call ptr @leval(ptr noundef %359, ptr noundef %360) #40
  %362 = load ptr, ptr %3, align 8, !tbaa !7
  %363 = call ptr @cdr(ptr noundef %362) #40
  %364 = call ptr @car(ptr noundef %363) #40
  %365 = load ptr, ptr %4, align 8, !tbaa !7
  %366 = call ptr @leval(ptr noundef %364, ptr noundef %365) #40
  %367 = call ptr %357(ptr noundef %358, ptr noundef %347, ptr noundef %361, ptr noundef %366) #38
  br label %440

368:                                              ; preds = %283
  %.lcssa19 = phi ptr [ %279, %283 ]
  %.lcssa12 = phi ptr [ %280, %283 ]
  %369 = load ptr, ptr %3, align 8, !tbaa !7
  %370 = getelementptr inbounds %struct.obj, ptr %369, i64 0, i32 2, i32 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !11
  store ptr %371, ptr %3, align 8, !tbaa !7
  %372 = call ptr @car(ptr noundef %371) #40
  %373 = load ptr, ptr %4, align 8, !tbaa !7
  %374 = call ptr @leval(ptr noundef %372, ptr noundef %373) #40
  %375 = load ptr, ptr %3, align 8, !tbaa !7
  %376 = icmp eq ptr %375, null
  br i1 %376, label %380, label %377

377:                                              ; preds = %368
  %378 = getelementptr inbounds %struct.obj, ptr %375, i64 0, i32 2, i32 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !11
  br label %380

380:                                              ; preds = %377, %368
  %381 = phi ptr [ %379, %377 ], [ null, %368 ]
  store ptr %381, ptr %3, align 8, !tbaa !7
  %382 = load ptr, ptr %.lcssa12, align 8, !tbaa !11
  %383 = getelementptr inbounds %struct.obj, ptr %382, i64 0, i32 2, i32 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !11
  %385 = load ptr, ptr %.lcssa19, align 8, !tbaa !11
  %386 = call ptr @car(ptr noundef %381) #40
  %387 = load ptr, ptr %4, align 8, !tbaa !7
  %388 = call ptr @leval(ptr noundef %386, ptr noundef %387) #40
  %389 = load ptr, ptr %3, align 8, !tbaa !7
  %390 = call ptr @cdr(ptr noundef %389) #40
  %391 = call ptr @car(ptr noundef %390) #40
  %392 = load ptr, ptr %4, align 8, !tbaa !7
  %393 = call ptr @leval(ptr noundef %391, ptr noundef %392) #40
  %394 = load ptr, ptr %3, align 8, !tbaa !7
  %395 = call ptr @cdr(ptr noundef %394) #40
  %396 = call ptr @cdr(ptr noundef %395) #40
  %397 = call ptr @car(ptr noundef %396) #40
  %398 = load ptr, ptr %4, align 8, !tbaa !7
  %399 = call ptr @leval(ptr noundef %397, ptr noundef %398) #40
  %400 = call ptr %384(ptr noundef %385, ptr noundef %374, ptr noundef %388, ptr noundef %393, ptr noundef %399) #38
  br label %440

401:                                              ; preds = %283
  %.lcssa20 = phi ptr [ %279, %283 ]
  %.lcssa6 = phi ptr [ %281, %283 ]
  %402 = getelementptr inbounds %struct.obj, ptr %.lcssa6, i64 0, i32 2, i32 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !11
  %404 = load ptr, ptr %.lcssa20, align 8, !tbaa !11
  %405 = load ptr, ptr %3, align 8, !tbaa !7
  %406 = getelementptr inbounds %struct.obj, ptr %405, i64 0, i32 2, i32 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !11
  %408 = load ptr, ptr %4, align 8, !tbaa !7
  %409 = call ptr @leval_args(ptr noundef %407, ptr noundef %408) #40
  %410 = call ptr @cons(ptr noundef %404, ptr noundef %409) #40
  %411 = call ptr %403(ptr noundef %410) #38
  br label %440

412:                                              ; preds = %283, %278
  %.lcssa49 = phi ptr [ %27, %283 ], [ %27, %278 ]
  %.lcssa30 = phi ptr [ %84, %283 ], [ %84, %278 ]
  %413 = call ptr @err(ptr noundef nonnull @.str.88, ptr noundef nonnull %.lcssa30) #40
  br label %438

414:                                              ; preds = %82
  %415 = load ptr, ptr @sym_quote, align 8, !tbaa !7
  %416 = load ptr, ptr %3, align 8, !tbaa !7
  %417 = call ptr @cons(ptr noundef %416, ptr noundef null) #40
  %418 = call ptr @cons(ptr noundef %415, ptr noundef %417) #40
  %419 = call ptr @cons(ptr noundef %418, ptr noundef null) #40
  %420 = call ptr @cons(ptr noundef nonnull %84, ptr noundef %419) #40
  store ptr %420, ptr %3, align 8, !tbaa !7
  %421 = call ptr @leval(ptr noundef %420, ptr noundef null) #40
  store ptr %421, ptr %3, align 8, !tbaa !7
  br label %301

422:                                              ; preds = %82
  %423 = sext i16 %83 to i64
  br label %424

424:                                              ; preds = %422, %76, %48
  %425 = phi ptr [ %84, %422 ], [ null, %48 ], [ null, %76 ]
  %426 = phi i64 [ %423, %422 ], [ 0, %48 ], [ 0, %76 ]
  %427 = call ptr @get_user_type_hooks(i64 noundef %426) #40
  %428 = getelementptr inbounds %struct.user_type_hooks, ptr %427, i64 0, i32 5
  %429 = load ptr, ptr %428, align 8, !tbaa !28
  %430 = icmp eq ptr %429, null
  br i1 %430, label %436, label %431

431:                                              ; preds = %424
  %432 = call ptr %429(ptr noundef %425, ptr noundef nonnull %3, ptr noundef nonnull %4) #38
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %301

434:                                              ; preds = %431
  %435 = load ptr, ptr %3, align 8, !tbaa !7
  br label %440

436:                                              ; preds = %424
  %.lcssa59 = phi ptr [ %425, %424 ]
  %.lcssa57 = phi ptr [ %27, %424 ]
  %437 = call ptr @err(ptr noundef nonnull @.str.89, ptr noundef %.lcssa59) #40
  br label %438

438:                                              ; preds = %436, %412, %29, %26
  %439 = load ptr, ptr %3, align 8, !tbaa !7
  br label %440

440:                                              ; preds = %438, %434, %401, %380, %353, %331, %307, %302, %276, %263, %254, %228, %197, %172, %149, %143, %132, %112, %90, %86, %46, %40, %37
  %441 = phi ptr [ %439, %438 ], [ %435, %434 ], [ %411, %401 ], [ %400, %380 ], [ %367, %353 ], [ %340, %331 ], [ %318, %307 ], [ %306, %302 ], [ %277, %276 ], [ %270, %263 ], [ %262, %254 ], [ %253, %228 ], [ %215, %197 ], [ %184, %172 ], [ %119, %112 ], [ %99, %90 ], [ %89, %86 ], [ %39, %37 ], [ %43, %46 ], [ %43, %40 ], [ %139, %132 ], [ %144, %143 ], [ %155, %149 ]
  ret ptr %441
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @envlookup(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %59, label %4

4:                                                ; preds = %53, %2
  %5 = phi ptr [ %55, %53 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %57

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %9
  %18 = tail call ptr @err(ptr noundef nonnull @.str.85, ptr noundef %11) #40
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %43, %19
  %24 = phi ptr [ %27, %43 ], [ %11, %19 ]
  %25 = phi ptr [ %45, %43 ], [ %21, %19 ]
  %26 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 2, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !16
  %30 = icmp eq i16 %29, 1
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = icmp eq ptr %27, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.obj, ptr %27, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !16
  %36 = icmp eq i16 %35, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %31
  %38 = tail call ptr @err(ptr noundef nonnull @.str.86, ptr noundef %11) #40
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %23, !llvm.loop !30

47:                                               ; preds = %23
  %.lcssa2 = phi ptr [ %25, %23 ]
  %.lcssa1 = phi ptr [ %27, %23 ]
  %.lcssa = phi i16 [ %29, %23 ]
  %48 = icmp eq i16 %.lcssa, 3
  %49 = icmp eq ptr %.lcssa2, %0
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %.lcssa1.lcssa = phi ptr [ %.lcssa1, %47 ]
  %52 = tail call ptr @cons(ptr noundef %.lcssa1.lcssa, ptr noundef null) #40
  br label %59

53:                                               ; preds = %47, %43, %19
  %54 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %4, !llvm.loop !31

57:                                               ; preds = %4
  %58 = tail call ptr @err(ptr noundef nonnull @.str.87, ptr noundef nonnull %1) #40
  br label %59

59:                                               ; preds = %57, %53, %51, %39, %2
  %60 = phi ptr [ %52, %51 ], [ null, %57 ], [ null, %2 ], [ %27, %39 ], [ null, %53 ]
  ret ptr %60
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @car(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i32
  switch i32 %6, label %10 [
    i32 0, label %12
    i32 1, label %7
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %0) #40
  br label %12

12:                                               ; preds = %10, %7, %3, %1
  %13 = phi ptr [ null, %10 ], [ %9, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cdr(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i32
  switch i32 %6, label %10 [
    i32 0, label %12
    i32 1, label %7
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %0) #40
  br label %12

12:                                               ; preds = %10, %7, %3, %1
  %13 = phi ptr [ null, %10 ], [ %9, %7 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_args(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @err(ptr noundef nonnull @.str.84, ptr noundef nonnull %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = tail call ptr @leval(ptr noundef %12, ptr noundef %1) #40
  %14 = tail call ptr @cons(ptr noundef %13, ptr noundef null) #40
  %15 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %24, %10
  %19 = phi ptr [ %31, %24 ], [ %16, %10 ]
  %20 = phi ptr [ %28, %24 ], [ %14, %10 ]
  %21 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = tail call ptr @leval(ptr noundef %26, ptr noundef %1) #40
  %28 = tail call ptr @cons(ptr noundef %27, ptr noundef null) #40
  %29 = getelementptr inbounds %struct.obj, ptr %20, i64 0, i32 2, i32 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %18, !llvm.loop !32

33:                                               ; preds = %18
  %34 = tail call ptr @err(ptr noundef nonnull @.str.84, ptr noundef nonnull %0) #40
  br label %35

35:                                               ; preds = %33, %24, %10, %2
  %36 = phi ptr [ null, %2 ], [ %14, %33 ], [ %14, %10 ], [ %14, %24 ]
  ret ptr %36
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @extend_env(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 3
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = tail call ptr @cons(ptr noundef nonnull %1, ptr noundef null) #40
  %11 = tail call ptr @cons(ptr noundef %0, ptr noundef null) #40
  %12 = tail call ptr @cons(ptr noundef %10, ptr noundef %11) #40
  br label %15

13:                                               ; preds = %5, %3
  %14 = tail call ptr @cons(ptr noundef %1, ptr noundef %0) #40
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %12, %9 ]
  %17 = tail call ptr @cons(ptr noundef %16, ptr noundef %2) #40
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_user_type_hooks(i64 noundef %0) #0 {
  %2 = load ptr, ptr @user_types, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @must_malloc(i64 noundef 8000) #40
  store ptr %5, ptr @user_types, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %5, i8 0, i64 8000, i1 false)
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %8 = icmp ult i64 %0, 100
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.user_type_hooks, ptr %7, i64 %0
  br label %13

11:                                               ; preds = %6
  %12 = tail call ptr @err(ptr noundef nonnull @.str.72, ptr noundef null) #40
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ null, %11 ]
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @must_malloc(i64 noundef %0) #0 {
  %2 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %3 = tail call noalias ptr @malloc(i64 noundef %2) #44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @err(ptr noundef nonnull @.str.51, ptr noundef null) #40
  br label %7

7:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind optsize uwtable
define internal void @gc_ms_stats_start() #1 {
  %1 = alloca %struct.tms, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #42
  %2 = call i64 @times(ptr noundef nonnull %1) #38
  %3 = load i64, ptr %1, align 8, !tbaa !33
  %4 = sitofp i64 %3 to double
  %5 = getelementptr inbounds %struct.tms, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !35
  %7 = sitofp i64 %6 to double
  %8 = fadd double %4, %7
  %9 = fdiv double %8, 6.000000e+01
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #42
  store double %9, ptr @gc_rt, align 8, !tbaa !36
  store i64 0, ptr @gc_cells_collected, align 8, !tbaa !12
  %10 = load i64, ptr @gc_status_flag, align 8, !tbaa !12
  %11 = icmp ne i64 %10, 0
  %12 = load i64, ptr @siod_verbose_level, align 8
  %13 = icmp sgt i64 %12, 3
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.242)
  br label %17

17:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: optsize returns_twice
declare i32 @getcontext(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal void @mark_locations_array(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = icmp sgt i64 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %11, %2
  %5 = phi i64 [ %12, %11 ], [ 0, %2 ]
  %6 = getelementptr inbounds ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = tail call i64 @looks_pointerp(ptr noundef %7) #40, !range !38
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @gc_mark(ptr noundef %7) #40
  br label %11

11:                                               ; preds = %10, %4
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %14, label %4, !llvm.loop !39

14:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @mark_protected_registers() #0 {
  %1 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %15, %0
  %4 = phi ptr [ %17, %15 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.gc_protected, ptr %4, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !42
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %9, %3
  %10 = phi i64 [ %13, %9 ], [ 0, %3 ]
  %11 = getelementptr inbounds ptr, ptr %5, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  tail call void @gc_mark(ptr noundef %12) #40
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %7
  br i1 %14, label %15, label %9, !llvm.loop !43

15:                                               ; preds = %9, %3
  %16 = getelementptr inbounds %struct.gc_protected, ptr %4, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !44

19:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @gc_sweep() #0 {
  %1 = load i64, ptr @nheaps, align 8, !tbaa !12
  %2 = icmp sgt i64 %1, 0
  br i1 %2, label %3, label %50

3:                                                ; preds = %44, %0
  %4 = phi i64 [ %45, %44 ], [ %1, %0 ]
  %5 = phi i64 [ %48, %44 ], [ 0, %0 ]
  %6 = phi i64 [ %47, %44 ], [ 0, %0 ]
  %7 = phi ptr [ %46, %44 ], [ null, %0 ]
  %8 = load ptr, ptr @heaps, align 8, !tbaa !7
  %9 = getelementptr inbounds ptr, ptr %8, i64 %5
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %12

12:                                               ; preds = %3
  %13 = load i64, ptr @heap_size, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.obj, ptr %10, i64 %13
  %15 = icmp sgt i64 %13, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %37, %12
  %17 = phi ptr [ %40, %37 ], [ %10, %12 ]
  %18 = phi i64 [ %39, %37 ], [ %6, %12 ]
  %19 = phi ptr [ %38, %37 ], [ %7, %12 ]
  %20 = load i16, ptr %17, align 8, !tbaa !23
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !16
  %25 = sext i16 %24 to i32
  switch i32 %25, label %26 [
    i32 12, label %33
    i32 1, label %33
    i32 11, label %33
    i32 3, label %33
    i32 2, label %33
    i32 4, label %33
    i32 5, label %33
    i32 6, label %33
    i32 21, label %33
    i32 7, label %33
    i32 19, label %33
    i32 20, label %33
    i32 8, label %33
    i32 9, label %33
    i32 10, label %33
  ]

26:                                               ; preds = %22
  %27 = sext i16 %24 to i64
  %28 = tail call ptr @get_user_type_hooks(i64 noundef %27) #40
  %29 = getelementptr inbounds %struct.user_type_hooks, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef nonnull %17) #38
  br label %33

33:                                               ; preds = %32, %26, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %34 = add nsw i64 %18, 1
  store i16 12, ptr %23, align 2, !tbaa !16
  %35 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  store ptr %19, ptr %35, align 8, !tbaa !11
  br label %37

36:                                               ; preds = %16
  store i16 0, ptr %17, align 8, !tbaa !23
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi ptr [ %17, %33 ], [ %19, %36 ]
  %39 = phi i64 [ %34, %33 ], [ %18, %36 ]
  %40 = getelementptr inbounds %struct.obj, ptr %17, i64 1
  %41 = icmp ult ptr %40, %14
  br i1 %41, label %16, label %42, !llvm.loop !46

42:                                               ; preds = %37
  %.lcssa1 = phi ptr [ %38, %37 ]
  %.lcssa = phi i64 [ %39, %37 ]
  %43 = load i64, ptr @nheaps, align 8, !tbaa !12
  br label %44

44:                                               ; preds = %42, %12, %3
  %45 = phi i64 [ %4, %3 ], [ %4, %12 ], [ %43, %42 ]
  %46 = phi ptr [ %7, %3 ], [ %7, %12 ], [ %.lcssa1, %42 ]
  %47 = phi i64 [ %6, %3 ], [ %6, %12 ], [ %.lcssa, %42 ]
  %48 = add nuw nsw i64 %5, 1
  %49 = icmp slt i64 %48, %45
  br i1 %49, label %3, label %50, !llvm.loop !47

50:                                               ; preds = %44, %0
  %51 = phi ptr [ null, %0 ], [ %46, %44 ]
  %52 = phi i64 [ 0, %0 ], [ %47, %44 ]
  store i64 %52, ptr @gc_cells_collected, align 8, !tbaa !12
  store ptr %51, ptr @freelist, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @gc_ms_stats_end() #1 {
  %1 = alloca %struct.tms, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #42
  %2 = call i64 @times(ptr noundef nonnull %1) #38
  %3 = load i64, ptr %1, align 8, !tbaa !33
  %4 = sitofp i64 %3 to double
  %5 = getelementptr inbounds %struct.tms, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !35
  %7 = sitofp i64 %6 to double
  %8 = fadd double %4, %7
  %9 = fdiv double %8, 6.000000e+01
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #42
  %10 = load double, ptr @gc_rt, align 8, !tbaa !36
  %11 = fsub double %9, %10
  store double %11, ptr @gc_rt, align 8, !tbaa !36
  %12 = load double, ptr @gc_time_taken, align 8, !tbaa !36
  %13 = fadd double %12, %11
  store double %13, ptr @gc_time_taken, align 8, !tbaa !36
  %14 = load i64, ptr @gc_status_flag, align 8, !tbaa !12
  %15 = icmp ne i64 %14, 0
  %16 = load i64, ptr @siod_verbose_level, align 8
  %17 = icmp sgt i64 %16, 3
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i64, ptr @gc_cells_collected, align 8, !tbaa !12
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, double noundef %11, i64 noundef %20) #40
  br label %22

22:                                               ; preds = %19, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind optsize
declare noundef i64 @times(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @gc_mark(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %15, %1
  %4 = phi ptr [ %17, %15 ], [ %0, %1 ]
  %5 = load i16, ptr %4, align 8, !tbaa !23
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  store i16 1, ptr %4, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = sext i16 %9 to i32
  switch i32 %10, label %25 [
    i32 2, label %33
    i32 1, label %11
    i32 3, label %19
    i32 11, label %21
    i32 4, label %33
    i32 5, label %33
    i32 6, label %33
    i32 21, label %33
    i32 7, label %33
    i32 19, label %33
    i32 20, label %33
    i32 8, label %33
    i32 9, label %33
    i32 10, label %33
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  tail call void @gc_mark(ptr noundef %13) #40
  %14 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2, i32 0, i32 1
  br label %15

15:                                               ; preds = %21, %19, %11
  %16 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %14, %11 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %3

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2, i32 0, i32 1
  br label %15

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2
  %23 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  tail call void @gc_mark(ptr noundef %24) #40
  br label %15

25:                                               ; preds = %7
  %.lcssa1 = phi i16 [ %9, %7 ]
  %.lcssa = phi ptr [ %4, %7 ]
  %26 = sext i16 %.lcssa1 to i64
  %27 = tail call ptr @get_user_type_hooks(i64 noundef %26) #40
  %28 = getelementptr inbounds %struct.user_type_hooks, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !48
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call ptr %29(ptr noundef nonnull %.lcssa) #38
  br label %33

33:                                               ; preds = %31, %25, %15, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @looks_pointerp(ptr noundef %0) #13 {
  %2 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %3 = load i64, ptr @nheaps, align 8, !tbaa !12
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load ptr, ptr @heaps, align 8, !tbaa !7
  %7 = load i64, ptr @heap_size, align 8
  %8 = ptrtoint ptr %0 to i64
  br label %9

9:                                                ; preds = %27, %5
  %10 = phi i64 [ 0, %5 ], [ %28, %27 ]
  %11 = getelementptr inbounds ptr, ptr %6, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = icmp ne ptr %12, null
  %14 = icmp ule ptr %12, %0
  %15 = and i1 %13, %14
  %16 = getelementptr inbounds %struct.obj, ptr %12, i64 %7
  %17 = icmp ugt ptr %16, %0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %27

19:                                               ; preds = %9
  %20 = ptrtoint ptr %12 to i64
  %21 = sub i64 %8, %20
  %22 = urem i64 %21, 24
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i16, ptr %2, align 2, !tbaa !16
  %26 = icmp eq i16 %25, 12
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %19, %9
  %28 = add nuw nsw i64 %10, 1
  %29 = icmp eq i64 %28, %3
  br i1 %29, label %30, label %9, !llvm.loop !49

30:                                               ; preds = %27, %24, %1
  %31 = phi i64 [ 0, %1 ], [ 0, %27 ], [ 1, %24 ]
  ret i64 %31
}

; Function Attrs: nounwind optsize uwtable
define internal void @handle_sigfpe(i32 %0) #0 {
  %2 = tail call ptr @signal(i32 noundef 8, ptr noundef nonnull @handle_sigfpe) #38
  %3 = tail call ptr @err(ptr noundef nonnull @.str.12, ptr noundef null) #40
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal void @handle_sigint(i32 %0) #0 {
  %2 = tail call ptr @signal(i32 noundef 2, ptr noundef nonnull @handle_sigint) #38
  %3 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i64 1, ptr @interrupt_differed, align 8, !tbaa !12
  br label %8

6:                                                ; preds = %1
  %7 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %8

8:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @get_eof_val() #15 {
  %1 = load ptr, ptr @eof_val, align 8, !tbaa !7
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @repl_driver(i64 noundef %0, i64 noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.repl_hooks, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42
  store ptr %5, ptr @stack_start_ptr, align 8, !tbaa !7
  %6 = load i64, ptr @stack_size, align 8, !tbaa !12
  %7 = sub i64 0, %6
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  store ptr %8, ptr @stack_limit_ptr, align 8, !tbaa !7
  %9 = call i32 @_setjmp(ptr noundef nonnull @errjmp) #43
  %10 = icmp eq i32 %9, 2
  %11 = icmp eq i64 %0, 0
  br i1 %10, label %12, label %13

12:                                               ; preds = %3
  br i1 %11, label %43, label %39

13:                                               ; preds = %3
  br i1 %11, label %16, label %14

14:                                               ; preds = %13
  %15 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @handle_sigint) #38
  store ptr %15, ptr @repl_driver.osigint, align 8, !tbaa !7
  br label %16

16:                                               ; preds = %14, %13
  %17 = call ptr @signal(i32 noundef 8, ptr noundef nonnull @handle_sigfpe) #38
  store ptr %17, ptr @repl_driver.osigfpe, align 8, !tbaa !7
  store ptr null, ptr @catch_framep, align 8, !tbaa !7
  store i64 1, ptr @errjmp_ok, align 8, !tbaa !12
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  store i64 0, ptr @nointerrupt, align 8, !tbaa !12
  %18 = icmp ne i64 %1, 0
  %19 = load ptr, ptr @init_file, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  %22 = icmp eq i32 %9, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call ptr @vload(ptr noundef nonnull %19, i64 noundef 0, i64 noundef 1) #40
  br label %26

26:                                               ; preds = %24, %16
  %27 = icmp eq ptr %2, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %26
  %29 = load ptr, ptr @repl_puts, align 8, !tbaa !7
  store ptr %29, ptr %4, align 8, !tbaa !50
  %30 = load ptr, ptr @repl_read, align 8, !tbaa !7
  %31 = getelementptr inbounds %struct.repl_hooks, ptr %4, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !52
  %32 = load ptr, ptr @repl_eval, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.repl_hooks, ptr %4, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !53
  %34 = load ptr, ptr @repl_print, align 8, !tbaa !7
  %35 = getelementptr inbounds %struct.repl_hooks, ptr %4, i64 0, i32 3
  store ptr %34, ptr %35, align 8, !tbaa !54
  br label %36

36:                                               ; preds = %28, %26
  %37 = phi ptr [ %4, %28 ], [ %2, %26 ]
  %38 = call i64 @repl(ptr noundef nonnull %37) #40
  br i1 %11, label %43, label %39

39:                                               ; preds = %36, %12
  %40 = phi i64 [ 2, %12 ], [ 0, %36 ]
  %41 = load ptr, ptr @repl_driver.osigint, align 8, !tbaa !7
  %42 = call ptr @signal(i32 noundef 2, ptr noundef %41) #38
  br label %43

43:                                               ; preds = %39, %36, %12
  %44 = phi i64 [ 2, %12 ], [ 0, %36 ], [ %40, %39 ]
  %45 = load ptr, ptr @repl_driver.osigfpe, align 8, !tbaa !7
  %46 = call ptr @signal(i32 noundef 8, ptr noundef %45) #38
  store ptr null, ptr @stack_start_ptr, align 8, !tbaa !7
  store ptr null, ptr @stack_limit_ptr, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #42
  ret i64 %44
}

; Function Attrs: nounwind optsize returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind optsize uwtable
define internal ptr @vload(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.gen_readio, align 8
  %5 = alloca %struct.gen_readio, align 8
  %6 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #42
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 124) #39
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = tail call i64 @atol(ptr nocapture noundef %0) #39
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i64 [ %10, %9 ], [ 0, %3 ]
  %14 = phi ptr [ %11, %9 ], [ %0, %3 ]
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %51, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %18 = tail call noalias ptr @fopen(ptr noundef %14, ptr noundef nonnull @.str.133) #40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @fclose(ptr noundef nonnull %18) #40
  br label %41

22:                                               ; preds = %16
  %23 = load i8, ptr %14, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 47
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr @siod_lib, align 8, !tbaa !7
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #39
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #39
  %29 = add i64 %27, 1
  %30 = add i64 %29, %28
  %31 = icmp ult i64 %30, 512
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %26) #38
  %34 = call i64 @strlen(ptr nonnull dereferenceable(1) %6)
  %35 = getelementptr inbounds i8, ptr %6, i64 %34
  store i16 47, ptr %35, align 1
  %36 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %14) #38
  %37 = call noalias ptr @fopen(ptr noundef nonnull %6, ptr noundef nonnull @.str.133) #40
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = call i32 @fclose(ptr noundef nonnull %37) #40
  br label %41

41:                                               ; preds = %39, %32, %25, %22, %20
  %42 = phi ptr [ %14, %20 ], [ %6, %39 ], [ %14, %32 ], [ %14, %25 ], [ %14, %22 ]
  %43 = shl i64 %17, 32
  %44 = ashr exact i64 %43, 32
  store i64 %44, ptr @nointerrupt, align 8, !tbaa !12
  %45 = icmp eq i64 %43, 0
  %46 = load i64, ptr @interrupt_differed, align 8
  %47 = icmp eq i64 %46, 1
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %50 = call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %51

51:                                               ; preds = %49, %41, %12
  %52 = phi ptr [ %14, %12 ], [ %42, %41 ], [ %42, %49 ]
  %53 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %54 = icmp sgt i64 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @fput_st(ptr noundef %56, ptr noundef nonnull @.str.138) #40
  %57 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @fput_st(ptr noundef %57, ptr noundef %52) #40
  %58 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @fput_st(ptr noundef %58, ptr noundef nonnull @.str.121) #40
  br label %59

59:                                               ; preds = %55, %51
  %60 = icmp eq i64 %13, 0
  %61 = select i1 %60, ptr @.str.133, ptr @.str.139
  %62 = call ptr @fopen_cg(ptr noundef nonnull @fopen, ptr noundef %52, ptr noundef nonnull %61) #40
  %63 = getelementptr inbounds %struct.obj, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = icmp sgt i64 %13, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %66, %59
  %67 = phi i64 [ %69, %66 ], [ 0, %59 ]
  %68 = call i32 @getc(ptr noundef %64) #40
  %69 = add nuw nsw i64 %67, 1
  %70 = icmp eq i64 %69, %13
  br i1 %70, label %71, label %66, !llvm.loop !55

71:                                               ; preds = %66, %59
  store i8 0, ptr %6, align 16, !tbaa !11
  br label %72

72:                                               ; preds = %90, %71
  %73 = phi i64 [ %.lcssa4, %90 ], [ 0, %71 ]
  %74 = call i32 @getc(ptr noundef %64) #40
  br label %75

75:                                               ; preds = %83, %72
  %76 = phi i32 [ %74, %72 ], [ %84, %83 ]
  %77 = phi i64 [ %73, %72 ], [ %80, %83 ]
  switch i32 %76, label %91 [
    i32 59, label %78
    i32 35, label %78
    i32 -1, label %93
  ]

78:                                               ; preds = %75, %75
  br label %79

79:                                               ; preds = %86, %78
  %80 = phi i64 [ %77, %78 ], [ %81, %86 ]
  %81 = add nsw i64 %80, 1
  %82 = icmp ult i64 %81, 512
  br label %83

83:                                               ; preds = %85, %79
  %84 = call i32 @getc(ptr noundef %64) #40
  switch i32 %84, label %85 [
    i32 10, label %90
    i32 -1, label %75
  ], !llvm.loop !56

85:                                               ; preds = %83
  br i1 %82, label %86, label %83, !llvm.loop !57

86:                                               ; preds = %85
  %.lcssa3 = phi i32 [ %84, %85 ]
  %87 = trunc i32 %.lcssa3 to i8
  %88 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %80
  store i8 %87, ptr %88, align 1, !tbaa !11
  %89 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %81
  store i8 0, ptr %89, align 1, !tbaa !11
  br label %79, !llvm.loop !57

90:                                               ; preds = %83
  %.lcssa4 = phi i64 [ %80, %83 ]
  br label %72, !llvm.loop !56

91:                                               ; preds = %75
  %.lcssa5 = phi i32 [ %76, %75 ]
  %92 = call i32 @ungetc(i32 noundef %.lcssa5, ptr noundef %64) #40
  br label %93

93:                                               ; preds = %91, %75
  %94 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.135) #39
  %95 = icmp eq ptr %94, null
  br i1 %95, label %139, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, ptr %94, i64 7
  %98 = load i8, ptr %97, align 1, !tbaa !11
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %96
  %101 = tail call ptr @__ctype_b_loc() #45
  %102 = load ptr, ptr %101, align 8, !tbaa !7
  br label %103

103:                                              ; preds = %111, %100
  %104 = phi i8 [ %98, %100 ], [ %113, %111 ]
  %105 = phi ptr [ %97, %100 ], [ %112, %111 ]
  %106 = sext i8 %104 to i64
  %107 = getelementptr inbounds i16, ptr %102, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !58
  %109 = and i16 %108, 8
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds i8, ptr %105, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !11
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %103, !llvm.loop !59

115:                                              ; preds = %111, %103, %96
  %116 = phi ptr [ %97, %96 ], [ %112, %111 ], [ %105, %103 ]
  %117 = ptrtoint ptr %116 to i64
  %118 = ptrtoint ptr %94 to i64
  %119 = sub i64 %117, %118
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %94, i64 %119, i1 false)
  %120 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 6
  store i8 95, ptr %120, align 2, !tbaa !11
  %121 = getelementptr inbounds [512 x i8], ptr %6, i64 0, i64 %119
  store i8 0, ptr %121, align 1, !tbaa !11
  %122 = call i64 @strlen(ptr nonnull dereferenceable(1) %6)
  %123 = getelementptr inbounds i8, ptr %6, i64 %122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %123, ptr noundef nonnull align 1 dereferenceable(5) @.str.136, i64 5, i1 false)
  %124 = call ptr @strcons(i64 noundef -1, ptr noundef nonnull %6) #38
  %125 = call ptr @require(ptr noundef %124) #40
  store i8 0, ptr %121, align 1, !tbaa !11
  %126 = call ptr @gen_intern(ptr noundef nonnull %6, i64 noundef 1) #40
  %127 = call ptr @leval(ptr noundef %126, ptr noundef null) #40
  %128 = call ptr @funcall1(ptr noundef %127, ptr noundef %126) #38
  %129 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %130 = icmp sgt i64 %129, 4
  br i1 %130, label %131, label %139

131:                                              ; preds = %115
  %132 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @fput_st(ptr noundef %132, ptr noundef nonnull @.str.135) #40
  %133 = load ptr, ptr @stdout, align 8, !tbaa !7
  %134 = call ptr @get_c_file(ptr noundef null, ptr noundef %133) #40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #42
  store ptr null, ptr %5, align 8, !tbaa !60
  %135 = getelementptr inbounds %struct.gen_readio, ptr %5, i64 0, i32 1
  store ptr @fputs_fcn, ptr %135, align 8, !tbaa !62
  %136 = getelementptr inbounds %struct.gen_readio, ptr %5, i64 0, i32 2
  store ptr %134, ptr %136, align 8, !tbaa !63
  %137 = call ptr @lprin1g(ptr noundef %128, ptr noundef nonnull %5) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #42
  %138 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @fput_st(ptr noundef %138, ptr noundef nonnull @.str.121) #40
  br label %139

139:                                              ; preds = %131, %115, %93
  %140 = phi ptr [ %128, %131 ], [ %128, %115 ], [ null, %93 ]
  %141 = icmp eq ptr %140, null
  %142 = getelementptr inbounds %struct.gen_readio, ptr %4, i64 0, i32 1
  %143 = getelementptr inbounds %struct.gen_readio, ptr %4, i64 0, i32 2
  %144 = icmp eq i64 %1, 0
  br label %145

145:                                              ; preds = %167, %139
  %146 = phi ptr [ null, %139 ], [ %168, %167 ]
  %147 = icmp eq ptr %146, null
  br label %148

148:                                              ; preds = %177, %145
  %149 = phi ptr [ %168, %177 ], [ %146, %145 ]
  br label %150

150:                                              ; preds = %179, %148
  br i1 %141, label %151, label %155

151:                                              ; preds = %150
  %152 = load ptr, ptr @stdin, align 8, !tbaa !7
  %153 = call ptr @get_c_file(ptr noundef %62, ptr noundef %152) #40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #42
  store ptr @f_getc, ptr %4, align 8, !tbaa !64
  store ptr @f_ungetc, ptr %142, align 8, !tbaa !66
  store ptr %153, ptr %143, align 8, !tbaa !67
  %154 = call ptr @readtl(ptr noundef nonnull %4) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #42
  br label %157

155:                                              ; preds = %150
  %156 = call ptr @funcall1(ptr noundef nonnull %140, ptr noundef %62) #38
  br label %157

157:                                              ; preds = %155, %151
  %158 = phi ptr [ %154, %151 ], [ %156, %155 ]
  %159 = load ptr, ptr @eof_val, align 8, !tbaa !7
  %160 = icmp eq ptr %158, %159
  br i1 %160, label %181, label %161

161:                                              ; preds = %157
  %162 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %163 = icmp sgt i64 %162, 4
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call ptr @lprint(ptr noundef %158, ptr noundef null) #40
  br label %166

166:                                              ; preds = %164, %161
  br i1 %144, label %179, label %167

167:                                              ; preds = %166
  %.lcssa1 = phi ptr [ %158, %166 ]
  %168 = call ptr @cons(ptr noundef %.lcssa1, ptr noundef null) #40
  br i1 %147, label %145, label %169

169:                                              ; preds = %167
  %170 = icmp eq ptr %149, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.obj, ptr %149, i64 0, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !16
  %174 = icmp eq i16 %173, 1
  br i1 %174, label %177, label %175

175:                                              ; preds = %171, %169
  %176 = call ptr @err(ptr noundef nonnull @.str.30, ptr noundef %149) #40
  br label %177

177:                                              ; preds = %175, %171
  %178 = getelementptr inbounds %struct.obj, ptr %149, i64 0, i32 2, i32 0, i32 1
  store ptr %168, ptr %178, align 8, !tbaa !11
  br label %148

179:                                              ; preds = %166
  %180 = call ptr @leval(ptr noundef %158, ptr noundef null) #40
  br label %150

181:                                              ; preds = %157
  %.lcssa = phi ptr [ %146, %157 ]
  %182 = call ptr @fclose_l(ptr noundef %62) #40
  %183 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %184 = icmp sgt i64 %183, 2
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @fput_st(ptr noundef %186, ptr noundef nonnull @.str.140) #40
  br label %187

187:                                              ; preds = %185, %181
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #42
  ret ptr %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @repl(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.tms, align 8
  %3 = alloca %struct.gen_readio, align 8
  %4 = alloca %struct.tms, align 8
  %5 = alloca %struct.tms, align 8
  %6 = getelementptr inbounds %struct.tms, ptr %5, i64 0, i32 1
  %7 = getelementptr inbounds %struct.tms, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.repl_hooks, ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 1
  %10 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %struct.repl_hooks, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.repl_hooks, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %95, %1
  %14 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load i64, ptr @gc_status_flag, align 8, !tbaa !12
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr @heap, align 8, !tbaa !7
  %21 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %22 = icmp ult ptr %20, %21
  br i1 %22, label %57, label %23

23:                                               ; preds = %19, %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42
  %24 = call i64 @times(ptr noundef nonnull %5) #38
  %25 = load i64, ptr %5, align 8, !tbaa !33
  %26 = load i64, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42
  call void @gc_stop_and_copy() #40
  %27 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %28 = icmp sgt i64 %27, 1
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = sitofp i64 %25 to double
  %31 = sitofp i64 %26 to double
  %32 = fadd double %30, %31
  %33 = fdiv double %32, 6.000000e+01
  %34 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #42
  %35 = call i64 @times(ptr noundef nonnull %4) #38
  %36 = load i64, ptr %4, align 8, !tbaa !33
  %37 = sitofp i64 %36 to double
  %38 = load i64, ptr %7, align 8, !tbaa !35
  %39 = sitofp i64 %38 to double
  %40 = fadd double %37, %39
  %41 = fdiv double %40, 6.000000e+01
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #42
  %42 = fsub double %41, %33
  %43 = load i64, ptr @old_heap_used, align 8, !tbaa !12
  %44 = load ptr, ptr @heap, align 8, !tbaa !7
  %45 = load ptr, ptr @heap_org, align 8, !tbaa !7
  %46 = ptrtoint ptr %44 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 24
  %50 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %51 = ptrtoint ptr %50 to i64
  %52 = sub i64 %51, %46
  %53 = sdiv exact i64 %52, 24
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %42, i64 noundef %43, i64 noundef %49, i64 noundef %53) #38
  %55 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %56 = load ptr, ptr %0, align 8, !tbaa !50
  call void @grepl_puts(ptr noundef %55, ptr noundef %56) #40
  br label %57

57:                                               ; preds = %29, %19, %13
  %58 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %59 = icmp sgt i64 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load ptr, ptr %0, align 8, !tbaa !50
  call void @grepl_puts(ptr noundef nonnull @.str.16, ptr noundef %61) #40
  br label %62

62:                                               ; preds = %60, %57, %23
  %63 = load ptr, ptr %8, align 8, !tbaa !52
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdin, align 8, !tbaa !7
  %67 = call ptr @get_c_file(ptr noundef null, ptr noundef %66) #40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #42
  store ptr @f_getc, ptr %3, align 8, !tbaa !64
  store ptr @f_ungetc, ptr %9, align 8, !tbaa !66
  store ptr %67, ptr %10, align 8, !tbaa !67
  %68 = call ptr @readtl(ptr noundef nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #42
  br label %71

69:                                               ; preds = %62
  %70 = call ptr %63() #38
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi ptr [ %68, %65 ], [ %70, %69 ]
  %73 = load ptr, ptr @eof_val, align 8, !tbaa !7
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %99, label %75

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #42
  %76 = call i64 @times(ptr noundef nonnull %2) #38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #42
  %77 = call double @myrealtime() #40
  %78 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i64 0, ptr @gc_cells_allocated, align 8, !tbaa !12
  store double 0.000000e+00, ptr @gc_time_taken, align 8, !tbaa !36
  br label %81

81:                                               ; preds = %80, %75
  %82 = load ptr, ptr %11, align 8, !tbaa !53
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call ptr @leval(ptr noundef %72, ptr noundef null) #40
  br label %88

86:                                               ; preds = %81
  %87 = call ptr %82(ptr noundef %72) #38
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi ptr [ %85, %84 ], [ %87, %86 ]
  %90 = load ptr, ptr %12, align 8, !tbaa !54
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %94 = icmp sgt i64 %93, 1
  br i1 %94, label %96, label %95

95:                                               ; preds = %98, %96, %92
  br label %13

96:                                               ; preds = %92
  %97 = call ptr @lprint(ptr noundef %89, ptr noundef null) #40
  br label %95

98:                                               ; preds = %88
  call void %90(ptr noundef %89) #38
  br label %95

99:                                               ; preds = %71
  ret i64 0
}

; Function Attrs: nounwind optsize uwtable
define internal void @gc_stop_and_copy() #0 {
  %1 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  store i64 0, ptr @errjmp_ok, align 8, !tbaa !12
  %2 = load ptr, ptr @heap_org, align 8, !tbaa !7
  %3 = load ptr, ptr @heap, align 8, !tbaa !7
  %4 = ptrtoint ptr %3 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 24
  store i64 %7, ptr @old_heap_used, align 8, !tbaa !12
  %8 = load ptr, ptr @heaps, align 8, !tbaa !7
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %2, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = getelementptr inbounds ptr, ptr %8, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi ptr [ %13, %11 ], [ %9, %0 ]
  store ptr %15, ptr @heap, align 8, !tbaa !7
  store ptr %15, ptr @heap_org, align 8, !tbaa !7
  %16 = load i64, ptr @heap_size, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.obj, ptr %15, i64 %16
  store ptr %17, ptr @heap_end, align 8, !tbaa !7
  tail call void @scan_registers() #40
  tail call void @scan_newspace(ptr noundef %15) #40
  tail call void @free_oldspace(ptr noundef %2, ptr noundef %3) #40
  store i64 1, ptr @errjmp_ok, align 8, !tbaa !12
  store i64 %1, ptr @nointerrupt, align 8, !tbaa !12
  %18 = icmp eq i64 %1, 0
  %19 = load i64, ptr @interrupt_differed, align 8
  %20 = icmp eq i64 %19, 1
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %23 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %24

24:                                               ; preds = %22, %14
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @grepl_puts(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %5, ptr noundef %0) #40
  %6 = load ptr, ptr @stdout, align 8, !tbaa !7
  %7 = tail call i32 @fflush(ptr noundef %6) #40
  br label %9

8:                                                ; preds = %2
  tail call void %1(ptr noundef %0) #38
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_c_file(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  br i1 %3, label %11, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 17
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %6
  %12 = tail call ptr @err(ptr noundef nonnull @.str.134, ptr noundef %0) #40
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call ptr @err(ptr noundef nonnull @.str.151, ptr noundef nonnull %0) #40
  %19 = load ptr, ptr %14, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %17, %13, %2
  %21 = phi ptr [ %1, %2 ], [ %19, %17 ], [ %15, %13 ]
  ret ptr %21
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @f_getc(ptr nocapture noundef %0) #0 {
  %2 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %3 = tail call i32 @getc(ptr noundef %0) #40
  store i64 %2, ptr @nointerrupt, align 8, !tbaa !12
  %4 = icmp eq i64 %2, 0
  %5 = load i64, ptr @interrupt_differed, align 8
  %6 = icmp eq i64 %5, 1
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %9 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %10

10:                                               ; preds = %8, %1
  ret i32 %3
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @f_ungetc(i32 noundef %0, ptr nocapture noundef %1) #1 {
  %3 = tail call i32 @ungetc(i32 noundef %0, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @readtl(ptr noundef %0) #0 {
  %2 = tail call i32 @flush_ws(ptr noundef %0, ptr noundef null) #40
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr @eof_val, align 8, !tbaa !7
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  tail call void %8(i32 noundef %2, ptr noundef %10) #38
  %11 = tail call ptr @lreadr(ptr noundef %0) #40
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %5, %4 ], [ %11, %6 ]
  ret ptr %13
}

; Function Attrs: nofree nounwind optsize uwtable
define internal double @myrealtime() #1 {
  %1 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #42
  %2 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #38
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i64, ptr %1, align 8, !tbaa !68
  %6 = sitofp i64 %5 to double
  %7 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !70
  %9 = sitofp i64 %8 to double
  %10 = tail call double @llvm.fmuladd.f64(double %9, double 0x3EB0C6F7A0B5ED8D, double %6)
  br label %11

11:                                               ; preds = %4, %0
  %12 = phi double [ %10, %4 ], [ 0.000000e+00, %0 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #42
  ret double %12
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lprint(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gen_readio, align 8
  %4 = load ptr, ptr @stdout, align 8, !tbaa !7
  %5 = tail call ptr @get_c_file(ptr noundef %1, ptr noundef %4) #40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #42
  store ptr null, ptr %3, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 1
  store ptr @fputs_fcn, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !63
  %8 = call ptr @lprin1g(ptr noundef %0, ptr noundef nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #42
  call void @fput_st(ptr noundef %5, ptr noundef nonnull @.str.121) #40
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @fputs_fcn(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  tail call void @fput_st(ptr noundef %1, ptr noundef %0) #40
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lprin1g(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call ptr @err(ptr noundef nonnull @.str.23, ptr noundef null) #40
  %8 = load ptr, ptr %3, align 8, !tbaa !7
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %0, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = sext i16 %14 to i32
  switch i32 %15, label %130 [
    i32 0, label %16
    i32 1, label %22
    i32 2, label %54
    i32 3, label %72
    i32 4, label %80
    i32 5, label %80
    i32 6, label %80
    i32 21, label %80
    i32 7, label %80
    i32 19, label %80
    i32 20, label %80
    i32 8, label %80
    i32 9, label %80
    i32 10, label %80
    i32 11, label %100
  ]

16:                                               ; preds = %12, %9
  %17 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = call i32 %18(ptr noundef nonnull @.str.110, ptr noundef %20) #38
  br label %155

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = call i32 %24(ptr noundef nonnull @.str.111, ptr noundef %26) #38
  %28 = load ptr, ptr %3, align 8, !tbaa !7
  %29 = call ptr @car(ptr noundef %28) #40
  %30 = call ptr @lprin1g(ptr noundef %29, ptr noundef %1) #40
  %31 = load ptr, ptr %3, align 8, !tbaa !7
  %32 = call ptr @cdr(ptr noundef %31) #40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %41, %22
  %35 = phi ptr [ %45, %41 ], [ %32, %22 ]
  %36 = getelementptr inbounds %struct.obj, ptr %35, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !16
  %38 = icmp eq i16 %37, 1
  %39 = load ptr, ptr %23, align 8, !tbaa !62
  %40 = load ptr, ptr %25, align 8, !tbaa !63
  br i1 %38, label %41, label %47

41:                                               ; preds = %34
  %42 = call i32 %39(ptr noundef nonnull @.str.112, ptr noundef %40) #38
  %43 = call ptr @car(ptr noundef nonnull %35) #40
  %44 = call ptr @lprin1g(ptr noundef %43, ptr noundef nonnull %1) #40
  %45 = call ptr @cdr(ptr noundef nonnull %35) #40
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %34, !llvm.loop !71

47:                                               ; preds = %34
  %.lcssa2 = phi ptr [ %35, %34 ]
  %.lcssa1 = phi ptr [ %39, %34 ]
  %.lcssa = phi ptr [ %40, %34 ]
  %48 = call i32 %.lcssa1(ptr noundef nonnull @.str.113, ptr noundef %.lcssa) #38
  %49 = call ptr @lprin1g(ptr noundef nonnull %.lcssa2, ptr noundef nonnull %1) #40
  br label %50

50:                                               ; preds = %47, %41, %22
  %51 = load ptr, ptr %23, align 8, !tbaa !62
  %52 = load ptr, ptr %25, align 8, !tbaa !63
  %53 = call i32 %51(ptr noundef nonnull @.str.114, ptr noundef %52) #38
  br label %155

54:                                               ; preds = %12
  %55 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %56 = load double, ptr %55, align 8, !tbaa !11
  %57 = fptosi double %56 to i64
  %58 = sitofp i64 %57 to double
  %59 = fcmp oeq double %56, %58
  %60 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  br i1 %59, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) @.str.115, i64 noundef %57) #38
  br label %65

63:                                               ; preds = %54
  %64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) @.str.116, double noundef %56) #38
  br label %65

65:                                               ; preds = %63, %61
  %66 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %67 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !62
  %69 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !63
  %71 = call i32 %68(ptr noundef %66, ptr noundef %70) #38
  br label %155

72:                                               ; preds = %12
  %73 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = call i32 %76(ptr noundef %74, ptr noundef %78) #38
  br label %155

80:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %81 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %82 = sext i16 %14 to i64
  %83 = call ptr @subr_kind_str(i64 noundef %82) #40
  %84 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull %83) #38
  %85 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %86 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !63
  %90 = call i32 %87(ptr noundef %85, ptr noundef %89) #38
  %91 = load ptr, ptr %3, align 8, !tbaa !7
  %92 = getelementptr inbounds %struct.obj, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !11
  %94 = load ptr, ptr %86, align 8, !tbaa !62
  %95 = load ptr, ptr %88, align 8, !tbaa !63
  %96 = call i32 %94(ptr noundef %93, ptr noundef %95) #38
  %97 = load ptr, ptr %86, align 8, !tbaa !62
  %98 = load ptr, ptr %88, align 8, !tbaa !63
  %99 = call i32 %97(ptr noundef nonnull @.str.118, ptr noundef %98) #38
  br label %155

100:                                              ; preds = %12
  %101 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  %103 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = call i32 %102(ptr noundef nonnull @.str.119, ptr noundef %104) #38
  %106 = load ptr, ptr %3, align 8, !tbaa !7
  %107 = getelementptr inbounds %struct.obj, ptr %106, i64 0, i32 2, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.obj, ptr %108, i64 0, i32 1
  %112 = load i16, ptr %111, align 2, !tbaa !16
  %113 = icmp eq i16 %112, 1
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = call ptr @car(ptr noundef nonnull %108) #40
  %116 = call ptr @lprin1g(ptr noundef %115, ptr noundef nonnull %1) #40
  %117 = load ptr, ptr %101, align 8, !tbaa !62
  %118 = load ptr, ptr %103, align 8, !tbaa !63
  %119 = call i32 %117(ptr noundef nonnull @.str.112, ptr noundef %118) #38
  %120 = load ptr, ptr %3, align 8, !tbaa !7
  %121 = getelementptr inbounds %struct.obj, ptr %120, i64 0, i32 2, i32 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !11
  %123 = call ptr @cdr(ptr noundef %122) #40
  br label %124

124:                                              ; preds = %114, %110, %100
  %125 = phi ptr [ %123, %114 ], [ %108, %100 ], [ %108, %110 ]
  %126 = call ptr @lprin1g(ptr noundef %125, ptr noundef nonnull %1) #40
  %127 = load ptr, ptr %101, align 8, !tbaa !62
  %128 = load ptr, ptr %103, align 8, !tbaa !63
  %129 = call i32 %127(ptr noundef nonnull @.str.118, ptr noundef %128) #38
  br label %155

130:                                              ; preds = %12
  %131 = sext i16 %14 to i64
  %132 = call ptr @get_user_type_hooks(i64 noundef %131) #40
  %133 = getelementptr inbounds %struct.user_type_hooks, ptr %132, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !72
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %130
  %137 = load ptr, ptr %3, align 8, !tbaa !7
  call void %134(ptr noundef %137, ptr noundef %1) #38
  br label %155

138:                                              ; preds = %130
  %139 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %140 = load ptr, ptr %3, align 8, !tbaa !7
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.obj, ptr %140, i64 0, i32 1
  %144 = load i16, ptr %143, align 2, !tbaa !16
  %145 = sext i16 %144 to i32
  br label %146

146:                                              ; preds = %142, %138
  %147 = phi i32 [ %145, %142 ], [ 0, %138 ]
  %148 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %139, ptr noundef nonnull dereferenceable(1) @.str.120, i32 noundef %147, ptr noundef %140) #38
  %149 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %150 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !62
  %152 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !63
  %154 = call i32 %151(ptr noundef %149, ptr noundef %153) #38
  br label %155

155:                                              ; preds = %146, %136, %124, %80, %72, %65, %50, %16
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @fput_st(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %4 = tail call i32 @fputs(ptr %1, ptr %0)
  store i64 %3, ptr @nointerrupt, align 8, !tbaa !12
  %5 = icmp eq i64 %3, 0
  %6 = load i64, ptr @interrupt_differed, align 8
  %7 = icmp eq i64 %6, 1
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %10 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %11

11:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal nonnull ptr @subr_kind_str(i64 noundef %0) #17 {
  %2 = add i64 %0, -4
  %3 = icmp ult i64 %2, 18
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [18 x ptr], ptr @switch.table.subr_kind_str, i64 0, i64 %2
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ @.str.109, %1 ]
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nounwind optsize uwtable
define internal i32 @flush_ws(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %1, null
  br label %5

5:                                                ; preds = %20, %2
  %6 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !64
  %8 = load ptr, ptr %3, align 8, !tbaa !67
  %9 = tail call i32 %7(ptr noundef %8) #38
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br i1 %4, label %32, label %14

12:                                               ; preds = %5
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %22, label %17

14:                                               ; preds = %11
  %15 = tail call ptr @err(ptr noundef nonnull %1, ptr noundef null) #40
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14, %12
  %18 = icmp ne i32 %9, 10
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %24, %22, %17
  %21 = phi i32 [ 0, %24 ], [ %19, %17 ], [ 1, %22 ]
  br label %5

22:                                               ; preds = %12
  %23 = icmp eq i32 %9, 59
  br i1 %23, label %20, label %24

24:                                               ; preds = %22, %14
  %25 = tail call ptr @__ctype_b_loc() #45
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = sext i32 %9 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !58
  %30 = and i16 %29, 8192
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %24, %11
  %.lcssa = phi i32 [ %9, %24 ], [ %9, %11 ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lreadr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  %3 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %4 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %5 = icmp ult ptr %2, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call ptr @err(ptr noundef nonnull @.str.23, ptr noundef null) #40
  %8 = load ptr, ptr %2, align 8, !tbaa !7
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %11 = call i32 @flush_ws(ptr noundef %10, ptr noundef nonnull @.str.122) #40
  switch i32 %11, label %53 [
    i32 40, label %12
    i32 41, label %15
    i32 39, label %17
    i32 96, label %23
    i32 44, label %28
    i32 34, label %47
    i32 35, label %50
  ]

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8, !tbaa !7
  %14 = call ptr @lreadparen(ptr noundef %13) #40
  br label %110

15:                                               ; preds = %9
  %16 = call ptr @err(ptr noundef nonnull @.str.123, ptr noundef null) #40
  br label %17

17:                                               ; preds = %15, %9
  %18 = load ptr, ptr @sym_quote, align 8, !tbaa !7
  %19 = load ptr, ptr %2, align 8, !tbaa !7
  %20 = call ptr @lreadr(ptr noundef %19) #40
  %21 = call ptr @cons(ptr noundef %20, ptr noundef null) #40
  %22 = call ptr @cons(ptr noundef %18, ptr noundef %21) #40
  br label %110

23:                                               ; preds = %9
  %24 = call ptr @gen_intern(ptr noundef nonnull @.str.124, i64 noundef 0) #40
  %25 = load ptr, ptr %2, align 8, !tbaa !7
  %26 = call ptr @lreadr(ptr noundef %25) #40
  %27 = call ptr @cons(ptr noundef %24, ptr noundef %26) #40
  br label %110

28:                                               ; preds = %9
  %29 = load ptr, ptr %2, align 8, !tbaa !7
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.gen_readio, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = call i32 %30(ptr noundef %32) #38
  switch i32 %33, label %35 [
    i32 64, label %41
    i32 46, label %34
  ]

34:                                               ; preds = %28
  br label %41

35:                                               ; preds = %28
  %36 = load ptr, ptr %2, align 8, !tbaa !7
  %37 = getelementptr inbounds %struct.gen_readio, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !66
  %39 = getelementptr inbounds %struct.gen_readio, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !67
  call void %38(i32 noundef %33, ptr noundef %40) #38
  br label %41

41:                                               ; preds = %35, %34, %28
  %42 = phi ptr [ @.str.127, %35 ], [ @.str.126, %34 ], [ @.str.125, %28 ]
  %43 = call ptr @gen_intern(ptr noundef nonnull %42, i64 noundef 0) #40
  %44 = load ptr, ptr %2, align 8, !tbaa !7
  %45 = call ptr @lreadr(ptr noundef %44) #40
  %46 = call ptr @cons(ptr noundef %43, ptr noundef %45) #40
  br label %110

47:                                               ; preds = %9
  %48 = load ptr, ptr %2, align 8, !tbaa !7
  %49 = call ptr @lreadstring(ptr noundef %48) #38
  br label %110

50:                                               ; preds = %9
  %51 = load ptr, ptr %2, align 8, !tbaa !7
  %52 = call ptr @lreadsharp(ptr noundef %51) #38
  br label %110

53:                                               ; preds = %9
  %54 = load ptr, ptr @user_readm, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @user_ch_readm, align 8, !tbaa !7
  %58 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %57, i32 noundef %11) #39
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %2, align 8, !tbaa !7
  %62 = call ptr %54(i32 noundef %11, ptr noundef %61) #38
  br label %110

63:                                               ; preds = %56, %53
  %64 = trunc i32 %11 to i8
  store i8 %64, ptr %3, align 1, !tbaa !11
  br label %65

65:                                               ; preds = %104, %63
  %66 = phi ptr [ %3, %63 ], [ %68, %104 ]
  %67 = phi i32 [ 1, %63 ], [ %106, %104 ]
  %68 = getelementptr inbounds i8, ptr %66, i64 1
  %69 = load ptr, ptr %2, align 8, !tbaa !7
  %70 = load ptr, ptr %69, align 8, !tbaa !64
  %71 = getelementptr inbounds %struct.gen_readio, ptr %69, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !67
  %73 = call i32 %70(ptr noundef %72) #38
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %.lcssa4 = phi i32 [ %67, %65 ]
  %76 = zext i32 %.lcssa4 to i64
  %77 = call ptr @lreadtk(ptr noundef nonnull %3, i64 noundef %76) #40
  br label %110

78:                                               ; preds = %65
  %79 = tail call ptr @__ctype_b_loc() #45
  %80 = load ptr, ptr %79, align 8, !tbaa !7
  %81 = sext i32 %73 to i64
  %82 = getelementptr inbounds i16, ptr %80, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !58
  %84 = and i16 %83, 8192
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78
  %.lcssa5 = phi i32 [ %67, %78 ]
  %87 = zext i32 %.lcssa5 to i64
  %88 = call ptr @lreadtk(ptr noundef nonnull %3, i64 noundef %87) #40
  br label %110

89:                                               ; preds = %78
  %90 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.128, i32 %73, i64 8)
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load ptr, ptr @user_te_readm, align 8, !tbaa !7
  %94 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %93, i32 noundef %73) #39
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %92, %89
  %.lcssa6 = phi i32 [ %67, %92 ], [ %67, %89 ]
  %.lcssa2 = phi i32 [ %73, %92 ], [ %73, %89 ]
  %97 = load ptr, ptr %2, align 8, !tbaa !7
  %98 = getelementptr inbounds %struct.gen_readio, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !66
  %100 = getelementptr inbounds %struct.gen_readio, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !67
  call void %99(i32 noundef %.lcssa2, ptr noundef %101) #38
  %102 = zext i32 %.lcssa6 to i64
  %103 = call ptr @lreadtk(ptr noundef nonnull %3, i64 noundef %102) #40
  br label %110

104:                                              ; preds = %92
  %105 = trunc i32 %73 to i8
  store i8 %105, ptr %68, align 1, !tbaa !11
  %106 = add nuw nsw i32 %67, 1
  %107 = icmp eq i32 %106, 5120
  br i1 %107, label %108, label %65, !llvm.loop !73

108:                                              ; preds = %104
  %109 = call ptr @err(ptr noundef nonnull @.str.129, ptr noundef null) #40
  br label %110

110:                                              ; preds = %108, %96, %86, %75, %60, %50, %47, %41, %23, %17, %12
  %111 = phi ptr [ %62, %60 ], [ %77, %75 ], [ %88, %86 ], [ %103, %96 ], [ null, %108 ], [ %52, %50 ], [ %49, %47 ], [ %46, %41 ], [ %27, %23 ], [ %22, %17 ], [ %14, %12 ]
  ret ptr %111
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lreadparen(ptr noundef %0) #0 {
  %2 = tail call i32 @flush_ws(ptr noundef %0, ptr noundef nonnull @.str.130) #40
  %3 = icmp eq i32 %2, 41
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  tail call void %6(i32 noundef %2, ptr noundef %8) #38
  %9 = tail call ptr @lreadr(ptr noundef %0) #40
  %10 = load ptr, ptr @sym_dot, align 8, !tbaa !7
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @lreadr(ptr noundef nonnull %0) #40
  %14 = tail call i32 @flush_ws(ptr noundef nonnull %0, ptr noundef nonnull @.str.130) #40
  %15 = icmp eq i32 %14, 41
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @err(ptr noundef nonnull @.str.131, ptr noundef null) #40
  br label %18

18:                                               ; preds = %20, %16, %12, %1
  %19 = phi ptr [ %22, %20 ], [ null, %1 ], [ %13, %16 ], [ %13, %12 ]
  ret ptr %19

20:                                               ; preds = %4
  %21 = tail call ptr @lreadparen(ptr noundef nonnull %0) #40
  %22 = tail call ptr @cons(ptr noundef %9, ptr noundef %21) #40
  br label %18
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @gen_intern(ptr noundef %0, i64 noundef %1) #0 {
  %3 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %4 = load i64, ptr @interrupt_differed, align 8
  %5 = load i64, ptr @obarray_dim, align 8, !tbaa !12
  %6 = icmp sgt i64 %5, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = load i8, ptr %0, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %10, %7
  %11 = phi i8 [ %19, %10 ], [ %8, %7 ]
  %12 = phi i64 [ %18, %10 ], [ 0, %7 ]
  %13 = phi ptr [ %15, %10 ], [ %0, %7 ]
  %14 = sext i8 %11 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = mul nsw i64 %12, 17
  %17 = xor i64 %16, %14
  %18 = srem i64 %17, %5
  %19 = load i8, ptr %15, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %10, !llvm.loop !74

21:                                               ; preds = %10, %7
  %22 = phi i64 [ 0, %7 ], [ %18, %10 ]
  %23 = load ptr, ptr @obarray, align 8, !tbaa !7
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i64 [ %22, %21 ], [ 0, %2 ]
  %27 = phi ptr [ %24, %21 ], [ @oblistvar, %2 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %46, %25
  %31 = phi ptr [ %48, %46 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.obj, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.obj, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %35) #39
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %.lcssa1 = phi ptr [ %31, %30 ]
  %.lcssa = phi ptr [ %33, %30 ]
  store i64 %3, ptr @nointerrupt, align 8, !tbaa !12
  %39 = icmp eq i64 %3, 0
  %40 = icmp eq i64 %4, 1
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.obj, ptr %.lcssa1, i64 0, i32 2
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %44 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  %45 = load ptr, ptr %43, align 8, !tbaa !11
  br label %76

46:                                               ; preds = %30
  %47 = getelementptr inbounds %struct.obj, ptr %31, i64 0, i32 2, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %30, !llvm.loop !75

50:                                               ; preds = %46, %25
  %51 = icmp eq i64 %1, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39
  %54 = add i64 %53, 1
  %55 = tail call ptr @must_malloc(i64 noundef %54) #40
  %56 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(1) %0) #38
  br label %57

57:                                               ; preds = %52, %50
  %58 = phi ptr [ %55, %52 ], [ %0, %50 ]
  %59 = load ptr, ptr @unbound_marker, align 8, !tbaa !7
  %60 = tail call ptr @symcons(ptr noundef %58, ptr noundef %59) #40
  %61 = load i64, ptr @obarray_dim, align 8, !tbaa !12
  %62 = icmp sgt i64 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = tail call ptr @cons(ptr noundef %60, ptr noundef %28) #40
  %65 = load ptr, ptr @obarray, align 8, !tbaa !7
  %66 = getelementptr inbounds ptr, ptr %65, i64 %26
  store ptr %64, ptr %66, align 8, !tbaa !7
  br label %67

67:                                               ; preds = %63, %57
  %68 = load ptr, ptr @oblistvar, align 8, !tbaa !7
  %69 = tail call ptr @cons(ptr noundef %60, ptr noundef %68) #40
  store ptr %69, ptr @oblistvar, align 8, !tbaa !7
  store i64 %3, ptr @nointerrupt, align 8, !tbaa !12
  %70 = icmp eq i64 %3, 0
  %71 = load i64, ptr @interrupt_differed, align 8
  %72 = icmp eq i64 %71, 1
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %75 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %76

76:                                               ; preds = %74, %67, %42, %38
  %77 = phi ptr [ %60, %67 ], [ %60, %74 ], [ %.lcssa, %38 ], [ %45, %42 ]
  ret ptr %77
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lreadtk(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42
  %4 = getelementptr inbounds i8, ptr %0, i64 %1
  store i8 0, ptr %4, align 1, !tbaa !11
  %5 = load ptr, ptr @user_readt, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = call ptr %5(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %3) #38
  %9 = load i32, ptr %3, align 4, !tbaa !76
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %78

11:                                               ; preds = %7, %2
  %12 = load i8, ptr %0, align 1, !tbaa !11
  %13 = icmp eq i8 %12, 45
  %14 = zext i1 %13 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = tail call ptr @__ctype_b_loc() #45
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %18, %11
  %19 = phi i32 [ 0, %11 ], [ 1, %18 ]
  %20 = phi ptr [ %15, %11 ], [ %27, %18 ]
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = sext i8 %21 to i64
  %23 = getelementptr inbounds i16, ptr %17, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !58
  %25 = and i16 %24, 2048
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds i8, ptr %20, i64 1
  br i1 %26, label %28, label %18, !llvm.loop !78

28:                                               ; preds = %18
  %.lcssa2 = phi i32 [ %19, %18 ]
  %.lcssa1 = phi ptr [ %20, %18 ]
  %.lcssa = phi i8 [ %21, %18 ]
  %29 = icmp eq i8 %.lcssa, 46
  br i1 %29, label %30, label %40

30:                                               ; preds = %30, %28
  %31 = phi i32 [ 1, %30 ], [ %.lcssa2, %28 ]
  %32 = phi ptr [ %33, %30 ], [ %.lcssa1, %28 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !11
  %35 = sext i8 %34 to i64
  %36 = getelementptr inbounds i16, ptr %17, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !58
  %38 = and i16 %37, 2048
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %30, !llvm.loop !79

40:                                               ; preds = %30, %28
  %41 = phi i8 [ %.lcssa, %28 ], [ %34, %30 ]
  %42 = phi i32 [ %.lcssa2, %28 ], [ %31, %30 ]
  %43 = phi ptr [ %.lcssa1, %28 ], [ %33, %30 ]
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %76, label %45

45:                                               ; preds = %40
  %46 = icmp eq i8 %41, 101
  br i1 %46, label %47, label %70

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !11
  switch i8 %49, label %53 [
    i8 45, label %50
    i8 43, label %50
  ]

50:                                               ; preds = %47, %47
  %51 = getelementptr inbounds i8, ptr %43, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !11
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i8 [ %52, %50 ], [ %49, %47 ]
  %55 = phi ptr [ %51, %50 ], [ %48, %47 ]
  %56 = sext i8 %54 to i64
  %57 = getelementptr inbounds i16, ptr %17, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !58
  %59 = and i16 %58, 2048
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %61, %53
  %62 = phi ptr [ %63, %61 ], [ %55, %53 ]
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !11
  %65 = sext i8 %64 to i64
  %66 = getelementptr inbounds i16, ptr %17, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !58
  %68 = and i16 %67, 2048
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %61, !llvm.loop !80

70:                                               ; preds = %61, %45
  %71 = phi i8 [ %41, %45 ], [ %64, %61 ]
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call double @atof(ptr noundef nonnull %0) #39
  %75 = call ptr @flocons(double noundef %74) #40
  br label %78

76:                                               ; preds = %70, %53, %40
  %77 = call ptr @gen_intern(ptr noundef nonnull %0, i64 noundef 1) #40
  br label %78

78:                                               ; preds = %76, %73, %7
  %79 = phi ptr [ %77, %76 ], [ %75, %73 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42
  ret ptr %79
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal ptr @flocons(double noundef %0) #0 {
  %2 = load i64, ptr @inums_dim, align 8, !tbaa !12
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = fptosi double %0 to i64
  %6 = sitofp i64 %5 to double
  %7 = fsub double %0, %6
  %8 = fcmp oeq double %7, 0.000000e+00
  %9 = fcmp oge double %0, 0.000000e+00
  %10 = and i1 %9, %8
  %11 = icmp sgt i64 %2, %5
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load ptr, ptr @inums, align 8, !tbaa !7
  %15 = getelementptr inbounds ptr, ptr %14, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  br label %43

17:                                               ; preds = %4, %1
  %18 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load ptr, ptr @heap, align 8, !tbaa !7
  %22 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %23 = icmp ult ptr %21, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.obj, ptr %21, i64 1
  store ptr %27, ptr @heap, align 8, !tbaa !7
  br label %39

28:                                               ; preds = %17
  %29 = load ptr, ptr @freelist, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void @gc_for_newcell() #40
  %32 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %32, %31 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.obj, ptr %34, i64 0, i32 2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  store ptr %36, ptr @freelist, align 8, !tbaa !7
  %37 = load i64, ptr @gc_cells_allocated, align 8, !tbaa !12
  %38 = add nsw i64 %37, 1
  store i64 %38, ptr @gc_cells_allocated, align 8, !tbaa !12
  br label %39

39:                                               ; preds = %33, %26
  %40 = phi ptr [ %21, %26 ], [ %34, %33 ]
  store i16 0, ptr %40, align 8, !tbaa !23
  %41 = getelementptr inbounds %struct.obj, ptr %40, i64 0, i32 1
  store i16 2, ptr %41, align 2, !tbaa !16
  %42 = getelementptr inbounds %struct.obj, ptr %40, i64 0, i32 2
  store double %0, ptr %42, align 8, !tbaa !11
  br label %43

43:                                               ; preds = %39, %13
  %44 = phi ptr [ %16, %13 ], [ %40, %39 ]
  ret ptr %44
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nounwind optsize uwtable
define internal ptr @symcons(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load ptr, ptr @heap, align 8, !tbaa !7
  %7 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %6, i64 1
  store ptr %12, ptr @heap, align 8, !tbaa !7
  br label %24

13:                                               ; preds = %2
  %14 = load ptr, ptr @freelist, align 8, !tbaa !7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  tail call void @gc_for_newcell() #40
  %17 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %20 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  store ptr %21, ptr @freelist, align 8, !tbaa !7
  %22 = load i64, ptr @gc_cells_allocated, align 8, !tbaa !12
  %23 = add nsw i64 %22, 1
  store i64 %23, ptr @gc_cells_allocated, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %18, %11
  %25 = phi ptr [ %6, %11 ], [ %19, %18 ]
  store i16 0, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 1
  store i16 3, ptr %26, align 2, !tbaa !16
  %27 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2
  store ptr %0, ptr %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !11
  ret ptr %25
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @scan_registers() #0 {
  %1 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %16, %0
  %4 = phi ptr [ %18, %16 ], [ %1, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.gc_protected, ptr %4, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !42
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %9, %3
  %10 = phi i64 [ %14, %9 ], [ 0, %3 ]
  %11 = getelementptr inbounds ptr, ptr %5, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = tail call ptr @gc_relocate(ptr noundef %12) #40
  store ptr %13, ptr %11, align 8, !tbaa !7
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %7
  br i1 %15, label %16, label %9, !llvm.loop !81

16:                                               ; preds = %9, %3
  %17 = getelementptr inbounds %struct.gc_protected, ptr %4, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %3, !llvm.loop !82

20:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @scan_newspace(ptr noundef %0) #0 {
  %2 = load ptr, ptr @heap, align 8, !tbaa !7
  %3 = icmp ugt ptr %2, %0
  br i1 %3, label %4, label %35

4:                                                ; preds = %31, %1
  %5 = phi ptr [ %32, %31 ], [ %0, %1 ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = sext i16 %9 to i32
  switch i32 %10, label %22 [
    i32 1, label %11
    i32 11, label %11
    i32 3, label %18
    i32 2, label %31
    i32 4, label %31
    i32 5, label %31
    i32 6, label %31
    i32 21, label %31
    i32 7, label %31
    i32 19, label %31
    i32 20, label %31
    i32 8, label %31
    i32 9, label %31
    i32 10, label %31
  ]

11:                                               ; preds = %7, %7
  %12 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = tail call ptr @gc_relocate(ptr noundef %13) #40
  store ptr %14, ptr %12, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = tail call ptr @gc_relocate(ptr noundef %16) #40
  store ptr %17, ptr %15, align 8, !tbaa !11
  br label %31

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = tail call ptr @gc_relocate(ptr noundef %20) #40
  store ptr %21, ptr %19, align 8, !tbaa !11
  br label %31

22:                                               ; preds = %7
  %23 = sext i16 %9 to i64
  br label %24

24:                                               ; preds = %22, %4
  %25 = phi i64 [ %23, %22 ], [ 0, %4 ]
  %26 = tail call ptr @get_user_type_hooks(i64 noundef %25) #40
  %27 = getelementptr inbounds %struct.user_type_hooks, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void %28(ptr noundef %5) #38
  br label %31

31:                                               ; preds = %30, %24, %18, %11, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7
  %32 = getelementptr inbounds %struct.obj, ptr %5, i64 1
  %33 = load ptr, ptr @heap, align 8, !tbaa !7
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %4, label %35, !llvm.loop !84

35:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_oldspace(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = icmp ult ptr %0, %1
  br i1 %3, label %4, label %22

4:                                                ; preds = %19, %2
  %5 = phi ptr [ %20, %19 ], [ %0, %2 ]
  %6 = load i16, ptr %5, align 8, !tbaa !23
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !16
  %11 = sext i16 %10 to i32
  switch i32 %11, label %12 [
    i32 1, label %19
    i32 11, label %19
    i32 3, label %19
    i32 2, label %19
    i32 4, label %19
    i32 5, label %19
    i32 6, label %19
    i32 21, label %19
    i32 7, label %19
    i32 19, label %19
    i32 20, label %19
    i32 8, label %19
    i32 9, label %19
    i32 10, label %19
  ]

12:                                               ; preds = %8
  %13 = sext i16 %10 to i64
  %14 = tail call ptr @get_user_type_hooks(i64 noundef %13) #40
  %15 = getelementptr inbounds %struct.user_type_hooks, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void %16(ptr noundef nonnull %5) #38
  br label %19

19:                                               ; preds = %18, %12, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %4
  %20 = getelementptr inbounds %struct.obj, ptr %5, i64 1
  %21 = icmp ult ptr %20, %1
  br i1 %21, label %4, label %22, !llvm.loop !85

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @gc_relocate(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 8, !tbaa !23
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %39

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !16
  %12 = sext i16 %11 to i32
  switch i32 %12, label %21 [
    i32 2, label %13
    i32 1, label %13
    i32 3, label %13
    i32 11, label %13
    i32 4, label %13
    i32 5, label %13
    i32 6, label %13
    i32 21, label %13
    i32 7, label %13
    i32 19, label %13
    i32 20, label %13
    i32 8, label %13
    i32 9, label %13
    i32 10, label %13
  ]

13:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %14 = load ptr, ptr @heap, align 8, !tbaa !7
  %15 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.obj, ptr %14, i64 1
  store ptr %20, ptr @heap, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %36

21:                                               ; preds = %9
  %22 = sext i16 %11 to i64
  %23 = tail call ptr @get_user_type_hooks(i64 noundef %22) #40
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call ptr %24(ptr noundef nonnull %0) #38
  br label %36

28:                                               ; preds = %21
  %29 = load ptr, ptr @heap, align 8, !tbaa !7
  %30 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %31 = icmp ult ptr %29, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.obj, ptr %29, i64 1
  store ptr %35, ptr @heap, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %36

36:                                               ; preds = %34, %26, %19
  %37 = phi ptr [ %27, %26 ], [ %29, %34 ], [ %14, %19 ]
  store i16 1, ptr %0, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %36, %6, %1
  %40 = phi ptr [ %8, %6 ], [ %37, %36 ], [ null, %1 ]
  ret ptr %40
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: nounwind optsize uwtable
define internal ptr @fopen_cg(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #42
  %5 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %6 = tail call ptr @newcell(i64 noundef 17) #40
  %7 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2
  %8 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2, i32 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = tail call ptr %0(ptr noundef %1, ptr noundef %2) #38
  store ptr %9, ptr %7, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(15) @.str.132, i64 15, i1 false)
  %12 = getelementptr inbounds i8, ptr %4, i64 15
  store i8 0, ptr %12, align 1, !tbaa !11
  %13 = call ptr @safe_strcat(ptr noundef nonnull %4, i64 noundef 256, ptr noundef %1) #40
  %14 = call ptr @llast_c_errmsg(i32 noundef -1) #40
  %15 = call ptr @err(ptr noundef nonnull %4, ptr noundef %14) #40
  br label %16

16:                                               ; preds = %11, %3
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %18 = add i64 %17, 1
  %19 = call ptr @must_malloc(i64 noundef %18) #40
  store ptr %19, ptr %8, align 8, !tbaa !11
  %20 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %1) #38
  store i64 %5, ptr @nointerrupt, align 8, !tbaa !12
  %21 = icmp eq i64 %5, 0
  %22 = load i64, ptr @interrupt_differed, align 8
  %23 = icmp eq i64 %22, 1
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %26 = call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %27

27:                                               ; preds = %25, %16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #42
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #20

; Function Attrs: nounwind optsize uwtable
define internal ptr @require(ptr noundef %0) #0 {
  %2 = tail call ptr @gen_intern(ptr noundef nonnull @.str.141, i64 noundef 0) #40
  %3 = tail call ptr @gen_intern(ptr noundef nonnull @.str.142, i64 noundef 0) #40
  %4 = tail call ptr @cons(ptr noundef %3, ptr noundef null) #40
  %5 = tail call ptr @cons(ptr noundef %0, ptr noundef %4) #40
  %6 = tail call ptr @cons(ptr noundef %2, ptr noundef %5) #40
  %7 = tail call ptr @string_append(ptr noundef %6) #38
  %8 = tail call ptr @get_c_string(ptr noundef %7) #40
  %9 = tail call ptr @gen_intern(ptr noundef %8, i64 noundef 1) #40
  %10 = tail call ptr @symbol_boundp(ptr noundef %9, ptr noundef null) #40
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = tail call ptr @symbol_value(ptr noundef %9, ptr noundef null) #40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %1
  %16 = load ptr, ptr @sym_t, align 8, !tbaa !7
  %17 = tail call ptr @get_c_string(ptr noundef %0) #40
  %18 = icmp ne ptr %16, null
  %19 = zext i1 %18 to i64
  %20 = tail call ptr @vload(ptr noundef %17, i64 noundef 0, i64 noundef %19) #40
  %21 = load ptr, ptr @sym_t, align 8, !tbaa !7
  %22 = tail call ptr @setvar(ptr noundef %9, ptr noundef %21, ptr noundef null) #40
  br label %23

23:                                               ; preds = %15, %12
  ret ptr %9
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @fclose_l(ptr noundef %0) #0 {
  %2 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 17
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %1
  %9 = tail call ptr @err(ptr noundef nonnull @.str.134, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  tail call void @file_gc_free(ptr noundef %0) #40
  store i64 %2, ptr @nointerrupt, align 8, !tbaa !12
  %11 = icmp eq i64 %2, 0
  %12 = load i64, ptr @interrupt_differed, align 8
  %13 = icmp eq i64 %12, 1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %16 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %17

17:                                               ; preds = %15, %10
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @file_gc_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3) #40
  store ptr null, ptr %2, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %9) #38
  store ptr null, ptr %8, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_c_string(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  switch i16 %5, label %12 [
    i16 3, label %6
    i16 13, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %14

12:                                               ; preds = %3, %1
  %13 = tail call ptr @err(ptr noundef nonnull @.str.25, ptr noundef %0) #40
  br label %14

14:                                               ; preds = %12, %9, %6
  %15 = phi ptr [ %8, %6 ], [ %11, %9 ], [ null, %12 ]
  ret ptr %15
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @symbol_boundp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.50, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = tail call ptr @envlookup(ptr noundef %0, ptr noundef %1) #40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = load ptr, ptr @unbound_marker, align 8, !tbaa !7
  %19 = icmp eq ptr %17, %18
  %20 = load ptr, ptr @sym_t, align 8
  %21 = select i1 %19, ptr null, ptr %20
  br label %22

22:                                               ; preds = %15, %13
  %23 = phi ptr [ %14, %13 ], [ %21, %15 ]
  ret ptr %23
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @symbol_value(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.50, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = tail call ptr @envlookup(ptr noundef %0, ptr noundef %1) #40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  br label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = load ptr, ptr @unbound_marker, align 8, !tbaa !7
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call ptr @err(ptr noundef nonnull @.str.49, ptr noundef nonnull %0) #40
  br label %23

23:                                               ; preds = %21, %16, %13
  %24 = phi ptr [ %15, %13 ], [ %18, %21 ], [ %18, %16 ]
  ret ptr %24
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @newcell(i64 noundef %0) #0 {
  %2 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = load ptr, ptr @heap, align 8, !tbaa !7
  %6 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %7 = icmp ult ptr %5, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %5, i64 1
  store ptr %11, ptr @heap, align 8, !tbaa !7
  br label %23

12:                                               ; preds = %1
  %13 = load ptr, ptr @freelist, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  tail call void @gc_for_newcell() #40
  %16 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %16, %15 ], [ %13, %12 ]
  %19 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  store ptr %20, ptr @freelist, align 8, !tbaa !7
  %21 = load i64, ptr @gc_cells_allocated, align 8, !tbaa !12
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr @gc_cells_allocated, align 8, !tbaa !12
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi ptr [ %5, %10 ], [ %18, %17 ]
  store i16 0, ptr %24, align 8, !tbaa !23
  %25 = trunc i64 %0 to i16
  %26 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 1
  store i16 %25, ptr %26, align 2, !tbaa !16
  ret ptr %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal ptr @safe_strcat(ptr noundef returned %0, i64 noundef %1, ptr nocapture noundef readonly %2) #22 {
  %4 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #39
  %5 = icmp eq ptr %4, null
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = select i1 %5, i64 %1, i64 %8
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = sub i64 %1, %9
  %12 = icmp eq i64 %9, %1
  br i1 %12, label %24, label %13

13:                                               ; preds = %3
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %15 = icmp ult i64 %14, %11
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = icmp eq i64 %14, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 %14, i1 false)
  br label %21

19:                                               ; preds = %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %2, i64 %11, i1 false)
  %20 = add i64 %11, -1
  br label %21

21:                                               ; preds = %19, %18, %16
  %22 = phi i64 [ %20, %19 ], [ %14, %18 ], [ 0, %16 ]
  %23 = getelementptr inbounds i8, ptr %10, i64 %22
  store i8 0, ptr %23, align 1, !tbaa !11
  br label %24

24:                                               ; preds = %21, %3
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @llast_c_errmsg(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #45
  %5 = load i32, ptr %4, align 4, !tbaa !76
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ %0, %1 ]
  %8 = tail call ptr @strerror(i32 noundef %7) #38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = sitofp i32 %7 to double
  %12 = tail call ptr @flocons(double noundef %11) #40
  br label %15

13:                                               ; preds = %6
  %14 = tail call ptr @gen_intern(ptr noundef nonnull %8, i64 noundef 0) #40
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %14, %13 ], [ %12, %10 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal i64 @repl_c_string(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.repl_hooks, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #42
  %6 = getelementptr inbounds %struct.repl_hooks, ptr %5, i64 0, i32 1
  store ptr @repl_c_string_read, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.repl_hooks, ptr %5, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !53
  %8 = icmp sgt i64 %3, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store ptr @ignore_puts, ptr %5, align 8, !tbaa !50
  br label %14

10:                                               ; preds = %4
  %11 = icmp eq i64 %3, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store ptr @noprompt_puts, ptr %5, align 8, !tbaa !50
  br label %14

13:                                               ; preds = %10
  store ptr @ignore_puts, ptr %5, align 8, !tbaa !50
  br label %14

14:                                               ; preds = %13, %12, %9
  %15 = phi ptr [ @not_ignore_print, %12 ], [ @ignore_print, %13 ], [ @repl_c_string_print, %9 ]
  %16 = phi i64 [ 0, %12 ], [ 0, %13 ], [ %3, %9 ]
  %17 = phi ptr [ null, %12 ], [ null, %13 ], [ %0, %9 ]
  %18 = getelementptr inbounds %struct.repl_hooks, ptr %5, i64 0, i32 3
  store ptr %15, ptr %18, align 8, !tbaa !54
  store i64 %16, ptr @repl_c_string_print_len, align 8, !tbaa !12
  store ptr %17, ptr @repl_c_string_out, align 8, !tbaa !7
  store ptr %0, ptr @repl_c_string_arg, align 8, !tbaa !7
  store i1 false, ptr @repl_c_string_flag, align 8
  %19 = call i64 @repl_driver(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %5) #40, !range !87
  %20 = icmp eq i64 %19, 0
  %21 = load i1, ptr @repl_c_string_flag, align 8
  %22 = select i1 %21, i64 0, i64 2
  %23 = select i1 %20, i64 %22, i64 %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #42
  ret i64 %23
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @repl_c_string_read() #0 {
  %1 = load ptr, ptr @repl_c_string_arg, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @eof_val, align 8, !tbaa !7
  br label %13

5:                                                ; preds = %0
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %7 = tail call ptr @strcons(i64 noundef %6, ptr noundef nonnull %1) #38
  store ptr null, ptr @repl_c_string_arg, align 8, !tbaa !7
  %8 = load ptr, ptr @repl_c_string_out, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i8 0, ptr %8, align 1, !tbaa !11
  br label %11

11:                                               ; preds = %10, %5
  %12 = tail call ptr @read_from_string(ptr noundef %7) #38
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %4, %3 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @ignore_puts(ptr nocapture %0) #17 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @noprompt_puts(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.16) #39
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %5, ptr noundef %0) #40
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @not_ignore_print(ptr noundef %0) #0 {
  store i1 true, ptr @repl_c_string_flag, align 8
  %2 = tail call ptr @lprint(ptr noundef %0, ptr noundef null) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @ignore_print(ptr nocapture readnone %0) #23 {
  store i1 true, ptr @repl_c_string_flag, align 8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @repl_c_string_print(ptr noundef %0) #0 {
  %2 = alloca %struct.gen_readio, align 8
  %3 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #42
  store ptr null, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.gen_readio, ptr %2, i64 0, i32 1
  store ptr @rcsp_puts, ptr %4, align 8, !tbaa !62
  %5 = load ptr, ptr @repl_c_string_out, align 8, !tbaa !7
  store ptr %5, ptr %3, align 8, !tbaa !88
  %6 = load i64, ptr @repl_c_string_print_len, align 8, !tbaa !12
  %7 = add nsw i64 %6, -1
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  %9 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !90
  %10 = getelementptr inbounds %struct.gen_readio, ptr %2, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !63
  %11 = call ptr @lprin1g(ptr noundef %0, ptr noundef nonnull %2) #40
  store i1 true, ptr @repl_c_string_flag, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @rcsp_puts(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39
  %4 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = load ptr, ptr %1, align 8, !tbaa !88
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp sgt i64 %3, %9
  %11 = tail call i64 @llvm.smin.i64(i64 %3, i64 %9)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %0, i64 %11, i1 false)
  %12 = load ptr, ptr %1, align 8, !tbaa !88
  %13 = getelementptr inbounds i8, ptr %12, i64 %11
  store ptr %13, ptr %1, align 8, !tbaa !88
  store i8 0, ptr %13, align 1, !tbaa !11
  br i1 %10, label %14, label %16

14:                                               ; preds = %2
  %15 = tail call ptr @err(ptr noundef nonnull @.str.237, ptr noundef null) #40
  br label %16

16:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nounwind optsize uwtable
define internal void @gput_st(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = tail call i32 %4(ptr noundef %1, ptr noundef %6) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @put_st(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %2, ptr noundef %0) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lread(ptr noundef %0) #0 {
  %2 = alloca %struct.gen_readio, align 8
  %3 = load ptr, ptr @stdin, align 8, !tbaa !7
  %4 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef %3) #40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #42
  store ptr @f_getc, ptr %2, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.gen_readio, ptr %2, i64 0, i32 1
  store ptr @f_ungetc, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.gen_readio, ptr %2, i64 0, i32 2
  store ptr %4, ptr %6, align 8, !tbaa !67
  %7 = call ptr @readtl(ptr noundef nonnull %2) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #42
  ret ptr %7
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @errswitch() #0 {
  %1 = tail call ptr @err(ptr noundef nonnull @.str.22, ptr noundef null) #40
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @err_stack(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call ptr @err(ptr noundef nonnull @.str.23, ptr noundef null) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @stack_limit(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  store i64 %5, ptr @stack_size, align 8, !tbaa !12
  %6 = load ptr, ptr @stack_start_ptr, align 8, !tbaa !7
  %7 = sub i64 0, %5
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store ptr %8, ptr @stack_limit_ptr, align 8, !tbaa !7
  br label %9

9:                                                ; preds = %4, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %13 = load i64, ptr @stack_size, align 8, !tbaa !12
  %14 = load ptr, ptr @stack_start_ptr, align 8, !tbaa !7
  %15 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %13, ptr noundef %14, ptr noundef %15) #38
  %17 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %18 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %18, ptr noundef %17) #40
  br label %23

19:                                               ; preds = %9
  %20 = load i64, ptr @stack_size, align 8, !tbaa !12
  %21 = sitofp i64 %20 to double
  %22 = tail call ptr @flocons(double noundef %21) #40
  br label %23

23:                                               ; preds = %19, %11
  %24 = phi ptr [ null, %11 ], [ %22, %19 ]
  ret ptr %24
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_c_string_dim(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = sext i16 %6 to i32
  switch i32 %7, label %24 [
    i32 3, label %8
    i32 13, label %13
    i32 18, label %13
    i32 15, label %18
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #39
  store i64 %11, ptr %1, align 8, !tbaa !12
  %12 = load ptr, ptr %9, align 8, !tbaa !11
  br label %26

13:                                               ; preds = %4, %4
  %14 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !11
  store i64 %15, ptr %1, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  br label %26

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !11
  %21 = shl i64 %20, 3
  store i64 %21, ptr %1, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  br label %26

24:                                               ; preds = %4, %2
  %25 = tail call ptr @err(ptr noundef nonnull @.str.25, ptr noundef %0) #40
  br label %26

26:                                               ; preds = %24, %18, %13, %8
  %27 = phi ptr [ null, %24 ], [ %23, %18 ], [ %17, %13 ], [ %12, %8 ]
  ret ptr %27
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lerr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 13
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call ptr @err(ptr noundef null, ptr noundef nonnull %0) #40
  br label %21

18:                                               ; preds = %12, %8, %4, %2
  %19 = tail call ptr @get_c_string(ptr noundef %0) #40
  %20 = tail call ptr @err(ptr noundef %19, ptr noundef %1) #40
  br label %21

21:                                               ; preds = %18, %16
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @gc_fatal_error() #0 {
  %1 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @consp(ptr noundef readonly %0) #24 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 1
  %7 = load ptr, ptr @sym_t, align 8
  %8 = select i1 %6, ptr %7, ptr null
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %8, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @setcar(ptr noundef %0, ptr noundef returned %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.29, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  store ptr %1, ptr %11, align 8, !tbaa !11
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @setcdr(ptr noundef %0, ptr noundef returned %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.30, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %11, align 8, !tbaa !11
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @numberp(ptr noundef readonly %0) #24 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  %7 = load ptr, ptr @sym_t, align 8
  %8 = select i1 %6, ptr %7, ptr null
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %8, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @plus(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  br i1 %3, label %5, label %6

5:                                                ; preds = %2
  br i1 %4, label %25, label %28

6:                                                ; preds = %2
  br i1 %4, label %11, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %6
  %12 = tail call ptr @err(ptr noundef nonnull @.str.31, ptr noundef %0) #40
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @err(ptr noundef nonnull @.str.32, ptr noundef nonnull %1) #40
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %21 = load double, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = fadd double %21, %23
  br label %25

25:                                               ; preds = %19, %5
  %26 = phi double [ %24, %19 ], [ 0.000000e+00, %5 ]
  %27 = tail call ptr @flocons(double noundef %26) #40
  br label %28

28:                                               ; preds = %25, %5
  %29 = phi ptr [ %0, %5 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @ltimes(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  br i1 %3, label %5, label %6

5:                                                ; preds = %2
  br i1 %4, label %25, label %28

6:                                                ; preds = %2
  br i1 %4, label %11, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %6
  %12 = tail call ptr @err(ptr noundef nonnull @.str.33, ptr noundef %0) #40
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call ptr @err(ptr noundef nonnull @.str.34, ptr noundef nonnull %1) #40
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %21 = load double, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = fmul double %21, %23
  br label %25

25:                                               ; preds = %19, %5
  %26 = phi double [ %24, %19 ], [ 1.000000e+00, %5 ]
  %27 = tail call ptr @flocons(double noundef %26) #40
  br label %28

28:                                               ; preds = %25, %5
  %29 = phi ptr [ %0, %5 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @difference(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.35, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %14 = load double, ptr %13, align 8, !tbaa !11
  %15 = fneg double %14
  br label %28

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !16
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @err(ptr noundef nonnull @.str.36, ptr noundef nonnull %1) #40
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %24 = load double, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %26 = load double, ptr %25, align 8, !tbaa !11
  %27 = fsub double %24, %26
  br label %28

28:                                               ; preds = %22, %12
  %29 = phi double [ %27, %22 ], [ %15, %12 ]
  %30 = tail call ptr @flocons(double noundef %29) #40
  ret ptr %30
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @Quotient(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.37, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @err(ptr noundef nonnull @.str.38, ptr noundef nonnull %1) #40
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  br label %21

21:                                               ; preds = %18, %10
  %22 = phi ptr [ %1, %18 ], [ %0, %10 ]
  %23 = phi double [ %20, %18 ], [ 1.000000e+00, %10 ]
  %24 = getelementptr inbounds %struct.obj, ptr %22, i64 0, i32 2
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = fdiv double %23, %25
  %27 = tail call ptr @flocons(double noundef %26) #40
  ret ptr %27
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lllabs(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.39, ptr noundef %0) #40
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = fcmp olt double %11, 0.000000e+00
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = fneg double %11
  %15 = tail call ptr @flocons(double noundef %14) #40
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ %15, %13 ], [ %0, %9 ]
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lsqrt(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.40, ptr noundef %0) #40
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @sqrt(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #40
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @greaterp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.41, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = tail call ptr @err(ptr noundef nonnull @.str.42, ptr noundef %1) #40
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fcmp ogt double %20, %22
  %24 = load ptr, ptr @sym_t, align 8
  %25 = select i1 %23, ptr %24, ptr null
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lessp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.43, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = tail call ptr @err(ptr noundef nonnull @.str.44, ptr noundef %1) #40
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fcmp olt double %20, %22
  %24 = load ptr, ptr @sym_t, align 8
  %25 = select i1 %23, ptr %24, ptr null
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @greaterEp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.41, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = tail call ptr @err(ptr noundef nonnull @.str.42, ptr noundef %1) #40
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fcmp ult double %20, %22
  %24 = load ptr, ptr @sym_t, align 8
  %25 = select i1 %23, ptr null, ptr %24
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lessEp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.43, ptr noundef %0) #40
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = tail call ptr @err(ptr noundef nonnull @.str.44, ptr noundef %1) #40
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fcmp ugt double %20, %22
  %24 = load ptr, ptr @sym_t, align 8
  %25 = select i1 %23, ptr null, ptr %24
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lmax(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %4
  %11 = tail call ptr @err(ptr noundef nonnull @.str.45, ptr noundef %0) #40
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @err(ptr noundef nonnull @.str.46, ptr noundef nonnull %1) #40
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fcmp ogt double %20, %22
  %24 = select i1 %23, ptr %0, ptr %1
  br label %25

25:                                               ; preds = %18, %2
  %26 = phi ptr [ %24, %18 ], [ %0, %2 ]
  ret ptr %26
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lmin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %4
  %11 = tail call ptr @err(ptr noundef nonnull @.str.47, ptr noundef %0) #40
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @err(ptr noundef nonnull @.str.48, ptr noundef nonnull %1) #40
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fcmp olt double %20, %22
  %24 = select i1 %23, ptr %0, ptr %1
  br label %25

25:                                               ; preds = %18, %2
  %26 = phi ptr [ %24, %18 ], [ %0, %2 ]
  ret ptr %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @eq(ptr noundef readnone %0, ptr noundef readnone %1) #15 {
  %3 = icmp eq ptr %0, %1
  %4 = load ptr, ptr @sym_t, align 8
  %5 = select i1 %3, ptr %4, ptr null
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @eql(ptr noundef readonly %0, ptr noundef readonly %1) #24 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %26

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !16
  %11 = icmp ne i16 %10, 2
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fcmp oeq double %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %26

26:                                               ; preds = %24, %18, %14, %8, %6, %4
  %27 = phi ptr [ %5, %4 ], [ %25, %24 ], [ null, %8 ], [ null, %14 ], [ null, %18 ], [ null, %6 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @symbolp(ptr noundef readonly %0) #24 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 3
  %7 = load ptr, ptr @sym_t, align 8
  %8 = select i1 %6, ptr %7, ptr null
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %8, %3 ]
  ret ptr %10
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cintern(ptr noundef %0) #0 {
  %2 = tail call ptr @gen_intern(ptr noundef %0, i64 noundef 0) #40
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @rintern(ptr noundef %0) #0 {
  %2 = tail call ptr @gen_intern(ptr noundef %0, i64 noundef 1) #40
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @intern(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #40
  %3 = tail call ptr @gen_intern(ptr noundef %2, i64 noundef 1) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @subrcons(i64 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = load ptr, ptr @heap, align 8, !tbaa !7
  %8 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %struct.obj, ptr %7, i64 1
  store ptr %13, ptr @heap, align 8, !tbaa !7
  br label %25

14:                                               ; preds = %3
  %15 = load ptr, ptr @freelist, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  tail call void @gc_for_newcell() #40
  %18 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ %15, %14 ]
  %21 = getelementptr inbounds %struct.obj, ptr %20, i64 0, i32 2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  store ptr %22, ptr @freelist, align 8, !tbaa !7
  %23 = load i64, ptr @gc_cells_allocated, align 8, !tbaa !12
  %24 = add nsw i64 %23, 1
  store i64 %24, ptr @gc_cells_allocated, align 8, !tbaa !12
  br label %25

25:                                               ; preds = %19, %12
  %26 = phi ptr [ %7, %12 ], [ %20, %19 ]
  store i16 0, ptr %26, align 8, !tbaa !23
  %27 = trunc i64 %0 to i16
  %28 = getelementptr inbounds %struct.obj, ptr %26, i64 0, i32 1
  store i16 %27, ptr %28, align 2, !tbaa !16
  %29 = getelementptr inbounds %struct.obj, ptr %26, i64 0, i32 2
  store ptr %1, ptr %29, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.obj, ptr %26, i64 0, i32 2, i32 0, i32 1
  store ptr %2, ptr %30, align 8, !tbaa !11
  ret ptr %26
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @closure(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load ptr, ptr @heap, align 8, !tbaa !7
  %7 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %6, i64 1
  store ptr %12, ptr @heap, align 8, !tbaa !7
  br label %24

13:                                               ; preds = %2
  %14 = load ptr, ptr @freelist, align 8, !tbaa !7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  tail call void @gc_for_newcell() #40
  %17 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %20 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  store ptr %21, ptr @freelist, align 8, !tbaa !7
  %22 = load i64, ptr @gc_cells_allocated, align 8, !tbaa !12
  %23 = add nsw i64 %22, 1
  store i64 %23, ptr @gc_cells_allocated, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %18, %11
  %25 = phi ptr [ %6, %11 ], [ %19, %18 ]
  store i16 0, ptr %25, align 8, !tbaa !23
  %26 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 1
  store i16 11, ptr %26, align 2, !tbaa !16
  %27 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2
  store ptr %0, ptr %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2, i32 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !11
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal void @gc_protect(ptr noundef %0) #0 {
  %2 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr %0, ptr %2, align 8, !tbaa !40
  %3 = getelementptr inbounds %struct.gc_protected, ptr %2, i64 0, i32 1
  store i64 1, ptr %3, align 8, !tbaa !42
  %4 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.gc_protected, ptr %2, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !91
  store ptr %2, ptr @protected_registers, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @gc_protect_sym(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @gen_intern(ptr noundef %1, i64 noundef 0) #40
  store ptr %3, ptr %0, align 8, !tbaa !7
  %4 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr %0, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.gc_protected, ptr %4, i64 0, i32 1
  store i64 1, ptr %5, align 8, !tbaa !42
  %6 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.gc_protected, ptr %4, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !91
  store ptr %4, ptr @protected_registers, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_storage() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #42
  %2 = load ptr, ptr @stack_start_ptr, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store ptr %1, ptr @stack_start_ptr, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %4, %0
  call void @init_storage_1() #40
  call void @init_storage_a() #38
  %6 = load ptr, ptr @user_types, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call ptr @must_malloc(i64 noundef 8000) #46
  store ptr %9, ptr @user_types, align 8, !tbaa !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8000) %9, i8 0, i64 8000, i1 false)
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  %12 = getelementptr inbounds %struct.user_type_hooks, ptr %11, i64 17
  %13 = getelementptr inbounds %struct.user_type_hooks, ptr %11, i64 17, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store ptr @file_gc_free, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.user_type_hooks, ptr %11, i64 17, i32 4
  store ptr @file_prin1, ptr %14, align 8, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_storage_1() #0 {
  %1 = tail call ptr @must_malloc(i64 noundef 5121) #40
  store ptr %1, ptr @tkbuffer, align 8, !tbaa !7
  %2 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %3 = icmp eq i64 %2, 1
  %4 = load i64, ptr @nheaps, align 8
  %5 = icmp ne i64 %4, 2
  %6 = select i1 %3, i1 %5, i1 false
  %7 = icmp slt i64 %4, 1
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = tail call ptr @err(ptr noundef nonnull @.str.52, ptr noundef null) #40
  %11 = load i64, ptr @nheaps, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i64 [ %4, %0 ], [ %11, %9 ]
  %14 = shl i64 %13, 3
  %15 = tail call ptr @must_malloc(i64 noundef %14) #40
  store ptr %15, ptr @heaps, align 8, !tbaa !7
  %16 = load i64, ptr @nheaps, align 8, !tbaa !12
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %18, %12
  %19 = phi i64 [ %22, %18 ], [ 0, %12 ]
  %20 = load ptr, ptr @heaps, align 8, !tbaa !7
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  store ptr null, ptr %21, align 8, !tbaa !7
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, %16
  br i1 %23, label %24, label %18, !llvm.loop !92

24:                                               ; preds = %18, %12
  %25 = load i64, ptr @heap_size, align 8, !tbaa !12
  %26 = mul i64 %25, 24
  %27 = tail call ptr @must_malloc(i64 noundef %26) #40
  %28 = load ptr, ptr @heaps, align 8, !tbaa !7
  store ptr %27, ptr %28, align 8, !tbaa !7
  %29 = load ptr, ptr @heaps, align 8, !tbaa !7
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  store ptr %30, ptr @heap, align 8, !tbaa !7
  store ptr %30, ptr @heap_org, align 8, !tbaa !7
  %31 = load i64, ptr @heap_size, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.obj, ptr %30, i64 %31
  store ptr %32, ptr @heap_end, align 8, !tbaa !7
  %33 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = mul i64 %31, 24
  %37 = tail call ptr @must_malloc(i64 noundef %36) #40
  %38 = load ptr, ptr @heaps, align 8, !tbaa !7
  %39 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr %37, ptr %39, align 8, !tbaa !7
  br label %41

40:                                               ; preds = %24
  store ptr null, ptr @freelist, align 8, !tbaa !7
  br label %41

41:                                               ; preds = %40, %35
  %42 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @oblistvar, ptr %42, align 8, !tbaa !40
  %43 = getelementptr inbounds %struct.gc_protected, ptr %42, i64 0, i32 1
  store i64 1, ptr %43, align 8, !tbaa !42
  %44 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %45 = getelementptr inbounds %struct.gc_protected, ptr %42, i64 0, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !91
  store ptr %42, ptr @protected_registers, align 8, !tbaa !7
  %46 = load i64, ptr @obarray_dim, align 8, !tbaa !12
  %47 = icmp sgt i64 %46, 1
  br i1 %47, label %48, label %67

48:                                               ; preds = %41
  %49 = shl i64 %46, 3
  %50 = tail call ptr @must_malloc(i64 noundef %49) #40
  store ptr %50, ptr @obarray, align 8, !tbaa !7
  %51 = load i64, ptr @obarray_dim, align 8, !tbaa !12
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %53, %48
  %54 = phi i64 [ %57, %53 ], [ 0, %48 ]
  %55 = load ptr, ptr @obarray, align 8, !tbaa !7
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  store ptr null, ptr %56, align 8, !tbaa !7
  %57 = add nuw nsw i64 %54, 1
  %58 = icmp eq i64 %57, %51
  br i1 %58, label %59, label %53, !llvm.loop !93

59:                                               ; preds = %53
  %60 = load ptr, ptr @obarray, align 8, !tbaa !7
  br label %61

61:                                               ; preds = %59, %48
  %62 = phi ptr [ %60, %59 ], [ %50, %48 ]
  %63 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr %62, ptr %63, align 8, !tbaa !40
  %64 = getelementptr inbounds %struct.gc_protected, ptr %63, i64 0, i32 1
  store i64 %51, ptr %64, align 8, !tbaa !42
  %65 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %66 = getelementptr inbounds %struct.gc_protected, ptr %63, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !91
  store ptr %63, ptr @protected_registers, align 8, !tbaa !7
  br label %67

67:                                               ; preds = %61, %41
  %68 = tail call ptr @gen_intern(ptr noundef nonnull @.str.53, i64 noundef 0) #40
  %69 = tail call ptr @cons(ptr noundef %68, ptr noundef null) #40
  store ptr %69, ptr @unbound_marker, align 8, !tbaa !7
  %70 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @unbound_marker, ptr %70, align 8, !tbaa !40
  %71 = getelementptr inbounds %struct.gc_protected, ptr %70, i64 0, i32 1
  store i64 1, ptr %71, align 8, !tbaa !42
  %72 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %73 = getelementptr inbounds %struct.gc_protected, ptr %70, i64 0, i32 2
  store ptr %72, ptr %73, align 8, !tbaa !91
  store ptr %70, ptr @protected_registers, align 8, !tbaa !7
  %74 = tail call ptr @gen_intern(ptr noundef nonnull @.str.54, i64 noundef 0) #40
  %75 = tail call ptr @cons(ptr noundef %74, ptr noundef null) #40
  store ptr %75, ptr @eof_val, align 8, !tbaa !7
  %76 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @eof_val, ptr %76, align 8, !tbaa !40
  %77 = getelementptr inbounds %struct.gc_protected, ptr %76, i64 0, i32 1
  store i64 1, ptr %77, align 8, !tbaa !42
  %78 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %79 = getelementptr inbounds %struct.gc_protected, ptr %76, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !91
  store ptr %76, ptr @protected_registers, align 8, !tbaa !7
  %80 = tail call ptr @gen_intern(ptr noundef nonnull @.str.55, i64 noundef 0) #40
  store ptr %80, ptr @sym_t, align 8, !tbaa !7
  %81 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_t, ptr %81, align 8, !tbaa !40
  %82 = getelementptr inbounds %struct.gc_protected, ptr %81, i64 0, i32 1
  store i64 1, ptr %82, align 8, !tbaa !42
  %83 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %84 = getelementptr inbounds %struct.gc_protected, ptr %81, i64 0, i32 2
  store ptr %83, ptr %84, align 8, !tbaa !91
  store ptr %81, ptr @protected_registers, align 8, !tbaa !7
  %85 = load ptr, ptr @sym_t, align 8, !tbaa !7
  %86 = tail call ptr @setvar(ptr noundef %85, ptr noundef %85, ptr noundef null) #40
  %87 = tail call ptr @gen_intern(ptr noundef nonnull @.str.56, i64 noundef 0) #40
  %88 = tail call ptr @setvar(ptr noundef %87, ptr noundef null, ptr noundef null) #40
  %89 = tail call ptr @gen_intern(ptr noundef nonnull @.str.57, i64 noundef 0) #40
  %90 = tail call ptr @gen_intern(ptr noundef nonnull @.str.58, i64 noundef 0) #40
  %91 = tail call ptr @setvar(ptr noundef %89, ptr noundef %90, ptr noundef null) #40
  %92 = tail call ptr @gen_intern(ptr noundef nonnull @.str.59, i64 noundef 0) #40
  %93 = tail call ptr @gen_intern(ptr noundef nonnull @.str.60, i64 noundef 0) #40
  %94 = tail call ptr @setvar(ptr noundef %92, ptr noundef %93, ptr noundef null) #40
  %95 = tail call ptr @gen_intern(ptr noundef nonnull @.str.61, i64 noundef 0) #40
  %96 = tail call ptr @gen_intern(ptr noundef nonnull @.str.62, i64 noundef 0) #40
  %97 = tail call ptr @setvar(ptr noundef %95, ptr noundef %96, ptr noundef null) #40
  %98 = tail call ptr @gen_intern(ptr noundef nonnull @.str.63, i64 noundef 0) #40
  store ptr %98, ptr @sym_errobj, align 8, !tbaa !7
  %99 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_errobj, ptr %99, align 8, !tbaa !40
  %100 = getelementptr inbounds %struct.gc_protected, ptr %99, i64 0, i32 1
  store i64 1, ptr %100, align 8, !tbaa !42
  %101 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %102 = getelementptr inbounds %struct.gc_protected, ptr %99, i64 0, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !91
  store ptr %99, ptr @protected_registers, align 8, !tbaa !7
  %103 = load ptr, ptr @sym_errobj, align 8, !tbaa !7
  %104 = tail call ptr @setvar(ptr noundef %103, ptr noundef null, ptr noundef null) #40
  %105 = tail call ptr @gen_intern(ptr noundef nonnull @.str.64, i64 noundef 0) #40
  store ptr %105, ptr @sym_catchall, align 8, !tbaa !7
  %106 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_catchall, ptr %106, align 8, !tbaa !40
  %107 = getelementptr inbounds %struct.gc_protected, ptr %106, i64 0, i32 1
  store i64 1, ptr %107, align 8, !tbaa !42
  %108 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %109 = getelementptr inbounds %struct.gc_protected, ptr %106, i64 0, i32 2
  store ptr %108, ptr %109, align 8, !tbaa !91
  store ptr %106, ptr @protected_registers, align 8, !tbaa !7
  %110 = tail call ptr @gen_intern(ptr noundef nonnull @.str.65, i64 noundef 0) #40
  store ptr %110, ptr @sym_progn, align 8, !tbaa !7
  %111 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_progn, ptr %111, align 8, !tbaa !40
  %112 = getelementptr inbounds %struct.gc_protected, ptr %111, i64 0, i32 1
  store i64 1, ptr %112, align 8, !tbaa !42
  %113 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %114 = getelementptr inbounds %struct.gc_protected, ptr %111, i64 0, i32 2
  store ptr %113, ptr %114, align 8, !tbaa !91
  store ptr %111, ptr @protected_registers, align 8, !tbaa !7
  %115 = tail call ptr @gen_intern(ptr noundef nonnull @.str.66, i64 noundef 0) #40
  store ptr %115, ptr @sym_lambda, align 8, !tbaa !7
  %116 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_lambda, ptr %116, align 8, !tbaa !40
  %117 = getelementptr inbounds %struct.gc_protected, ptr %116, i64 0, i32 1
  store i64 1, ptr %117, align 8, !tbaa !42
  %118 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %119 = getelementptr inbounds %struct.gc_protected, ptr %116, i64 0, i32 2
  store ptr %118, ptr %119, align 8, !tbaa !91
  store ptr %116, ptr @protected_registers, align 8, !tbaa !7
  %120 = tail call ptr @gen_intern(ptr noundef nonnull @.str.67, i64 noundef 0) #40
  store ptr %120, ptr @sym_quote, align 8, !tbaa !7
  %121 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_quote, ptr %121, align 8, !tbaa !40
  %122 = getelementptr inbounds %struct.gc_protected, ptr %121, i64 0, i32 1
  store i64 1, ptr %122, align 8, !tbaa !42
  %123 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %124 = getelementptr inbounds %struct.gc_protected, ptr %121, i64 0, i32 2
  store ptr %123, ptr %124, align 8, !tbaa !91
  store ptr %121, ptr @protected_registers, align 8, !tbaa !7
  %125 = tail call ptr @gen_intern(ptr noundef nonnull @.str.68, i64 noundef 0) #40
  store ptr %125, ptr @sym_dot, align 8, !tbaa !7
  %126 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_dot, ptr %126, align 8, !tbaa !40
  %127 = getelementptr inbounds %struct.gc_protected, ptr %126, i64 0, i32 1
  store i64 1, ptr %127, align 8, !tbaa !42
  %128 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %129 = getelementptr inbounds %struct.gc_protected, ptr %126, i64 0, i32 2
  store ptr %128, ptr %129, align 8, !tbaa !91
  store ptr %126, ptr @protected_registers, align 8, !tbaa !7
  %130 = tail call ptr @gen_intern(ptr noundef nonnull @.str.69, i64 noundef 0) #40
  store ptr %130, ptr @sym_after_gc, align 8, !tbaa !7
  %131 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_after_gc, ptr %131, align 8, !tbaa !40
  %132 = getelementptr inbounds %struct.gc_protected, ptr %131, i64 0, i32 1
  store i64 1, ptr %132, align 8, !tbaa !42
  %133 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %134 = getelementptr inbounds %struct.gc_protected, ptr %131, i64 0, i32 2
  store ptr %133, ptr %134, align 8, !tbaa !91
  store ptr %131, ptr @protected_registers, align 8, !tbaa !7
  %135 = load ptr, ptr @sym_after_gc, align 8, !tbaa !7
  %136 = tail call ptr @setvar(ptr noundef %135, ptr noundef null, ptr noundef null) #40
  %137 = tail call ptr @gen_intern(ptr noundef nonnull @.str.70, i64 noundef 0) #40
  store ptr %137, ptr @sym_eval_history_ptr, align 8, !tbaa !7
  %138 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr @sym_eval_history_ptr, ptr %138, align 8, !tbaa !40
  %139 = getelementptr inbounds %struct.gc_protected, ptr %138, i64 0, i32 1
  store i64 1, ptr %139, align 8, !tbaa !42
  %140 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %141 = getelementptr inbounds %struct.gc_protected, ptr %138, i64 0, i32 2
  store ptr %140, ptr %141, align 8, !tbaa !91
  store ptr %138, ptr @protected_registers, align 8, !tbaa !7
  %142 = load ptr, ptr @sym_eval_history_ptr, align 8, !tbaa !7
  %143 = tail call ptr @setvar(ptr noundef %142, ptr noundef null, ptr noundef null) #40
  %144 = load i64, ptr @inums_dim, align 8, !tbaa !12
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %193

146:                                              ; preds = %67
  %147 = shl i64 %144, 3
  %148 = tail call ptr @must_malloc(i64 noundef %147) #40
  store ptr %148, ptr @inums, align 8, !tbaa !7
  %149 = load i64, ptr @inums_dim, align 8, !tbaa !12
  %150 = icmp sgt i64 %149, 0
  br i1 %150, label %151, label %186

151:                                              ; preds = %174, %146
  %152 = phi i64 [ %181, %174 ], [ 0, %146 ]
  %153 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %154 = icmp eq i64 %153, 1
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = load ptr, ptr @heap, align 8, !tbaa !7
  %157 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %158 = icmp ult ptr %156, %157
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = tail call ptr @err(ptr noundef nonnull @.str.26, ptr noundef null) #40
  br label %161

161:                                              ; preds = %159, %155
  %162 = getelementptr inbounds %struct.obj, ptr %156, i64 1
  store ptr %162, ptr @heap, align 8, !tbaa !7
  br label %174

163:                                              ; preds = %151
  %164 = load ptr, ptr @freelist, align 8, !tbaa !7
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  tail call void @gc_for_newcell() #40
  %167 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %168

168:                                              ; preds = %166, %163
  %169 = phi ptr [ %167, %166 ], [ %164, %163 ]
  %170 = getelementptr inbounds %struct.obj, ptr %169, i64 0, i32 2, i32 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !11
  store ptr %171, ptr @freelist, align 8, !tbaa !7
  %172 = load i64, ptr @gc_cells_allocated, align 8, !tbaa !12
  %173 = add nsw i64 %172, 1
  store i64 %173, ptr @gc_cells_allocated, align 8, !tbaa !12
  br label %174

174:                                              ; preds = %168, %161
  %175 = phi ptr [ %156, %161 ], [ %169, %168 ]
  store i16 0, ptr %175, align 8, !tbaa !23
  %176 = getelementptr inbounds %struct.obj, ptr %175, i64 0, i32 1
  store i16 2, ptr %176, align 2, !tbaa !16
  %177 = sitofp i64 %152 to double
  %178 = getelementptr inbounds %struct.obj, ptr %175, i64 0, i32 2
  store double %177, ptr %178, align 8, !tbaa !11
  %179 = load ptr, ptr @inums, align 8, !tbaa !7
  %180 = getelementptr inbounds ptr, ptr %179, i64 %152
  store ptr %175, ptr %180, align 8, !tbaa !7
  %181 = add nuw nsw i64 %152, 1
  %182 = load i64, ptr @inums_dim, align 8, !tbaa !12
  %183 = icmp slt i64 %181, %182
  br i1 %183, label %151, label %184, !llvm.loop !94

184:                                              ; preds = %174
  %.lcssa = phi i64 [ %182, %174 ]
  %185 = load ptr, ptr @inums, align 8, !tbaa !7
  br label %186

186:                                              ; preds = %184, %146
  %187 = phi ptr [ %148, %146 ], [ %185, %184 ]
  %188 = phi i64 [ %149, %146 ], [ %.lcssa, %184 ]
  %189 = tail call ptr @must_malloc(i64 noundef 24) #40
  store ptr %187, ptr %189, align 8, !tbaa !40
  %190 = getelementptr inbounds %struct.gc_protected, ptr %189, i64 0, i32 1
  store i64 %188, ptr %190, align 8, !tbaa !42
  %191 = load ptr, ptr @protected_registers, align 8, !tbaa !7
  %192 = getelementptr inbounds %struct.gc_protected, ptr %189, i64 0, i32 2
  store ptr %191, ptr %192, align 8, !tbaa !91
  store ptr %189, ptr @protected_registers, align 8, !tbaa !7
  br label %193

193:                                              ; preds = %186, %67
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @file_prin1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.gen_readio, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call i32 %7(ptr noundef nonnull @.str.149, ptr noundef %9) #38
  %11 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.150, ptr noundef %12) #38
  %14 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %15 = load ptr, ptr %6, align 8, !tbaa !62
  %16 = load ptr, ptr %8, align 8, !tbaa !63
  %17 = tail call i32 %15(ptr noundef %14, ptr noundef %16) #38
  %18 = icmp eq ptr %5, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load ptr, ptr %6, align 8, !tbaa !62
  %21 = load ptr, ptr %8, align 8, !tbaa !63
  %22 = tail call i32 %20(ptr noundef nonnull @.str.112, ptr noundef %21) #38
  %23 = load ptr, ptr %6, align 8, !tbaa !62
  %24 = load ptr, ptr %8, align 8, !tbaa !63
  %25 = tail call i32 %23(ptr noundef nonnull %5, ptr noundef %24) #38
  br label %26

26:                                               ; preds = %19, %2
  %27 = load ptr, ptr %6, align 8, !tbaa !62
  %28 = load ptr, ptr %8, align 8, !tbaa !63
  %29 = tail call i32 %27(ptr noundef nonnull @.str.118, ptr noundef %28) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_gc_hooks(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = tail call ptr @get_user_type_hooks(i64 noundef %0) #40
  store ptr %1, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.user_type_hooks, ptr %7, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.user_type_hooks, ptr %7, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %struct.user_type_hooks, ptr %7, i64 0, i32 3
  store ptr %4, ptr %10, align 8, !tbaa !45
  %11 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  store i64 %11, ptr %5, align 8, !tbaa !12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_print_hooks(i64 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_user_type_hooks(i64 noundef %0) #40
  %4 = getelementptr inbounds %struct.user_type_hooks, ptr %3, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !72
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subr(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @gen_intern(ptr noundef %0, i64 noundef 0) #40
  %5 = tail call ptr @subrcons(i64 noundef %1, ptr noundef %0, ptr noundef %2) #40
  %6 = tail call ptr @setvar(ptr noundef %4, ptr noundef %5, ptr noundef null) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subr_0(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 4, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subr_1(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 5, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subr_2(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 6, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subr_3(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 7, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subr_4(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 19, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subr_5(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 20, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_lsubr(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 8, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_fsubr(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 9, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_msubr(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @init_subr(ptr noundef %0, i64 noundef 10, ptr noundef %1) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @assq(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %21, %2
  %5 = phi ptr [ %23, %21 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17, %13, %9
  %22 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %4, !llvm.loop !95

25:                                               ; preds = %4
  %26 = tail call ptr @err(ptr noundef nonnull @.str.71, ptr noundef nonnull %1) #40
  br label %27

27:                                               ; preds = %25, %21, %17, %2
  %28 = phi ptr [ null, %25 ], [ null, %2 ], [ %11, %17 ], [ null, %21 ]
  ret ptr %28
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @allocate_user_tc() #0 {
  %1 = load i64, ptr @user_tc_next, align 8, !tbaa !12
  %2 = icmp sgt i64 %1, 100
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call ptr @err(ptr noundef nonnull @.str.73, ptr noundef null) #40
  %5 = load i64, ptr @user_tc_next, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i64 [ %5, %3 ], [ %1, %0 ]
  %8 = add nsw i64 %7, 1
  store i64 %8, ptr @user_tc_next, align 8, !tbaa !12
  ret i64 %1
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @user_gc(ptr noundef %0) #0 {
  %2 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @err(ptr noundef nonnull @.str.77, ptr noundef null) #40
  br label %6

6:                                                ; preds = %4, %1
  %7 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  store i64 0, ptr @errjmp_ok, align 8, !tbaa !12
  %8 = load i64, ptr @gc_status_flag, align 8, !tbaa !12
  %9 = icmp eq ptr %0, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !16
  %13 = sext i16 %12 to i32
  switch i32 %13, label %14 [
    i32 0, label %21
    i32 1, label %16
  ]

14:                                               ; preds = %10
  %15 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %0) #46
  br label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = icmp ne ptr %18, null
  %20 = zext i1 %19 to i64
  br label %21

21:                                               ; preds = %16, %14, %10
  %22 = phi i64 [ 0, %10 ], [ 0, %14 ], [ %20, %16 ]
  store i64 %22, ptr @gc_status_flag, align 8, !tbaa !12
  br label %23

23:                                               ; preds = %21, %6
  tail call void @gc_mark_and_sweep() #40
  store i64 %8, ptr @gc_status_flag, align 8, !tbaa !12
  store i64 1, ptr @errjmp_ok, align 8, !tbaa !12
  store i64 %7, ptr @nointerrupt, align 8, !tbaa !12
  %24 = icmp eq i64 %7, 0
  %25 = load i64, ptr @interrupt_differed, align 8
  %26 = icmp eq i64 %25, 1
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %29 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %30

30:                                               ; preds = %28, %23
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @gc_status(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 0, label %14
    i32 1, label %9
  ]

7:                                                ; preds = %3
  %8 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %0) #46
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i64
  br label %14

14:                                               ; preds = %9, %7, %3
  %15 = phi i64 [ 0, %3 ], [ 0, %7 ], [ %13, %9 ]
  store i64 %15, ptr @gc_status_flag, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %14, %1
  %17 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %18 = icmp eq i64 %17, 1
  %19 = load i64, ptr @gc_status_flag, align 8, !tbaa !12
  %20 = icmp eq i64 %19, 0
  %21 = load ptr, ptr @stdout, align 8, !tbaa !7
  br i1 %18, label %22, label %36

22:                                               ; preds = %16
  %23 = select i1 %20, ptr @.str.79, ptr @.str.78
  tail call void @fput_st(ptr noundef %21, ptr noundef nonnull %23) #40
  %24 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %25 = load ptr, ptr @heap, align 8, !tbaa !7
  %26 = load ptr, ptr @heap_org, align 8, !tbaa !7
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 24
  %31 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %27
  %34 = sdiv exact i64 %33, 24
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @.str.80, i64 noundef %30, i64 noundef %34) #38
  br label %75

36:                                               ; preds = %16
  %37 = select i1 %20, ptr @.str.82, ptr @.str.81
  tail call void @fput_st(ptr noundef %21, ptr noundef nonnull %37) #40
  %38 = load i64, ptr @nheaps, align 8, !tbaa !12
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load ptr, ptr @heaps, align 8, !tbaa !7
  br label %42

42:                                               ; preds = %47, %40
  %43 = phi i64 [ 0, %40 ], [ %48, %47 ]
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %38
  br i1 %49, label %50, label %42, !llvm.loop !96

50:                                               ; preds = %47, %42, %36
  %51 = phi i64 [ 0, %36 ], [ %43, %42 ], [ %38, %47 ]
  %52 = load ptr, ptr @freelist, align 8, !tbaa !11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %54, %50
  %55 = phi ptr [ %59, %54 ], [ %52, %50 ]
  %56 = phi i64 [ %58, %54 ], [ 0, %50 ]
  %57 = getelementptr inbounds %struct.obj, ptr %55, i64 0, i32 2, i32 0, i32 1
  %58 = add nuw nsw i64 %56, 1
  %59 = load ptr, ptr %57, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %54, !llvm.loop !97

61:                                               ; preds = %54, %50
  %62 = phi i64 [ 0, %50 ], [ %58, %54 ]
  %63 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %64 = load ptr, ptr @heap, align 8, !tbaa !7
  %65 = ptrtoint ptr %63 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 24
  %69 = add nsw i64 %68, %62
  %70 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %71 = load i64, ptr @heap_size, align 8, !tbaa !12
  %72 = mul nsw i64 %71, %51
  %73 = sub nsw i64 %72, %69
  %74 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) @.str.83, i64 noundef %51, i64 noundef %38, i64 noundef %73, i64 noundef %69) #38
  br label %75

75:                                               ; preds = %61, %22
  %76 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %77 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %77, ptr noundef %76) #40
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @gc_info(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  switch i64 %2, label %66 [
    i64 0, label %3
    i64 1, label %8
    i64 2, label %25
    i64 3, label %29
    i64 4, label %33
  ]

3:                                                ; preds = %1
  %4 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %5 = icmp eq i64 %4, 1
  %6 = load ptr, ptr @sym_t, align 8
  %7 = select i1 %5, ptr %6, ptr null
  br label %66

8:                                                ; preds = %1
  %9 = load i64, ptr @nheaps, align 8, !tbaa !12
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load ptr, ptr @heaps, align 8, !tbaa !7
  br label %13

13:                                               ; preds = %18, %11
  %14 = phi i64 [ 0, %11 ], [ %19, %18 ]
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %13, !llvm.loop !96

21:                                               ; preds = %18, %13, %8
  %22 = phi i64 [ 0, %8 ], [ %14, %13 ], [ %9, %18 ]
  %23 = sitofp i64 %22 to double
  %24 = tail call ptr @flocons(double noundef %23) #40
  br label %66

25:                                               ; preds = %1
  %26 = load i64, ptr @nheaps, align 8, !tbaa !12
  %27 = sitofp i64 %26 to double
  %28 = tail call ptr @flocons(double noundef %27) #40
  br label %66

29:                                               ; preds = %1
  %30 = load i64, ptr @heap_size, align 8, !tbaa !12
  %31 = sitofp i64 %30 to double
  %32 = tail call ptr @flocons(double noundef %31) #40
  br label %66

33:                                               ; preds = %1
  %34 = load i64, ptr @gc_kind_copying, align 8, !tbaa !12
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %38 = load ptr, ptr @heap, align 8, !tbaa !7
  %39 = ptrtoint ptr %37 to i64
  %40 = ptrtoint ptr %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 24
  br label %62

43:                                               ; preds = %33
  %44 = load ptr, ptr @freelist, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %46, %43
  %47 = phi ptr [ %51, %46 ], [ %44, %43 ]
  %48 = phi i64 [ %50, %46 ], [ 0, %43 ]
  %49 = getelementptr inbounds %struct.obj, ptr %47, i64 0, i32 2, i32 0, i32 1
  %50 = add nuw nsw i64 %48, 1
  %51 = load ptr, ptr %49, align 8, !tbaa !11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %46, !llvm.loop !97

53:                                               ; preds = %46, %43
  %54 = phi i64 [ 0, %43 ], [ %50, %46 ]
  %55 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %56 = load ptr, ptr @heap, align 8, !tbaa !7
  %57 = ptrtoint ptr %55 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 24
  %61 = add nsw i64 %60, %54
  br label %62

62:                                               ; preds = %53, %36
  %63 = phi i64 [ %42, %36 ], [ %61, %53 ]
  %64 = sitofp i64 %63 to double
  %65 = tail call ptr @flocons(double noundef %64) #40
  br label %66

66:                                               ; preds = %62, %29, %25, %21, %3, %1
  %67 = phi ptr [ %65, %62 ], [ %32, %29 ], [ %28, %25 ], [ %24, %21 ], [ %7, %3 ], [ null, %1 ]
  ret ptr %67
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_eval_hooks(i64 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_user_type_hooks(i64 noundef %0) #40
  %4 = getelementptr inbounds %struct.user_type_hooks, ptr %3, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lapply(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = call ptr @err(ptr noundef nonnull @.str.23, ptr noundef null) #40
  %8 = load ptr, ptr %3, align 8, !tbaa !7
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ %0, %2 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %187, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = sext i16 %14 to i32
  switch i32 %15, label %185 [
    i32 4, label %16
    i32 5, label %20
    i32 6, label %25
    i32 21, label %32
    i32 7, label %58
    i32 19, label %68
    i32 20, label %82
    i32 8, label %101
    i32 9, label %105
    i32 10, label %105
    i32 3, label %105
    i32 11, label %107
  ]

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = call ptr %18() #38
  br label %198

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = call ptr @car(ptr noundef %1) #40
  %24 = call ptr %22(ptr noundef %23) #38
  br label %198

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = call ptr @car(ptr noundef %1) #40
  %29 = call ptr @cdr(ptr noundef %1) #40
  %30 = call ptr @car(ptr noundef %29) #40
  %31 = call ptr %27(ptr noundef %28, ptr noundef %30) #38
  br label %198

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  %35 = call ptr @car(ptr noundef %1) #40
  %36 = call ptr @cdr(ptr noundef %1) #40
  %37 = call ptr @car(ptr noundef %36) #40
  %38 = call ptr %34(ptr noundef %35, ptr noundef %37) #38
  %39 = call ptr @cdr(ptr noundef %1) #40
  %40 = call ptr @cdr(ptr noundef %39) #40
  %41 = icmp eq ptr %40, null
  br i1 %41, label %198, label %42

42:                                               ; preds = %48, %32
  %43 = phi ptr [ %54, %48 ], [ %38, %32 ]
  %44 = phi ptr [ %56, %48 ], [ %40, %32 ]
  %45 = getelementptr inbounds %struct.obj, ptr %44, i64 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !16
  %47 = icmp eq i16 %46, 1
  br i1 %47, label %48, label %198

48:                                               ; preds = %42
  %49 = load ptr, ptr %3, align 8, !tbaa !7
  %50 = getelementptr inbounds %struct.obj, ptr %49, i64 0, i32 2, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = getelementptr inbounds %struct.obj, ptr %44, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = call ptr %51(ptr noundef %43, ptr noundef %53) #38
  %55 = getelementptr inbounds %struct.obj, ptr %44, i64 0, i32 2, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %198, label %42, !llvm.loop !98

58:                                               ; preds = %12
  %59 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  %61 = call ptr @car(ptr noundef %1) #40
  %62 = call ptr @cdr(ptr noundef %1) #40
  %63 = call ptr @car(ptr noundef %62) #40
  %64 = call ptr @cdr(ptr noundef %1) #40
  %65 = call ptr @cdr(ptr noundef %64) #40
  %66 = call ptr @car(ptr noundef %65) #40
  %67 = call ptr %60(ptr noundef %61, ptr noundef %63, ptr noundef %66) #38
  br label %198

68:                                               ; preds = %12
  %69 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = call ptr @car(ptr noundef %1) #40
  %72 = call ptr @cdr(ptr noundef %1) #40
  %73 = call ptr @car(ptr noundef %72) #40
  %74 = call ptr @cdr(ptr noundef %1) #40
  %75 = call ptr @cdr(ptr noundef %74) #40
  %76 = call ptr @car(ptr noundef %75) #40
  %77 = call ptr @cdr(ptr noundef %1) #40
  %78 = call ptr @cdr(ptr noundef %77) #40
  %79 = call ptr @cdr(ptr noundef %78) #40
  %80 = call ptr @car(ptr noundef %79) #40
  %81 = call ptr %70(ptr noundef %71, ptr noundef %73, ptr noundef %76, ptr noundef %80) #38
  br label %198

82:                                               ; preds = %12
  %83 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = call ptr @car(ptr noundef %1) #40
  %86 = call ptr @cdr(ptr noundef %1) #40
  %87 = call ptr @car(ptr noundef %86) #40
  %88 = call ptr @cdr(ptr noundef %1) #40
  %89 = call ptr @cdr(ptr noundef %88) #40
  %90 = call ptr @car(ptr noundef %89) #40
  %91 = call ptr @cdr(ptr noundef %1) #40
  %92 = call ptr @cdr(ptr noundef %91) #40
  %93 = call ptr @cdr(ptr noundef %92) #40
  %94 = call ptr @car(ptr noundef %93) #40
  %95 = call ptr @cdr(ptr noundef %1) #40
  %96 = call ptr @cdr(ptr noundef %95) #40
  %97 = call ptr @cdr(ptr noundef %96) #40
  %98 = call ptr @cdr(ptr noundef %97) #40
  %99 = call ptr @car(ptr noundef %98) #40
  %100 = call ptr %84(ptr noundef %85, ptr noundef %87, ptr noundef %90, ptr noundef %94, ptr noundef %99) #38
  br label %198

101:                                              ; preds = %12
  %102 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  %104 = call ptr %103(ptr noundef %1) #38
  br label %198

105:                                              ; preds = %12, %12, %12
  %106 = call ptr @err(ptr noundef nonnull @.str.90, ptr noundef nonnull %10) #40
  br label %198

107:                                              ; preds = %12
  %108 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %183, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.obj, ptr %109, i64 0, i32 1
  %113 = load i16, ptr %112, align 2, !tbaa !16
  %114 = sext i16 %113 to i32
  switch i32 %114, label %183 [
    i32 1, label %115
    i32 5, label %126
    i32 6, label %132
    i32 7, label %139
    i32 19, label %148
    i32 20, label %160
    i32 8, label %176
  ]

115:                                              ; preds = %111
  %116 = call ptr @cdr(ptr noundef nonnull %109) #40
  %117 = load ptr, ptr %3, align 8, !tbaa !7
  %118 = getelementptr inbounds %struct.obj, ptr %117, i64 0, i32 2, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !11
  %120 = call ptr @car(ptr noundef %119) #40
  %121 = load ptr, ptr %3, align 8, !tbaa !7
  %122 = getelementptr inbounds %struct.obj, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  %124 = call ptr @extend_env(ptr noundef %1, ptr noundef %120, ptr noundef %123) #40
  %125 = call ptr @leval(ptr noundef %116, ptr noundef %124) #40
  br label %198

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %128 = getelementptr inbounds %struct.obj, ptr %109, i64 0, i32 2, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !11
  %130 = load ptr, ptr %127, align 8, !tbaa !11
  %131 = call ptr %129(ptr noundef %130) #38
  br label %198

132:                                              ; preds = %111
  %133 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %134 = getelementptr inbounds %struct.obj, ptr %109, i64 0, i32 2, i32 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !11
  %136 = load ptr, ptr %133, align 8, !tbaa !11
  %137 = call ptr @car(ptr noundef %1) #40
  %138 = call ptr %135(ptr noundef %136, ptr noundef %137) #38
  br label %198

139:                                              ; preds = %111
  %140 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %141 = getelementptr inbounds %struct.obj, ptr %109, i64 0, i32 2, i32 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !11
  %143 = load ptr, ptr %140, align 8, !tbaa !11
  %144 = call ptr @car(ptr noundef %1) #40
  %145 = call ptr @cdr(ptr noundef %1) #40
  %146 = call ptr @car(ptr noundef %145) #40
  %147 = call ptr %142(ptr noundef %143, ptr noundef %144, ptr noundef %146) #38
  br label %198

148:                                              ; preds = %111
  %149 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %150 = getelementptr inbounds %struct.obj, ptr %109, i64 0, i32 2, i32 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !11
  %152 = load ptr, ptr %149, align 8, !tbaa !11
  %153 = call ptr @car(ptr noundef %1) #40
  %154 = call ptr @cdr(ptr noundef %1) #40
  %155 = call ptr @car(ptr noundef %154) #40
  %156 = call ptr @cdr(ptr noundef %1) #40
  %157 = call ptr @cdr(ptr noundef %156) #40
  %158 = call ptr @car(ptr noundef %157) #40
  %159 = call ptr %151(ptr noundef %152, ptr noundef %153, ptr noundef %155, ptr noundef %158) #38
  br label %198

160:                                              ; preds = %111
  %161 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %162 = getelementptr inbounds %struct.obj, ptr %109, i64 0, i32 2, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !11
  %164 = load ptr, ptr %161, align 8, !tbaa !11
  %165 = call ptr @car(ptr noundef %1) #40
  %166 = call ptr @cdr(ptr noundef %1) #40
  %167 = call ptr @car(ptr noundef %166) #40
  %168 = call ptr @cdr(ptr noundef %1) #40
  %169 = call ptr @cdr(ptr noundef %168) #40
  %170 = call ptr @car(ptr noundef %169) #40
  %171 = call ptr @cdr(ptr noundef %1) #40
  %172 = call ptr @cdr(ptr noundef %171) #40
  %173 = call ptr @cdr(ptr noundef %172) #40
  %174 = call ptr @car(ptr noundef %173) #40
  %175 = call ptr %163(ptr noundef %164, ptr noundef %165, ptr noundef %167, ptr noundef %170, ptr noundef %174) #38
  br label %198

176:                                              ; preds = %111
  %177 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %178 = getelementptr inbounds %struct.obj, ptr %109, i64 0, i32 2, i32 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !11
  %180 = load ptr, ptr %177, align 8, !tbaa !11
  %181 = call ptr @cons(ptr noundef %180, ptr noundef %1) #40
  %182 = call ptr %179(ptr noundef %181) #38
  br label %198

183:                                              ; preds = %111, %107
  %184 = call ptr @err(ptr noundef nonnull @.str.88, ptr noundef nonnull %10) #40
  br label %198

185:                                              ; preds = %12
  %186 = sext i16 %14 to i64
  br label %187

187:                                              ; preds = %185, %9
  %188 = phi i64 [ %186, %185 ], [ 0, %9 ]
  %189 = call ptr @get_user_type_hooks(i64 noundef %188) #40
  %190 = getelementptr inbounds %struct.user_type_hooks, ptr %189, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !28
  %192 = icmp eq ptr %191, null
  %193 = load ptr, ptr %3, align 8, !tbaa !7
  br i1 %192, label %196, label %194

194:                                              ; preds = %187
  %195 = call ptr @err(ptr noundef nonnull @.str.91, ptr noundef %193) #40
  br label %198

196:                                              ; preds = %187
  %197 = call ptr @err(ptr noundef nonnull @.str.90, ptr noundef %193) #40
  br label %198

198:                                              ; preds = %196, %194, %183, %176, %160, %148, %139, %132, %126, %115, %105, %101, %82, %68, %58, %48, %42, %32, %25, %20, %16
  %199 = phi ptr [ null, %194 ], [ null, %196 ], [ null, %183 ], [ %182, %176 ], [ %175, %160 ], [ %159, %148 ], [ %147, %139 ], [ %138, %132 ], [ %131, %126 ], [ %125, %115 ], [ null, %105 ], [ %104, %101 ], [ %100, %82 ], [ %81, %68 ], [ %67, %58 ], [ %31, %25 ], [ %24, %20 ], [ %19, %16 ], [ %38, %32 ], [ %43, %42 ], [ %54, %48 ]
  ret ptr %199
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_setq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @car(ptr noundef %0) #40
  %4 = tail call ptr @cdr(ptr noundef %0) #40
  %5 = tail call ptr @car(ptr noundef %4) #40
  %6 = tail call ptr @leval(ptr noundef %5, ptr noundef %1) #40
  %7 = tail call ptr @setvar(ptr noundef %3, ptr noundef %6, ptr noundef %1) #40
  ret ptr %6
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @syntax_define(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %21, %11 ]
  %4 = tail call ptr @car(ptr noundef %3) #40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @car(ptr noundef %3) #40
  %8 = getelementptr inbounds %struct.obj, ptr %7, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 3
  br i1 %10, label %22, label %11

11:                                               ; preds = %6, %2
  %12 = tail call ptr @car(ptr noundef %3) #40
  %13 = tail call ptr @car(ptr noundef %12) #40
  %14 = load ptr, ptr @sym_lambda, align 8, !tbaa !7
  %15 = tail call ptr @car(ptr noundef %3) #40
  %16 = tail call ptr @cdr(ptr noundef %15) #40
  %17 = tail call ptr @cdr(ptr noundef %3) #40
  %18 = tail call ptr @cons(ptr noundef %16, ptr noundef %17) #40
  %19 = tail call ptr @cons(ptr noundef %14, ptr noundef %18) #40
  %20 = tail call ptr @cons(ptr noundef %19, ptr noundef null) #40
  %21 = tail call ptr @cons(ptr noundef %13, ptr noundef %20) #40
  br label %2

22:                                               ; preds = %6
  %.lcssa = phi ptr [ %3, %6 ]
  ret ptr %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_define(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @syntax_define(ptr noundef %0) #40
  %4 = tail call ptr @car(ptr noundef %3) #40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = icmp eq i16 %8, 3
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %2
  %11 = tail call ptr @err(ptr noundef nonnull @.str.93, ptr noundef %4) #40
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call ptr @cdr(ptr noundef %3) #40
  %14 = tail call ptr @car(ptr noundef %13) #40
  %15 = tail call ptr @leval(ptr noundef %14, ptr noundef %1) #40
  %16 = tail call ptr @envlookup(ptr noundef %4, ptr noundef %1) #40
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 2
  store ptr %15, ptr %19, align 8, !tbaa !11
  br label %55

20:                                               ; preds = %12
  %21 = icmp eq ptr %1, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2, i32 0, i32 1
  store ptr %15, ptr %23, align 8, !tbaa !11
  br label %55

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !16
  %27 = sext i16 %26 to i32
  switch i32 %27, label %31 [
    i32 0, label %33
    i32 1, label %28
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  br label %33

31:                                               ; preds = %24
  %32 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %1) #46
  br label %33

33:                                               ; preds = %31, %28, %24
  %34 = phi ptr [ null, %31 ], [ %30, %28 ], [ null, %24 ]
  %35 = tail call ptr @car(ptr noundef %34) #40
  %36 = tail call ptr @cons(ptr noundef %4, ptr noundef %35) #40
  %37 = icmp eq ptr %34, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.obj, ptr %34, i64 0, i32 1
  %40 = load i16, ptr %39, align 2, !tbaa !16
  %41 = icmp eq i16 %40, 1
  br i1 %41, label %44, label %42

42:                                               ; preds = %38, %33
  %43 = tail call ptr @err(ptr noundef nonnull @.str.29, ptr noundef %34) #40
  br label %44

44:                                               ; preds = %42, %38
  %45 = getelementptr inbounds %struct.obj, ptr %34, i64 0, i32 2
  store ptr %36, ptr %45, align 8, !tbaa !11
  %46 = tail call ptr @cdr(ptr noundef %34) #40
  %47 = tail call ptr @cons(ptr noundef %15, ptr noundef %46) #40
  %48 = getelementptr inbounds %struct.obj, ptr %34, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !16
  %50 = icmp eq i16 %49, 1
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = tail call ptr @err(ptr noundef nonnull @.str.30, ptr noundef nonnull %34) #40
  br label %53

53:                                               ; preds = %51, %44
  %54 = getelementptr inbounds %struct.obj, ptr %34, i64 0, i32 2, i32 0, i32 1
  store ptr %47, ptr %54, align 8, !tbaa !11
  br label %55

55:                                               ; preds = %53, %22, %18
  ret ptr %15
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_if(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = tail call ptr @cdr(ptr noundef %3) #40
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  %6 = tail call ptr @car(ptr noundef %4) #40
  %7 = tail call ptr @leval(ptr noundef %6, ptr noundef %5) #40
  %8 = icmp eq ptr %7, null
  %9 = tail call ptr @cdr(ptr noundef %4) #40
  br i1 %8, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call ptr @cdr(ptr noundef %9) #40
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ %9, %2 ]
  %14 = tail call ptr @car(ptr noundef %13) #40
  store ptr %14, ptr %0, align 8, !tbaa !7
  %15 = load ptr, ptr @sym_t, align 8, !tbaa !7
  ret ptr %15
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_lambda(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @cdr(ptr noundef %0) #40
  %4 = tail call ptr @cdr(ptr noundef %3) #40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = tail call ptr @cdr(ptr noundef %0) #40
  %8 = tail call ptr @car(ptr noundef %7) #40
  br label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr @sym_progn, align 8, !tbaa !7
  %11 = tail call ptr @cdr(ptr noundef %0) #40
  %12 = tail call ptr @cons(ptr noundef %10, ptr noundef %11) #40
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi ptr [ %8, %6 ], [ %12, %9 ]
  %15 = tail call ptr @car(ptr noundef %0) #40
  %16 = tail call ptr @cons(ptr noundef %15, ptr noundef %14) #40
  %17 = tail call ptr @closure(ptr noundef %1, ptr noundef %16) #40
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_progn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %5 = tail call ptr @cdr(ptr noundef %4) #40
  %6 = tail call ptr @cdr(ptr noundef %5) #40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %18, %2
  %9 = phi ptr [ %20, %18 ], [ %6, %2 ]
  %10 = phi ptr [ %9, %18 ], [ %5, %2 ]
  %11 = tail call ptr @car(ptr noundef %10) #40
  %12 = tail call ptr @leval(ptr noundef %11, ptr noundef %3) #40
  %13 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = sext i16 %14 to i32
  switch i32 %15, label %16 [
    i32 0, label %22
    i32 1, label %18
  ]

16:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %17 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %8, !llvm.loop !99

22:                                               ; preds = %18, %16, %8, %2
  %23 = phi ptr [ %5, %2 ], [ %.lcssa, %16 ], [ %9, %18 ], [ %9, %8 ]
  %24 = tail call ptr @car(ptr noundef %23) #40
  store ptr %24, ptr %0, align 8, !tbaa !7
  %25 = load ptr, ptr @sym_t, align 8, !tbaa !7
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_or(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %5 = tail call ptr @cdr(ptr noundef %4) #40
  %6 = tail call ptr @cdr(ptr noundef %5) #40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %21, %2
  %9 = phi ptr [ %23, %21 ], [ %6, %2 ]
  %10 = phi ptr [ %9, %21 ], [ %5, %2 ]
  %11 = tail call ptr @car(ptr noundef %10) #40
  %12 = tail call ptr @leval(ptr noundef %11, ptr noundef %3) #40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  %.lcssa = phi ptr [ %12, %8 ]
  store ptr %.lcssa, ptr %0, align 8, !tbaa !7
  br label %29

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !16
  %18 = sext i16 %17 to i32
  switch i32 %18, label %19 [
    i32 0, label %25
    i32 1, label %21
  ]

19:                                               ; preds = %15
  %.lcssa3 = phi ptr [ %9, %15 ]
  %20 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa3) #46
  br label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %8, !llvm.loop !100

25:                                               ; preds = %21, %19, %15, %2
  %26 = phi ptr [ %5, %2 ], [ %.lcssa3, %19 ], [ %9, %21 ], [ %9, %15 ]
  %27 = tail call ptr @car(ptr noundef %26) #40
  store ptr %27, ptr %0, align 8, !tbaa !7
  %28 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %29

29:                                               ; preds = %25, %14
  %30 = phi ptr [ null, %14 ], [ %28, %25 ]
  ret ptr %30
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_and(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %5 = tail call ptr @cdr(ptr noundef %4) #40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load ptr, ptr @sym_t, align 8, !tbaa !7
  store ptr %8, ptr %0, align 8, !tbaa !7
  br label %57

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !16
  %12 = sext i16 %11 to i32
  switch i32 %12, label %41 [
    i32 0, label %44
    i32 1, label %13
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %37, %13
  %18 = phi ptr [ %39, %37 ], [ %15, %13 ]
  %19 = phi ptr [ %18, %37 ], [ %5, %13 ]
  %20 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !16
  %22 = sext i16 %21 to i32
  switch i32 %22, label %26 [
    i32 0, label %28
    i32 1, label %23
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  br label %28

26:                                               ; preds = %17
  %27 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %19) #46
  br label %28

28:                                               ; preds = %26, %23, %17
  %29 = phi ptr [ null, %26 ], [ %25, %23 ], [ null, %17 ]
  %30 = tail call ptr @leval(ptr noundef %29, ptr noundef %3) #40
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %57

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !16
  %36 = sext i16 %35 to i32
  switch i32 %36, label %41 [
    i32 0, label %44
    i32 1, label %37
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 2, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %17, !llvm.loop !101

41:                                               ; preds = %33, %9
  %42 = phi ptr [ %5, %9 ], [ %18, %33 ]
  %43 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %42) #46
  br label %44

44:                                               ; preds = %41, %37, %33, %13, %9
  %45 = phi ptr [ %5, %13 ], [ %5, %9 ], [ %42, %41 ], [ %18, %37 ], [ %18, %33 ]
  %46 = getelementptr inbounds %struct.obj, ptr %45, i64 0, i32 1
  %47 = load i16, ptr %46, align 2, !tbaa !16
  %48 = sext i16 %47 to i32
  switch i32 %48, label %52 [
    i32 0, label %54
    i32 1, label %49
  ]

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.obj, ptr %45, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  br label %54

52:                                               ; preds = %44
  %53 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %45) #46
  br label %54

54:                                               ; preds = %52, %49, %44
  %55 = phi ptr [ null, %52 ], [ %51, %49 ], [ null, %44 ]
  store ptr %55, ptr %0, align 8, !tbaa !7
  %56 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %57

57:                                               ; preds = %54, %32, %7
  %58 = phi ptr [ null, %7 ], [ null, %32 ], [ %56, %54 ]
  ret ptr %58
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_catch_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %21, %2
  %5 = phi ptr [ %23, %21 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = sext i16 %7 to i32
  switch i32 %8, label %12 [
    i32 0, label %14
    i32 1, label %9
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %14

12:                                               ; preds = %4
  %13 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %5) #46
  br label %14

14:                                               ; preds = %12, %9, %4
  %15 = phi ptr [ null, %12 ], [ %11, %9 ], [ null, %4 ]
  %16 = tail call ptr @leval(ptr noundef %15, ptr noundef %1) #40
  %17 = load i16, ptr %6, align 2, !tbaa !16
  %18 = sext i16 %17 to i32
  switch i32 %18, label %19 [
    i32 0, label %25
    i32 1, label %21
  ]

19:                                               ; preds = %14
  %.lcssa1 = phi ptr [ %16, %14 ]
  %.lcssa = phi ptr [ %5, %14 ]
  %20 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %4, !llvm.loop !102

25:                                               ; preds = %21, %19, %14, %2
  %26 = phi ptr [ null, %2 ], [ %.lcssa1, %19 ], [ %16, %21 ], [ %16, %14 ]
  %27 = load ptr, ptr @catch_framep, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.catch_frame, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !103
  store ptr %29, ptr @catch_framep, align 8, !tbaa !7
  ret ptr %26
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_catch(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.catch_frame, align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #42
  %4 = call ptr @car(ptr noundef %0) #40
  %5 = call ptr @leval(ptr noundef %4, ptr noundef %1) #40
  store ptr %5, ptr %3, align 8, !tbaa !19
  %6 = load ptr, ptr @catch_framep, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.catch_frame, ptr %3, i64 0, i32 3
  store ptr %6, ptr %7, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.catch_frame, ptr %3, i64 0, i32 2
  %9 = call i32 @_setjmp(ptr noundef nonnull %8) #43
  store ptr %3, ptr @catch_framep, align 8, !tbaa !7
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load ptr, ptr %7, align 8, !tbaa !103
  store ptr %12, ptr @catch_framep, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.catch_frame, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  br label %18

15:                                               ; preds = %2
  %16 = call ptr @cdr(ptr noundef %0) #40
  %17 = call ptr @leval_catch_1(ptr noundef %16, ptr noundef %1) #40
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi ptr [ %14, %11 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #42
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lthrow(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @catch_framep, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @sym_catchall, align 8
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi ptr [ %3, %5 ], [ %18, %16 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, %0
  %11 = icmp eq ptr %9, %6
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %.lcssa = phi ptr [ %8, %7 ]
  %14 = getelementptr inbounds %struct.catch_frame, ptr %.lcssa, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.catch_frame, ptr %.lcssa, i64 0, i32 2
  tail call void @longjmp(ptr noundef nonnull %15, i32 noundef 2) #41
  unreachable

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.catch_frame, ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !llvm.loop !104

20:                                               ; preds = %16, %2
  %21 = tail call ptr @err(ptr noundef nonnull @.str.94, ptr noundef %0) #40
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_let(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = tail call ptr @cdr(ptr noundef %3) #40
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  %6 = tail call ptr @cdr(ptr noundef %4) #40
  %7 = tail call ptr @car(ptr noundef %6) #40
  %8 = tail call ptr @leval_args(ptr noundef %7, ptr noundef %5) #40
  %9 = tail call ptr @car(ptr noundef %4) #40
  %10 = tail call ptr @extend_env(ptr noundef %8, ptr noundef %9, ptr noundef %5) #40
  store ptr %10, ptr %1, align 8, !tbaa !7
  %11 = tail call ptr @cdr(ptr noundef %4) #40
  %12 = tail call ptr @cdr(ptr noundef %11) #40
  %13 = tail call ptr @car(ptr noundef %12) #40
  store ptr %13, ptr %0, align 8, !tbaa !7
  %14 = load ptr, ptr @sym_t, align 8, !tbaa !7
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @letstar_macro(ptr noundef returned %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #40
  %3 = tail call ptr @car(ptr noundef %2) #40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = sext i16 %7 to i32
  switch i32 %8, label %9 [
    i32 0, label %44
    i32 1, label %11
  ]

9:                                                ; preds = %5
  %10 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %3) #46
  br label %44

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = tail call ptr @cons(ptr noundef %17, ptr noundef null) #40
  %19 = tail call ptr @gen_intern(ptr noundef nonnull @.str.59, i64 noundef 0) #40
  %20 = load i16, ptr %6, align 2, !tbaa !16
  %21 = sext i16 %20 to i32
  switch i32 %21, label %24 [
    i32 0, label %26
    i32 1, label %22
  ]

22:                                               ; preds = %15
  %23 = load ptr, ptr %12, align 8, !tbaa !11
  br label %26

24:                                               ; preds = %15
  %25 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %3) #46
  br label %26

26:                                               ; preds = %24, %22, %15
  %27 = phi ptr [ null, %24 ], [ %23, %22 ], [ null, %15 ]
  %28 = tail call ptr @cdr(ptr noundef %0) #40
  %29 = tail call ptr @cdr(ptr noundef %28) #40
  %30 = tail call ptr @cons(ptr noundef %27, ptr noundef %29) #40
  %31 = tail call ptr @cons(ptr noundef %19, ptr noundef %30) #40
  %32 = tail call ptr @cons(ptr noundef %31, ptr noundef null) #40
  %33 = tail call ptr @cons(ptr noundef %18, ptr noundef %32) #40
  %34 = icmp eq ptr %0, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !16
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %26
  %40 = tail call ptr @err(ptr noundef nonnull @.str.30, ptr noundef %0) #40
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  store ptr %33, ptr %42, align 8, !tbaa !11
  %43 = tail call ptr @gen_intern(ptr noundef nonnull @.str.57, i64 noundef 0) #40
  br label %47

44:                                               ; preds = %11, %9, %5, %1
  %45 = tail call ptr @gen_intern(ptr noundef nonnull @.str.57, i64 noundef 0) #40
  %46 = icmp eq ptr %0, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44, %41
  %48 = phi ptr [ %43, %41 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %50 = load i16, ptr %49, align 2, !tbaa !16
  %51 = icmp eq i16 %50, 1
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %44
  %53 = phi ptr [ %48, %47 ], [ %45, %44 ]
  %54 = tail call ptr @err(ptr noundef nonnull @.str.29, ptr noundef %0) #40
  br label %55

55:                                               ; preds = %52, %47
  %56 = phi ptr [ %48, %47 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !11
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cadr(ptr noundef %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #40
  %3 = tail call ptr @car(ptr noundef %2) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cddr(ptr noundef %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #40
  %3 = tail call ptr @cdr(ptr noundef %2) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @letrec_macro(ptr noundef returned %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #40
  %3 = tail call ptr @cdr(ptr noundef %2) #40
  %4 = tail call ptr @cdr(ptr noundef %0) #40
  %5 = tail call ptr @car(ptr noundef %4) #40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %26, %1
  %8 = phi ptr [ %28, %26 ], [ %5, %1 ]
  %9 = phi ptr [ %20, %26 ], [ %3, %1 ]
  %10 = phi ptr [ %14, %26 ], [ null, %1 ]
  %11 = tail call ptr @car(ptr noundef nonnull %8) #40
  %12 = tail call ptr @car(ptr noundef %11) #40
  %13 = tail call ptr @cons(ptr noundef %12, ptr noundef null) #40
  %14 = tail call ptr @cons(ptr noundef %13, ptr noundef %10) #40
  %15 = tail call ptr @gen_intern(ptr noundef nonnull @.str.95, i64 noundef 0) #40
  %16 = tail call ptr @car(ptr noundef nonnull %8) #40
  %17 = tail call ptr @car(ptr noundef %16) #40
  %18 = tail call ptr @cadar(ptr noundef nonnull %8) #38
  %19 = tail call ptr (i64, ...) @listn(i64 noundef 3, ptr noundef %15, ptr noundef %17, ptr noundef %18) #38
  %20 = tail call ptr @cons(ptr noundef %19, ptr noundef %9) #40
  %21 = getelementptr inbounds %struct.obj, ptr %8, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = sext i16 %22 to i32
  switch i32 %23, label %24 [
    i32 0, label %30
    i32 1, label %26
  ]

24:                                               ; preds = %7
  %.lcssa2 = phi ptr [ %8, %7 ]
  %.lcssa1 = phi ptr [ %14, %7 ]
  %.lcssa = phi ptr [ %20, %7 ]
  %25 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa2) #46
  br label %30

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct.obj, ptr %8, i64 0, i32 2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !105

30:                                               ; preds = %26, %24, %7, %1
  %31 = phi ptr [ null, %1 ], [ %.lcssa1, %24 ], [ %14, %26 ], [ %14, %7 ]
  %32 = phi ptr [ %3, %1 ], [ %.lcssa, %24 ], [ %20, %26 ], [ %20, %7 ]
  %33 = tail call ptr @cons(ptr noundef %31, ptr noundef %32) #40
  %34 = icmp eq ptr %0, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !16
  %38 = icmp eq i16 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35, %30
  %40 = tail call ptr @err(ptr noundef nonnull @.str.30, ptr noundef %0) #40
  br label %41

41:                                               ; preds = %39, %35
  %42 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  store ptr %33, ptr %42, align 8, !tbaa !11
  %43 = tail call ptr @gen_intern(ptr noundef nonnull @.str.57, i64 noundef 0) #40
  %44 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %45 = load i16, ptr %44, align 2, !tbaa !16
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = tail call ptr @err(ptr noundef nonnull @.str.29, ptr noundef nonnull %0) #40
  br label %49

49:                                               ; preds = %47, %41
  %50 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  store ptr %43, ptr %50, align 8, !tbaa !11
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @caar(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #40
  %3 = tail call ptr @car(ptr noundef %2) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @reverse(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %21, %1
  %4 = phi ptr [ %23, %21 ], [ %0, %1 ]
  %5 = phi ptr [ %16, %21 ], [ null, %1 ]
  %6 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = sext i16 %7 to i32
  switch i32 %8, label %12 [
    i32 0, label %14
    i32 1, label %9
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %14

12:                                               ; preds = %3
  %13 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %4) #46
  br label %14

14:                                               ; preds = %12, %9, %3
  %15 = phi ptr [ null, %12 ], [ %11, %9 ], [ null, %3 ]
  %16 = tail call ptr @cons(ptr noundef %15, ptr noundef %5) #40
  %17 = load i16, ptr %6, align 2, !tbaa !16
  %18 = sext i16 %17 to i32
  switch i32 %18, label %19 [
    i32 0, label %25
    i32 1, label %21
  ]

19:                                               ; preds = %14
  %.lcssa1 = phi ptr [ %16, %14 ]
  %.lcssa = phi ptr [ %4, %14 ]
  %20 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %25

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %3, !llvm.loop !106

25:                                               ; preds = %21, %19, %14, %1
  %26 = phi ptr [ null, %1 ], [ %.lcssa1, %19 ], [ %16, %21 ], [ %16, %14 ]
  ret ptr %26
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @let_macro(ptr noundef returned %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #40
  %3 = tail call ptr @car(ptr noundef %2) #40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %38, %1
  %6 = phi ptr [ %40, %38 ], [ %3, %1 ]
  %7 = phi ptr [ %33, %38 ], [ null, %1 ]
  %8 = phi ptr [ %32, %38 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !16
  %11 = sext i16 %10 to i32
  switch i32 %11, label %12 [
    i32 0, label %24
    i32 1, label %14
  ]

12:                                               ; preds = %5
  %13 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %6) #46
  br label %24

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !16
  %21 = icmp eq i16 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call ptr @cons(ptr noundef nonnull %16, ptr noundef %8) #40
  br label %30

24:                                               ; preds = %18, %14, %12, %5
  %25 = phi ptr [ %16, %18 ], [ null, %14 ], [ null, %12 ], [ null, %5 ]
  %26 = tail call ptr @car(ptr noundef %25) #40
  %27 = tail call ptr @cons(ptr noundef %26, ptr noundef %8) #40
  %28 = tail call ptr @cdr(ptr noundef %25) #40
  %29 = tail call ptr @car(ptr noundef %28) #40
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi ptr [ %29, %24 ], [ null, %22 ]
  %32 = phi ptr [ %27, %24 ], [ %23, %22 ]
  %33 = tail call ptr @cons(ptr noundef %31, ptr noundef %7) #40
  %34 = load i16, ptr %9, align 2, !tbaa !16
  %35 = sext i16 %34 to i32
  switch i32 %35, label %36 [
    i32 0, label %42
    i32 1, label %38
  ]

36:                                               ; preds = %30
  %.lcssa2 = phi ptr [ %32, %30 ]
  %.lcssa1 = phi ptr [ %33, %30 ]
  %.lcssa = phi ptr [ %6, %30 ]
  %37 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %42

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %5, !llvm.loop !107

42:                                               ; preds = %38, %36, %30, %1
  %43 = phi ptr [ null, %1 ], [ %.lcssa2, %36 ], [ %32, %38 ], [ %32, %30 ]
  %44 = phi ptr [ null, %1 ], [ %.lcssa1, %36 ], [ %33, %38 ], [ %33, %30 ]
  %45 = tail call ptr @cdr(ptr noundef %0) #40
  %46 = tail call ptr @cdr(ptr noundef %45) #40
  %47 = tail call ptr @cdr(ptr noundef %46) #40
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = tail call ptr @car(ptr noundef %46) #40
  br label %54

51:                                               ; preds = %42
  %52 = load ptr, ptr @sym_progn, align 8, !tbaa !7
  %53 = tail call ptr @cons(ptr noundef %52, ptr noundef %46) #40
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi ptr [ %50, %49 ], [ %53, %51 ]
  %56 = tail call ptr @reverse(ptr noundef %43) #40
  %57 = tail call ptr @reverse(ptr noundef %44) #40
  %58 = tail call ptr @cons(ptr noundef %55, ptr noundef null) #40
  %59 = tail call ptr @cons(ptr noundef %57, ptr noundef %58) #40
  %60 = tail call ptr @cons(ptr noundef %56, ptr noundef %59) #40
  %61 = icmp eq ptr %0, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %64 = load i16, ptr %63, align 2, !tbaa !16
  %65 = icmp eq i16 %64, 1
  br i1 %65, label %68, label %66

66:                                               ; preds = %62, %54
  %67 = tail call ptr @err(ptr noundef nonnull @.str.30, ptr noundef %0) #40
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  store ptr %60, ptr %69, align 8, !tbaa !11
  %70 = tail call ptr @gen_intern(ptr noundef nonnull @.str.96, i64 noundef 0) #40
  %71 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %72 = load i16, ptr %71, align 2, !tbaa !16
  %73 = icmp eq i16 %72, 1
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = tail call ptr @err(ptr noundef nonnull @.str.29, ptr noundef nonnull %0) #40
  br label %76

76:                                               ; preds = %74, %68
  %77 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  store ptr %70, ptr %77, align 8, !tbaa !11
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_quote(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @car(ptr noundef %0) #40
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal ptr @leval_tenv(ptr nocapture readnone %0, ptr noundef readnone returned %1) #17 {
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @leval_while(ptr noundef %0, ptr noundef %1) #0 {
  br label %4

3:                                                ; preds = %28, %26, %21, %8
  br label %4, !llvm.loop !108

4:                                                ; preds = %3, %2
  %5 = tail call ptr @car(ptr noundef %0) #40
  %6 = tail call ptr @leval(ptr noundef %5, ptr noundef %1) #40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @cdr(ptr noundef %0) #40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %3, label %11

11:                                               ; preds = %28, %8
  %12 = phi ptr [ %30, %28 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = sext i16 %14 to i32
  switch i32 %15, label %19 [
    i32 0, label %21
    i32 1, label %16
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  br label %21

19:                                               ; preds = %11
  %20 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %12) #46
  br label %21

21:                                               ; preds = %19, %16, %11
  %22 = phi ptr [ null, %19 ], [ %18, %16 ], [ null, %11 ]
  %23 = tail call ptr @leval(ptr noundef %22, ptr noundef %1) #40
  %24 = load i16, ptr %13, align 2, !tbaa !16
  %25 = sext i16 %24 to i32
  switch i32 %25, label %26 [
    i32 0, label %3
    i32 1, label %28
  ]

26:                                               ; preds = %21
  %.lcssa = phi ptr [ %12, %21 ]
  %27 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %3

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %3, label %11, !llvm.loop !109

32:                                               ; preds = %4
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @symbolconc(ptr noundef %0) #0 {
  %2 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  store i8 0, ptr %2, align 1, !tbaa !11
  %3 = icmp eq ptr %0, null
  br i1 %3, label %45, label %4

4:                                                ; preds = %41, %1
  %5 = phi i64 [ %28, %41 ], [ 0, %1 ]
  %6 = phi ptr [ %43, %41 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = sext i16 %8 to i32
  switch i32 %9, label %10 [
    i32 0, label %20
    i32 1, label %12
  ]

10:                                               ; preds = %4
  %11 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %6) #46
  br label %20

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.obj, ptr %14, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !16
  %19 = icmp eq i16 %18, 3
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %12, %10, %4
  %21 = phi ptr [ %14, %16 ], [ null, %12 ], [ null, %10 ], [ null, %4 ]
  %22 = tail call ptr @err(ptr noundef nonnull @.str.97, ptr noundef %21) #40
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %21, %20 ], [ %14, %16 ]
  %25 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #39
  %28 = add i64 %27, %5
  %29 = icmp sgt i64 %28, 5120
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = tail call ptr @err(ptr noundef nonnull @.str.98, ptr noundef null) #40
  %32 = load ptr, ptr %25, align 8, !tbaa !11
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi ptr [ %26, %23 ], [ %32, %30 ]
  %35 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %36 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %34) #38
  %37 = load i16, ptr %7, align 2, !tbaa !16
  %38 = sext i16 %37 to i32
  switch i32 %38, label %39 [
    i32 0, label %45
    i32 1, label %41
  ]

39:                                               ; preds = %33
  %.lcssa = phi ptr [ %6, %33 ]
  %40 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %45

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %4, !llvm.loop !110

45:                                               ; preds = %41, %39, %33, %1
  %46 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %47 = tail call ptr @gen_intern(ptr noundef %46, i64 noundef 1) #40
  ret ptr %47
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lprin1f(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gen_readio, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #42
  store ptr null, ptr %3, align 8, !tbaa !60
  %4 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 1
  store ptr @fputs_fcn, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !63
  %6 = call ptr @lprin1g(ptr noundef %0, ptr noundef nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #42
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lprin1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gen_readio, align 8
  %4 = load ptr, ptr @stdout, align 8, !tbaa !7
  %5 = tail call ptr @get_c_file(ptr noundef %1, ptr noundef %4) #40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #42
  store ptr null, ptr %3, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 1
  store ptr @fputs_fcn, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !63
  %8 = call ptr @lprin1g(ptr noundef %0, ptr noundef nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #42
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @copy_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %6 = icmp ult ptr %2, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = call ptr @err(ptr noundef nonnull @.str.23, ptr noundef null) #40
  %9 = load ptr, ptr %2, align 8, !tbaa !7
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ %0, %4 ]
  %12 = call ptr @car(ptr noundef %11) #40
  %13 = load ptr, ptr %2, align 8, !tbaa !7
  %14 = call ptr @cdr(ptr noundef %13) #40
  %15 = call ptr @copy_list(ptr noundef %14) #40
  %16 = call ptr @cons(ptr noundef %12, ptr noundef %15) #40
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi ptr [ %16, %10 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @apropos(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr @oblistvar, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br label %6

6:                                                ; preds = %34, %4
  %7 = phi ptr [ %2, %4 ], [ %37, %34 ]
  %8 = phi ptr [ null, %4 ], [ %35, %34 ]
  %9 = getelementptr inbounds %struct.obj, ptr %7, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !16
  %11 = icmp eq i16 %10, 1
  br i1 %11, label %12, label %39

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.obj, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = tail call ptr @get_c_string(ptr noundef %14) #40
  br i1 %5, label %31, label %16

16:                                               ; preds = %27, %12
  %17 = phi ptr [ %29, %27 ], [ %0, %12 ]
  %18 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !16
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = tail call ptr @get_c_string(ptr noundef %23) #40
  %25 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %24) #39
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %16, !llvm.loop !111

31:                                               ; preds = %27, %12
  %32 = load ptr, ptr %13, align 8, !tbaa !11
  %33 = tail call ptr @cons(ptr noundef %32, ptr noundef %8) #40
  br label %34

34:                                               ; preds = %31, %21, %16
  %35 = phi ptr [ %33, %31 ], [ %8, %16 ], [ %8, %21 ]
  %36 = getelementptr inbounds %struct.obj, ptr %7, i64 0, i32 2, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %6, !llvm.loop !112

39:                                               ; preds = %34, %6, %1
  %40 = phi ptr [ null, %1 ], [ %35, %34 ], [ %8, %6 ]
  ret ptr %40
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @fopen_c(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @fopen_cg(ptr noundef nonnull @fopen, ptr noundef %0, ptr noundef %1) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @fopen_l(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #40
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  switch i16 %7, label %14 [
    i16 3, label %8
    i16 13, label %11
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  br label %16

14:                                               ; preds = %5
  %15 = tail call ptr @err(ptr noundef nonnull @.str.25, ptr noundef nonnull %1) #40
  br label %16

16:                                               ; preds = %14, %11, %8, %2
  %17 = phi ptr [ @.str.133, %2 ], [ %10, %8 ], [ %13, %11 ], [ null, %14 ]
  %18 = tail call ptr @fopen_cg(ptr noundef nonnull @fopen, ptr noundef %3, ptr noundef %17) #40
  ret ptr %18
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @delq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = icmp eq ptr %1, null
  br i1 %4, label %51, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %7 = icmp ult ptr %3, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = call ptr @err(ptr noundef nonnull @.str.23, ptr noundef null) #40
  %10 = load ptr, ptr %3, align 8, !tbaa !7
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi ptr [ %0, %5 ], [ %10, %8 ]
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = sext i16 %14 to i32
  switch i32 %15, label %19 [
    i32 0, label %21
    i32 1, label %16
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  br label %21

19:                                               ; preds = %11
  %20 = call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %1) #46
  br label %21

21:                                               ; preds = %19, %16, %11
  %22 = phi ptr [ null, %19 ], [ %18, %16 ], [ null, %11 ]
  %23 = icmp eq ptr %12, %22
  %24 = load ptr, ptr %3, align 8, !tbaa !7
  %25 = load i16, ptr %13, align 2, !tbaa !16
  %26 = sext i16 %25 to i32
  br i1 %23, label %27, label %36

27:                                               ; preds = %21
  switch i32 %26, label %31 [
    i32 0, label %33
    i32 1, label %28
  ]

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  br label %33

31:                                               ; preds = %27
  %32 = call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %1) #46
  br label %33

33:                                               ; preds = %31, %28, %27
  %34 = phi ptr [ null, %31 ], [ %30, %28 ], [ null, %27 ]
  %35 = call ptr @delq(ptr noundef %24, ptr noundef %34) #40
  br label %51

36:                                               ; preds = %21
  switch i32 %26, label %40 [
    i32 0, label %42
    i32 1, label %37
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  br label %42

40:                                               ; preds = %36
  %41 = call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %1) #46
  br label %42

42:                                               ; preds = %40, %37, %36
  %43 = phi ptr [ null, %40 ], [ %39, %37 ], [ null, %36 ]
  %44 = call ptr @delq(ptr noundef %24, ptr noundef %43) #40
  %45 = load i16, ptr %13, align 2, !tbaa !16
  %46 = icmp eq i16 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call ptr @err(ptr noundef nonnull @.str.30, ptr noundef nonnull %1) #40
  br label %49

49:                                               ; preds = %47, %42
  %50 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  store ptr %44, ptr %50, align 8, !tbaa !11
  br label %51

51:                                               ; preds = %49, %33, %2
  %52 = phi ptr [ %35, %33 ], [ %1, %49 ], [ null, %2 ]
  ret ptr %52
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @load(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) #0 {
  %4 = tail call ptr @get_c_string(ptr noundef %0) #40
  %5 = icmp ne ptr %1, null
  %6 = zext i1 %5 to i64
  %7 = icmp ne ptr %2, null
  %8 = zext i1 %7 to i64
  %9 = tail call ptr @vload(ptr noundef %4, i64 noundef %6, i64 noundef %8) #40
  ret ptr %9
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @save_forms(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.gen_readio, align 8
  %5 = tail call ptr @get_c_string(ptr noundef %0) #40
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @gen_intern(ptr noundef nonnull @.str.144, i64 noundef 0) #40
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @err(ptr noundef nonnull @.str.145, ptr noundef nonnull %2) #40
  br label %12

12:                                               ; preds = %10, %7, %3
  %13 = phi ptr [ null, %10 ], [ @.str.143, %3 ], [ @.str.144, %7 ]
  %14 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %15 = icmp sgt i64 %14, 2
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i8, ptr %13, align 1, !tbaa !11
  %18 = icmp eq i8 %17, 97
  %19 = select i1 %18, ptr @.str.146, ptr @.str.147
  %20 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %20, ptr noundef nonnull %19) #40
  %21 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %21, ptr noundef nonnull @.str.148) #40
  %22 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %22, ptr noundef %5) #40
  %23 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %23, ptr noundef nonnull @.str.121) #40
  br label %24

24:                                               ; preds = %16, %12
  %25 = tail call ptr @fopen_cg(ptr noundef nonnull @fopen, ptr noundef %5, ptr noundef %13) #40
  %26 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = icmp eq ptr %1, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gen_readio, ptr %4, i64 0, i32 1
  %31 = getelementptr inbounds %struct.gen_readio, ptr %4, i64 0, i32 2
  br label %32

32:                                               ; preds = %50, %29
  %33 = phi ptr [ %1, %29 ], [ %52, %50 ]
  %34 = getelementptr inbounds %struct.obj, ptr %33, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !16
  %36 = sext i16 %35 to i32
  switch i32 %36, label %40 [
    i32 0, label %42
    i32 1, label %37
  ]

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.obj, ptr %33, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  br label %42

40:                                               ; preds = %32
  %41 = call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %33) #46
  br label %42

42:                                               ; preds = %40, %37, %32
  %43 = phi ptr [ null, %40 ], [ %39, %37 ], [ null, %32 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #42
  store ptr null, ptr %4, align 8, !tbaa !60
  store ptr @fputs_fcn, ptr %30, align 8, !tbaa !62
  store ptr %27, ptr %31, align 8, !tbaa !63
  %44 = call ptr @lprin1g(ptr noundef %43, ptr noundef nonnull %4) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #42
  %45 = call i32 @putc(i32 noundef 10, ptr noundef %27) #40
  %46 = load i16, ptr %34, align 2, !tbaa !16
  %47 = sext i16 %46 to i32
  switch i32 %47, label %48 [
    i32 0, label %54
    i32 1, label %50
  ]

48:                                               ; preds = %42
  %.lcssa = phi ptr [ %33, %42 ]
  %49 = call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %54

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.obj, ptr %33, i64 0, i32 2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %32, !llvm.loop !113

54:                                               ; preds = %50, %48, %42, %24
  %55 = call ptr @fclose_l(ptr noundef %25) #40
  %56 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %57 = icmp sgt i64 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @fput_st(ptr noundef %59, ptr noundef nonnull @.str.140) #40
  br label %60

60:                                               ; preds = %58, %54
  %61 = load ptr, ptr @sym_t, align 8, !tbaa !7
  ret ptr %61
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @quit() #0 {
  %1 = tail call ptr @err(ptr noundef null, ptr noundef null) #40
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @nullp(ptr noundef readnone %0) #15 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @sym_t, align 8
  %4 = select i1 %2, ptr %3, ptr null
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetc(ptr noundef %0) #0 {
  %2 = load ptr, ptr @stdin, align 8, !tbaa !7
  %3 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef %2) #40
  %4 = tail call i32 @f_getc(ptr noundef %3) #40
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = sitofp i32 %4 to double
  %8 = tail call ptr @flocons(double noundef %7) #40
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lungetc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  %6 = trunc i64 %5 to i32
  %7 = load ptr, ptr @stdin, align 8, !tbaa !7
  %8 = tail call ptr @get_c_file(ptr noundef %1, ptr noundef %7) #40
  %9 = tail call i32 @ungetc(i32 noundef %6, ptr noundef %8) #40
  br label %10

10:                                               ; preds = %4, %2
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lputc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !7
  %4 = tail call ptr @get_c_file(ptr noundef %1, ptr noundef %3) #40
  %5 = icmp eq ptr %0, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = fptosi double %12 to i32
  br label %18

14:                                               ; preds = %6, %2
  %15 = tail call ptr @get_c_string(ptr noundef %0) #40
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = sext i8 %16 to i32
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  %20 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  store i64 1, ptr @nointerrupt, align 8, !tbaa !12
  %21 = tail call i32 @putc(i32 noundef %19, ptr noundef %4) #40
  store i64 %20, ptr @nointerrupt, align 8, !tbaa !12
  %22 = icmp eq i64 %20, 0
  %23 = load i64, ptr @interrupt_differed, align 8
  %24 = icmp eq i64 %23, 1
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  store i64 0, ptr @interrupt_differed, align 8, !tbaa !12
  %27 = tail call ptr @err(ptr noundef nonnull @.str.13, ptr noundef null) #40
  br label %28

28:                                               ; preds = %26, %18
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lputs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !7
  %4 = tail call ptr @get_c_file(ptr noundef %1, ptr noundef %3) #40
  %5 = tail call ptr @get_c_string(ptr noundef %0) #40
  tail call void @fput_st(ptr noundef %4, ptr noundef %5) #40
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lftell(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef null) #40
  %3 = tail call i64 @ftell(ptr noundef %2) #40
  %4 = sitofp i64 %3 to double
  %5 = tail call ptr @flocons(double noundef %4) #40
  ret ptr %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lfseek(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef null) #40
  %5 = tail call i64 @get_c_long(ptr noundef %1) #38
  %6 = tail call i64 @get_c_long(ptr noundef %2) #38
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @fseek(ptr noundef %4, i64 noundef %5, i32 noundef %7) #40
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr @sym_t, align 8
  %11 = select i1 %9, ptr %10, ptr null
  ret ptr %11
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @parse_number(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #40
  %3 = tail call double @atof(ptr noundef %2) #39
  %4 = tail call ptr @flocons(double noundef %3) #40
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subrs() #0 {
  tail call void @init_subrs_1() #40
  tail call void @init_subrs_a() #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subrs_1() #0 {
  tail call void @init_subr(ptr noundef nonnull @.str.153, i64 noundef 6, ptr noundef nonnull @cons) #40
  tail call void @init_subr(ptr noundef nonnull @.str.154, i64 noundef 5, ptr noundef nonnull @car) #40
  tail call void @init_subr(ptr noundef nonnull @.str.155, i64 noundef 5, ptr noundef nonnull @cdr) #40
  tail call void @init_subr(ptr noundef nonnull @.str.156, i64 noundef 6, ptr noundef nonnull @setcar) #40
  tail call void @init_subr(ptr noundef nonnull @.str.157, i64 noundef 6, ptr noundef nonnull @setcdr) #40
  tail call void @init_subr(ptr noundef nonnull @.str.158, i64 noundef 21, ptr noundef nonnull @plus) #40
  tail call void @init_subr(ptr noundef nonnull @.str.159, i64 noundef 21, ptr noundef nonnull @difference) #40
  tail call void @init_subr(ptr noundef nonnull @.str.141, i64 noundef 21, ptr noundef nonnull @ltimes) #40
  tail call void @init_subr(ptr noundef nonnull @.str.137, i64 noundef 21, ptr noundef nonnull @Quotient) #40
  tail call void @init_subr(ptr noundef nonnull @.str.160, i64 noundef 21, ptr noundef nonnull @lmin) #40
  tail call void @init_subr(ptr noundef nonnull @.str.161, i64 noundef 21, ptr noundef nonnull @lmax) #40
  tail call void @init_subr(ptr noundef nonnull @.str.162, i64 noundef 5, ptr noundef nonnull @lllabs) #40
  tail call void @init_subr(ptr noundef nonnull @.str.163, i64 noundef 5, ptr noundef nonnull @lsqrt) #40
  tail call void @init_subr(ptr noundef nonnull @.str.118, i64 noundef 6, ptr noundef nonnull @greaterp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.164, i64 noundef 6, ptr noundef nonnull @lessp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.165, i64 noundef 6, ptr noundef nonnull @greaterEp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.166, i64 noundef 6, ptr noundef nonnull @lessEp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.167, i64 noundef 6, ptr noundef nonnull @eq) #40
  tail call void @init_subr(ptr noundef nonnull @.str.168, i64 noundef 6, ptr noundef nonnull @eql) #40
  tail call void @init_subr(ptr noundef nonnull @.str.169, i64 noundef 6, ptr noundef nonnull @eql) #40
  tail call void @init_subr(ptr noundef nonnull @.str.170, i64 noundef 6, ptr noundef nonnull @assq) #40
  tail call void @init_subr(ptr noundef nonnull @.str.171, i64 noundef 6, ptr noundef nonnull @delq) #40
  tail call void @init_subr(ptr noundef nonnull @.str.172, i64 noundef 5, ptr noundef nonnull @lread) #40
  tail call void @init_subr(ptr noundef nonnull @.str.173, i64 noundef 5, ptr noundef nonnull @parser_read) #40
  %1 = tail call ptr @gen_intern(ptr noundef nonnull @.str.174, i64 noundef 0) #40
  %2 = load ptr, ptr @sym_t, align 8, !tbaa !7
  %3 = tail call ptr @setvar(ptr noundef %1, ptr noundef %2, ptr noundef null) #40
  tail call void @init_subr(ptr noundef nonnull @.str.175, i64 noundef 4, ptr noundef nonnull @get_eof_val) #40
  tail call void @init_subr(ptr noundef nonnull @.str.176, i64 noundef 6, ptr noundef nonnull @lprint) #40
  tail call void @init_subr(ptr noundef nonnull @.str.177, i64 noundef 6, ptr noundef nonnull @lprin1) #40
  tail call void @init_subr(ptr noundef nonnull @.str.178, i64 noundef 6, ptr noundef nonnull @leval) #40
  tail call void @init_subr(ptr noundef nonnull @.str.179, i64 noundef 6, ptr noundef nonnull @lapply) #40
  tail call void @init_subr(ptr noundef nonnull @.str.180, i64 noundef 9, ptr noundef nonnull @leval_define) #40
  tail call void @init_subr(ptr noundef nonnull @.str.66, i64 noundef 9, ptr noundef nonnull @leval_lambda) #40
  tail call void @init_subr(ptr noundef nonnull @.str.181, i64 noundef 10, ptr noundef nonnull @leval_if) #40
  tail call void @init_subr(ptr noundef nonnull @.str.182, i64 noundef 9, ptr noundef nonnull @leval_while) #40
  tail call void @init_subr(ptr noundef nonnull @.str.65, i64 noundef 10, ptr noundef nonnull @leval_progn) #40
  tail call void @init_subr(ptr noundef nonnull @.str.95, i64 noundef 9, ptr noundef nonnull @leval_setq) #40
  tail call void @init_subr(ptr noundef nonnull @.str.183, i64 noundef 10, ptr noundef nonnull @leval_or) #40
  tail call void @init_subr(ptr noundef nonnull @.str.184, i64 noundef 10, ptr noundef nonnull @leval_and) #40
  tail call void @init_subr(ptr noundef nonnull @.str.185, i64 noundef 9, ptr noundef nonnull @leval_catch) #40
  tail call void @init_subr(ptr noundef nonnull @.str.186, i64 noundef 6, ptr noundef nonnull @lthrow) #40
  tail call void @init_subr(ptr noundef nonnull @.str.67, i64 noundef 9, ptr noundef nonnull @leval_quote) #40
  tail call void @init_subr(ptr noundef nonnull @.str.187, i64 noundef 8, ptr noundef nonnull @apropos) #40
  tail call void @init_subr(ptr noundef nonnull @.str.188, i64 noundef 8, ptr noundef nonnull @siod_verbose) #40
  tail call void @init_subr(ptr noundef nonnull @.str.189, i64 noundef 5, ptr noundef nonnull @copy_list) #40
  tail call void @init_subr(ptr noundef nonnull @.str.190, i64 noundef 8, ptr noundef nonnull @gc_status) #40
  tail call void @init_subr(ptr noundef nonnull @.str.191, i64 noundef 8, ptr noundef nonnull @user_gc) #40
  tail call void @init_subr(ptr noundef nonnull @.str.192, i64 noundef 7, ptr noundef nonnull @load) #40
  tail call void @init_subr(ptr noundef nonnull @.str.193, i64 noundef 5, ptr noundef nonnull @require) #40
  tail call void @init_subr(ptr noundef nonnull @.str.194, i64 noundef 5, ptr noundef nonnull @consp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.195, i64 noundef 5, ptr noundef nonnull @symbolp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.196, i64 noundef 5, ptr noundef nonnull @numberp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.96, i64 noundef 10, ptr noundef nonnull @leval_let) #40
  tail call void @init_subr(ptr noundef nonnull @.str.58, i64 noundef 5, ptr noundef nonnull @let_macro) #40
  tail call void @init_subr(ptr noundef nonnull @.str.60, i64 noundef 5, ptr noundef nonnull @letstar_macro) #40
  tail call void @init_subr(ptr noundef nonnull @.str.62, i64 noundef 5, ptr noundef nonnull @letrec_macro) #40
  tail call void @init_subr(ptr noundef nonnull @.str.197, i64 noundef 6, ptr noundef nonnull @symbol_boundp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.198, i64 noundef 6, ptr noundef nonnull @symbol_value) #40
  tail call void @init_subr(ptr noundef nonnull @.str.199, i64 noundef 7, ptr noundef nonnull @setvar) #40
  tail call void @init_subr(ptr noundef nonnull @.str.200, i64 noundef 9, ptr noundef nonnull @leval_tenv) #40
  tail call void @init_subr(ptr noundef nonnull @.str.201, i64 noundef 6, ptr noundef nonnull @lerr) #40
  tail call void @init_subr(ptr noundef nonnull @.str.20, i64 noundef 4, ptr noundef nonnull @quit) #40
  tail call void @init_subr(ptr noundef nonnull @.str.202, i64 noundef 5, ptr noundef nonnull @nullp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.203, i64 noundef 5, ptr noundef nonnull @nullp) #40
  tail call void @init_subr(ptr noundef nonnull @.str.204, i64 noundef 6, ptr noundef nonnull @envlookup) #40
  tail call void @init_subr(ptr noundef nonnull @.str.205, i64 noundef 5, ptr noundef nonnull @reverse) #40
  tail call void @init_subr(ptr noundef nonnull @.str.206, i64 noundef 8, ptr noundef nonnull @symbolconc) #40
  tail call void @init_subr(ptr noundef nonnull @.str.207, i64 noundef 7, ptr noundef nonnull @save_forms) #40
  tail call void @init_subr(ptr noundef nonnull @.str.208, i64 noundef 6, ptr noundef nonnull @fopen_l) #40
  tail call void @init_subr(ptr noundef nonnull @.str.209, i64 noundef 5, ptr noundef nonnull @fclose_l) #40
  tail call void @init_subr(ptr noundef nonnull @.str.210, i64 noundef 5, ptr noundef nonnull @lgetc) #40
  tail call void @init_subr(ptr noundef nonnull @.str.211, i64 noundef 6, ptr noundef nonnull @lungetc) #40
  tail call void @init_subr(ptr noundef nonnull @.str.212, i64 noundef 6, ptr noundef nonnull @lputc) #40
  tail call void @init_subr(ptr noundef nonnull @.str.213, i64 noundef 6, ptr noundef nonnull @lputs) #40
  tail call void @init_subr(ptr noundef nonnull @.str.214, i64 noundef 5, ptr noundef nonnull @lftell) #40
  tail call void @init_subr(ptr noundef nonnull @.str.215, i64 noundef 7, ptr noundef nonnull @lfseek) #40
  tail call void @init_subr(ptr noundef nonnull @.str.216, i64 noundef 5, ptr noundef nonnull @parse_number) #40
  tail call void @init_subr(ptr noundef nonnull @.str.217, i64 noundef 6, ptr noundef nonnull @stack_limit) #40
  tail call void @init_subr(ptr noundef nonnull @.str.218, i64 noundef 5, ptr noundef nonnull @intern) #40
  tail call void @init_subr(ptr noundef nonnull @.str.219, i64 noundef 6, ptr noundef nonnull @closure) #40
  tail call void @init_subr(ptr noundef nonnull @.str.220, i64 noundef 5, ptr noundef nonnull @closure_code) #40
  tail call void @init_subr(ptr noundef nonnull @.str.221, i64 noundef 5, ptr noundef nonnull @closure_env) #40
  tail call void @init_subr(ptr noundef nonnull @.str.182, i64 noundef 9, ptr noundef nonnull @lwhile) #40
  tail call void @init_subr(ptr noundef nonnull @.str.222, i64 noundef 5, ptr noundef nonnull @nreverse) #40
  tail call void @init_subr(ptr noundef nonnull @.str.223, i64 noundef 4, ptr noundef nonnull @allocate_aheap) #40
  tail call void @init_subr(ptr noundef nonnull @.str.224, i64 noundef 5, ptr noundef nonnull @gc_info) #40
  tail call void @init_subr(ptr noundef nonnull @.str.225, i64 noundef 4, ptr noundef nonnull @lruntime) #40
  tail call void @init_subr(ptr noundef nonnull @.str.226, i64 noundef 4, ptr noundef nonnull @lrealtime) #40
  tail call void @init_subr(ptr noundef nonnull @.str.227, i64 noundef 5, ptr noundef nonnull @caar) #40
  tail call void @init_subr(ptr noundef nonnull @.str.228, i64 noundef 5, ptr noundef nonnull @cadr) #40
  tail call void @init_subr(ptr noundef nonnull @.str.229, i64 noundef 5, ptr noundef nonnull @cdar) #40
  tail call void @init_subr(ptr noundef nonnull @.str.230, i64 noundef 5, ptr noundef nonnull @cddr) #40
  tail call void @init_subr(ptr noundef nonnull @.str.231, i64 noundef 5, ptr noundef nonnull @lrand) #40
  tail call void @init_subr(ptr noundef nonnull @.str.232, i64 noundef 5, ptr noundef nonnull @lsrand) #40
  tail call void @init_subr(ptr noundef nonnull @.str.233, i64 noundef 4, ptr noundef nonnull @lllast_c_errmsg) #40
  tail call void @init_subr(ptr noundef nonnull @.str.234, i64 noundef 4, ptr noundef nonnull @os_classification) #40
  %4 = tail call ptr @gen_intern(ptr noundef nonnull @.str.239, i64 noundef 0) #40
  %5 = tail call ptr @gen_intern(ptr noundef nonnull @.str.240, i64 noundef 0) #40
  %6 = tail call ptr @setvar(ptr noundef %4, ptr noundef %5, ptr noundef null) #40
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @parser_read(ptr nocapture readnone %0) #0 {
  %2 = tail call ptr @gen_intern(ptr noundef nonnull @.str.172, i64 noundef 0) #40
  %3 = tail call ptr @leval(ptr noundef %2, ptr noundef null) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @siod_verbose(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  br label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = sext i16 %7 to i32
  switch i32 %8, label %12 [
    i32 0, label %14
    i32 1, label %9
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %14

12:                                               ; preds = %5
  %13 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %0) #46
  br label %14

14:                                               ; preds = %12, %9, %5
  %15 = phi ptr [ null, %12 ], [ %11, %9 ], [ null, %5 ]
  %16 = tail call i64 @get_c_long(ptr noundef %15) #38
  store i64 %16, ptr @siod_verbose_level, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i64 [ %4, %3 ], [ %16, %14 ]
  %19 = sitofp i64 %18 to double
  %20 = tail call ptr @flocons(double noundef %19) #40
  ret ptr %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal ptr @closure_code(ptr nocapture noundef readonly %0) #26 {
  %2 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal ptr @closure_env(ptr nocapture noundef readonly %0) #26 {
  %2 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lwhile(ptr noundef %0, ptr noundef %1) #0 {
  br label %4

3:                                                ; preds = %28, %26, %21, %8
  br label %4, !llvm.loop !114

4:                                                ; preds = %3, %2
  %5 = tail call ptr @car(ptr noundef %0) #40
  %6 = tail call ptr @leval(ptr noundef %5, ptr noundef %1) #40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @cdr(ptr noundef %0) #40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %3, label %11

11:                                               ; preds = %28, %8
  %12 = phi ptr [ %30, %28 ], [ %9, %8 ]
  %13 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = sext i16 %14 to i32
  switch i32 %15, label %19 [
    i32 0, label %21
    i32 1, label %16
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  br label %21

19:                                               ; preds = %11
  %20 = tail call ptr @err(ptr noundef nonnull @.str.27, ptr noundef nonnull %12) #46
  br label %21

21:                                               ; preds = %19, %16, %11
  %22 = phi ptr [ null, %19 ], [ %18, %16 ], [ null, %11 ]
  %23 = tail call ptr @leval(ptr noundef %22, ptr noundef %1) #40
  %24 = load i16, ptr %13, align 2, !tbaa !16
  %25 = sext i16 %24 to i32
  switch i32 %25, label %26 [
    i32 0, label %3
    i32 1, label %28
  ]

26:                                               ; preds = %21
  %.lcssa = phi ptr [ %12, %21 ]
  %27 = tail call ptr @err(ptr noundef nonnull @.str.28, ptr noundef nonnull %.lcssa) #46
  br label %3

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %3, label %11, !llvm.loop !115

32:                                               ; preds = %4
  ret ptr null
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @nreverse(ptr noundef %0) #27 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %9, %1
  %4 = phi ptr [ %5, %9 ], [ null, %1 ]
  %5 = phi ptr [ %11, %9 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  store ptr %4, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3, !llvm.loop !116

13:                                               ; preds = %9, %3, %1
  %14 = phi ptr [ null, %1 ], [ %5, %9 ], [ %4, %3 ]
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lruntime() #0 {
  %1 = alloca %struct.tms, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #42
  %2 = call i64 @times(ptr noundef nonnull %1) #38
  %3 = load i64, ptr %1, align 8, !tbaa !33
  %4 = sitofp i64 %3 to double
  %5 = getelementptr inbounds %struct.tms, ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !35
  %7 = sitofp i64 %6 to double
  %8 = fadd double %4, %7
  %9 = fdiv double %8, 6.000000e+01
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #42
  %10 = tail call ptr @flocons(double noundef %9) #40
  %11 = load double, ptr @gc_time_taken, align 8, !tbaa !36
  %12 = tail call ptr @flocons(double noundef %11) #40
  %13 = tail call ptr @cons(ptr noundef %12, ptr noundef null) #40
  %14 = tail call ptr @cons(ptr noundef %10, ptr noundef %13) #40
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lrealtime() #0 {
  %1 = tail call double @myrealtime() #40
  %2 = tail call ptr @flocons(double noundef %1) #40
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cdar(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #40
  %3 = tail call ptr @cdr(ptr noundef %2) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lrand(ptr noundef %0) #0 {
  %2 = tail call i32 @rand() #38
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = sitofp i32 %2 to double
  br label %11

6:                                                ; preds = %1
  %7 = sext i32 %2 to i64
  %8 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  %9 = srem i64 %7, %8
  %10 = sitofp i64 %9 to double
  br label %11

11:                                               ; preds = %6, %4
  %12 = phi double [ %10, %6 ], [ %5, %4 ]
  %13 = tail call ptr @flocons(double noundef %12) #40
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lsrand(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  tail call void @srand(i32 noundef %3) #38
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lllast_c_errmsg() #0 {
  %1 = tail call ptr @llast_c_errmsg(i32 noundef -1) #40
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @os_classification() #0 {
  %1 = tail call ptr @gen_intern(ptr noundef nonnull @.str.238, i64 noundef 0) #40
  ret ptr %1
}

; Function Attrs: nounwind optsize
declare void @srand(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare i32 @rand() local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @siod_verbose_check(i32 noundef %0) #15 {
  %2 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %3 = sext i32 %0 to i64
  %4 = icmp sge i64 %2, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @a_true_value() #15 {
  %1 = load ptr, ptr @sym_t, align 8, !tbaa !7
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @last_c_errmsg(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #45
  %5 = load i32, ptr %4, align 4, !tbaa !76
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ %0, %1 ]
  %8 = tail call ptr @strerror(i32 noundef %7) #38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @last_c_errmsg.serrmsg, ptr noundef nonnull dereferenceable(1) @.str.152, i32 noundef %7) #38
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %8, %6 ], [ @last_c_errmsg.serrmsg, %10 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable
define internal i64 @safe_strlen(ptr noundef %0, i64 noundef %1) #28 {
  %3 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %1) #39
  %4 = icmp eq ptr %3, null
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = select i1 %4, i64 %1, i64 %7
  ret i64 %8
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_storage_a1(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  call void @set_gc_hooks(i64 noundef %0, ptr noundef nonnull @array_gc_relocate, ptr noundef nonnull @array_gc_mark, ptr noundef nonnull @array_gc_scan, ptr noundef nonnull @array_gc_free, ptr noundef nonnull %2) #38
  call void @set_print_hooks(i64 noundef %0, ptr noundef nonnull @array_prin1) #38
  %3 = call ptr @get_user_type_hooks(i64 noundef %0) #38
  %4 = getelementptr inbounds %struct.user_type_hooks, ptr %3, i64 0, i32 7
  store ptr @array_fast_print, ptr %4, align 8, !tbaa !117
  %5 = getelementptr inbounds %struct.user_type_hooks, ptr %3, i64 0, i32 8
  store ptr @array_fast_read, ptr %5, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct.user_type_hooks, ptr %3, i64 0, i32 9
  store ptr @array_equal, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.user_type_hooks, ptr %3, i64 0, i32 6
  store ptr @array_sxhash, ptr %7, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @array_gc_relocate(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @heap, align 8, !tbaa !7
  %3 = load ptr, ptr @heap_end, align 8, !tbaa !7
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @gc_fatal_error() #38
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.obj, ptr %2, i64 1
  store ptr %7, ptr @heap, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @array_gc_mark(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 16
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !11
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  tail call void @gc_mark(ptr noundef %17) #38
  %18 = add nuw nsw i64 %14, 1
  %19 = load i64, ptr %8, align 8, !tbaa !11
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %13, label %21, !llvm.loop !121

21:                                               ; preds = %13, %7, %3, %1
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @array_gc_scan(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 16
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %21, %13 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !11
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = tail call ptr @gc_relocate(ptr noundef %17) #38
  %19 = load ptr, ptr %12, align 8, !tbaa !11
  %20 = getelementptr inbounds ptr, ptr %19, i64 %14
  store ptr %18, ptr %20, align 8, !tbaa !7
  %21 = add nuw nsw i64 %14, 1
  %22 = load i64, ptr %8, align 8, !tbaa !11
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %13, label %24, !llvm.loop !122

24:                                               ; preds = %13, %7, %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @array_gc_free(ptr nocapture noundef readonly %0) #29 {
  %2 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 2, !tbaa !16
  %4 = sext i16 %3 to i32
  switch i32 %4, label %8 [
    i32 13, label %5
    i32 18, label %5
    i32 14, label %5
    i32 15, label %5
    i32 16, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @free(ptr noundef %7) #38
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @array_prin1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i32
  switch i32 %6, label %127 [
    i32 13, label %7
    i32 14, label %37
    i32 15, label %60
    i32 18, label %83
    i32 16, label %106
  ]

7:                                                ; preds = %2
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.75) #38
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = tail call i64 @strcspn(ptr noundef %9, ptr noundef nonnull @.str.1.76) #39
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #39
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void @gput_st(ptr noundef %1, ptr noundef %9) #38
  br label %36

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #42
  %15 = trunc i64 %11 to i32
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 1
  %19 = getelementptr inbounds [3 x i8], ptr %3, i64 0, i64 2
  %20 = and i64 %11, 4294967295
  br label %21

21:                                               ; preds = %31, %17
  %22 = phi i64 [ 0, %17 ], [ %33, %31 ]
  %23 = load ptr, ptr %8, align 8, !tbaa !11
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = sext i8 %25 to i32
  switch i32 %26, label %30 [
    i32 92, label %27
    i32 34, label %27
    i32 10, label %31
    i32 13, label %28
    i32 9, label %29
  ]

27:                                               ; preds = %21, %21
  store i8 92, ptr %3, align 1, !tbaa !11
  store i8 %25, ptr %18, align 1, !tbaa !11
  store i8 0, ptr %19, align 1, !tbaa !11
  br label %31

28:                                               ; preds = %21
  br label %31

29:                                               ; preds = %21
  br label %31

30:                                               ; preds = %21
  store i8 %25, ptr %3, align 1, !tbaa !11
  store i8 0, ptr %18, align 1, !tbaa !11
  br label %31

31:                                               ; preds = %30, %29, %28, %27, %21
  %32 = phi ptr [ %3, %27 ], [ @.str.3.77, %28 ], [ @.str.4.78, %29 ], [ %3, %30 ], [ @.str.2.79, %21 ]
  call void @gput_st(ptr noundef %1, ptr noundef nonnull %32) #38
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %33, %20
  br i1 %34, label %35, label %21, !llvm.loop !123

35:                                               ; preds = %31, %14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #42
  br label %36

36:                                               ; preds = %35, %13
  call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.75) #38
  br label %127

37:                                               ; preds = %2
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.5.80) #38
  %38 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !11
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %43

43:                                               ; preds = %56, %41
  %44 = phi i64 [ 0, %41 ], [ %51, %56 ]
  %45 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %46 = load ptr, ptr %42, align 8, !tbaa !11
  %47 = getelementptr inbounds double, ptr %46, i64 %44
  %48 = load double, ptr %47, align 8, !tbaa !36
  %49 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %48) #38
  %50 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  tail call void @gput_st(ptr noundef %1, ptr noundef %50) #38
  %51 = add nuw nsw i64 %44, 1
  %52 = load i64, ptr %38, align 8, !tbaa !11
  %53 = icmp sgt i64 %52, %51
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.7.81) #38
  %55 = load i64, ptr %38, align 8, !tbaa !11
  br label %56

56:                                               ; preds = %54, %43
  %57 = phi i64 [ %52, %43 ], [ %55, %54 ]
  %58 = icmp sgt i64 %57, %51
  br i1 %58, label %43, label %59, !llvm.loop !124

59:                                               ; preds = %56, %37
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.8.82) #38
  br label %127

60:                                               ; preds = %2
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.5.80) #38
  %61 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !11
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %66

66:                                               ; preds = %79, %64
  %67 = phi i64 [ 0, %64 ], [ %74, %79 ]
  %68 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %69 = load ptr, ptr %65, align 8, !tbaa !11
  %70 = getelementptr inbounds i64, ptr %69, i64 %67
  %71 = load i64, ptr %70, align 8, !tbaa !12
  %72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) @.str.9.83, i64 noundef %71) #38
  %73 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  tail call void @gput_st(ptr noundef %1, ptr noundef %73) #38
  %74 = add nuw nsw i64 %67, 1
  %75 = load i64, ptr %61, align 8, !tbaa !11
  %76 = icmp sgt i64 %75, %74
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.7.81) #38
  %78 = load i64, ptr %61, align 8, !tbaa !11
  br label %79

79:                                               ; preds = %77, %66
  %80 = phi i64 [ %75, %66 ], [ %78, %77 ]
  %81 = icmp sgt i64 %80, %74
  br i1 %81, label %66, label %82, !llvm.loop !125

82:                                               ; preds = %79, %60
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.8.82) #38
  br label %83

83:                                               ; preds = %82, %2
  %84 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %85 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !11
  %87 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %86) #38
  %88 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  tail call void @gput_st(ptr noundef %1, ptr noundef %88) #38
  %89 = load i64, ptr %85, align 8, !tbaa !11
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i64 [ 0, %91 ], [ %102, %93 ]
  %95 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %96 = load ptr, ptr %92, align 8, !tbaa !11
  %97 = getelementptr inbounds i8, ptr %96, i64 %94
  %98 = load i8, ptr %97, align 1, !tbaa !11
  %99 = zext i8 %98 to i32
  %100 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %99) #38
  %101 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  tail call void @gput_st(ptr noundef %1, ptr noundef %101) #38
  %102 = add nuw nsw i64 %94, 1
  %103 = load i64, ptr %85, align 8, !tbaa !11
  %104 = icmp sgt i64 %103, %102
  br i1 %104, label %93, label %105, !llvm.loop !126

105:                                              ; preds = %93, %83
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.75) #38
  br label %127

106:                                              ; preds = %2
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.5.80) #38
  %107 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !11
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %112

112:                                              ; preds = %123, %110
  %113 = phi i64 [ 0, %110 ], [ %118, %123 ]
  %114 = load ptr, ptr %111, align 8, !tbaa !11
  %115 = getelementptr inbounds ptr, ptr %114, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !7
  %117 = tail call ptr @lprin1g(ptr noundef %116, ptr noundef %1) #38
  %118 = add nuw nsw i64 %113, 1
  %119 = load i64, ptr %107, align 8, !tbaa !11
  %120 = icmp sgt i64 %119, %118
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.7.81) #38
  %122 = load i64, ptr %107, align 8, !tbaa !11
  br label %123

123:                                              ; preds = %121, %112
  %124 = phi i64 [ %119, %112 ], [ %122, %121 ]
  %125 = icmp sgt i64 %124, %118
  br i1 %125, label %112, label %126, !llvm.loop !127

126:                                              ; preds = %123, %106
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.8.82) #38
  br label %127

127:                                              ; preds = %126, %105, %59, %36, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @array_fast_print(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = tail call ptr @car(ptr noundef %1) #38
  %8 = tail call ptr @get_c_file(ptr noundef %7, ptr noundef null) #38
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !16
  %11 = sext i16 %10 to i32
  switch i32 %11, label %64 [
    i32 13, label %12
    i32 18, label %12
    i32 14, label %22
    i32 15, label %33
    i32 16, label %44
  ]

12:                                               ; preds = %2, %2
  %13 = tail call i32 @putc(i32 noundef %11, ptr noundef %8) #40
  %14 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !11
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store i64 %17, ptr %6, align 8, !tbaa !12
  %18 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 8, i64 noundef 1, ptr noundef %8) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = tail call i64 @fwrite(ptr noundef %20, i64 noundef %17, i64 noundef 1, ptr noundef %8) #40
  br label %66

22:                                               ; preds = %2
  %23 = tail call i32 @putc(i32 noundef 14, ptr noundef %8) #40
  %24 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !11
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 3
  %28 = sext i32 %27 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store i64 %28, ptr %5, align 8, !tbaa !12
  %29 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %8) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %30 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = tail call i64 @fwrite(ptr noundef %31, i64 noundef %28, i64 noundef 1, ptr noundef %8) #40
  br label %66

33:                                               ; preds = %2
  %34 = tail call i32 @putc(i32 noundef 15, ptr noundef %8) #40
  %35 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !11
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 3
  %39 = sext i32 %38 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %39, ptr %4, align 8, !tbaa !12
  %40 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %8) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %41 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = tail call i64 @fwrite(ptr noundef %42, i64 noundef %39, i64 noundef 1, ptr noundef %8) #40
  br label %66

44:                                               ; preds = %2
  %45 = tail call i32 @putc(i32 noundef 16, ptr noundef %8) #40
  %46 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !11
  %48 = trunc i64 %47 to i32
  %49 = shl i64 %47, 32
  %50 = ashr exact i64 %49, 32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store i64 %50, ptr %3, align 8, !tbaa !12
  %51 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %8) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %52 = icmp sgt i32 %48, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %55 = and i64 %47, 4294967295
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i64 [ 0, %53 ], [ %62, %56 ]
  %58 = load ptr, ptr %54, align 8, !tbaa !11
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  %61 = tail call ptr @fast_print(ptr noundef %60, ptr noundef %1) #40
  %62 = add nuw nsw i64 %57, 1
  %63 = icmp eq i64 %62, %55
  br i1 %63, label %66, label %56, !llvm.loop !128

64:                                               ; preds = %2
  %65 = tail call ptr @errswitch() #38
  br label %66

66:                                               ; preds = %64, %56, %44, %33, %22, %12
  %67 = phi ptr [ %65, %64 ], [ null, %33 ], [ null, %22 ], [ null, %12 ], [ null, %44 ], [ null, %56 ]
  ret ptr %67
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @array_fast_read(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = tail call ptr @car(ptr noundef %1) #38
  %9 = tail call ptr @get_c_file(ptr noundef %8, ptr noundef null) #38
  switch i32 %0, label %68 [
    i32 13, label %10
    i32 18, label %19
    i32 14, label %29
    i32 15, label %40
    i32 16, label %51
  ]

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #42
  %11 = call i64 @fread(ptr noundef nonnull %7, i64 noundef 8, i64 noundef 1, ptr noundef %9) #40
  %12 = load i64, ptr %7, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #42
  %13 = tail call ptr @strcons(i64 noundef %12, ptr noundef null) #40
  %14 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = tail call i64 @fread(ptr noundef %15, i64 noundef %12, i64 noundef 1, ptr noundef %9) #40
  %17 = load ptr, ptr %14, align 8, !tbaa !11
  %18 = getelementptr inbounds i8, ptr %17, i64 %12
  store i8 0, ptr %18, align 1, !tbaa !11
  br label %70

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42
  %20 = call i64 @fread(ptr noundef nonnull %6, i64 noundef 8, i64 noundef 1, ptr noundef %9) #40
  %21 = load i64, ptr %6, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42
  %22 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %23 = tail call ptr @newcell(i64 noundef 18) #38
  %24 = getelementptr inbounds %struct.obj, ptr %23, i64 0, i32 2
  store i64 %21, ptr %24, align 8, !tbaa !11
  %25 = tail call ptr @must_malloc(i64 noundef %21) #38
  %26 = getelementptr inbounds %struct.obj, ptr %23, i64 0, i32 2, i32 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !11
  %27 = tail call i64 @fread(ptr noundef %25, i64 noundef %21, i64 noundef 1, ptr noundef %9) #40
  %28 = tail call i64 @no_interrupt(i64 noundef %22) #38
  br label %70

29:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42
  %30 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %9) #40
  %31 = load i64, ptr %5, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42
  %32 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %33 = tail call ptr @newcell(i64 noundef 14) #38
  %34 = getelementptr inbounds %struct.obj, ptr %33, i64 0, i32 2
  store i64 %31, ptr %34, align 8, !tbaa !11
  %35 = shl i64 %31, 3
  %36 = tail call ptr @must_malloc(i64 noundef %35) #38
  %37 = getelementptr inbounds %struct.obj, ptr %33, i64 0, i32 2, i32 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !11
  %38 = tail call i64 @fread(ptr noundef %36, i64 noundef 8, i64 noundef %31, ptr noundef %9) #40
  %39 = tail call i64 @no_interrupt(i64 noundef %32) #38
  br label %70

40:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42
  %41 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %9) #40
  %42 = load i64, ptr %4, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42
  %43 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %44 = tail call ptr @newcell(i64 noundef 15) #38
  %45 = getelementptr inbounds %struct.obj, ptr %44, i64 0, i32 2
  store i64 %42, ptr %45, align 8, !tbaa !11
  %46 = shl i64 %42, 3
  %47 = tail call ptr @must_malloc(i64 noundef %46) #38
  %48 = getelementptr inbounds %struct.obj, ptr %44, i64 0, i32 2, i32 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !11
  %49 = tail call i64 @fread(ptr noundef %47, i64 noundef 8, i64 noundef %42, ptr noundef %9) #40
  %50 = tail call i64 @no_interrupt(i64 noundef %43) #38
  br label %70

51:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42
  %52 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %9) #40
  %53 = load i64, ptr %3, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42
  %54 = sitofp i64 %53 to double
  %55 = load ptr, ptr @bashnum, align 8, !tbaa !7
  %56 = getelementptr inbounds %struct.obj, ptr %55, i64 0, i32 2
  store double %54, ptr %56, align 8, !tbaa !11
  %57 = tail call ptr @cons_array(ptr noundef %55, ptr noundef null) #40
  %58 = icmp sgt i64 %53, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.obj, ptr %57, i64 0, i32 2, i32 0, i32 1
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i64 [ 0, %59 ], [ %66, %61 ]
  %63 = tail call ptr @fast_read(ptr noundef %1) #40
  %64 = load ptr, ptr %60, align 8, !tbaa !11
  %65 = getelementptr inbounds ptr, ptr %64, i64 %62
  store ptr %63, ptr %65, align 8, !tbaa !7
  %66 = add nuw nsw i64 %62, 1
  %67 = icmp eq i64 %66, %53
  br i1 %67, label %70, label %61, !llvm.loop !129

68:                                               ; preds = %2
  %69 = tail call ptr @errswitch() #38
  br label %70

70:                                               ; preds = %68, %61, %51, %40, %29, %19, %10
  %71 = phi ptr [ %69, %68 ], [ %44, %40 ], [ %33, %29 ], [ %23, %19 ], [ %13, %10 ], [ %57, %51 ], [ %57, %61 ]
  ret ptr %71
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @array_equal(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %90, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = sext i16 %6 to i32
  switch i32 %7, label %90 [
    i32 13, label %8
    i32 18, label %8
    i32 15, label %23
    i32 14, label %39
    i32 16, label %64
  ]

8:                                                ; preds = %4, %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !11
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %92

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = tail call i32 @bcmp(ptr %16, ptr %18, i64 %10)
  %20 = icmp eq i32 %19, 0
  %21 = load ptr, ptr @sym_t, align 8
  %22 = select i1 %20, ptr %21, ptr null
  br label %92

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !11
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = shl i64 %25, 3
  %35 = tail call i32 @bcmp(ptr %31, ptr %33, i64 %34)
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr @sym_t, align 8
  %38 = select i1 %36, ptr %37, ptr null
  br label %92

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !11
  %42 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !11
  %44 = icmp eq i64 %41, %43
  br i1 %44, label %45, label %92

45:                                               ; preds = %39
  %46 = icmp sgt i64 %41, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  br label %55

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %56, 1
  %54 = icmp eq i64 %53, %41
  br i1 %54, label %62, label %55, !llvm.loop !130

55:                                               ; preds = %52, %47
  %56 = phi i64 [ 0, %47 ], [ %53, %52 ]
  %57 = getelementptr inbounds double, ptr %49, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !36
  %59 = getelementptr inbounds double, ptr %51, i64 %56
  %60 = load double, ptr %59, align 8, !tbaa !36
  %61 = fcmp une double %58, %60
  br i1 %61, label %92, label %52

62:                                               ; preds = %52, %45
  %63 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %92

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !11
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %64
  %71 = icmp sgt i64 %66, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %74 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  br label %78

75:                                               ; preds = %78
  %76 = add nuw nsw i64 %79, 1
  %77 = icmp eq i64 %76, %66
  br i1 %77, label %88, label %78, !llvm.loop !131

78:                                               ; preds = %75, %72
  %79 = phi i64 [ 0, %72 ], [ %76, %75 ]
  %80 = load ptr, ptr %73, align 8, !tbaa !11
  %81 = getelementptr inbounds ptr, ptr %80, i64 %79
  %82 = load ptr, ptr %81, align 8, !tbaa !7
  %83 = load ptr, ptr %74, align 8, !tbaa !11
  %84 = getelementptr inbounds ptr, ptr %83, i64 %79
  %85 = load ptr, ptr %84, align 8, !tbaa !7
  %86 = tail call ptr @equal(ptr noundef %82, ptr noundef %85) #40
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %75

88:                                               ; preds = %75, %70
  %89 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %92

90:                                               ; preds = %4, %2
  %91 = tail call ptr @errswitch() #38
  br label %92

92:                                               ; preds = %90, %88, %78, %64, %62, %55, %39, %29, %23, %14, %8
  %93 = phi ptr [ %91, %90 ], [ %89, %88 ], [ %63, %62 ], [ null, %8 ], [ null, %23 ], [ null, %39 ], [ null, %64 ], [ %22, %14 ], [ %38, %29 ], [ null, %55 ], [ null, %78 ]
  ret ptr %93
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @array_sxhash(ptr noundef readonly %0, i64 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = sext i16 %6 to i32
  switch i32 %7, label %88 [
    i32 13, label %8
    i32 18, label %8
    i32 15, label %28
    i32 14, label %48
    i32 16, label %69
  ]

8:                                                ; preds = %4, %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %90

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %26, %15 ], [ %14, %12 ]
  %17 = phi i64 [ %24, %15 ], [ 0, %12 ]
  %18 = phi i64 [ %25, %15 ], [ 0, %12 ]
  %19 = mul nsw i64 %17, 17
  %20 = add nsw i64 %19, 1
  %21 = load i8, ptr %16, align 1, !tbaa !11
  %22 = zext i8 %21 to i64
  %23 = xor i64 %20, %22
  %24 = srem i64 %23, %1
  %25 = add nuw nsw i64 %18, 1
  %26 = getelementptr inbounds i8, ptr %16, i64 1
  %27 = icmp eq i64 %25, %10
  br i1 %27, label %90, label %15, !llvm.loop !132

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !11
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %46, %35 ], [ %34, %32 ]
  %37 = phi i64 [ %44, %35 ], [ 0, %32 ]
  %38 = phi i64 [ %45, %35 ], [ 0, %32 ]
  %39 = mul nsw i64 %37, 17
  %40 = add nsw i64 %39, 1
  %41 = load i64, ptr %36, align 8, !tbaa !12
  %42 = urem i64 %41, %1
  %43 = xor i64 %42, %40
  %44 = urem i64 %43, %1
  %45 = add nuw nsw i64 %38, 1
  %46 = getelementptr inbounds i64, ptr %36, i64 1
  %47 = icmp eq i64 %45, %30
  br i1 %47, label %90, label %35, !llvm.loop !133

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !11
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  br label %55

55:                                               ; preds = %55, %52
  %56 = phi ptr [ %67, %55 ], [ %54, %52 ]
  %57 = phi i64 [ %65, %55 ], [ 0, %52 ]
  %58 = phi i64 [ %66, %55 ], [ 0, %52 ]
  %59 = mul nsw i64 %57, 17
  %60 = add nsw i64 %59, 1
  %61 = load double, ptr %56, align 8, !tbaa !36
  %62 = fptoui double %61 to i64
  %63 = urem i64 %62, %1
  %64 = xor i64 %63, %60
  %65 = urem i64 %64, %1
  %66 = add nuw nsw i64 %58, 1
  %67 = getelementptr inbounds double, ptr %56, i64 1
  %68 = icmp eq i64 %66, %50
  br i1 %68, label %90, label %55, !llvm.loop !134

69:                                               ; preds = %4
  %70 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !11
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i64 [ 0, %73 ], [ %85, %75 ]
  %77 = phi i64 [ 0, %73 ], [ %86, %75 ]
  %78 = mul nsw i64 %76, 17
  %79 = add nsw i64 %78, 1
  %80 = load ptr, ptr %74, align 8, !tbaa !11
  %81 = getelementptr inbounds ptr, ptr %80, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !7
  %83 = tail call i64 @c_sxhash(ptr noundef %82, i64 noundef %1) #40
  %84 = xor i64 %83, %79
  %85 = srem i64 %84, %1
  %86 = add nuw nsw i64 %77, 1
  %87 = icmp eq i64 %86, %71
  br i1 %87, label %90, label %75, !llvm.loop !135

88:                                               ; preds = %4, %2
  %89 = tail call ptr @errswitch() #38
  br label %90

90:                                               ; preds = %88, %75, %69, %55, %48, %35, %28, %15, %8
  %91 = phi i64 [ 0, %88 ], [ 0, %8 ], [ 0, %28 ], [ 0, %48 ], [ 0, %69 ], [ %24, %15 ], [ %44, %35 ], [ %65, %55 ], [ %85, %75 ]
  ret i64 %91
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @c_sxhash(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  call void @err_stack(ptr noundef nonnull %3) #38
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %0, %2 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %96, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !16
  %14 = sext i16 %13 to i32
  switch i32 %14, label %87 [
    i32 0, label %96
    i32 1, label %15
    i32 3, label %48
    i32 4, label %65
    i32 5, label %65
    i32 6, label %65
    i32 7, label %65
    i32 19, label %65
    i32 20, label %65
    i32 8, label %65
    i32 9, label %65
    i32 10, label %65
    i32 2, label %82
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = call i64 @c_sxhash(ptr noundef %17, i64 noundef %1) #40
  %19 = load ptr, ptr %3, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %29, %15
  %24 = phi ptr [ %38, %29 ], [ %21, %15 ]
  %25 = phi i64 [ %36, %29 ], [ %18, %15 ]
  %26 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !16
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = mul nsw i64 %25, 17
  %31 = add nsw i64 %30, 1
  %32 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = call i64 @c_sxhash(ptr noundef %33, i64 noundef %1) #40
  %35 = xor i64 %34, %31
  %36 = srem i64 %35, %1
  %37 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %23, !llvm.loop !136

40:                                               ; preds = %29, %23, %15
  %41 = phi i64 [ %18, %15 ], [ %36, %29 ], [ %25, %23 ]
  %42 = phi ptr [ null, %15 ], [ null, %29 ], [ %24, %23 ]
  %43 = mul nsw i64 %41, 17
  %44 = add nsw i64 %43, 1
  %45 = call i64 @c_sxhash(ptr noundef %42, i64 noundef %1) #40
  %46 = xor i64 %45, %44
  %47 = srem i64 %46, %1
  br label %96

48:                                               ; preds = %11
  %49 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = load i8, ptr %50, align 1, !tbaa !11
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %53, %48
  %54 = phi i8 [ %63, %53 ], [ %51, %48 ]
  %55 = phi ptr [ %62, %53 ], [ %50, %48 ]
  %56 = phi i64 [ %61, %53 ], [ 0, %48 ]
  %57 = mul nsw i64 %56, 17
  %58 = add nsw i64 %57, 1
  %59 = zext i8 %54 to i64
  %60 = xor i64 %58, %59
  %61 = srem i64 %60, %1
  %62 = getelementptr inbounds i8, ptr %55, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %96, label %53, !llvm.loop !137

65:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11
  %66 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = load i8, ptr %67, align 1, !tbaa !11
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %70, %65
  %71 = phi i8 [ %80, %70 ], [ %68, %65 ]
  %72 = phi ptr [ %79, %70 ], [ %67, %65 ]
  %73 = phi i64 [ %78, %70 ], [ 0, %65 ]
  %74 = mul nsw i64 %73, 17
  %75 = add nsw i64 %74, 1
  %76 = zext i8 %71 to i64
  %77 = xor i64 %75, %76
  %78 = srem i64 %77, %1
  %79 = getelementptr inbounds i8, ptr %72, i64 1
  %80 = load i8, ptr %79, align 1, !tbaa !11
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %96, label %70, !llvm.loop !138

82:                                               ; preds = %11
  %83 = getelementptr inbounds %struct.obj, ptr %9, i64 0, i32 2
  %84 = load double, ptr %83, align 8, !tbaa !11
  %85 = fptoui double %84 to i64
  %86 = urem i64 %85, %1
  br label %96

87:                                               ; preds = %11
  %88 = sext i16 %13 to i64
  %89 = call ptr @get_user_type_hooks(i64 noundef %88) #38
  %90 = getelementptr inbounds %struct.user_type_hooks, ptr %89, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !120
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load ptr, ptr %3, align 8, !tbaa !7
  %95 = call i64 %91(ptr noundef %94, i64 noundef %1) #38
  br label %96

96:                                               ; preds = %93, %87, %82, %70, %65, %53, %48, %40, %11, %8
  %97 = phi i64 [ %95, %93 ], [ %86, %82 ], [ %47, %40 ], [ 0, %11 ], [ 0, %87 ], [ 0, %8 ], [ 0, %48 ], [ 0, %65 ], [ %61, %53 ], [ %78, %70 ]
  ret i64 %97
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #30

; Function Attrs: nounwind optsize uwtable
define internal ptr @equal(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  call void @err_stack(ptr noundef nonnull %3) #38
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %0, %2 ]
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %13

11:                                               ; preds = %37, %8
  %12 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %59

13:                                               ; preds = %37, %8
  %14 = phi ptr [ %41, %37 ], [ %9, %8 ]
  %15 = phi ptr [ %40, %37 ], [ %1, %8 ]
  %16 = icmp eq ptr %14, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.obj, ptr %14, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !16
  %20 = sext i16 %19 to i64
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i64 [ %20, %17 ], [ 0, %13 ]
  %23 = icmp eq ptr %15, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.obj, ptr %15, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !16
  %27 = sext i16 %26 to i64
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i64 [ %27, %24 ], [ 0, %21 ]
  %30 = icmp eq i64 %22, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %28
  switch i64 %22, label %51 [
    i64 1, label %32
    i64 2, label %43
    i64 3, label %59
  ]

32:                                               ; preds = %31
  %33 = call ptr @car(ptr noundef %14) #38
  %34 = call ptr @car(ptr noundef %15) #38
  %35 = call ptr @equal(ptr noundef %33, ptr noundef %34) #40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %59, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %3, align 8, !tbaa !7
  %39 = call ptr @cdr(ptr noundef %38) #38
  store ptr %39, ptr %3, align 8, !tbaa !7
  %40 = call ptr @cdr(ptr noundef %15) #38
  %41 = load ptr, ptr %3, align 8, !tbaa !7
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %11, label %13

43:                                               ; preds = %31
  %.lcssa3 = phi ptr [ %14, %31 ]
  %.lcssa1 = phi ptr [ %15, %31 ]
  %44 = getelementptr inbounds %struct.obj, ptr %.lcssa3, i64 0, i32 2
  %45 = load double, ptr %44, align 8, !tbaa !11
  %46 = getelementptr inbounds %struct.obj, ptr %.lcssa1, i64 0, i32 2
  %47 = load double, ptr %46, align 8, !tbaa !11
  %48 = fcmp oeq double %45, %47
  %49 = load ptr, ptr @sym_t, align 8
  %50 = select i1 %48, ptr %49, ptr null
  br label %59

51:                                               ; preds = %31
  %.lcssa4 = phi i64 [ %22, %31 ]
  %.lcssa = phi ptr [ %15, %31 ]
  %52 = call ptr @get_user_type_hooks(i64 noundef %.lcssa4) #38
  %53 = getelementptr inbounds %struct.user_type_hooks, ptr %52, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !119
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %3, align 8, !tbaa !7
  %58 = call ptr %54(ptr noundef %57, ptr noundef %.lcssa) #38
  br label %59

59:                                               ; preds = %56, %51, %43, %32, %31, %28, %11
  %60 = phi ptr [ %12, %11 ], [ %58, %56 ], [ %50, %43 ], [ null, %51 ], [ null, %28 ], [ null, %32 ], [ null, %31 ]
  ret ptr %60
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @strcons(i64 noundef %0, ptr noundef readonly %1) #0 {
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @cons(ptr noundef null, ptr noundef null) #38
  %5 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 1
  store i16 13, ptr %5, align 2, !tbaa !16
  %6 = icmp eq i64 %0, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i64 [ %8, %7 ], [ %0, %2 ]
  %11 = add nsw i64 %10, 1
  %12 = tail call ptr @must_malloc(i64 noundef %11) #38
  %13 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2
  %14 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2, i32 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !11
  store i64 %10, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %1, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr nonnull align 1 %1, i64 %10, i1 false)
  %17 = load ptr, ptr %14, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %16, %9
  %19 = phi ptr [ %17, %16 ], [ %12, %9 ]
  %20 = getelementptr inbounds i8, ptr %19, i64 %10
  store i8 0, ptr %20, align 1, !tbaa !11
  %21 = tail call i64 @no_interrupt(i64 noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cons_array(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !11
  %11 = fcmp olt double %10, 0.000000e+00
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %4, %2
  %13 = tail call ptr @err(ptr noundef nonnull @.str.23.18, ptr noundef %0) #38
  br label %103

14:                                               ; preds = %8
  %15 = fptosi double %10 to i64
  %16 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %17 = tail call ptr @cons(ptr noundef null, ptr noundef null) #38
  %18 = tail call ptr @cintern(ptr noundef nonnull @.str.24.19) #38
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  store i16 14, ptr %21, align 2, !tbaa !16
  %22 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2
  store i64 %15, ptr %22, align 8, !tbaa !11
  %23 = shl i64 %15, 3
  %24 = tail call ptr @must_malloc(i64 noundef %23) #38
  %25 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !11
  %26 = icmp sgt i64 %15, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %27, %20
  %28 = phi i64 [ %31, %27 ], [ 0, %20 ]
  %29 = load ptr, ptr %25, align 8, !tbaa !11
  %30 = getelementptr inbounds double, ptr %29, i64 %28
  store double 0.000000e+00, ptr %30, align 8, !tbaa !36
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, %15
  br i1 %32, label %101, label %27, !llvm.loop !139

33:                                               ; preds = %14
  %34 = tail call ptr @cintern(ptr noundef nonnull @.str.25.20) #38
  %35 = icmp eq ptr %34, %1
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  store i16 15, ptr %37, align 2, !tbaa !16
  %38 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2
  store i64 %15, ptr %38, align 8, !tbaa !11
  %39 = shl i64 %15, 3
  %40 = tail call ptr @must_malloc(i64 noundef %39) #38
  %41 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  store ptr %40, ptr %41, align 8, !tbaa !11
  %42 = icmp sgt i64 %15, 0
  br i1 %42, label %43, label %101

43:                                               ; preds = %43, %36
  %44 = phi i64 [ %47, %43 ], [ 0, %36 ]
  %45 = load ptr, ptr %41, align 8, !tbaa !11
  %46 = getelementptr inbounds i64, ptr %45, i64 %44
  store i64 0, ptr %46, align 8, !tbaa !12
  %47 = add nuw nsw i64 %44, 1
  %48 = icmp eq i64 %47, %15
  br i1 %48, label %101, label %43, !llvm.loop !140

49:                                               ; preds = %33
  %50 = tail call ptr @cintern(ptr noundef nonnull @.str.26.21) #38
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  store i16 13, ptr %53, align 2, !tbaa !16
  %54 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2
  store i64 %15, ptr %54, align 8, !tbaa !11
  %55 = add nsw i64 %15, 1
  %56 = tail call ptr @must_malloc(i64 noundef %55) #38
  %57 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !11
  %58 = getelementptr inbounds i8, ptr %56, i64 %15
  store i8 0, ptr %58, align 1, !tbaa !11
  %59 = icmp sgt i64 %15, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %60, %52
  %61 = phi i64 [ %64, %60 ], [ 0, %52 ]
  %62 = load ptr, ptr %57, align 8, !tbaa !11
  %63 = getelementptr inbounds i8, ptr %62, i64 %61
  store i8 32, ptr %63, align 1, !tbaa !11
  %64 = add nuw nsw i64 %61, 1
  %65 = icmp eq i64 %64, %15
  br i1 %65, label %101, label %60, !llvm.loop !141

66:                                               ; preds = %49
  %67 = tail call ptr @cintern(ptr noundef nonnull @.str.27.22) #38
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  store i16 18, ptr %70, align 2, !tbaa !16
  %71 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2
  store i64 %15, ptr %71, align 8, !tbaa !11
  %72 = tail call ptr @must_malloc(i64 noundef %15) #38
  %73 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !11
  %74 = icmp sgt i64 %15, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %75, %69
  %76 = phi i64 [ %79, %75 ], [ 0, %69 ]
  %77 = load ptr, ptr %73, align 8, !tbaa !11
  %78 = getelementptr inbounds i8, ptr %77, i64 %76
  store i8 0, ptr %78, align 1, !tbaa !11
  %79 = add nuw nsw i64 %76, 1
  %80 = icmp eq i64 %79, %15
  br i1 %80, label %101, label %75, !llvm.loop !142

81:                                               ; preds = %66
  %82 = tail call ptr @cintern(ptr noundef nonnull @.str.28.23) #38
  %83 = icmp eq ptr %82, %1
  %84 = icmp eq ptr %1, null
  %85 = or i1 %84, %83
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  store i16 16, ptr %87, align 2, !tbaa !16
  %88 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2
  store i64 %15, ptr %88, align 8, !tbaa !11
  %89 = shl i64 %15, 3
  %90 = tail call ptr @must_malloc(i64 noundef %89) #38
  %91 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  store ptr %90, ptr %91, align 8, !tbaa !11
  %92 = icmp sgt i64 %15, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %93, %86
  %94 = phi i64 [ %97, %93 ], [ 0, %86 ]
  %95 = load ptr, ptr %91, align 8, !tbaa !11
  %96 = getelementptr inbounds ptr, ptr %95, i64 %94
  store ptr null, ptr %96, align 8, !tbaa !7
  %97 = add nuw nsw i64 %94, 1
  %98 = icmp eq i64 %97, %15
  br i1 %98, label %101, label %93, !llvm.loop !143

99:                                               ; preds = %81
  %100 = tail call ptr @err(ptr noundef nonnull @.str.29.24, ptr noundef nonnull %1) #38
  br label %101

101:                                              ; preds = %99, %93, %86, %75, %69, %60, %52, %43, %36, %27, %20
  %102 = tail call i64 @no_interrupt(i64 noundef %16) #38
  br label %103

103:                                              ; preds = %101, %12
  %104 = phi ptr [ %13, %12 ], [ %17, %101 ]
  ret ptr %104
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @fast_read(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  br label %6

6:                                                ; preds = %10, %1
  %7 = tail call ptr @car(ptr noundef %0) #38
  %8 = tail call ptr @get_c_file(ptr noundef %7, ptr noundef null) #38
  %9 = tail call i32 @getc(ptr noundef %8) #40
  switch i32 %9, label %80 [
    i32 -1, label %22
    i32 35, label %10
    i32 127, label %12
    i32 126, label %24
    i32 0, label %33
    i32 1, label %34
    i32 125, label %38
    i32 124, label %38
    i32 2, label %63
    i32 3, label %67
  ]

10:                                               ; preds = %10, %6
  %11 = tail call i32 @getc(ptr noundef %8) #40
  switch i32 %11, label %10 [
    i32 0, label %12
    i32 -1, label %22
    i32 10, label %6
  ]

12:                                               ; preds = %10, %6
  %.lcssa11 = phi ptr [ %8, %10 ], [ %8, %6 ]
  %.lcssa2 = phi i32 [ %9, %10 ], [ %9, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42
  %13 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %.lcssa11) #40
  %14 = load i64, ptr %5, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42
  %15 = sitofp i64 %14 to double
  %16 = load ptr, ptr @bashnum, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 2
  store double %15, ptr %17, align 8, !tbaa !11
  %18 = tail call ptr @cdr(ptr noundef %0) #38
  %19 = tail call ptr @car(ptr noundef %18) #38
  %20 = load ptr, ptr @bashnum, align 8, !tbaa !7
  %21 = tail call ptr @href(ptr noundef %19, ptr noundef %20) #40
  br label %22

22:                                               ; preds = %88, %86, %73, %63, %60, %55, %34, %33, %24, %12, %10, %6
  %23 = phi ptr [ %27, %24 ], [ %37, %34 ], [ %44, %60 ], [ %87, %86 ], [ %91, %88 ], [ %79, %73 ], [ %64, %63 ], [ null, %33 ], [ %21, %12 ], [ %44, %55 ], [ %0, %10 ], [ %0, %6 ]
  ret ptr %23

24:                                               ; preds = %6
  %.lcssa12 = phi ptr [ %8, %6 ]
  %.lcssa3 = phi i32 [ %9, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42
  %25 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %.lcssa12) #40
  %26 = load i64, ptr %4, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42
  %27 = tail call ptr @fast_read(ptr noundef %0) #40
  %28 = tail call ptr @cdr(ptr noundef %0) #38
  %29 = tail call ptr @car(ptr noundef %28) #38
  %30 = sitofp i64 %26 to double
  %31 = tail call ptr @flocons(double noundef %30) #38
  %32 = tail call ptr @hset(ptr noundef %29, ptr noundef %31, ptr noundef %27) #40
  br label %22

33:                                               ; preds = %6
  %.lcssa13 = phi ptr [ %8, %6 ]
  %.lcssa4 = phi i32 [ %9, %6 ]
  br label %22

34:                                               ; preds = %6
  %.lcssa14 = phi ptr [ %8, %6 ]
  %.lcssa5 = phi i32 [ %9, %6 ]
  %35 = tail call ptr @fast_read(ptr noundef %0) #40
  %36 = tail call ptr @fast_read(ptr noundef %0) #40
  %37 = tail call ptr @cons(ptr noundef %35, ptr noundef %36) #38
  br label %22

38:                                               ; preds = %6, %6
  %.lcssa15 = phi ptr [ %8, %6 ], [ %8, %6 ]
  %.lcssa6 = phi i32 [ %9, %6 ], [ %9, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42
  %39 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %.lcssa15) #40
  %40 = load i64, ptr %3, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42
  %41 = sitofp i64 %40 to double
  %42 = load ptr, ptr @bashnum, align 8, !tbaa !7
  %43 = getelementptr inbounds %struct.obj, ptr %42, i64 0, i32 2
  store double %41, ptr %43, align 8, !tbaa !11
  %44 = tail call ptr @make_list(ptr noundef %42, ptr noundef null) #40
  %45 = icmp sgt i64 %40, 1
  br i1 %45, label %46, label %55

46:                                               ; preds = %46, %38
  %47 = phi i64 [ %53, %46 ], [ %40, %38 ]
  %48 = phi ptr [ %52, %46 ], [ %44, %38 ]
  %49 = tail call ptr @fast_read(ptr noundef %0) #40
  %50 = getelementptr inbounds %struct.obj, ptr %48, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.obj, ptr %48, i64 0, i32 2, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = add nsw i64 %47, -1
  %54 = icmp ugt i64 %47, 2
  br i1 %54, label %46, label %55, !llvm.loop !144

55:                                               ; preds = %46, %38
  %56 = phi ptr [ %44, %38 ], [ %52, %46 ]
  %57 = tail call ptr @fast_read(ptr noundef %0) #40
  %58 = getelementptr inbounds %struct.obj, ptr %56, i64 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !11
  %59 = icmp eq i32 %.lcssa6, 124
  br i1 %59, label %60, label %22

60:                                               ; preds = %55
  %61 = tail call ptr @fast_read(ptr noundef %0) #40
  %62 = getelementptr inbounds %struct.obj, ptr %56, i64 0, i32 2, i32 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !11
  br label %22

63:                                               ; preds = %6
  %.lcssa16 = phi ptr [ %8, %6 ]
  %.lcssa7 = phi i32 [ %9, %6 ]
  %64 = tail call ptr @newcell(i64 noundef 2) #38
  %65 = getelementptr inbounds %struct.obj, ptr %64, i64 0, i32 2
  %66 = tail call i64 @fread(ptr noundef nonnull %65, i64 noundef 8, i64 noundef 1, ptr noundef %.lcssa16) #40
  br label %22

67:                                               ; preds = %6
  %.lcssa17 = phi ptr [ %8, %6 ]
  %.lcssa8 = phi i32 [ %9, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  %68 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 8, i64 noundef 1, ptr noundef %.lcssa17) #40
  %69 = load i64, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  %70 = icmp sgt i64 %69, 5119
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = tail call ptr @err(ptr noundef nonnull @.str.41.12, ptr noundef null) #38
  br label %73

73:                                               ; preds = %71, %67
  %74 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %75 = tail call i64 @fread(ptr noundef %74, i64 noundef %69, i64 noundef 1, ptr noundef %.lcssa17) #40
  %76 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %77 = getelementptr inbounds i8, ptr %76, i64 %69
  store i8 0, ptr %77, align 1, !tbaa !11
  %78 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %79 = tail call ptr @rintern(ptr noundef %78) #38
  br label %22

80:                                               ; preds = %6
  %.lcssa9 = phi ptr [ %8, %6 ]
  %.lcssa = phi i32 [ %9, %6 ]
  %81 = sext i32 %.lcssa to i64
  %82 = tail call ptr @get_user_type_hooks(i64 noundef %81) #38
  %83 = getelementptr inbounds %struct.user_type_hooks, ptr %82, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !118
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = tail call ptr %84(i32 noundef %.lcssa, ptr noundef %0) #38
  br label %22

88:                                               ; preds = %80
  %89 = sitofp i32 %.lcssa to double
  %90 = tail call ptr @flocons(double noundef %89) #38
  %91 = tail call ptr @err(ptr noundef nonnull @.str.43.13, ptr noundef %90) #38
  br label %22
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @href(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = tail call i64 @href_index(ptr noundef %0, ptr noundef %1) #40, !range !145
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = tail call ptr @assoc(ptr noundef %1, ptr noundef %7) #40
  %9 = tail call ptr @cdr(ptr noundef %8) #38
  ret ptr %9
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @hset(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i64 @href_index(ptr noundef %0, ptr noundef %1) #40, !range !145
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = tail call ptr @assoc(ptr noundef %1, ptr noundef %8) #40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call ptr @setcdr(ptr noundef nonnull %9, ptr noundef %2) #38
  br label %18

13:                                               ; preds = %3
  %14 = tail call ptr @cons(ptr noundef %1, ptr noundef %2) #38
  %15 = tail call ptr @cons(ptr noundef %14, ptr noundef %8) #38
  %16 = load ptr, ptr %5, align 8, !tbaa !11
  %17 = getelementptr inbounds ptr, ptr %16, i64 %4
  store ptr %15, ptr %17, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi ptr [ %12, %11 ], [ %2, %13 ]
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @make_list(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = fptosi double %12 to i64
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %15, %10
  %16 = phi ptr [ %18, %15 ], [ null, %10 ]
  %17 = phi i64 [ %19, %15 ], [ %13, %10 ]
  %18 = tail call ptr @cons(ptr noundef %1, ptr noundef %16) #38
  %19 = add nsw i64 %17, -1
  %20 = icmp ugt i64 %17, 1
  br i1 %20, label %15, label %21, !llvm.loop !146

21:                                               ; preds = %15, %10
  %22 = phi ptr [ null, %10 ], [ %18, %15 ]
  ret ptr %22
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @href_index(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 16
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.37.16, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !11
  %13 = tail call i64 @c_sxhash(ptr noundef %1, i64 noundef %12) #40
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i64, ptr %11, align 8, !tbaa !11
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %10
  %19 = tail call ptr @err(ptr noundef nonnull @.str.38.17, ptr noundef nonnull %0) #38
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i64 [ 0, %18 ], [ %13, %15 ]
  ret i64 %21
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @assoc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %22, %2
  %5 = phi ptr [ %24, %22 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = tail call ptr @equal(ptr noundef %19, ptr noundef %0) #40
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17, %13, %9
  %23 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %4, !llvm.loop !147

26:                                               ; preds = %4
  %27 = tail call ptr @err(ptr noundef nonnull @.str.39.15, ptr noundef nonnull %1) #38
  br label %28

28:                                               ; preds = %26, %22, %17, %2
  %29 = phi ptr [ %27, %26 ], [ null, %2 ], [ %11, %17 ], [ null, %22 ]
  ret ptr %29
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @fast_print(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8, !tbaa !7
  %7 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %8 = icmp ult ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @err_stack(ptr noundef nonnull %6) #38
  br label %10

10:                                               ; preds = %9, %2
  %11 = call ptr @car(ptr noundef %1) #38
  %12 = call ptr @get_c_file(ptr noundef %11, ptr noundef null) #38
  %13 = load ptr, ptr %6, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !16
  %18 = sext i16 %17 to i32
  switch i32 %18, label %105 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %81
    i32 3, label %86
  ]

19:                                               ; preds = %15, %10
  %20 = call i32 @putc(i32 noundef 0, ptr noundef %12) #40
  br label %116

21:                                               ; preds = %27, %15
  %22 = phi ptr [ %30, %27 ], [ %13, %15 ]
  %23 = phi i64 [ %28, %27 ], [ 0, %15 ]
  %24 = getelementptr inbounds %struct.obj, ptr %22, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !16
  %26 = icmp eq i16 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = add nuw nsw i64 %23, 1
  %29 = getelementptr inbounds %struct.obj, ptr %22, i64 0, i32 2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !148

32:                                               ; preds = %27
  %.lcssa2 = phi i64 [ %28, %27 ]
  %.lcssa1 = phi i64 [ %23, %27 ]
  %33 = icmp eq i64 %.lcssa1, 0
  br i1 %33, label %36, label %44

34:                                               ; preds = %21
  %.lcssa = phi i64 [ %23, %21 ]
  %35 = icmp eq i64 %.lcssa, 1
  br i1 %35, label %36, label %61

36:                                               ; preds = %34, %32
  %37 = call i32 @putc(i32 noundef 1, ptr noundef %12) #40
  %38 = load ptr, ptr %6, align 8, !tbaa !7
  %39 = call ptr @car(ptr noundef %38) #38
  %40 = call ptr @fast_print(ptr noundef %39, ptr noundef %1) #40
  %41 = load ptr, ptr %6, align 8, !tbaa !7
  %42 = call ptr @cdr(ptr noundef %41) #38
  %43 = call ptr @fast_print(ptr noundef %42, ptr noundef %1) #40
  br label %116

44:                                               ; preds = %32
  %45 = call i32 @putc(i32 noundef 125, ptr noundef %12) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store i64 %.lcssa2, ptr %5, align 8, !tbaa !12
  %46 = call i64 @fwrite(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 1, ptr noundef %12) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %47 = load ptr, ptr %6, align 8, !tbaa !11
  %48 = icmp eq ptr %47, null
  br i1 %48, label %116, label %49

49:                                               ; preds = %54, %44
  %50 = phi ptr [ %59, %54 ], [ %47, %44 ]
  %51 = getelementptr inbounds %struct.obj, ptr %50, i64 0, i32 1
  %52 = load i16, ptr %51, align 2, !tbaa !16
  %53 = icmp eq i16 %52, 1
  br i1 %53, label %54, label %116

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.obj, ptr %50, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = call ptr @fast_print(ptr noundef %56, ptr noundef %1) #40
  %58 = getelementptr inbounds %struct.obj, ptr %50, i64 0, i32 2, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %116, label %49, !llvm.loop !149

61:                                               ; preds = %34
  %62 = call i32 @putc(i32 noundef 124, ptr noundef %12) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %.lcssa, ptr %4, align 8, !tbaa !12
  %63 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %12) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %64 = load ptr, ptr %6, align 8, !tbaa !11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %71, %61
  %67 = phi ptr [ %76, %71 ], [ %64, %61 ]
  %68 = getelementptr inbounds %struct.obj, ptr %67, i64 0, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !16
  %70 = icmp eq i16 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.obj, ptr %67, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !11
  %74 = call ptr @fast_print(ptr noundef %73, ptr noundef %1) #40
  %75 = getelementptr inbounds %struct.obj, ptr %67, i64 0, i32 2, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %66, !llvm.loop !150

78:                                               ; preds = %71, %66, %61
  %79 = phi ptr [ null, %61 ], [ null, %71 ], [ %67, %66 ]
  %80 = call ptr @fast_print(ptr noundef %79, ptr noundef %1) #40
  br label %116

81:                                               ; preds = %15
  %82 = call i32 @putc(i32 noundef 2, ptr noundef %12) #40
  %83 = load ptr, ptr %6, align 8, !tbaa !7
  %84 = getelementptr inbounds %struct.obj, ptr %83, i64 0, i32 2
  %85 = call i64 @fwrite(ptr noundef nonnull %84, i64 noundef 8, i64 noundef 1, ptr noundef %12) #40
  br label %116

86:                                               ; preds = %15
  %87 = call i64 @fast_print_table(ptr noundef nonnull %13, ptr noundef %1) #40, !range !38
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %86
  %90 = call i32 @putc(i32 noundef 3, ptr noundef %12) #40
  %91 = load ptr, ptr %6, align 8, !tbaa !7
  %92 = getelementptr inbounds %struct.obj, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !11
  %94 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %93) #39
  %95 = icmp sgt i64 %94, 5119
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = call ptr @err(ptr noundef nonnull @.str.41.12, ptr noundef nonnull %91) #38
  br label %98

98:                                               ; preds = %96, %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store i64 %94, ptr %3, align 8, !tbaa !12
  %99 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %12) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %100 = load ptr, ptr %6, align 8, !tbaa !7
  %101 = getelementptr inbounds %struct.obj, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = call i64 @fwrite(ptr noundef %102, i64 noundef %94, i64 noundef 1, ptr noundef %12) #40
  %104 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %116

105:                                              ; preds = %15
  %106 = sext i16 %17 to i64
  %107 = call ptr @get_user_type_hooks(i64 noundef %106) #38
  %108 = getelementptr inbounds %struct.user_type_hooks, ptr %107, i64 0, i32 7
  %109 = load ptr, ptr %108, align 8, !tbaa !117
  %110 = icmp eq ptr %109, null
  %111 = load ptr, ptr %6, align 8, !tbaa !7
  br i1 %110, label %114, label %112

112:                                              ; preds = %105
  %113 = call ptr %109(ptr noundef %111, ptr noundef %1) #38
  br label %116

114:                                              ; preds = %105
  %115 = call ptr @err(ptr noundef nonnull @.str.42.25, ptr noundef %111) #38
  br label %116

116:                                              ; preds = %114, %112, %98, %86, %81, %78, %54, %49, %44, %36, %19
  %117 = phi ptr [ %113, %112 ], [ %115, %114 ], [ %104, %98 ], [ null, %81 ], [ null, %19 ], [ null, %78 ], [ null, %36 ], [ null, %86 ], [ null, %44 ], [ null, %54 ], [ null, %49 ]
  ret ptr %117
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @fast_print_table(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = tail call ptr @car(ptr noundef %1) #38
  %6 = tail call ptr @get_c_file(ptr noundef %5, ptr noundef null) #38
  %7 = tail call ptr @cdr(ptr noundef %1) #38
  %8 = tail call ptr @car(ptr noundef %7) #38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @href(ptr noundef nonnull %8, ptr noundef %0) #40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @putc(i32 noundef 127, ptr noundef %6) #40
  %15 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %11) #38
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fptosi double %22 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %23, ptr %4, align 8, !tbaa !12
  %24 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 1, ptr noundef %6) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %50

25:                                               ; preds = %10
  %26 = tail call ptr @cdr(ptr noundef %1) #38
  %27 = tail call ptr @cdr(ptr noundef %26) #38
  %28 = tail call ptr @car(ptr noundef %27) #38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @hset(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %28) #40
  %32 = load ptr, ptr @bashnum, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.obj, ptr %32, i64 0, i32 2
  store double 1.000000e+00, ptr %33, align 8, !tbaa !11
  %34 = tail call ptr @cdr(ptr noundef %1) #38
  %35 = tail call ptr @cdr(ptr noundef %34) #38
  %36 = load ptr, ptr @bashnum, align 8, !tbaa !7
  %37 = tail call ptr @plus(ptr noundef nonnull %28, ptr noundef %36) #38
  %38 = tail call ptr @setcar(ptr noundef %35, ptr noundef %37) #38
  %39 = tail call i32 @putc(i32 noundef 126, ptr noundef %6) #40
  %40 = getelementptr inbounds %struct.obj, ptr %28, i64 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !16
  %42 = icmp eq i16 %41, 2
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %28) #38
  br label %45

45:                                               ; preds = %43, %30
  %46 = getelementptr inbounds %struct.obj, ptr %28, i64 0, i32 2
  %47 = load double, ptr %46, align 8, !tbaa !11
  %48 = fptosi double %47 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store i64 %48, ptr %3, align 8, !tbaa !12
  %49 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %6) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br label %50

50:                                               ; preds = %45, %25, %20, %2
  %51 = phi i64 [ 0, %20 ], [ 1, %45 ], [ 1, %2 ], [ 1, %25 ]
  ret i64 %51
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @init_storage_a() #0 {
  tail call void @gc_protect(ptr noundef nonnull @bashnum) #38
  %1 = tail call ptr @newcell(i64 noundef 2) #38
  store ptr %1, ptr @bashnum, align 8, !tbaa !7
  tail call void @init_storage_a1(i64 noundef 13) #40
  tail call void @init_storage_a1(i64 noundef 14) #40
  tail call void @init_storage_a1(i64 noundef 15) #40
  tail call void @init_storage_a1(i64 noundef 16) #40
  tail call void @init_storage_a1(i64 noundef 18) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @rfs_getc(ptr nocapture noundef %0) #31 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %7, ptr %0, align 8, !tbaa !7
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %6, %5 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @rfs_ungetc(i8 zeroext %0, ptr nocapture noundef %1) #32 {
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = getelementptr inbounds i8, ptr %3, i64 -1
  store ptr %4, ptr %1, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @read_from_string(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gen_readio, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #42
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  store ptr %4, ptr %2, align 8, !tbaa !7
  store ptr @rfs_getc, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 1
  store ptr @rfs_ungetc, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.gen_readio, ptr %3, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !67
  %7 = call ptr @readtl(ptr noundef nonnull %3) #38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %7
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @pts_puts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39
  %4 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39
  %8 = load i64, ptr %4, align 8, !tbaa !11
  %9 = sub i64 %8, %7
  %10 = tail call i64 @llvm.umin.i64(i64 %3, i64 %9)
  %11 = getelementptr inbounds i8, ptr %6, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %0, i64 %10, i1 false)
  %12 = load ptr, ptr %5, align 8, !tbaa !11
  %13 = add i64 %10, %7
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !11
  %15 = icmp ugt i64 %3, %9
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = tail call ptr @err(ptr noundef nonnull @.str.12.88, ptr noundef null) #38
  br label %18

18:                                               ; preds = %16, %2
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nounwind optsize uwtable
define internal ptr @print_to_string(ptr noundef %0, ptr noundef returned %1, ptr noundef readnone %2) #0 {
  %4 = alloca %struct.gen_readio, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #42
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = icmp eq i16 %8, 13
  br i1 %9, label %12, label %10

10:                                               ; preds = %6, %3
  %11 = tail call ptr @err(ptr noundef nonnull @.str.13.89, ptr noundef %1) #38
  br label %12

12:                                               ; preds = %10, %6
  store ptr null, ptr %4, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.gen_readio, ptr %4, i64 0, i32 1
  store ptr @pts_puts, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.gen_readio, ptr %4, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !63
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  store i8 0, ptr %18, align 1, !tbaa !11
  br label %19

19:                                               ; preds = %16, %12
  %20 = call ptr @lprin1g(ptr noundef %0, ptr noundef nonnull %4) #38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #42
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @aref1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.14, ptr noundef %1) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = fptosi double %12 to i64
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call ptr @err(ptr noundef nonnull @.str.15.90, ptr noundef nonnull %1) #38
  br label %17

17:                                               ; preds = %15, %10
  %18 = icmp eq ptr %0, null
  br i1 %18, label %85, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !16
  %22 = sext i16 %21 to i32
  switch i32 %22, label %85 [
    i32 13, label %23
    i32 18, label %36
    i32 14, label %49
    i32 15, label %61
    i32 16, label %74
  ]

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !11
  %26 = icmp sgt i64 %25, %13
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @err(ptr noundef nonnull @.str.16.91, ptr noundef nonnull %1) #38
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds i8, ptr %31, i64 %13
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = uitofp i8 %33 to double
  %35 = tail call ptr @flocons(double noundef %34) #38
  br label %87

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !11
  %39 = icmp sgt i64 %38, %13
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = tail call ptr @err(ptr noundef nonnull @.str.16.91, ptr noundef nonnull %1) #38
  br label %42

42:                                               ; preds = %40, %36
  %43 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = getelementptr inbounds i8, ptr %44, i64 %13
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = sitofp i8 %46 to double
  %48 = tail call ptr @flocons(double noundef %47) #38
  br label %87

49:                                               ; preds = %19
  %50 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !11
  %52 = icmp sgt i64 %51, %13
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @err(ptr noundef nonnull @.str.16.91, ptr noundef nonnull %1) #38
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = getelementptr inbounds double, ptr %57, i64 %13
  %59 = load double, ptr %58, align 8, !tbaa !36
  %60 = tail call ptr @flocons(double noundef %59) #38
  br label %87

61:                                               ; preds = %19
  %62 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !11
  %64 = icmp sgt i64 %63, %13
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @err(ptr noundef nonnull @.str.16.91, ptr noundef nonnull %1) #38
  br label %67

67:                                               ; preds = %65, %61
  %68 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !11
  %70 = getelementptr inbounds i64, ptr %69, i64 %13
  %71 = load i64, ptr %70, align 8, !tbaa !12
  %72 = sitofp i64 %71 to double
  %73 = tail call ptr @flocons(double noundef %72) #38
  br label %87

74:                                               ; preds = %19
  %75 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !11
  %77 = icmp sgt i64 %76, %13
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call ptr @err(ptr noundef nonnull @.str.16.91, ptr noundef nonnull %1) #38
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = getelementptr inbounds ptr, ptr %82, i64 %13
  %84 = load ptr, ptr %83, align 8, !tbaa !7
  br label %87

85:                                               ; preds = %19, %17
  %86 = tail call ptr @err(ptr noundef nonnull @.str.17.92, ptr noundef %0) #38
  br label %87

87:                                               ; preds = %85, %80, %67, %55, %42, %29
  %88 = phi ptr [ %86, %85 ], [ %84, %80 ], [ %73, %67 ], [ %60, %55 ], [ %48, %42 ], [ %35, %29 ]
  ret ptr %88
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @aset1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @err(ptr noundef nonnull @.str.20.93, ptr noundef %1) #38
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = fptosi double %13 to i64
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @err(ptr noundef nonnull @.str.21, ptr noundef nonnull %1) #38
  br label %18

18:                                               ; preds = %16, %11
  %19 = icmp eq ptr %0, null
  br i1 %19, label %96, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = sext i16 %22 to i32
  switch i32 %23, label %96 [
    i32 13, label %24
    i32 18, label %24
    i32 14, label %45
    i32 15, label %65
    i32 16, label %86
  ]

24:                                               ; preds = %20, %20
  %25 = icmp eq ptr %2, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !16
  %29 = icmp eq i16 %28, 2
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %24
  %31 = tail call ptr @err(ptr noundef nonnull @.str.19.94, ptr noundef %2) #38
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !11
  %35 = icmp sgt i64 %34, %14
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call ptr @err(ptr noundef nonnull @.str.18.95, ptr noundef nonnull %1) #38
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %40 = load double, ptr %39, align 8, !tbaa !11
  %41 = fptosi double %40 to i8
  %42 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = getelementptr inbounds i8, ptr %43, i64 %14
  store i8 %41, ptr %44, align 1, !tbaa !11
  br label %98

45:                                               ; preds = %20
  %46 = icmp eq ptr %2, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !16
  %50 = icmp eq i16 %49, 2
  br i1 %50, label %53, label %51

51:                                               ; preds = %47, %45
  %52 = tail call ptr @err(ptr noundef nonnull @.str.19.94, ptr noundef %2) #38
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !11
  %56 = icmp sgt i64 %55, %14
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call ptr @err(ptr noundef nonnull @.str.18.95, ptr noundef nonnull %1) #38
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %61 = load double, ptr %60, align 8, !tbaa !11
  %62 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = getelementptr inbounds double, ptr %63, i64 %14
  store double %61, ptr %64, align 8, !tbaa !36
  br label %98

65:                                               ; preds = %20
  %66 = icmp eq ptr %2, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %69 = load i16, ptr %68, align 2, !tbaa !16
  %70 = icmp eq i16 %69, 2
  br i1 %70, label %73, label %71

71:                                               ; preds = %67, %65
  %72 = tail call ptr @err(ptr noundef nonnull @.str.19.94, ptr noundef %2) #38
  br label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !11
  %76 = icmp sgt i64 %75, %14
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = tail call ptr @err(ptr noundef nonnull @.str.18.95, ptr noundef nonnull %1) #38
  br label %79

79:                                               ; preds = %77, %73
  %80 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %81 = load double, ptr %80, align 8, !tbaa !11
  %82 = fptosi double %81 to i64
  %83 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = getelementptr inbounds i64, ptr %84, i64 %14
  store i64 %82, ptr %85, align 8, !tbaa !12
  br label %98

86:                                               ; preds = %20
  %87 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !11
  %89 = icmp sgt i64 %88, %14
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = tail call ptr @err(ptr noundef nonnull @.str.18.95, ptr noundef nonnull %1) #38
  br label %92

92:                                               ; preds = %90, %86
  %93 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = getelementptr inbounds ptr, ptr %94, i64 %14
  store ptr %2, ptr %95, align 8, !tbaa !7
  br label %98

96:                                               ; preds = %20, %18
  %97 = tail call ptr @err(ptr noundef nonnull @.str.22.96, ptr noundef %0) #38
  br label %98

98:                                               ; preds = %96, %92, %79, %59, %38
  %99 = phi ptr [ %97, %96 ], [ %2, %92 ], [ %2, %79 ], [ %2, %59 ], [ %2, %38 ]
  ret ptr %99
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @arcons(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = tail call ptr @cons(ptr noundef null, ptr noundef null) #38
  switch i64 %0, label %74 [
    i64 14, label %6
    i64 15, label %20
    i64 13, label %34
    i64 18, label %49
    i64 16, label %62
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  store i64 %1, ptr %7, align 8, !tbaa !11
  %8 = shl i64 %1, 3
  %9 = tail call ptr @must_malloc(i64 noundef %8) #38
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !11
  %11 = icmp ne i64 %2, 0
  %12 = icmp sgt i64 %1, 0
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %14, %6
  %15 = phi i64 [ %18, %14 ], [ 0, %6 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !11
  %17 = getelementptr inbounds double, ptr %16, i64 %15
  store double 0.000000e+00, ptr %17, align 8, !tbaa !36
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %76, label %14, !llvm.loop !151

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  store i64 %1, ptr %21, align 8, !tbaa !11
  %22 = shl i64 %1, 3
  %23 = tail call ptr @must_malloc(i64 noundef %22) #38
  %24 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !11
  %25 = icmp ne i64 %2, 0
  %26 = icmp sgt i64 %1, 0
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %28, %20
  %29 = phi i64 [ %32, %28 ], [ 0, %20 ]
  %30 = load ptr, ptr %24, align 8, !tbaa !11
  %31 = getelementptr inbounds i64, ptr %30, i64 %29
  store i64 0, ptr %31, align 8, !tbaa !12
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, %1
  br i1 %33, label %76, label %28, !llvm.loop !152

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  store i64 %1, ptr %35, align 8, !tbaa !11
  %36 = add nsw i64 %1, 1
  %37 = tail call ptr @must_malloc(i64 noundef %36) #38
  %38 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %37, ptr %38, align 8, !tbaa !11
  %39 = getelementptr inbounds i8, ptr %37, i64 %1
  store i8 0, ptr %39, align 1, !tbaa !11
  %40 = icmp ne i64 %2, 0
  %41 = icmp sgt i64 %1, 0
  %42 = and i1 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %43, %34
  %44 = phi i64 [ %47, %43 ], [ 0, %34 ]
  %45 = load ptr, ptr %38, align 8, !tbaa !11
  %46 = getelementptr inbounds i8, ptr %45, i64 %44
  store i8 32, ptr %46, align 1, !tbaa !11
  %47 = add nuw nsw i64 %44, 1
  %48 = icmp eq i64 %47, %1
  br i1 %48, label %49, label %43, !llvm.loop !153

49:                                               ; preds = %43, %34, %3
  %50 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  store i64 %1, ptr %50, align 8, !tbaa !11
  %51 = tail call ptr @must_malloc(i64 noundef %1) #38
  %52 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !11
  %53 = icmp ne i64 %2, 0
  %54 = icmp sgt i64 %1, 0
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %56, %49
  %57 = phi i64 [ %60, %56 ], [ 0, %49 ]
  %58 = load ptr, ptr %52, align 8, !tbaa !11
  %59 = getelementptr inbounds i8, ptr %58, i64 %57
  store i8 0, ptr %59, align 1, !tbaa !11
  %60 = add nuw nsw i64 %57, 1
  %61 = icmp eq i64 %60, %1
  br i1 %61, label %76, label %56, !llvm.loop !154

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  store i64 %1, ptr %63, align 8, !tbaa !11
  %64 = shl i64 %1, 3
  %65 = tail call ptr @must_malloc(i64 noundef %64) #38
  %66 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  store ptr %65, ptr %66, align 8, !tbaa !11
  %67 = icmp sgt i64 %1, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %68, %62
  %69 = phi i64 [ %72, %68 ], [ 0, %62 ]
  %70 = load ptr, ptr %66, align 8, !tbaa !11
  %71 = getelementptr inbounds ptr, ptr %70, i64 %69
  store ptr null, ptr %71, align 8, !tbaa !7
  %72 = add nuw nsw i64 %69, 1
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %76, label %68, !llvm.loop !155

74:                                               ; preds = %3
  %75 = tail call ptr @errswitch() #38
  br label %76

76:                                               ; preds = %74, %68, %62, %56, %49, %28, %20, %14, %6
  %77 = trunc i64 %0 to i16
  %78 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  store i16 %77, ptr %78, align 2, !tbaa !16
  %79 = tail call i64 @no_interrupt(i64 noundef %4) #38
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @mallocl(ptr nocapture noundef writeonly %0, i64 noundef %1) #0 {
  %3 = lshr i64 %1, 3
  %4 = and i64 %1, 7
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = add nuw nsw i64 %3, %6
  %8 = tail call ptr @arcons(i64 noundef 15, i64 noundef %7, i64 noundef 0) #40
  %9 = getelementptr inbounds %struct.obj, ptr %8, i64 0, i32 2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  store ptr %10, ptr %0, align 8, !tbaa !7
  ret ptr %8
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_append(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = tail call ptr @strcons(i64 noundef 0, ptr noundef null) #40
  %5 = getelementptr inbounds %struct.obj, ptr %4, i64 0, i32 2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  store i8 0, ptr %6, align 1, !tbaa !11
  br label %27

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %13, %7 ], [ 0, %1 ]
  %9 = phi ptr [ %14, %7 ], [ %0, %1 ]
  %10 = tail call ptr @car(ptr noundef nonnull %9) #38
  %11 = tail call ptr @get_c_string(ptr noundef %10) #38
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #39
  %13 = add i64 %12, %8
  %14 = tail call ptr @cdr(ptr noundef nonnull %9) #38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !156

16:                                               ; preds = %7
  %.lcssa = phi i64 [ %13, %7 ]
  %17 = tail call ptr @strcons(i64 noundef %.lcssa, ptr noundef null) #40
  %18 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  store i8 0, ptr %19, align 1, !tbaa !11
  br i1 %2, label %27, label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %25, %20 ], [ %0, %16 ]
  %22 = tail call ptr @car(ptr noundef nonnull %21) #38
  %23 = tail call ptr @get_c_string(ptr noundef %22) #38
  %24 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %23) #38
  %25 = tail call ptr @cdr(ptr noundef nonnull %21) #38
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %20, !llvm.loop !157

27:                                               ; preds = %20, %16, %3
  %28 = phi ptr [ %4, %3 ], [ %17, %16 ], [ %17, %20 ]
  ret ptr %28
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @bytes_append(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @arcons(i64 noundef 18, i64 noundef 0, i64 noundef 0) #40
  br label %30

6:                                                ; preds = %6, %1
  %7 = phi i64 [ %12, %6 ], [ 0, %1 ]
  %8 = phi ptr [ %13, %6 ], [ %0, %1 ]
  %9 = call ptr @car(ptr noundef nonnull %8) #38
  %10 = call ptr @get_c_string_dim(ptr noundef %9, ptr noundef nonnull %2) #38
  %11 = load i64, ptr %2, align 8, !tbaa !12
  %12 = add nsw i64 %11, %7
  %13 = call ptr @cdr(ptr noundef nonnull %8) #38
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !158

15:                                               ; preds = %6
  %.lcssa = phi i64 [ %12, %6 ]
  %16 = call ptr @arcons(i64 noundef 18, i64 noundef %.lcssa, i64 noundef 0) #40
  %17 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  br i1 %3, label %30, label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ %27, %19 ], [ 0, %15 ]
  %21 = phi ptr [ %28, %19 ], [ %0, %15 ]
  %22 = call ptr @car(ptr noundef nonnull %21) #38
  %23 = call ptr @get_c_string_dim(ptr noundef %22, ptr noundef nonnull %2) #38
  %24 = getelementptr inbounds i8, ptr %18, i64 %20
  %25 = load i64, ptr %2, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %23, i64 %25, i1 false)
  %26 = load i64, ptr %2, align 8, !tbaa !12
  %27 = add nsw i64 %26, %20
  %28 = call ptr @cdr(ptr noundef nonnull %21) #38
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %19, !llvm.loop !159

30:                                               ; preds = %19, %15, %4
  %31 = phi ptr [ %5, %4 ], [ %16, %15 ], [ %16, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %31
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @substring(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42
  %5 = call ptr @get_c_string_dim(ptr noundef %0, ptr noundef nonnull %4) #38
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %3
  %12 = call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = fptosi double %15 to i64
  %17 = icmp eq ptr %2, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i64, ptr %4, align 8, !tbaa !12
  br label %30

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = icmp eq i16 %22, 2
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %2) #38
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %28 = load double, ptr %27, align 8, !tbaa !11
  %29 = fptosi double %28 to i64
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i64 [ %19, %18 ], [ %29, %26 ]
  %32 = icmp slt i64 %16, 0
  %33 = icmp slt i64 %31, %16
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call ptr @err(ptr noundef nonnull @.str.30.99, ptr noundef nonnull %1) #38
  br label %37

37:                                               ; preds = %35, %30
  %38 = icmp slt i64 %31, 0
  %39 = load i64, ptr %4, align 8
  %40 = icmp sgt i64 %31, %39
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call ptr @err(ptr noundef nonnull @.str.31.100, ptr noundef %2) #38
  br label %44

44:                                               ; preds = %42, %37
  %45 = sub nsw i64 %31, %16
  %46 = getelementptr inbounds i8, ptr %5, i64 %16
  %47 = call ptr @strcons(i64 noundef %45, ptr noundef %46) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42
  ret ptr %47
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @get_c_long(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = fptosi double %11 to i64
  ret i64 %12
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_search(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %1) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %3 to i64
  %10 = sub i64 %8, %9
  %11 = sitofp i64 %10 to double
  %12 = tail call ptr @flocons(double noundef %11) #38
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi ptr [ %12, %7 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_trim(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %11, %1
  %6 = phi i8 [ %13, %11 ], [ %3, %1 ]
  %7 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %8 = sext i8 %6 to i32
  %9 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.32.103, i32 %8, i64 5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !160

15:                                               ; preds = %11, %5, %1
  %16 = phi ptr [ %2, %1 ], [ %12, %11 ], [ %7, %5 ]
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #39
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  br label %19

19:                                               ; preds = %22, %15
  %20 = phi ptr [ %18, %15 ], [ %23, %22 ]
  %21 = icmp ugt ptr %20, %16
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 -1
  %24 = load i8, ptr %23, align 1, !tbaa !11
  %25 = sext i8 %24 to i32
  %26 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.32.103, i32 %25, i64 5)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !161

28:                                               ; preds = %22, %19
  %.lcssa = phi ptr [ %20, %22 ], [ %20, %19 ]
  %29 = ptrtoint ptr %.lcssa to i64
  %30 = ptrtoint ptr %16 to i64
  %31 = sub i64 %29, %30
  %32 = tail call ptr @strcons(i64 noundef %31, ptr noundef nonnull %16) #40
  ret ptr %32
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_trim_left(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %11, %1
  %6 = phi i8 [ %13, %11 ], [ %3, %1 ]
  %7 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %8 = sext i8 %6 to i32
  %9 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.32.103, i32 %8, i64 5)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !162

15:                                               ; preds = %11, %5, %1
  %16 = phi ptr [ %2, %1 ], [ %12, %11 ], [ %7, %5 ]
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #39
  %18 = tail call ptr @strcons(i64 noundef %17, ptr noundef nonnull %16) #40
  ret ptr %18
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_trim_right(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %4 = getelementptr inbounds i8, ptr %2, i64 %3
  br label %5

5:                                                ; preds = %8, %1
  %6 = phi ptr [ %4, %1 ], [ %9, %8 ]
  %7 = icmp ugt ptr %6, %2
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %6, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = sext i8 %10 to i32
  %12 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.32.103, i32 %11, i64 5)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !163

14:                                               ; preds = %8, %5
  %.lcssa = phi ptr [ %6, %8 ], [ %6, %5 ]
  %15 = ptrtoint ptr %.lcssa to i64
  %16 = ptrtoint ptr %2 to i64
  %17 = sub i64 %15, %16
  %18 = tail call ptr @strcons(i64 noundef %17, ptr noundef %2) #40
  ret ptr %18
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_upcase(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %4 = tail call ptr @strcons(i64 noundef %3, ptr noundef %2) #40
  %5 = tail call ptr @get_c_string(ptr noundef %4) #38
  %6 = icmp sgt i64 %3, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @__ctype_toupper_loc() #45
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %18, %9 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !7
  %12 = getelementptr inbounds i8, ptr %5, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %12, align 1, !tbaa !11
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, %3
  br i1 %19, label %20, label %9, !llvm.loop !164

20:                                               ; preds = %9, %1
  ret ptr %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_downcase(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %4 = tail call ptr @strcons(i64 noundef %3, ptr noundef %2) #40
  %5 = tail call ptr @get_c_string(ptr noundef %4) #38
  %6 = icmp sgt i64 %3, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = tail call ptr @__ctype_tolower_loc() #45
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %18, %9 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !7
  %12 = getelementptr inbounds i8, ptr %5, i64 %10
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %12, align 1, !tbaa !11
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, %3
  br i1 %19, label %20, label %9, !llvm.loop !165

20:                                               ; preds = %9, %1
  ret ptr %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal ptr @lreadstring(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %3 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %52, %1
  %6 = phi i32 [ 0, %1 ], [ %48, %52 ]
  %7 = phi ptr [ %2, %1 ], [ %54, %52 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !64
  %9 = load ptr, ptr %3, align 8, !tbaa !67
  %10 = tail call i32 %8(ptr noundef %9) #38
  switch i32 %10, label %46 [
    i32 -1, label %55
    i32 34, label %55
    i32 92, label %11
  ]

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !64
  %13 = load ptr, ptr %3, align 8, !tbaa !67
  %14 = tail call i32 %12(ptr noundef %13) #38
  switch i32 %14, label %46 [
    i32 -1, label %15
    i32 110, label %17
    i32 116, label %18
    i32 114, label %19
    i32 100, label %20
    i32 78, label %21
    i32 115, label %22
    i32 48, label %23
  ]

15:                                               ; preds = %11
  %16 = tail call ptr @err(ptr noundef nonnull @.str.33.106, ptr noundef null) #38
  br label %46

17:                                               ; preds = %11
  br label %46

18:                                               ; preds = %11
  br label %46

19:                                               ; preds = %11
  br label %46

20:                                               ; preds = %11
  br label %46

21:                                               ; preds = %11
  br label %46

22:                                               ; preds = %11
  br label %46

23:                                               ; preds = %39, %11
  %24 = phi i32 [ %42, %39 ], [ 0, %11 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !64
  %26 = load ptr, ptr %3, align 8, !tbaa !67
  %27 = tail call i32 %25(ptr noundef %26) #38
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = tail call ptr @err(ptr noundef nonnull @.str.34.107, ptr noundef null) #38
  br label %31

31:                                               ; preds = %29, %23
  %32 = tail call ptr @__ctype_b_loc() #45
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = sext i32 %27 to i64
  %35 = getelementptr inbounds i16, ptr %33, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !58
  %37 = and i16 %36, 2048
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = shl nsw i32 %24, 3
  %41 = add i32 %40, -48
  %42 = add i32 %41, %27
  br label %23

43:                                               ; preds = %31
  %.lcssa1 = phi i32 [ %24, %31 ]
  %.lcssa = phi i32 [ %27, %31 ]
  %44 = load ptr, ptr %4, align 8, !tbaa !66
  %45 = load ptr, ptr %3, align 8, !tbaa !67
  tail call void %44(i32 noundef %.lcssa, ptr noundef %45) #38
  br label %46

46:                                               ; preds = %43, %22, %21, %20, %19, %18, %17, %15, %11, %5
  %47 = phi i32 [ -1, %15 ], [ %.lcssa1, %43 ], [ 32, %22 ], [ 0, %21 ], [ 4, %20 ], [ 13, %19 ], [ 9, %18 ], [ 10, %17 ], [ %10, %5 ], [ %14, %11 ]
  %48 = add nuw nsw i32 %6, 1
  %49 = icmp ugt i32 %6, 5118
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = tail call ptr @err(ptr noundef nonnull @.str.35.108, ptr noundef null) #38
  br label %52

52:                                               ; preds = %50, %46
  %53 = trunc i32 %47 to i8
  %54 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %53, ptr %7, align 1, !tbaa !11
  br label %5, !llvm.loop !166

55:                                               ; preds = %5, %5
  %.lcssa3 = phi i32 [ %6, %5 ], [ %6, %5 ]
  %.lcssa2 = phi ptr [ %7, %5 ], [ %7, %5 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !11
  %56 = zext i32 %.lcssa3 to i64
  %57 = load ptr, ptr @tkbuffer, align 8, !tbaa !7
  %58 = tail call ptr @strcons(i64 noundef %56, ptr noundef %57) #40
  ret ptr %58
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lreadsharp(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !64
  %3 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = tail call i32 %2(ptr noundef %4) #38
  switch i32 %5, label %30 [
    i32 40, label %6
    i32 46, label %25
    i32 102, label %32
    i32 116, label %28
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gen_readio, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = load ptr, ptr %3, align 8, !tbaa !67
  tail call void %8(i32 noundef 40, ptr noundef %9) #38
  %10 = tail call ptr @lreadr(ptr noundef nonnull %0) #38
  %11 = tail call i64 @nlength(ptr noundef %10) #40
  %12 = tail call ptr @arcons(i64 noundef 16, i64 noundef %11, i64 noundef 1) #40
  %13 = icmp sgt i64 %11, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2, i32 0, i32 1
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %23, %16 ]
  %18 = phi ptr [ %10, %14 ], [ %22, %16 ]
  %19 = tail call ptr @car(ptr noundef %18) #38
  %20 = load ptr, ptr %15, align 8, !tbaa !11
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  store ptr %19, ptr %21, align 8, !tbaa !7
  %22 = tail call ptr @cdr(ptr noundef %18) #38
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %32, label %16, !llvm.loop !167

25:                                               ; preds = %1
  %26 = tail call ptr @lreadr(ptr noundef nonnull %0) #38
  %27 = tail call ptr @leval(ptr noundef %26, ptr noundef null) #38
  br label %32

28:                                               ; preds = %1
  %29 = tail call ptr @flocons(double noundef 1.000000e+00) #38
  br label %32

30:                                               ; preds = %1
  %31 = tail call ptr @err(ptr noundef nonnull @.str.36.111, ptr noundef null) #38
  br label %32

32:                                               ; preds = %30, %28, %25, %16, %6, %1
  %33 = phi ptr [ %31, %30 ], [ %29, %28 ], [ %27, %25 ], [ null, %1 ], [ %12, %6 ], [ %12, %16 ]
  ret ptr %33
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @nlength(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i32
  switch i32 %6, label %36 [
    i32 13, label %7
    i32 18, label %11
    i32 14, label %14
    i32 15, label %17
    i32 16, label %20
    i32 0, label %38
    i32 1, label %23
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #39
  br label %38

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !11
  br label %38

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !11
  br label %38

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !11
  br label %38

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !11
  br label %38

23:                                               ; preds = %29, %3
  %24 = phi i64 [ %32, %29 ], [ 0, %3 ]
  %25 = phi ptr [ %31, %29 ], [ %0, %3 ]
  %26 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !16
  %28 = icmp eq i16 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = add nuw nsw i64 %24, 1
  %33 = icmp eq ptr %31, null
  br i1 %33, label %38, label %23, !llvm.loop !168

34:                                               ; preds = %23
  %.lcssa = phi i64 [ %24, %23 ]
  %35 = tail call ptr @err(ptr noundef nonnull @.str.46.112, ptr noundef nonnull %0) #38
  br label %38

36:                                               ; preds = %3
  %37 = tail call ptr @err(ptr noundef nonnull @.str.47.113, ptr noundef nonnull %0) #38
  br label %38

38:                                               ; preds = %36, %34, %29, %20, %17, %14, %11, %7, %3, %1
  %39 = phi i64 [ 0, %36 ], [ %22, %20 ], [ %19, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %7 ], [ 0, %3 ], [ %.lcssa, %34 ], [ 0, %1 ], [ %32, %29 ]
  ret i64 %39
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @sxhash(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !11
  %11 = fptosi double %10 to i64
  br label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i64 [ %11, %8 ], [ 10000, %4 ], [ 10000, %2 ]
  %14 = tail call i64 @c_sxhash(ptr noundef %0, i64 noundef %13) #40
  %15 = sitofp i64 %14 to double
  %16 = tail call ptr @flocons(double noundef %15) #38
  ret ptr %16
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @assv(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %22, %2
  %5 = phi ptr [ %24, %22 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = tail call ptr @eql(ptr noundef %19, ptr noundef %0) #38
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %17, %13, %9
  %23 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %4, !llvm.loop !169

26:                                               ; preds = %4
  %27 = tail call ptr @err(ptr noundef nonnull @.str.40.114, ptr noundef nonnull %1) #38
  br label %28

28:                                               ; preds = %26, %22, %17, %2
  %29 = phi ptr [ %27, %26 ], [ null, %2 ], [ %11, %17 ], [ null, %22 ]
  ret ptr %29
}

; Function Attrs: nounwind optsize uwtable
define internal double @get_c_double(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  ret double %11
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lfread(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @stdin, align 8, !tbaa !7
  %4 = tail call ptr @get_c_file(ptr noundef %1, ptr noundef %3) #38
  %5 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = sext i16 %9 to i32
  switch i32 %10, label %11 [
    i32 13, label %15
    i32 18, label %15
  ]

11:                                               ; preds = %7
  %12 = icmp eq i16 %9, 2
  br i1 %12, label %22, label %13

13:                                               ; preds = %11, %2
  %14 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %22

15:                                               ; preds = %7, %7
  %16 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %17 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = load i64, ptr %16, align 8, !tbaa !11
  %20 = tail call i64 @fread(ptr noundef %18, i64 noundef 1, i64 noundef %19, ptr noundef %4) #40
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %32, label %48

22:                                               ; preds = %13, %11
  %23 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %24 = load double, ptr %23, align 8, !tbaa !11
  %25 = fptosi double %24 to i64
  %26 = add nsw i64 %25, 1
  %27 = tail call ptr @must_malloc(i64 noundef %26) #38
  %28 = getelementptr inbounds i8, ptr %27, i64 %25
  store i8 0, ptr %28, align 1, !tbaa !11
  %29 = tail call i64 @fread(ptr noundef %27, i64 noundef 1, i64 noundef %25, ptr noundef %4) #40
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  tail call void @free(ptr noundef nonnull %27) #38
  br label %32

32:                                               ; preds = %31, %15
  %33 = tail call i64 @no_interrupt(i64 noundef %5) #38
  br label %52

34:                                               ; preds = %22
  %35 = icmp eq i64 %29, %25
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = tail call ptr @cons(ptr noundef null, ptr noundef null) #38
  %38 = getelementptr inbounds %struct.obj, ptr %37, i64 0, i32 1
  store i16 13, ptr %38, align 2, !tbaa !16
  %39 = getelementptr inbounds %struct.obj, ptr %37, i64 0, i32 2
  %40 = getelementptr inbounds %struct.obj, ptr %37, i64 0, i32 2, i32 0, i32 1
  store ptr %27, ptr %40, align 8, !tbaa !11
  store i64 %25, ptr %39, align 8, !tbaa !11
  br label %45

41:                                               ; preds = %34
  %42 = tail call ptr @strcons(i64 noundef %29, ptr noundef null) #40
  %43 = getelementptr inbounds %struct.obj, ptr %42, i64 0, i32 2, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr nonnull align 1 %27, i64 %29, i1 false)
  tail call void @free(ptr noundef nonnull %27) #38
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi ptr [ %37, %36 ], [ %42, %41 ]
  %47 = tail call i64 @no_interrupt(i64 noundef %5) #38
  br label %52

48:                                               ; preds = %15
  %49 = tail call i64 @no_interrupt(i64 noundef %5) #38
  %50 = sitofp i64 %20 to double
  %51 = tail call ptr @flocons(double noundef %50) #38
  br label %52

52:                                               ; preds = %48, %45, %32
  %53 = phi ptr [ null, %32 ], [ %46, %45 ], [ %51, %48 ]
  ret ptr %53
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lfwrite(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42
  %4 = load ptr, ptr @stdout, align 8, !tbaa !7
  %5 = tail call ptr @get_c_file(ptr noundef %1, ptr noundef %4) #38
  %6 = icmp eq ptr %0, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = tail call ptr @car(ptr noundef nonnull %0) #38
  br label %15

13:                                               ; preds = %2
  %14 = call ptr @get_c_string_dim(ptr noundef null, ptr noundef nonnull %3) #38
  br label %33

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %0, %7 ], [ %12, %11 ]
  %17 = call ptr @get_c_string_dim(ptr noundef %16, ptr noundef nonnull %3) #38
  %18 = load i16, ptr %8, align 2, !tbaa !16
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = call ptr @cadr(ptr noundef nonnull %0) #38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.obj, ptr %21, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !16
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %20
  %28 = call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %21) #38
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.obj, ptr %21, i64 0, i32 2
  %31 = load double, ptr %30, align 8, !tbaa !11
  %32 = fptosi double %31 to i64
  br label %36

33:                                               ; preds = %15, %13
  %34 = phi ptr [ %14, %13 ], [ %17, %15 ]
  %35 = load i64, ptr %3, align 8, !tbaa !12
  br label %36

36:                                               ; preds = %33, %29
  %37 = phi ptr [ %17, %29 ], [ %34, %33 ]
  %38 = phi i64 [ %32, %29 ], [ %35, %33 ]
  %39 = icmp slt i64 %38, 1
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %3, align 8, !tbaa !12
  %42 = icmp sgt i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call ptr @err(ptr noundef nonnull @.str.45.115, ptr noundef %0) #38
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i64 @no_interrupt(i64 noundef 1) #38
  %47 = call i64 @fwrite(ptr noundef %37, i64 noundef 1, i64 noundef %38, ptr noundef %5) #40
  %48 = call i64 @no_interrupt(i64 noundef %46) #38
  br label %49

49:                                               ; preds = %45, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lfflush(ptr noundef %0) #0 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !7
  %3 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef %2) #38
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = tail call i32 @fflush(ptr noundef %3) #40
  %6 = tail call i64 @no_interrupt(i64 noundef %4) #38
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_length(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 13
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.13.89, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #39
  %13 = uitofp i64 %12 to double
  %14 = tail call ptr @flocons(double noundef %13) #38
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_dim(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 13
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.13.89, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !11
  %12 = sitofp i64 %11 to double
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @llength(ptr noundef %0) #0 {
  %2 = tail call i64 @nlength(ptr noundef %0) #40
  %3 = sitofp i64 %2 to double
  %4 = tail call ptr @flocons(double noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @number2string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %5) #42
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %4
  %12 = tail call ptr @err(ptr noundef nonnull @.str.48.116, ptr noundef %0) #38
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %2, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !16
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %2) #38
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = fptosi double %25 to i64
  %27 = icmp sgt i64 %26, 100
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = tail call ptr @err(ptr noundef nonnull @.str.49.117, ptr noundef nonnull %2) #38
  br label %30

30:                                               ; preds = %28, %23, %13
  %31 = phi i64 [ %26, %28 ], [ %26, %23 ], [ -1, %13 ]
  %32 = icmp eq ptr %3, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 1
  %35 = load i16, ptr %34, align 2, !tbaa !16
  %36 = icmp eq i16 %35, 2
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %3) #38
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2
  %41 = load double, ptr %40, align 8, !tbaa !11
  %42 = fptosi double %41 to i64
  %43 = icmp sgt i64 %42, 100
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = tail call ptr @err(ptr noundef nonnull @.str.50.118, ptr noundef nonnull %3) #38
  br label %46

46:                                               ; preds = %44, %39, %30
  %47 = phi i64 [ %42, %44 ], [ %42, %39 ], [ -1, %30 ]
  %48 = icmp eq ptr %1, null
  %49 = load ptr, ptr @sym_e, align 8
  %50 = icmp eq ptr %49, %1
  %51 = select i1 %48, i1 true, i1 %50
  %52 = load ptr, ptr @sym_f, align 8
  %53 = icmp eq ptr %52, %1
  %54 = select i1 %51, i1 true, i1 %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %46
  %56 = icmp sgt i64 %47, -1
  %57 = or i64 %47, %31
  %58 = icmp sgt i64 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = select i1 %50, ptr @.str.52.119, ptr @.str.53.120
  %61 = select i1 %48, ptr @.str.51.121, ptr %60
  %62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %61, i64 noundef %31, i64 noundef %47, double noundef %15) #38
  br label %103

63:                                               ; preds = %55
  %64 = icmp sgt i64 %31, -1
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = select i1 %50, ptr @.str.55.122, ptr @.str.56.123
  %67 = select i1 %48, ptr @.str.54.124, ptr %66
  %68 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %67, i64 noundef %31, double noundef %15) #38
  br label %103

69:                                               ; preds = %63
  br i1 %56, label %70, label %74

70:                                               ; preds = %69
  %71 = select i1 %50, ptr @.str.58.125, ptr @.str.59.126
  %72 = select i1 %48, ptr @.str.57.127, ptr %71
  %73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %72, i64 noundef %47, double noundef %15) #38
  br label %103

74:                                               ; preds = %69
  %75 = select i1 %50, ptr @.str.60.128, ptr @.str.61.129
  %76 = select i1 %48, ptr @.str.6, ptr %75
  %77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %76, double noundef %15) #38
  br label %103

78:                                               ; preds = %46
  %79 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %80 = load i16, ptr %79, align 2, !tbaa !16
  %81 = icmp eq i16 %80, 2
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %1) #38
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %86 = load double, ptr %85, align 8, !tbaa !11
  %87 = fptosi double %86 to i64
  %88 = icmp eq i64 %87, 10
  %89 = icmp eq i64 %87, 8
  switch i64 %87, label %101 [
    i64 16, label %90
    i64 10, label %90
    i64 8, label %90
  ]

90:                                               ; preds = %84, %84, %84
  %91 = icmp sgt i64 %31, -1
  %92 = fptosi double %15 to i64
  br i1 %91, label %93, label %97

93:                                               ; preds = %90
  %94 = select i1 %89, ptr @.str.63.130, ptr @.str.64.131
  %95 = select i1 %88, ptr @.str.62.132, ptr %94
  %96 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %95, i64 noundef %31, i64 noundef %92) #38
  br label %103

97:                                               ; preds = %90
  %98 = select i1 %89, ptr @.str.65.133, ptr @.str.66.134
  %99 = select i1 %88, ptr @.str.9.83, ptr %98
  %100 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %99, i64 noundef %92) #38
  br label %103

101:                                              ; preds = %84
  %102 = tail call ptr @err(ptr noundef nonnull @.str.67.135, ptr noundef nonnull %1) #38
  br label %103

103:                                              ; preds = %101, %97, %93, %74, %70, %65, %59
  %104 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #39
  %105 = call ptr @strcons(i64 noundef %104, ptr noundef nonnull %5) #40
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %5) #42
  ret ptr %105
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string2number(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42
  store i64 0, ptr %3, align 8, !tbaa !12
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call double @atof(ptr noundef %4) #39
  br label %73

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %10 = load i16, ptr %9, align 2, !tbaa !16
  %11 = icmp eq i16 %10, 2
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %1) #38
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %16 = load double, ptr %15, align 8, !tbaa !11
  %17 = fptosi double %16 to i64
  switch i64 %17, label %30 [
    i64 10, label %18
    i64 8, label %22
    i64 16, label %26
  ]

18:                                               ; preds = %14
  %19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %4, ptr noundef nonnull @.str.9.83, ptr noundef nonnull %3) #38
  %20 = load i64, ptr %3, align 8, !tbaa !12
  %21 = sitofp i64 %20 to double
  br label %73

22:                                               ; preds = %14
  %23 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %4, ptr noundef nonnull @.str.65.133, ptr noundef nonnull %3) #38
  %24 = load i64, ptr %3, align 8, !tbaa !12
  %25 = sitofp i64 %24 to double
  br label %73

26:                                               ; preds = %14
  %27 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %4, ptr noundef nonnull @.str.68.136, ptr noundef nonnull %3) #38
  %28 = load i64, ptr %3, align 8, !tbaa !12
  %29 = sitofp i64 %28 to double
  br label %73

30:                                               ; preds = %14
  %31 = add i64 %17, -1
  %32 = icmp ult i64 %31, 16
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load i8, ptr %4, align 1, !tbaa !11
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %73, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @__ctype_b_loc() #45
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  %39 = sitofp i64 %17 to double
  br label %40

40:                                               ; preds = %66, %36
  %41 = phi i8 [ %34, %36 ], [ %69, %66 ]
  %42 = phi ptr [ %4, %36 ], [ %68, %66 ]
  %43 = phi double [ 0.000000e+00, %36 ], [ %67, %66 ]
  %44 = sext i8 %41 to i64
  %45 = getelementptr inbounds i16, ptr %38, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !58
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 2048
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = sitofp i8 %41 to double
  %52 = tail call double @llvm.fmuladd.f64(double %43, double %39, double %51)
  %53 = fadd double %52, -4.800000e+01
  br label %66

54:                                               ; preds = %40
  %55 = and i32 %47, 4096
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = tail call ptr @__ctype_toupper_loc() #45
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = getelementptr inbounds i32, ptr %59, i64 %44
  %61 = load i32, ptr %60, align 4, !tbaa !76
  %62 = sitofp i32 %61 to double
  %63 = tail call double @llvm.fmuladd.f64(double %43, double %39, double %62)
  %64 = fadd double %63, -6.500000e+01
  %65 = fadd double %64, 1.000000e+01
  br label %66

66:                                               ; preds = %57, %54, %50
  %67 = phi double [ %53, %50 ], [ %65, %57 ], [ %43, %54 ]
  %68 = getelementptr inbounds i8, ptr %42, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !11
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %73, label %40, !llvm.loop !170

71:                                               ; preds = %30
  %72 = tail call ptr @err(ptr noundef nonnull @.str.67.135, ptr noundef nonnull %1) #38
  br label %76

73:                                               ; preds = %66, %33, %26, %22, %18, %6
  %74 = phi double [ %7, %6 ], [ %21, %18 ], [ %25, %22 ], [ %29, %26 ], [ 0.000000e+00, %33 ], [ %67, %66 ]
  %75 = call ptr @flocons(double noundef %74) #38
  br label %76

76:                                               ; preds = %73, %71
  %77 = phi ptr [ %75, %73 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42
  ret ptr %77
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lstrcmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call ptr @get_c_string(ptr noundef %1) #38
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #39
  %6 = sitofp i32 %5 to double
  %7 = tail call ptr @flocons(double noundef %6) #38
  ret ptr %7
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lstrcpy(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 13
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = load i64, ptr %9, align 8, !tbaa !11
  br label %15

13:                                               ; preds = %4, %2
  %14 = tail call ptr @err(ptr noundef nonnull @.str.13.89, ptr noundef %0) #38
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i64 [ undef, %13 ], [ %12, %8 ]
  %17 = phi ptr [ undef, %13 ], [ %11, %8 ]
  %18 = tail call ptr @get_c_string(ptr noundef %1) #38
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #39
  %20 = icmp sgt i64 %19, %16
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call ptr @err(ptr noundef nonnull @.str.69.137, ptr noundef %1) #38
  br label %23

23:                                               ; preds = %21, %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 %19, i1 false)
  %24 = getelementptr inbounds i8, ptr %17, i64 %19
  store i8 0, ptr %24, align 1, !tbaa !11
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lstrcat(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 13
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = load i64, ptr %9, align 8, !tbaa !11
  br label %15

13:                                               ; preds = %4, %2
  %14 = tail call ptr @err(ptr noundef nonnull @.str.13.89, ptr noundef %0) #38
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i64 [ undef, %13 ], [ %12, %8 ]
  %17 = phi ptr [ undef, %13 ], [ %11, %8 ]
  %18 = tail call ptr @get_c_string(ptr noundef %1) #38
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #39
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #39
  %21 = add nsw i64 %20, %19
  %22 = icmp sgt i64 %21, %16
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = tail call ptr @err(ptr noundef nonnull @.str.69.137, ptr noundef %1) #38
  br label %25

25:                                               ; preds = %23, %15
  %26 = getelementptr inbounds i8, ptr %17, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %18, i64 %19, i1 false)
  %27 = getelementptr inbounds i8, ptr %17, i64 %21
  store i8 0, ptr %27, align 1, !tbaa !11
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lstrbreakup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call ptr @get_c_string(ptr noundef %1) #38
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39
  %6 = load i8, ptr %3, align 1, !tbaa !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %16, %2
  %9 = phi ptr [ %22, %16 ], [ null, %2 ]
  %10 = phi ptr [ %26, %16 ], [ %3, %2 ]
  %11 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %4) #39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #39
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %11, %8 ], [ %15, %13 ]
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %10 to i64
  %20 = sub i64 %18, %19
  %21 = tail call ptr @strcons(i64 noundef %20, ptr noundef nonnull %10) #40
  %22 = tail call ptr @cons(ptr noundef %21, ptr noundef %9) #38
  %23 = load i8, ptr %17, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i64 0, i64 %5
  %26 = getelementptr inbounds i8, ptr %17, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %8, !llvm.loop !171

29:                                               ; preds = %16, %2
  %30 = phi ptr [ null, %2 ], [ %22, %16 ]
  %31 = tail call ptr @nreverse(ptr noundef %30) #38
  ret ptr %31
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lstrunbreakup(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %15, %2
  %5 = phi ptr [ %17, %15 ], [ %0, %2 ]
  %6 = phi ptr [ %16, %15 ], [ null, %2 ]
  %7 = icmp eq ptr %5, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call ptr @car(ptr noundef nonnull %0) #38
  %10 = tail call ptr @cons(ptr noundef %9, ptr noundef %6) #38
  br label %15

11:                                               ; preds = %4
  %12 = tail call ptr @car(ptr noundef nonnull %5) #38
  %13 = tail call ptr @cons(ptr noundef %1, ptr noundef %6) #38
  %14 = tail call ptr @cons(ptr noundef %12, ptr noundef %13) #38
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %10, %8 ], [ %14, %11 ]
  %17 = tail call ptr @cdr(ptr noundef nonnull %5) #38
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !172

19:                                               ; preds = %15, %2
  %20 = phi ptr [ null, %2 ], [ %16, %15 ]
  %21 = tail call ptr @nreverse(ptr noundef %20) #38
  %22 = tail call ptr @string_append(ptr noundef %21) #40
  ret ptr %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @stringp(ptr noundef readonly %0) #24 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = freeze i16 %5
  %7 = icmp eq i16 %6, 13
  %8 = load ptr, ptr @sym_t, align 8
  %9 = select i1 %7, ptr %8, ptr null
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi ptr [ null, %1 ], [ %9, %3 ]
  ret ptr %11
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @base64encode(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  %3 = call ptr @get_c_string_dim(ptr noundef %0, ptr noundef nonnull %2) #38
  %4 = load i64, ptr %2, align 8, !tbaa !12
  %5 = sdiv i64 %4, 3
  %6 = srem i64 %4, 3
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = add nsw i64 %5, %8
  %10 = shl nsw i64 %9, 2
  %11 = call ptr @strcons(i64 noundef %10, ptr noundef null) #40
  %12 = call ptr @get_c_string(ptr noundef %11) #38
  %13 = icmp sgt i64 %4, 2
  br i1 %13, label %14, label %55

14:                                               ; preds = %14, %1
  %15 = phi ptr [ %53, %14 ], [ %3, %1 ]
  %16 = phi ptr [ %51, %14 ], [ %12, %1 ]
  %17 = phi i64 [ %52, %14 ], [ 0, %1 ]
  %18 = load i8, ptr %15, align 1, !tbaa !11
  %19 = lshr i8 %18, 2
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i8, ptr @.str.232.138, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !11
  %23 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %22, ptr %16, align 1, !tbaa !11
  %24 = load i8, ptr %15, align 1, !tbaa !11
  %25 = shl i8 %24, 4
  %26 = and i8 %25, 48
  %27 = getelementptr inbounds i8, ptr %15, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !11
  %29 = lshr i8 %28, 4
  %30 = or i8 %26, %29
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds i8, ptr @.str.232.138, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %33, ptr %23, align 1, !tbaa !11
  %35 = load i8, ptr %27, align 1, !tbaa !11
  %36 = shl i8 %35, 2
  %37 = and i8 %36, 60
  %38 = getelementptr inbounds i8, ptr %15, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !11
  %40 = lshr i8 %39, 6
  %41 = or i8 %37, %40
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8, ptr @.str.232.138, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !11
  %45 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %44, ptr %34, align 1, !tbaa !11
  %46 = load i8, ptr %38, align 1, !tbaa !11
  %47 = and i8 %46, 63
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i8, ptr @.str.232.138, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = getelementptr inbounds i8, ptr %16, i64 4
  store i8 %50, ptr %45, align 1, !tbaa !11
  %52 = add nuw nsw i64 %17, 1
  %53 = getelementptr inbounds i8, ptr %15, i64 3
  %54 = icmp eq i64 %52, %5
  br i1 %54, label %55, label %14, !llvm.loop !173

55:                                               ; preds = %14, %1
  %56 = phi ptr [ %12, %1 ], [ %51, %14 ]
  %57 = phi ptr [ %3, %1 ], [ %53, %14 ]
  switch i64 %6, label %98 [
    i64 0, label %100
    i64 1, label %58
    i64 2, label %73
  ]

58:                                               ; preds = %55
  %59 = load i8, ptr %57, align 1, !tbaa !11
  %60 = lshr i8 %59, 2
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds i8, ptr @.str.232.138, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !11
  %64 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %63, ptr %56, align 1, !tbaa !11
  %65 = load i8, ptr %57, align 1, !tbaa !11
  %66 = shl i8 %65, 4
  %67 = and i8 %66, 48
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds i8, ptr @.str.232.138, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !11
  %71 = getelementptr inbounds i8, ptr %56, i64 2
  store i8 %70, ptr %64, align 1, !tbaa !11
  %72 = getelementptr inbounds i8, ptr %56, i64 3
  store i8 61, ptr %71, align 1, !tbaa !11
  store i8 61, ptr %72, align 1, !tbaa !11
  br label %100

73:                                               ; preds = %55
  %74 = load i8, ptr %57, align 1, !tbaa !11
  %75 = lshr i8 %74, 2
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds i8, ptr @.str.232.138, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !11
  %79 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %78, ptr %56, align 1, !tbaa !11
  %80 = load i8, ptr %57, align 1, !tbaa !11
  %81 = shl i8 %80, 4
  %82 = and i8 %81, 48
  %83 = getelementptr inbounds i8, ptr %57, i64 1
  %84 = load i8, ptr %83, align 1, !tbaa !11
  %85 = lshr i8 %84, 4
  %86 = or i8 %82, %85
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds i8, ptr @.str.232.138, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !11
  %90 = getelementptr inbounds i8, ptr %56, i64 2
  store i8 %89, ptr %79, align 1, !tbaa !11
  %91 = load i8, ptr %83, align 1, !tbaa !11
  %92 = shl i8 %91, 2
  %93 = and i8 %92, 60
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i8, ptr @.str.232.138, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !11
  %97 = getelementptr inbounds i8, ptr %56, i64 3
  store i8 %96, ptr %90, align 1, !tbaa !11
  store i8 61, ptr %97, align 1, !tbaa !11
  br label %100

98:                                               ; preds = %55
  %99 = call ptr @errswitch() #38
  br label %100

100:                                              ; preds = %98, %73, %58, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %11
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @base64decode(ptr noundef %0) #0 {
  %2 = load ptr, ptr @base64_decode_table, align 8, !tbaa !7
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @strcons(i64 noundef 0, ptr noundef null) #40
  br label %129

8:                                                ; preds = %1
  %9 = and i64 %4, 3
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @err(ptr noundef nonnull @.str.70.139, ptr noundef %0) #38
  br label %13

13:                                               ; preds = %11, %8
  %14 = add nsw i64 %4, -1
  %15 = getelementptr inbounds i8, ptr %3, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 61
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = add nsw i64 %4, -2
  %20 = getelementptr inbounds i8, ptr %3, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 61
  %23 = select i1 %22, i64 1, i64 2
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i64 [ %23, %18 ], [ 0, %13 ]
  %26 = sdiv i64 %4, 4
  %27 = sext i1 %17 to i64
  %28 = add nsw i64 %26, %27
  %29 = mul nsw i64 %28, 3
  %30 = add nsw i64 %25, %29
  %31 = tail call ptr @strcons(i64 noundef %30, ptr noundef null) #40
  %32 = tail call ptr @get_c_string(ptr noundef %31) #38
  %33 = icmp sgt i64 %28, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %64, %24
  %35 = phi ptr [ %77, %64 ], [ %3, %24 ]
  %36 = phi ptr [ %75, %64 ], [ %32, %24 ]
  %37 = phi i64 [ %76, %64 ], [ 0, %24 ]
  %38 = load i8, ptr %35, align 1, !tbaa !11
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %2, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = icmp ult i8 %41, 64
  br i1 %42, label %43, label %129

43:                                               ; preds = %34
  %44 = getelementptr inbounds i8, ptr %35, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !11
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, ptr %2, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !11
  %49 = icmp ult i8 %48, 64
  br i1 %49, label %50, label %129

50:                                               ; preds = %43
  %51 = getelementptr inbounds i8, ptr %35, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !11
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i8, ptr %2, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !11
  %56 = icmp ult i8 %55, 64
  br i1 %56, label %57, label %129

57:                                               ; preds = %50
  %58 = getelementptr inbounds i8, ptr %35, i64 3
  %59 = load i8, ptr %58, align 1, !tbaa !11
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i8, ptr %2, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !11
  %63 = icmp ult i8 %62, 64
  br i1 %63, label %64, label %129

64:                                               ; preds = %57
  %65 = shl nuw i8 %41, 2
  %66 = lshr i8 %48, 4
  %67 = or i8 %66, %65
  %68 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %67, ptr %36, align 1, !tbaa !11
  %69 = shl i8 %48, 4
  %70 = lshr i8 %55, 2
  %71 = or i8 %70, %69
  %72 = getelementptr inbounds i8, ptr %36, i64 2
  store i8 %71, ptr %68, align 1, !tbaa !11
  %73 = shl i8 %55, 6
  %74 = or i8 %62, %73
  %75 = getelementptr inbounds i8, ptr %36, i64 3
  store i8 %74, ptr %72, align 1, !tbaa !11
  %76 = add nuw nsw i64 %37, 1
  %77 = getelementptr inbounds i8, ptr %35, i64 4
  %78 = icmp eq i64 %76, %28
  br i1 %78, label %79, label %34, !llvm.loop !174

79:                                               ; preds = %64, %24
  %80 = phi ptr [ %32, %24 ], [ %75, %64 ]
  %81 = phi ptr [ %3, %24 ], [ %77, %64 ]
  switch i64 %25, label %127 [
    i64 0, label %129
    i64 1, label %82
    i64 2, label %99
  ]

82:                                               ; preds = %79
  %83 = load i8, ptr %81, align 1, !tbaa !11
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds i8, ptr %2, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !11
  %87 = icmp ult i8 %86, 64
  br i1 %87, label %88, label %129

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, ptr %81, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !11
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds i8, ptr %2, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !11
  %94 = icmp ult i8 %93, 64
  br i1 %94, label %95, label %129

95:                                               ; preds = %88
  %96 = shl nuw i8 %86, 2
  %97 = lshr i8 %93, 4
  %98 = or i8 %97, %96
  store i8 %98, ptr %80, align 1, !tbaa !11
  br label %129

99:                                               ; preds = %79
  %100 = load i8, ptr %81, align 1, !tbaa !11
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, ptr %2, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !11
  %104 = icmp ult i8 %103, 64
  br i1 %104, label %105, label %129

105:                                              ; preds = %99
  %106 = getelementptr inbounds i8, ptr %81, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !11
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds i8, ptr %2, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !11
  %111 = icmp ult i8 %110, 64
  br i1 %111, label %112, label %129

112:                                              ; preds = %105
  %113 = getelementptr inbounds i8, ptr %81, i64 2
  %114 = load i8, ptr %113, align 1, !tbaa !11
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i8, ptr %2, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !11
  %118 = icmp ult i8 %117, 64
  br i1 %118, label %119, label %129

119:                                              ; preds = %112
  %120 = shl nuw i8 %103, 2
  %121 = lshr i8 %110, 4
  %122 = or i8 %121, %120
  %123 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %122, ptr %80, align 1, !tbaa !11
  %124 = shl i8 %110, 4
  %125 = lshr i8 %117, 2
  %126 = or i8 %125, %124
  store i8 %126, ptr %123, align 1, !tbaa !11
  br label %129

127:                                              ; preds = %79
  %128 = tail call ptr @errswitch() #38
  br label %129

129:                                              ; preds = %127, %119, %112, %105, %99, %95, %88, %82, %79, %57, %50, %43, %34, %6
  %130 = phi ptr [ %7, %6 ], [ null, %82 ], [ null, %88 ], [ null, %99 ], [ null, %105 ], [ null, %112 ], [ %31, %127 ], [ %31, %119 ], [ %31, %95 ], [ %31, %79 ], [ null, %34 ], [ null, %43 ], [ null, %50 ], [ null, %57 ]
  ret ptr %130
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @memq(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %13, %2
  %5 = phi ptr [ %15, %13 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %4, !llvm.loop !175

17:                                               ; preds = %4
  %18 = tail call ptr @err(ptr noundef nonnull @.str.71.140, ptr noundef nonnull %1) #38
  br label %19

19:                                               ; preds = %17, %13, %9, %2
  %20 = phi ptr [ %18, %17 ], [ null, %2 ], [ %5, %9 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %14, %2
  %5 = phi ptr [ %16, %14 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call ptr @equal(ptr noundef %0, ptr noundef %11) #40
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %4, !llvm.loop !176

18:                                               ; preds = %4
  %19 = tail call ptr @err(ptr noundef nonnull @.str.72.141, ptr noundef nonnull %1) #38
  br label %20

20:                                               ; preds = %18, %14, %9, %2
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ %5, %9 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @memv(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %14, %2
  %5 = phi ptr [ %16, %14 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call ptr @eql(ptr noundef %0, ptr noundef %11) #38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %4, !llvm.loop !177

18:                                               ; preds = %4
  %19 = tail call ptr @err(ptr noundef nonnull @.str.73.142, ptr noundef nonnull %1) #38
  br label %20

20:                                               ; preds = %18, %14, %9, %2
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ %5, %9 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @nth(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = fptosi double %12 to i64
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %23, %10
  %16 = phi i64 [ %26, %23 ], [ 0, %10 ]
  %17 = phi ptr [ %25, %23 ], [ %1, %10 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !16
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = add nuw nsw i64 %16, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %28, label %15, !llvm.loop !178

28:                                               ; preds = %23, %10
  %29 = phi ptr [ %1, %10 ], [ %25, %23 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.obj, ptr %29, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !16
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.obj, ptr %29, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  br label %40

38:                                               ; preds = %31, %28, %19, %15
  %39 = tail call ptr @err(ptr noundef nonnull @.str.74.143, ptr noundef %0) #38
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi ptr [ %37, %35 ], [ %39, %38 ]
  ret ptr %41
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lref_default(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = fptosi double %13 to i64
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %24, %11
  %17 = phi i64 [ %27, %24 ], [ 0, %11 ]
  %18 = phi ptr [ %26, %24 ], [ %0, %11 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, %14
  br i1 %28, label %29, label %16, !llvm.loop !179

29:                                               ; preds = %24, %11
  %30 = phi ptr [ %0, %11 ], [ %26, %24 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.obj, ptr %30, i64 0, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !16
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.obj, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  br label %43

39:                                               ; preds = %32, %29, %20, %16
  %40 = icmp eq ptr %2, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = tail call ptr @lapply(ptr noundef nonnull %2, ptr noundef null) #38
  br label %43

43:                                               ; preds = %41, %39, %36
  %44 = phi ptr [ %38, %36 ], [ %42, %41 ], [ null, %39 ]
  ret ptr %44
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @larg_default(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = fptosi double %13 to i64
  %15 = icmp eq ptr %0, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %38, %11
  %17 = phi i64 [ %40, %38 ], [ 0, %11 ]
  %18 = phi ptr [ %39, %38 ], [ %0, %11 ]
  %19 = tail call ptr @car(ptr noundef nonnull %18) #38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.obj, ptr %19, i64 0, i32 1
  %23 = load i16, ptr %22, align 2, !tbaa !16
  %24 = icmp eq i16 %23, 13
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = tail call ptr @get_c_string(ptr noundef nonnull %19) #38
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = sext i8 %27 to i32
  %29 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.75.144, i32 %28, i64 3)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call ptr @cdr(ptr noundef nonnull %18) #38
  br label %38

33:                                               ; preds = %25, %21, %16
  %34 = icmp eq i64 %17, %14
  br i1 %34, label %42, label %35

35:                                               ; preds = %33
  %36 = tail call ptr @cdr(ptr noundef nonnull %18) #38
  %37 = add nsw i64 %17, 1
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %32, %31 ], [ %36, %35 ]
  %40 = phi i64 [ %17, %31 ], [ %37, %35 ]
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %16, !llvm.loop !180

42:                                               ; preds = %38, %33, %11
  %43 = phi ptr [ %2, %11 ], [ %2, %38 ], [ %19, %33 ]
  ret ptr %43
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lkey_default(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) #0 {
  %4 = tail call ptr @get_c_string(ptr noundef %1) #38
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39
  %6 = icmp eq ptr %0, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = add nsw i64 %5, 1
  br label %9

9:                                                ; preds = %34, %7
  %10 = phi ptr [ %0, %7 ], [ %35, %34 ]
  %11 = tail call ptr @car(ptr noundef nonnull %10) #38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %34, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 13
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = tail call ptr @get_c_string(ptr noundef nonnull %11) #38
  %19 = load i8, ptr %18, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 58
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  %23 = tail call i32 @strncmp(ptr noundef nonnull %22, ptr noundef %4, i64 noundef %5) #39
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %18, i64 %8
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = icmp eq i8 %27, 61
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %.lcssa = phi ptr [ %18, %25 ]
  %30 = add nsw i64 %5, 2
  %31 = getelementptr inbounds i8, ptr %.lcssa, i64 %30
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31) #39
  %33 = tail call ptr @strcons(i64 noundef %32, ptr noundef nonnull %31) #40
  br label %37

34:                                               ; preds = %25, %21, %17, %13, %9
  %35 = tail call ptr @cdr(ptr noundef nonnull %10) #38
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %9, !llvm.loop !181

37:                                               ; preds = %34, %29, %3
  %38 = phi ptr [ %33, %29 ], [ %2, %3 ], [ %2, %34 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal ptr @llist(ptr noundef readnone returned %0) #17 {
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @writes1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42
  %4 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %5 = icmp ult ptr %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  call void @err_stack(ptr noundef nonnull %3) #38
  br label %7

7:                                                ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !7
  %8 = icmp eq ptr %1, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %14, %7
  %10 = phi ptr [ %20, %14 ], [ %1, %7 ]
  %11 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !16
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.obj, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = call ptr @writes1(ptr noundef %0, ptr noundef %16) #40
  %18 = load ptr, ptr %3, align 8, !tbaa !7
  %19 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  store ptr %20, ptr %3, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %9, !llvm.loop !182

22:                                               ; preds = %9
  %.lcssa1 = phi ptr [ %10, %9 ]
  %.lcssa = phi i16 [ %12, %9 ]
  %23 = sext i16 %.lcssa to i32
  switch i32 %23, label %26 [
    i32 0, label %28
    i32 3, label %24
    i32 13, label %24
  ]

24:                                               ; preds = %22, %22
  %25 = call ptr @get_c_string(ptr noundef nonnull %.lcssa1) #38
  call void @fput_st(ptr noundef %0, ptr noundef %25) #38
  br label %28

26:                                               ; preds = %22
  %27 = call ptr @lprin1f(ptr noundef nonnull %.lcssa1, ptr noundef %0) #38
  br label %28

28:                                               ; preds = %26, %24, %22, %14, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @writes(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #38
  %3 = load ptr, ptr @stdout, align 8, !tbaa !7
  %4 = tail call ptr @get_c_file(ptr noundef %2, ptr noundef %3) #38
  %5 = tail call ptr @cdr(ptr noundef %0) #38
  %6 = tail call ptr @writes1(ptr noundef %4, ptr noundef %5) #40
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @last(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  br label %12

10:                                               ; preds = %3, %1
  %11 = tail call ptr @err(ptr noundef nonnull @.str.76.145, ptr noundef %0) #38
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi ptr [ %9, %7 ], [ %11, %10 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.obj, ptr %13, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !16
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %23, label %28

19:                                               ; preds = %23
  %20 = getelementptr inbounds %struct.obj, ptr %26, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !16
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %28, !llvm.loop !183

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %26, %19 ], [ %13, %15 ]
  %25 = getelementptr inbounds %struct.obj, ptr %24, i64 0, i32 2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !183

28:                                               ; preds = %23, %19, %15, %12
  %29 = phi ptr [ %0, %12 ], [ %0, %15 ], [ %24, %19 ], [ %24, %23 ]
  ret ptr %29
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @butlast(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  %3 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  call void @err_stack(ptr noundef nonnull %2) #38
  %6 = load ptr, ptr %2, align 8, !tbaa !7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %0, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = call ptr @err(ptr noundef nonnull @.str.77.146, ptr noundef null) #38
  %12 = load ptr, ptr %2, align 8, !tbaa !7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %7
  %15 = phi ptr [ %12, %10 ], [ %8, %7 ]
  %16 = getelementptr inbounds %struct.obj, ptr %15, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !16
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.obj, ptr %15, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.obj, ptr %15, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = call ptr @butlast(ptr noundef nonnull %21) #40
  %27 = call ptr @cons(ptr noundef %25, ptr noundef %26) #38
  br label %31

28:                                               ; preds = %14, %10
  %29 = phi ptr [ null, %10 ], [ %15, %14 ]
  %30 = call ptr @err(ptr noundef nonnull @.str.78.147, ptr noundef %29) #38
  br label %31

31:                                               ; preds = %28, %23, %19
  %32 = phi ptr [ %27, %23 ], [ %30, %28 ], [ null, %19 ]
  ret ptr %32
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @nconc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @last(ptr noundef nonnull %0) #40
  %6 = tail call ptr @setcdr(ptr noundef %5, ptr noundef %1) #38
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %0, %4 ], [ %1, %2 ]
  ret ptr %8
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @funcall1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = icmp eq ptr %0, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = sext i16 %7 to i32
  switch i32 %8, label %42 [
    i32 5, label %9
    i32 11, label %19
  ]

9:                                                ; preds = %5
  %10 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %11 = icmp ult ptr %3, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  call void @err_stack(ptr noundef nonnull %3) #38
  %13 = load ptr, ptr %3, align 8, !tbaa !7
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %13, %12 ], [ %0, %9 ]
  %16 = getelementptr inbounds %struct.obj, ptr %15, i64 0, i32 2, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = call ptr %17(ptr noundef %1) #38
  br label %45

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.obj, ptr %21, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !16
  %26 = icmp eq i16 %25, 6
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %29 = icmp ult ptr %3, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  call void @err_stack(ptr noundef nonnull %3) #38
  %31 = load ptr, ptr %3, align 8, !tbaa !7
  %32 = getelementptr inbounds %struct.obj, ptr %31, i64 0, i32 2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi ptr [ %33, %30 ], [ %21, %27 ]
  %36 = phi ptr [ %31, %30 ], [ %0, %27 ]
  %37 = getelementptr inbounds %struct.obj, ptr %36, i64 0, i32 2
  %38 = getelementptr inbounds %struct.obj, ptr %35, i64 0, i32 2, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = load ptr, ptr %37, align 8, !tbaa !11
  %41 = call ptr %39(ptr noundef %40, ptr noundef %1) #38
  br label %45

42:                                               ; preds = %23, %19, %5, %2
  %43 = tail call ptr @cons(ptr noundef %1, ptr noundef null) #38
  %44 = tail call ptr @lapply(ptr noundef %0, ptr noundef %43) #38
  br label %45

45:                                               ; preds = %42, %34, %14
  %46 = phi ptr [ %44, %42 ], [ %41, %34 ], [ %18, %14 ]
  ret ptr %46
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @funcall2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !7
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = sext i16 %8 to i32
  switch i32 %9, label %20 [
    i32 6, label %10
    i32 21, label %10
  ]

10:                                               ; preds = %6, %6
  %11 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %12 = icmp ult ptr %4, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void @err_stack(ptr noundef nonnull %4) #38
  %14 = load ptr, ptr %4, align 8, !tbaa !7
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %14, %13 ], [ %0, %10 ]
  %17 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 2, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = call ptr %18(ptr noundef %1, ptr noundef %2) #38
  br label %24

20:                                               ; preds = %6, %3
  %21 = tail call ptr @cons(ptr noundef %2, ptr noundef null) #38
  %22 = tail call ptr @cons(ptr noundef %1, ptr noundef %21) #38
  %23 = tail call ptr @lapply(ptr noundef %0, ptr noundef %22) #38
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi ptr [ %23, %20 ], [ %19, %15 ]
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lqsort(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %11, %3
  %6 = phi ptr [ %13, %11 ], [ %0, %3 ]
  %7 = phi i32 [ %14, %11 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = add nuw nsw i32 %7, 1
  %15 = icmp eq ptr %13, null
  br i1 %15, label %19, label %5, !llvm.loop !184

16:                                               ; preds = %5
  %.lcssa = phi i32 [ %7, %5 ]
  %17 = tail call ptr @err(ptr noundef nonnull @.str.79.150, ptr noundef nonnull %0) #38
  %18 = icmp eq i32 %.lcssa, 0
  br i1 %18, label %77, label %19

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %.lcssa, %16 ], [ %14, %11 ]
  %21 = tail call i32 @rand() #38
  %22 = srem i32 %21, %20
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %24, %19
  %25 = phi ptr [ %28, %24 ], [ %0, %19 ]
  %26 = phi i32 [ %29, %24 ], [ 0, %19 ]
  %27 = getelementptr inbounds %struct.obj, ptr %25, i64 0, i32 2, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = add nuw nsw i32 %26, 1
  %30 = icmp eq i32 %29, %22
  br i1 %30, label %31, label %24, !llvm.loop !185

31:                                               ; preds = %24, %19
  %32 = phi ptr [ %0, %19 ], [ %28, %24 ]
  %33 = getelementptr inbounds %struct.obj, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  br i1 %4, label %67, label %35

35:                                               ; preds = %31
  %36 = icmp eq ptr %2, null
  br label %37

37:                                               ; preds = %60, %35
  %38 = phi ptr [ null, %35 ], [ %62, %60 ]
  %39 = phi ptr [ null, %35 ], [ %61, %60 ]
  %40 = phi ptr [ %0, %35 ], [ %64, %60 ]
  %41 = phi i32 [ 0, %35 ], [ %65, %60 ]
  %42 = icmp eq i32 %22, %41
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.obj, ptr %40, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  br i1 %36, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @funcall1(ptr noundef nonnull %2, ptr noundef %45) #40
  %48 = tail call ptr @funcall1(ptr noundef nonnull %2, ptr noundef %34) #40
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %47, %46 ], [ %45, %43 ]
  %51 = phi ptr [ %48, %46 ], [ %34, %43 ]
  %52 = tail call ptr @funcall2(ptr noundef %1, ptr noundef %50, ptr noundef %51) #40
  %53 = icmp eq ptr %52, null
  %54 = getelementptr inbounds %struct.obj, ptr %40, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  br i1 %53, label %58, label %56

56:                                               ; preds = %49
  %57 = tail call ptr @cons(ptr noundef %55, ptr noundef %39) #38
  br label %60

58:                                               ; preds = %49
  %59 = tail call ptr @cons(ptr noundef %55, ptr noundef %38) #38
  br label %60

60:                                               ; preds = %58, %56, %37
  %61 = phi ptr [ %57, %56 ], [ %39, %58 ], [ %39, %37 ]
  %62 = phi ptr [ %38, %56 ], [ %59, %58 ], [ %38, %37 ]
  %63 = getelementptr inbounds %struct.obj, ptr %40, i64 0, i32 2, i32 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = add nuw nsw i32 %41, 1
  %66 = icmp eq ptr %64, null
  br i1 %66, label %67, label %37, !llvm.loop !186

67:                                               ; preds = %60, %31
  %68 = phi ptr [ null, %31 ], [ %61, %60 ]
  %69 = phi ptr [ null, %31 ], [ %62, %60 ]
  %70 = tail call ptr @lqsort(ptr noundef %68, ptr noundef %1, ptr noundef %2) #40
  %71 = tail call ptr @lqsort(ptr noundef %69, ptr noundef %1, ptr noundef %2) #40
  %72 = tail call ptr @cons(ptr noundef %34, ptr noundef %71) #38
  %73 = icmp eq ptr %70, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = tail call ptr @last(ptr noundef nonnull %70) #40
  %76 = tail call ptr @setcdr(ptr noundef %75, ptr noundef %72) #38
  br label %77

77:                                               ; preds = %74, %67, %16, %3
  %78 = phi ptr [ null, %16 ], [ %70, %74 ], [ %72, %67 ], [ null, %3 ]
  ret ptr %78
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @string_lessp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call ptr @get_c_string(ptr noundef %1) #38
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4) #39
  %6 = icmp slt i32 %5, 0
  %7 = load ptr, ptr @sym_t, align 8
  %8 = select i1 %6, ptr %7, ptr null
  ret ptr %8
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @benchmark_funcall1(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = fptosi double %13 to i64
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %16, %11
  %17 = phi i64 [ %19, %16 ], [ 0, %11 ]
  %18 = tail call ptr @funcall1(ptr noundef %1, ptr noundef %2) #40
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp eq i64 %19, %14
  br i1 %20, label %21, label %16, !llvm.loop !187

21:                                               ; preds = %16, %11
  %22 = phi ptr [ null, %11 ], [ %18, %16 ]
  ret ptr %22
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @benchmark_funcall2(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #38
  %3 = tail call ptr @cdr(ptr noundef %0) #38
  %4 = tail call ptr @car(ptr noundef %3) #38
  %5 = tail call ptr @cdr(ptr noundef %0) #38
  %6 = tail call ptr @cdr(ptr noundef %5) #38
  %7 = tail call ptr @car(ptr noundef %6) #38
  %8 = tail call ptr @cdr(ptr noundef %0) #38
  %9 = tail call ptr @cdr(ptr noundef %8) #38
  %10 = tail call ptr @cdr(ptr noundef %9) #38
  %11 = tail call ptr @car(ptr noundef %10) #38
  %12 = icmp eq ptr %2, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !16
  %16 = icmp eq i16 %15, 2
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %1
  %18 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %2) #38
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %21 = load double, ptr %20, align 8, !tbaa !11
  %22 = fptosi double %21 to i64
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %24, %19
  %25 = phi i64 [ %27, %24 ], [ 0, %19 ]
  %26 = tail call ptr @funcall2(ptr noundef %4, ptr noundef %7, ptr noundef %11) #40
  %27 = add nuw nsw i64 %25, 1
  %28 = icmp eq i64 %27, %22
  br i1 %28, label %29, label %24, !llvm.loop !188

29:                                               ; preds = %24, %19
  %30 = phi ptr [ null, %19 ], [ %26, %24 ]
  ret ptr %30
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @benchmark_eval(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %5, %3
  %10 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = fptosi double %13 to i64
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %16, %11
  %17 = phi i64 [ %19, %16 ], [ 0, %11 ]
  %18 = tail call ptr @leval(ptr noundef %1, ptr noundef %2) #38
  %19 = add nuw nsw i64 %17, 1
  %20 = icmp eq i64 %19, %14
  br i1 %20, label %21, label %16, !llvm.loop !189

21:                                               ; preds = %16, %11
  %22 = phi ptr [ null, %11 ], [ %18, %16 ]
  ret ptr %22
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @mapcar1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @car(ptr noundef nonnull %1) #38
  %6 = tail call ptr @funcall1(ptr noundef %0, ptr noundef %5) #40
  %7 = tail call ptr @cons(ptr noundef %6, ptr noundef null) #38
  %8 = tail call ptr @cdr(ptr noundef nonnull %1) #38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %16, %4
  %11 = phi ptr [ %24, %16 ], [ %8, %4 ]
  %12 = phi ptr [ %22, %16 ], [ %7, %4 ]
  %13 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 1
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = tail call ptr @funcall1(ptr noundef %0, ptr noundef %18) #40
  %20 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = tail call ptr @cons(ptr noundef %19, ptr noundef %21) #38
  store ptr %22, ptr %20, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 2, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %10, !llvm.loop !190

26:                                               ; preds = %16, %10, %4, %2
  %27 = phi ptr [ null, %2 ], [ %7, %4 ], [ %7, %16 ], [ %7, %10 ]
  ret ptr %27
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @mapcar2(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @car(ptr noundef nonnull %1) #38
  %9 = tail call ptr @car(ptr noundef nonnull %2) #38
  %10 = tail call ptr @funcall2(ptr noundef %0, ptr noundef %8, ptr noundef %9) #40
  %11 = tail call ptr @cons(ptr noundef %10, ptr noundef null) #38
  %12 = tail call ptr @cdr(ptr noundef nonnull %1) #38
  %13 = tail call ptr @cdr(ptr noundef nonnull %2) #38
  %14 = icmp eq ptr %12, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %28, %7
  %16 = phi ptr [ %40, %28 ], [ %13, %7 ]
  %17 = phi ptr [ %38, %28 ], [ %12, %7 ]
  %18 = phi ptr [ %36, %28 ], [ %11, %7 ]
  %19 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !16
  %21 = icmp ne i16 %20, 1
  %22 = icmp eq ptr %16, null
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !16
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = tail call ptr @funcall2(ptr noundef %0, ptr noundef %30, ptr noundef %32) #40
  %34 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 2, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = tail call ptr @cons(ptr noundef %33, ptr noundef %35) #38
  store ptr %36, ptr %34, align 8, !tbaa !11
  %37 = getelementptr inbounds %struct.obj, ptr %17, i64 0, i32 2, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.obj, ptr %16, i64 0, i32 2, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = icmp eq ptr %38, null
  br i1 %41, label %42, label %15, !llvm.loop !191

42:                                               ; preds = %28, %24, %15, %7, %3
  %43 = phi ptr [ null, %3 ], [ %11, %7 ], [ %11, %28 ], [ %11, %24 ], [ %11, %15 ]
  ret ptr %43
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @mapcar(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #38
  %3 = tail call i64 @nlength(ptr noundef %0) #40
  %4 = sitofp i64 %3 to double
  %5 = tail call ptr @flocons(double noundef %4) #38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %9 = load i16, ptr %8, align 2, !tbaa !16
  %10 = icmp eq i16 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %1
  %12 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %5) #38
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = fptosi double %15 to i64
  switch i64 %16, label %28 [
    i64 2, label %17
    i64 3, label %21
  ]

17:                                               ; preds = %13
  %18 = tail call ptr @cdr(ptr noundef %0) #38
  %19 = tail call ptr @car(ptr noundef %18) #38
  %20 = tail call ptr @mapcar1(ptr noundef %2, ptr noundef %19) #40
  br label %30

21:                                               ; preds = %13
  %22 = tail call ptr @cdr(ptr noundef %0) #38
  %23 = tail call ptr @car(ptr noundef %22) #38
  %24 = tail call ptr @cdr(ptr noundef %0) #38
  %25 = tail call ptr @cdr(ptr noundef %24) #38
  %26 = tail call ptr @car(ptr noundef %25) #38
  %27 = tail call ptr @mapcar2(ptr noundef %2, ptr noundef %23, ptr noundef %26) #40
  br label %30

28:                                               ; preds = %13
  %29 = tail call ptr @err(ptr noundef nonnull @.str.80.151, ptr noundef %0) #38
  br label %30

30:                                               ; preds = %28, %21, %17
  %31 = phi ptr [ %29, %28 ], [ %27, %21 ], [ %20, %17 ]
  ret ptr %31
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lfmod(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.81.152, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = tail call ptr @err(ptr noundef nonnull @.str.82.153, ptr noundef %1) #38
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = tail call double @fmod(double noundef %20, double noundef %22) #38
  %24 = tail call ptr @flocons(double noundef %23) #38
  ret ptr %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @lsubset(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %18, %2
  %5 = phi ptr [ %21, %18 ], [ %1, %2 ]
  %6 = phi ptr [ %19, %18 ], [ null, %2 ]
  %7 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = tail call ptr @funcall1(ptr noundef %0, ptr noundef %12) #40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !11
  %17 = tail call ptr @cons(ptr noundef %16, ptr noundef %6) #38
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi ptr [ %17, %15 ], [ %6, %10 ]
  %20 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !llvm.loop !192

23:                                               ; preds = %18, %4, %2
  %24 = phi ptr [ null, %2 ], [ %19, %18 ], [ %6, %4 ]
  %25 = tail call ptr @nreverse(ptr noundef %24) #38
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @ass(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %23, %3
  %6 = phi ptr [ %25, %23 ], [ %1, %3 ]
  %7 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.obj, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = tail call ptr @funcall2(ptr noundef %2, ptr noundef %20, ptr noundef %0) #40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %14, %10
  %24 = getelementptr inbounds %struct.obj, ptr %6, i64 0, i32 2, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %5, !llvm.loop !193

27:                                               ; preds = %5
  %28 = tail call ptr @err(ptr noundef nonnull @.str.83.154, ptr noundef nonnull %1) #38
  br label %29

29:                                               ; preds = %27, %23, %18, %3
  %30 = phi ptr [ %28, %27 ], [ null, %3 ], [ %12, %18 ], [ null, %23 ]
  ret ptr %30
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @append2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @nlength(ptr noundef %0) #40
  %4 = tail call i64 @nlength(ptr noundef %1) #40
  %5 = add nsw i64 %4, %3
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %10, %2
  %8 = phi ptr [ null, %2 ], [ %13, %10 ]
  %9 = icmp eq ptr %0, null
  br i1 %9, label %16, label %19

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %13, %10 ], [ null, %2 ]
  %12 = phi i64 [ %14, %10 ], [ %5, %2 ]
  %13 = tail call ptr @cons(ptr noundef null, ptr noundef %11) #38
  %14 = add nsw i64 %12, -1
  %15 = icmp ugt i64 %12, 1
  br i1 %15, label %10, label %7, !llvm.loop !194

16:                                               ; preds = %19, %7
  %17 = phi ptr [ %8, %7 ], [ %24, %19 ]
  %18 = icmp eq ptr %1, null
  br i1 %18, label %35, label %27

19:                                               ; preds = %19, %7
  %20 = phi ptr [ %25, %19 ], [ %0, %7 ]
  %21 = phi ptr [ %24, %19 ], [ %8, %7 ]
  %22 = tail call ptr @car(ptr noundef nonnull %20) #38
  %23 = tail call ptr @setcar(ptr noundef %21, ptr noundef %22) #38
  %24 = tail call ptr @cdr(ptr noundef %21) #38
  %25 = tail call ptr @cdr(ptr noundef nonnull %20) #38
  %26 = icmp eq ptr %25, null
  br i1 %26, label %16, label %19, !llvm.loop !195

27:                                               ; preds = %27, %16
  %28 = phi ptr [ %33, %27 ], [ %1, %16 ]
  %29 = phi ptr [ %32, %27 ], [ %17, %16 ]
  %30 = tail call ptr @car(ptr noundef nonnull %28) #38
  %31 = tail call ptr @setcar(ptr noundef %29, ptr noundef %30) #38
  %32 = tail call ptr @cdr(ptr noundef %29) #38
  %33 = tail call ptr @cdr(ptr noundef nonnull %28) #38
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %27, !llvm.loop !196

35:                                               ; preds = %27, %16
  ret ptr %8
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @append(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !7
  %3 = load ptr, ptr @stack_limit_ptr, align 8, !tbaa !7
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  call void @err_stack(ptr noundef nonnull %2) #38
  %6 = load ptr, ptr %2, align 8, !tbaa !7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %0, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = call ptr @cdr(ptr noundef nonnull %8) #38
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %2, align 8, !tbaa !7
  br i1 %12, label %14, label %16

14:                                               ; preds = %10
  %15 = call ptr @car(ptr noundef %13) #38
  br label %29

16:                                               ; preds = %10
  %17 = call ptr @cddr(ptr noundef %13) #38
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr %2, align 8, !tbaa !7
  %20 = call ptr @car(ptr noundef %19) #38
  %21 = load ptr, ptr %2, align 8, !tbaa !7
  br i1 %18, label %22, label %25

22:                                               ; preds = %16
  %23 = call ptr @cadr(ptr noundef %21) #38
  %24 = call ptr @append2(ptr noundef %20, ptr noundef %23) #40
  br label %29

25:                                               ; preds = %16
  %26 = call ptr @cdr(ptr noundef %21) #38
  %27 = call ptr @append(ptr noundef %26) #40
  %28 = call ptr @append2(ptr noundef %20, ptr noundef %27) #40
  br label %29

29:                                               ; preds = %25, %22, %14, %7
  %30 = phi ptr [ %15, %14 ], [ %24, %22 ], [ %28, %25 ], [ null, %7 ]
  ret ptr %30
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @listn(i64 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #42
  %3 = icmp sgt i64 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  call void @llvm.va_start(ptr nonnull %2)
  br label %35

5:                                                ; preds = %5, %1
  %6 = phi i64 [ %9, %5 ], [ 0, %1 ]
  %7 = phi ptr [ %8, %5 ], [ null, %1 ]
  %8 = tail call ptr @cons(ptr noundef null, ptr noundef %7) #38
  %9 = add nuw nsw i64 %6, 1
  %10 = icmp eq i64 %9, %0
  br i1 %10, label %11, label %5, !llvm.loop !197

11:                                               ; preds = %5
  %.lcssa = phi ptr [ %8, %5 ]
  call void @llvm.va_start(ptr nonnull %2)
  br i1 %3, label %12, label %35

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %15

15:                                               ; preds = %28, %12
  %16 = phi i64 [ 0, %12 ], [ %33, %28 ]
  %17 = phi ptr [ %.lcssa, %12 ], [ %32, %28 ]
  %18 = load i32, ptr %2, align 16
  %19 = icmp ult i32 %18, 41
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load ptr, ptr %14, align 16
  %22 = zext i32 %18 to i64
  %23 = getelementptr i8, ptr %21, i64 %22
  %24 = add nuw nsw i32 %18, 8
  store i32 %24, ptr %2, align 16
  br label %28

25:                                               ; preds = %15
  %26 = load ptr, ptr %13, align 8
  %27 = getelementptr i8, ptr %26, i64 8
  store ptr %27, ptr %13, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %23, %20 ], [ %26, %25 ]
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @setcar(ptr noundef %17, ptr noundef %30) #38
  %32 = call ptr @cdr(ptr noundef %17) #38
  %33 = add nuw nsw i64 %16, 1
  %34 = icmp eq i64 %33, %0
  br i1 %34, label %35, label %15, !llvm.loop !198

35:                                               ; preds = %28, %11, %4
  %36 = phi ptr [ null, %4 ], [ %.lcssa, %11 ], [ %.lcssa, %28 ]
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #42
  ret ptr %36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #33

; Function Attrs: nounwind optsize uwtable
define internal ptr @fast_load(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %5 = icmp sgt i64 %4, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @put_st(ptr noundef nonnull @.str.84.157) #38
  tail call void @put_st(ptr noundef %3) #38
  tail call void @put_st(ptr noundef nonnull @.str.85.158) #38
  br label %7

7:                                                ; preds = %6, %2
  %8 = tail call ptr @fopen_c(ptr noundef %3, ptr noundef nonnull @.str.86.159) #38
  %9 = tail call ptr @flocons(double noundef 1.000000e+02) #38
  %10 = tail call ptr @cons_array(ptr noundef %9, ptr noundef null) #40
  %11 = tail call ptr @flocons(double noundef 0.000000e+00) #38
  %12 = tail call ptr (i64, ...) @listn(i64 noundef 3, ptr noundef %8, ptr noundef %10, ptr noundef %11) #40
  %13 = icmp eq ptr %1, null
  br label %14

14:                                               ; preds = %27, %7
  %15 = phi ptr [ %28, %27 ], [ null, %7 ]
  br label %16

16:                                               ; preds = %25, %14
  %17 = tail call ptr @fast_read(ptr noundef %12) #40
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %21 = icmp sgt i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call ptr @lprint(ptr noundef %17, ptr noundef null) #38
  br label %24

24:                                               ; preds = %22, %19
  br i1 %13, label %25, label %27

25:                                               ; preds = %24
  %26 = tail call ptr @leval(ptr noundef %17, ptr noundef null) #38
  br label %16, !llvm.loop !199

27:                                               ; preds = %24
  %.lcssa1 = phi ptr [ %17, %24 ]
  %28 = tail call ptr @cons(ptr noundef %.lcssa1, ptr noundef %15) #38
  br label %14, !llvm.loop !199

29:                                               ; preds = %16
  %.lcssa = phi ptr [ %15, %16 ]
  %30 = tail call ptr @car(ptr noundef %12) #38
  %31 = tail call ptr @fclose_l(ptr noundef %30) #38
  %32 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %33 = icmp sgt i64 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @put_st(ptr noundef nonnull @.str.87.160) #38
  br label %35

35:                                               ; preds = %34, %29
  %36 = tail call ptr @nreverse(ptr noundef %.lcssa) #38
  ret ptr %36
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @fast_save(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca [100 x i8], align 16
  %7 = alloca [50 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %6) #42
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %7) #42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #42
  store i64 1, ptr %8, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #42
  store double 1.000000e+00, ptr %9, align 8, !tbaa !36
  %10 = tail call ptr @get_c_string(ptr noundef %0) #38
  %11 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %12 = icmp sgt i64 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @put_st(ptr noundef nonnull @.str.88.161) #38
  tail call void @put_st(ptr noundef %10) #38
  tail call void @put_st(ptr noundef nonnull @.str.85.158) #38
  br label %14

14:                                               ; preds = %13, %5
  %15 = icmp eq ptr %4, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = tail call ptr @get_c_string(ptr noundef nonnull %4) #38
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ @.str.89.162, %14 ]
  %20 = tail call ptr @fopen_c(ptr noundef %10, ptr noundef %19) #38
  %21 = icmp eq ptr %2, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call ptr @flocons(double noundef 1.000000e+02) #38
  %24 = tail call ptr @cons_array(ptr noundef %23, ptr noundef null) #40
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ null, %18 ]
  %27 = tail call ptr @flocons(double noundef 0.000000e+00) #38
  %28 = tail call ptr (i64, ...) @listn(i64 noundef 3, ptr noundef %20, ptr noundef %26, ptr noundef %27) #40
  %29 = tail call ptr @car(ptr noundef %28) #38
  %30 = tail call ptr @get_c_file(ptr noundef %29, ptr noundef null) #38
  %31 = icmp eq ptr %3, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = tail call ptr @get_c_string(ptr noundef nonnull %3) #38
  tail call void @fput_st(ptr noundef %30, ptr noundef %33) #38
  br label %34

34:                                               ; preds = %32, %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 1 dereferenceable(32) @.str.90.163, i64 32, i1 false)
  call void @fput_st(ptr noundef %30, ptr noundef nonnull %6) #38
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.91.164, i64 noundef 8, i64 noundef 8) #38
  call void @fput_st(ptr noundef %30, ptr noundef nonnull %6) #38
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 0, %34 ], [ %44, %36 ]
  %38 = shl nuw nsw i64 %37, 1
  %39 = getelementptr inbounds i8, ptr %7, i64 %38
  %40 = getelementptr inbounds i8, ptr %8, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = zext i8 %41 to i32
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.233.165, i32 noundef %42) #38
  %44 = add nuw nsw i64 %37, 1
  %45 = icmp eq i64 %44, 8
  br i1 %45, label %46, label %36, !llvm.loop !200

46:                                               ; preds = %36
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.92.166, ptr noundef nonnull %7) #38
  call void @fput_st(ptr noundef %30, ptr noundef nonnull %6) #38
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %56, %48 ]
  %50 = shl nuw nsw i64 %49, 1
  %51 = getelementptr inbounds i8, ptr %7, i64 %50
  %52 = getelementptr inbounds i8, ptr %9, i64 %49
  %53 = load i8, ptr %52, align 1, !tbaa !11
  %54 = zext i8 %53 to i32
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @.str.233.165, i32 noundef %54) #38
  %56 = add nuw nsw i64 %49, 1
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %58, label %48, !llvm.loop !200

58:                                               ; preds = %48
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.93.167, ptr noundef nonnull %7) #38
  call void @fput_st(ptr noundef %30, ptr noundef nonnull %6) #38
  %60 = icmp eq ptr %1, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %65, %61 ], [ %1, %58 ]
  %63 = call ptr @car(ptr noundef nonnull %62) #38
  %64 = call ptr @fast_print(ptr noundef %63, ptr noundef %28) #40
  %65 = call ptr @cdr(ptr noundef nonnull %62) #38
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %61, !llvm.loop !201

67:                                               ; preds = %61, %58
  %68 = call ptr @car(ptr noundef %28) #38
  %69 = call ptr @fclose_l(ptr noundef %68) #38
  %70 = load i64, ptr @siod_verbose_level, align 8, !tbaa !12
  %71 = icmp sgt i64 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  call void @put_st(ptr noundef nonnull @.str.87.160) #38
  br label %73

73:                                               ; preds = %72, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #42
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %7) #42
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %6) #42
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @swrite1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !7
  %4 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef %3) #38
  %5 = icmp eq ptr %1, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !16
  %9 = sext i16 %8 to i32
  switch i32 %9, label %12 [
    i32 3, label %10
    i32 13, label %10
  ]

10:                                               ; preds = %6, %6
  %11 = tail call ptr @get_c_string(ptr noundef nonnull %1) #38
  tail call void @fput_st(ptr noundef %4, ptr noundef %11) #38
  br label %14

12:                                               ; preds = %6, %2
  %13 = tail call ptr @lprin1f(ptr noundef %1, ptr noundef %4) #38
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @swrite(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = sext i16 %7 to i32
  switch i32 %8, label %49 [
    i32 3, label %9
    i32 16, label %11
    i32 1, label %51
  ]

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @swrite2(ptr noundef nonnull %2, ptr noundef %1) #40
  br label %49

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !11
  %14 = icmp slt i64 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call ptr @err(ptr noundef nonnull @.str.94.168, ptr noundef nonnull %2) #38
  br label %17

17:                                               ; preds = %15, %11
  %18 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = tail call fastcc ptr @swrite2(ptr noundef %20, ptr noundef %1) #40
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.obj, ptr %21, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !16
  %26 = icmp eq i16 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %17
  %28 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %21) #38
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.obj, ptr %21, i64 0, i32 2
  %31 = load double, ptr %30, align 8, !tbaa !11
  %32 = fptosi double %31 to i64
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = icmp sgt i64 %13, 1
  br label %36

36:                                               ; preds = %46, %34
  %37 = phi i64 [ 0, %34 ], [ %47, %46 ]
  br i1 %35, label %38, label %46

38:                                               ; preds = %38, %36
  %39 = phi i64 [ %44, %38 ], [ 1, %36 ]
  %40 = load ptr, ptr %18, align 8, !tbaa !11
  %41 = getelementptr inbounds ptr, ptr %40, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = tail call ptr @swrite(ptr noundef %0, ptr noundef %1, ptr noundef %42) #40
  %44 = add nuw nsw i64 %39, 1
  %45 = icmp eq i64 %44, %13
  br i1 %45, label %46, label %38, !llvm.loop !202

46:                                               ; preds = %38, %36
  %47 = add nuw nsw i64 %37, 1
  %48 = icmp eq i64 %47, %32
  br i1 %48, label %51, label %36, !llvm.loop !203

49:                                               ; preds = %9, %5, %3
  %50 = phi ptr [ %10, %9 ], [ %2, %3 ], [ %2, %5 ]
  tail call void @swrite1(ptr noundef %0, ptr noundef %50) #40
  br label %51

51:                                               ; preds = %49, %46, %29, %5
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @swrite2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 3
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load i8, ptr %10, align 1, !tbaa !11
  %12 = icmp eq i8 %11, 46
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds i8, ptr %10, i64 1
  %15 = tail call ptr @rintern(ptr noundef nonnull %14) #38
  br label %16

16:                                               ; preds = %13, %8, %4, %2
  %17 = phi ptr [ %15, %13 ], [ null, %2 ], [ %0, %8 ], [ %0, %4 ]
  %18 = tail call ptr @href(ptr noundef %1, ptr noundef %17) #40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !16
  %23 = icmp eq i16 %22, 1
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 2
  %26 = getelementptr inbounds %struct.obj, ptr %18, i64 0, i32 2, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.obj, ptr %27, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !16
  %32 = icmp eq i16 %31, 1
  %33 = icmp eq ptr %17, %0
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = tail call ptr @hset(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %27) #40
  br label %37

37:                                               ; preds = %35, %29, %24
  %38 = load ptr, ptr %25, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %37, %20, %16
  %40 = phi ptr [ %38, %37 ], [ %0, %16 ], [ %18, %20 ]
  ret ptr %40
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lpow(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.95.169, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 2, !tbaa !16
  %15 = icmp eq i16 %14, 2
  br i1 %15, label %18, label %16

16:                                               ; preds = %12, %10
  %17 = tail call ptr @err(ptr noundef nonnull @.str.96.170, ptr noundef %1) #38
  br label %18

18:                                               ; preds = %16, %12
  %19 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %20 = load double, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = tail call double @pow(double noundef %20, double noundef %22) #38
  %24 = tail call ptr @flocons(double noundef %23) #38
  ret ptr %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @lexp(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @exp(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @llog(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @log(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @lsin(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @sin(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @lcos(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @cos(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @ltan(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @tan(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @tan(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @lasin(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @asin(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @asin(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @lacos(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @acos(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @latan(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = tail call double @atan(double noundef %11) #38
  %13 = tail call ptr @flocons(double noundef %12) #38
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @latan2(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  %19 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = tail call double @atan2(double noundef %12, double noundef %22) #38
  %24 = tail call ptr @flocons(double noundef %23) #38
  ret ptr %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize uwtable
define internal ptr @hexstr(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  %3 = call ptr @get_c_string_dim(ptr noundef %0, ptr noundef nonnull %2) #38
  %4 = load i64, ptr %2, align 8, !tbaa !12
  %5 = shl nsw i64 %4, 1
  %6 = call ptr @strcons(i64 noundef %5, ptr noundef null) #40
  %7 = call ptr @get_c_string(ptr noundef %6) #38
  %8 = load i64, ptr %2, align 8, !tbaa !12
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %10, %1
  %11 = phi i64 [ %17, %10 ], [ 0, %1 ]
  %12 = phi ptr [ %18, %10 ], [ %7, %1 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = zext i8 %14 to i32
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %15) #38
  %17 = add nuw nsw i64 %11, 1
  %18 = getelementptr inbounds i8, ptr %12, i64 2
  %19 = load i64, ptr %2, align 8, !tbaa !12
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %10, label %21, !llvm.loop !204

21:                                               ; preds = %10, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %6
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @hexstr2bytes(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %4 = lshr i64 %3, 1
  %5 = tail call ptr @arcons(i64 noundef 18, i64 noundef %4, i64 noundef 0) #40
  %6 = getelementptr inbounds %struct.obj, ptr %5, i64 0, i32 2, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = icmp ult i64 %3, 2
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i64 [ %27, %11 ], [ 0, %9 ]
  %13 = shl nuw nsw i64 %12, 1
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = sext i8 %15 to i32
  %17 = tail call fastcc i32 @xdigitvalue(i32 noundef %16) #40
  %18 = shl nsw i32 %17, 4
  %19 = or i64 %13, 1
  %20 = getelementptr inbounds i8, ptr %2, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = sext i8 %21 to i32
  %23 = tail call fastcc i32 @xdigitvalue(i32 noundef %22) #40
  %24 = add nsw i32 %23, %18
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds i8, ptr %7, i64 %12
  store i8 %25, ptr %26, align 1, !tbaa !11
  %27 = add nuw nsw i64 %12, 1
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %29, label %11, !llvm.loop !205

29:                                               ; preds = %11, %1
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read) uwtable
define internal fastcc i32 @xdigitvalue(i32 noundef %0) unnamed_addr #34 {
  %2 = tail call ptr @__ctype_b_loc() #45
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !58
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = add nsw i32 %0, -48
  br label %18

12:                                               ; preds = %1
  %13 = and i32 %7, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @toupper(i32 noundef %0) #39
  %17 = add nsw i32 %16, -55
  br label %18

18:                                               ; preds = %15, %12, %10
  %19 = phi i32 [ %11, %10 ], [ %17, %15 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal ptr @getprop(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = tail call ptr @cdr(ptr noundef %0) #38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %11, %2
  %6 = phi ptr [ %12, %11 ], [ %3, %2 ]
  %7 = tail call ptr @car(ptr noundef nonnull %6) #38
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %.lcssa = phi ptr [ %6, %5 ]
  %10 = tail call ptr @cadr(ptr noundef nonnull %.lcssa) #38
  br label %14

11:                                               ; preds = %5
  %12 = tail call ptr @cddr(ptr noundef nonnull %6) #38
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !206

14:                                               ; preds = %11, %9, %2
  %15 = phi ptr [ %10, %9 ], [ null, %2 ], [ null, %11 ]
  ret ptr %15
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @setprop(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @err(ptr noundef nonnull @.str.97.171, ptr noundef null) #38
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @putprop(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @err(ptr noundef nonnull @.str.97.171, ptr noundef null) #38
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @ltypeof(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i64
  switch i64 %6, label %51 [
    i64 0, label %7
    i64 1, label %9
    i64 2, label %11
    i64 3, label %13
    i64 4, label %15
    i64 5, label %17
    i64 6, label %19
    i64 21, label %21
    i64 7, label %23
    i64 19, label %25
    i64 20, label %27
    i64 8, label %29
    i64 9, label %31
    i64 10, label %33
    i64 11, label %35
    i64 12, label %37
    i64 13, label %39
    i64 18, label %41
    i64 14, label %43
    i64 15, label %45
    i64 16, label %47
    i64 17, label %49
  ]

7:                                                ; preds = %3, %1
  %8 = tail call ptr @cintern(ptr noundef nonnull @.str.98.172) #38
  br label %54

9:                                                ; preds = %3
  %10 = tail call ptr @cintern(ptr noundef nonnull @.str.99.173) #38
  br label %54

11:                                               ; preds = %3
  %12 = tail call ptr @cintern(ptr noundef nonnull @.str.100.174) #38
  br label %54

13:                                               ; preds = %3
  %14 = tail call ptr @cintern(ptr noundef nonnull @.str.101.175) #38
  br label %54

15:                                               ; preds = %3
  %16 = tail call ptr @cintern(ptr noundef nonnull @.str.102.176) #38
  br label %54

17:                                               ; preds = %3
  %18 = tail call ptr @cintern(ptr noundef nonnull @.str.103.177) #38
  br label %54

19:                                               ; preds = %3
  %20 = tail call ptr @cintern(ptr noundef nonnull @.str.104.178) #38
  br label %54

21:                                               ; preds = %3
  %22 = tail call ptr @cintern(ptr noundef nonnull @.str.105.179) #38
  br label %54

23:                                               ; preds = %3
  %24 = tail call ptr @cintern(ptr noundef nonnull @.str.106.180) #38
  br label %54

25:                                               ; preds = %3
  %26 = tail call ptr @cintern(ptr noundef nonnull @.str.107.181) #38
  br label %54

27:                                               ; preds = %3
  %28 = tail call ptr @cintern(ptr noundef nonnull @.str.108.182) #38
  br label %54

29:                                               ; preds = %3
  %30 = tail call ptr @cintern(ptr noundef nonnull @.str.109.183) #38
  br label %54

31:                                               ; preds = %3
  %32 = tail call ptr @cintern(ptr noundef nonnull @.str.110.184) #38
  br label %54

33:                                               ; preds = %3
  %34 = tail call ptr @cintern(ptr noundef nonnull @.str.111.185) #38
  br label %54

35:                                               ; preds = %3
  %36 = tail call ptr @cintern(ptr noundef nonnull @.str.112.186) #38
  br label %54

37:                                               ; preds = %3
  %38 = tail call ptr @cintern(ptr noundef nonnull @.str.113.187) #38
  br label %54

39:                                               ; preds = %3
  %40 = tail call ptr @cintern(ptr noundef nonnull @.str.114.188) #38
  br label %54

41:                                               ; preds = %3
  %42 = tail call ptr @cintern(ptr noundef nonnull @.str.115.189) #38
  br label %54

43:                                               ; preds = %3
  %44 = tail call ptr @cintern(ptr noundef nonnull @.str.116.190) #38
  br label %54

45:                                               ; preds = %3
  %46 = tail call ptr @cintern(ptr noundef nonnull @.str.117.191) #38
  br label %54

47:                                               ; preds = %3
  %48 = tail call ptr @cintern(ptr noundef nonnull @.str.118.192) #38
  br label %54

49:                                               ; preds = %3
  %50 = tail call ptr @cintern(ptr noundef nonnull @.str.119.193) #38
  br label %54

51:                                               ; preds = %3
  %52 = sitofp i16 %5 to double
  %53 = tail call ptr @flocons(double noundef %52) #38
  br label %54

54:                                               ; preds = %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %55 = phi ptr [ %53, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  ret ptr %55
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @caaar(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #38
  %3 = tail call ptr @car(ptr noundef %2) #38
  %4 = tail call ptr @car(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @caadr(ptr noundef %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #38
  %3 = tail call ptr @car(ptr noundef %2) #38
  %4 = tail call ptr @car(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cadar(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #38
  %3 = tail call ptr @cdr(ptr noundef %2) #38
  %4 = tail call ptr @car(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @caddr(ptr noundef %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #38
  %3 = tail call ptr @cdr(ptr noundef %2) #38
  %4 = tail call ptr @car(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cdaar(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #38
  %3 = tail call ptr @car(ptr noundef %2) #38
  %4 = tail call ptr @cdr(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cdadr(ptr noundef %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #38
  %3 = tail call ptr @car(ptr noundef %2) #38
  %4 = tail call ptr @cdr(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cddar(ptr noundef %0) #0 {
  %2 = tail call ptr @car(ptr noundef %0) #38
  %3 = tail call ptr @cdr(ptr noundef %2) #38
  %4 = tail call ptr @cdr(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cdddr(ptr noundef %0) #0 {
  %2 = tail call ptr @cdr(ptr noundef %0) #38
  %3 = tail call ptr @cdr(ptr noundef %2) #38
  %4 = tail call ptr @cdr(ptr noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @ash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  %19 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %20

20:                                               ; preds = %18, %14
  %21 = fptosi double %12 to i64
  %22 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = fptosi double %23 to i64
  %25 = icmp sgt i64 %24, 0
  %26 = shl i64 %21, %24
  %27 = sub nsw i64 0, %24
  %28 = ashr i64 %21, %27
  %29 = select i1 %25, i64 %26, i64 %28
  %30 = sitofp i64 %29 to double
  %31 = tail call ptr @flocons(double noundef %30) #38
  ret ptr %31
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @bitand(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  %19 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %20

20:                                               ; preds = %18, %14
  %21 = fptosi double %12 to i64
  %22 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = fptosi double %23 to i64
  %25 = and i64 %24, %21
  %26 = sitofp i64 %25 to double
  %27 = tail call ptr @flocons(double noundef %26) #38
  ret ptr %27
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @bitor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  %19 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %20

20:                                               ; preds = %18, %14
  %21 = fptosi double %12 to i64
  %22 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = fptosi double %23 to i64
  %25 = or i64 %24, %21
  %26 = sitofp i64 %25 to double
  %27 = tail call ptr @flocons(double noundef %26) #38
  ret ptr %27
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @bitxor(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %10

10:                                               ; preds = %8, %4
  %11 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %1, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !16
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %14, %10
  %19 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %1) #38
  br label %20

20:                                               ; preds = %18, %14
  %21 = fptosi double %12 to i64
  %22 = getelementptr inbounds %struct.obj, ptr %1, i64 0, i32 2
  %23 = load double, ptr %22, align 8, !tbaa !11
  %24 = fptosi double %23 to i64
  %25 = xor i64 %24, %21
  %26 = sitofp i64 %25 to double
  %27 = tail call ptr @flocons(double noundef %26) #38
  ret ptr %27
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @bitnot(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = fptosi double %11 to i64
  %13 = xor i64 %12, -1
  %14 = sitofp i64 %13 to double
  %15 = tail call ptr @flocons(double noundef %14) #38
  ret ptr %15
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_prog1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @car(ptr noundef %0) #38
  %4 = tail call ptr @leval(ptr noundef %3, ptr noundef %1) #38
  %5 = tail call ptr @cdr(ptr noundef %0) #38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %11, %7 ], [ %5, %2 ]
  %9 = tail call ptr @car(ptr noundef nonnull %8) #38
  %10 = tail call ptr @leval(ptr noundef %9, ptr noundef %1) #38
  %11 = tail call ptr @cdr(ptr noundef nonnull %8) #38
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %7, !llvm.loop !207

13:                                               ; preds = %7, %2
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @leval_cond(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = tail call ptr @cdr(ptr noundef %3) #38
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %65

8:                                                ; preds = %2
  %9 = tail call ptr @cdr(ptr noundef nonnull %4) #38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %36, %8
  %12 = phi ptr [ %37, %36 ], [ %9, %8 ]
  %13 = phi ptr [ %12, %36 ], [ %4, %8 ]
  %14 = tail call ptr @car(ptr noundef nonnull %13) #38
  %15 = tail call ptr @car(ptr noundef %14) #38
  %16 = tail call ptr @leval(ptr noundef %15, ptr noundef %5) #38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %11
  %.lcssa1 = phi ptr [ %14, %11 ]
  %.lcssa = phi ptr [ %16, %11 ]
  %19 = tail call ptr @cdr(ptr noundef %.lcssa1) #38
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store ptr %.lcssa, ptr %0, align 8, !tbaa !7
  br label %65

22:                                               ; preds = %18
  %23 = tail call ptr @cdr(ptr noundef nonnull %19) #38
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %30, %25 ], [ %23, %22 ]
  %27 = phi ptr [ %26, %25 ], [ %19, %22 ]
  %28 = tail call ptr @car(ptr noundef nonnull %27) #38
  %29 = tail call ptr @leval(ptr noundef %28, ptr noundef %5) #38
  %30 = tail call ptr @cdr(ptr noundef nonnull %26) #38
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %25, !llvm.loop !208

32:                                               ; preds = %25, %22
  %33 = phi ptr [ %19, %22 ], [ %26, %25 ]
  %34 = tail call ptr @car(ptr noundef nonnull %33) #38
  store ptr %34, ptr %0, align 8, !tbaa !7
  %35 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %65

36:                                               ; preds = %11
  %37 = tail call ptr @cdr(ptr noundef nonnull %12) #38
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %11, !llvm.loop !209

39:                                               ; preds = %36, %8
  %40 = phi ptr [ %4, %8 ], [ %12, %36 ]
  %41 = tail call ptr @car(ptr noundef nonnull %40) #38
  %42 = tail call ptr @cdr(ptr noundef %41) #38
  %43 = icmp eq ptr %42, null
  %44 = tail call ptr @car(ptr noundef %41) #38
  br i1 %43, label %45, label %47

45:                                               ; preds = %39
  store ptr %44, ptr %0, align 8, !tbaa !7
  %46 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %65

47:                                               ; preds = %39
  %48 = tail call ptr @leval(ptr noundef %44, ptr noundef %5) #38
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %65

51:                                               ; preds = %47
  %52 = tail call ptr @cdr(ptr noundef nonnull %42) #38
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = phi ptr [ %55, %54 ], [ %42, %51 ]
  %57 = tail call ptr @car(ptr noundef nonnull %56) #38
  %58 = tail call ptr @leval(ptr noundef %57, ptr noundef %5) #38
  %59 = tail call ptr @cdr(ptr noundef nonnull %55) #38
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %54, !llvm.loop !210

61:                                               ; preds = %54, %51
  %62 = phi ptr [ %42, %51 ], [ %55, %54 ]
  %63 = tail call ptr @car(ptr noundef nonnull %62) #38
  store ptr %63, ptr %0, align 8, !tbaa !7
  %64 = load ptr, ptr @sym_t, align 8, !tbaa !7
  br label %65

65:                                               ; preds = %61, %50, %45, %32, %21, %7
  %66 = phi ptr [ null, %7 ], [ null, %21 ], [ %35, %32 ], [ %46, %45 ], [ null, %50 ], [ %64, %61 ]
  ret ptr %66
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lstrspn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call ptr @get_c_string(ptr noundef %1) #38
  %5 = tail call i64 @strspn(ptr noundef %3, ptr noundef %4) #39
  %6 = uitofp i64 %5 to double
  %7 = tail call ptr @flocons(double noundef %6) #38
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal ptr @lstrcspn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call ptr @get_c_string(ptr noundef %1) #38
  %5 = tail call i64 @strcspn(ptr noundef %3, ptr noundef %4) #39
  %6 = uitofp i64 %5 to double
  %7 = tail call ptr @flocons(double noundef %6) #38
  ret ptr %7
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @substring_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42
  %7 = call ptr @get_c_string_dim(ptr noundef %0, ptr noundef nonnull %5) #38
  %8 = call ptr @get_c_string_dim(ptr noundef %1, ptr noundef nonnull %6) #38
  %9 = icmp eq ptr %2, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !16
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %2) #38
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !11
  %19 = fptosi double %18 to i64
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i64 [ %19, %16 ], [ 0, %4 ]
  %22 = icmp eq ptr %3, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, ptr %5, align 8, !tbaa !12
  br label %35

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !16
  %28 = icmp eq i16 %27, 2
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %3) #38
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2
  %33 = load double, ptr %32, align 8, !tbaa !11
  %34 = fptosi double %33 to i64
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i64 [ %24, %23 ], [ %34, %31 ]
  %37 = icmp slt i64 %21, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = icmp sgt i64 %21, %36
  %40 = icmp slt i64 %36, 0
  %41 = or i1 %39, %40
  %42 = load i64, ptr %6, align 8
  %43 = icmp sgt i64 %36, %42
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = sub nsw i64 %36, %21
  %47 = load i64, ptr %5, align 8, !tbaa !12
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %8, i64 %21
  %51 = call i32 @bcmp(ptr %7, ptr %50, i64 %46)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call ptr @a_true_value() #38
  br label %55

55:                                               ; preds = %53, %49, %45, %38, %35
  %56 = phi ptr [ null, %45 ], [ null, %38 ], [ null, %35 ], [ %54, %53 ], [ null, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42
  ret ptr %56
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @substring_equalcase(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #42
  %7 = call ptr @get_c_string_dim(ptr noundef %0, ptr noundef nonnull %5) #38
  %8 = call ptr @get_c_string_dim(ptr noundef %1, ptr noundef nonnull %6) #38
  %9 = icmp eq ptr %2, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !16
  %13 = icmp eq i16 %12, 2
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %2) #38
  br label %16

16:                                               ; preds = %14, %10
  %17 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !11
  %19 = fptosi double %18 to i64
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i64 [ %19, %16 ], [ 0, %4 ]
  %22 = icmp eq ptr %3, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, ptr %5, align 8, !tbaa !12
  br label %35

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !16
  %28 = icmp eq i16 %27, 2
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call ptr @err(ptr noundef nonnull @.str.44.14, ptr noundef nonnull %3) #38
  br label %31

31:                                               ; preds = %29, %25
  %32 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2
  %33 = load double, ptr %32, align 8, !tbaa !11
  %34 = fptosi double %33 to i64
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i64 [ %24, %23 ], [ %34, %31 ]
  %37 = icmp slt i64 %21, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %35
  %39 = icmp sgt i64 %21, %36
  %40 = icmp slt i64 %36, 0
  %41 = or i1 %39, %40
  %42 = load i64, ptr %6, align 8
  %43 = icmp sgt i64 %36, %42
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %38
  %46 = sub nsw i64 %36, %21
  %47 = load i64, ptr %5, align 8, !tbaa !12
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %8, i64 %21
  %51 = call i32 @strncasecmp(ptr noundef %7, ptr noundef %50, i64 noundef %46) #39
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call ptr @a_true_value() #38
  br label %55

55:                                               ; preds = %53, %49, %45, %38, %35
  %56 = phi ptr [ null, %45 ], [ null, %38 ], [ null, %35 ], [ %54, %53 ], [ null, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #42
  ret ptr %56
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal ptr @set_eval_history(ptr noundef returned %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @make_list(ptr noundef nonnull %0, ptr noundef null) #40
  %6 = icmp eq ptr %1, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @last(ptr noundef nonnull %5) #40
  %11 = tail call ptr @setcdr(ptr noundef %10, ptr noundef nonnull %5) #38
  br label %12

12:                                               ; preds = %9, %7, %4, %2
  %13 = phi ptr [ %5, %4 ], [ null, %7 ], [ %5, %9 ], [ null, %2 ]
  %14 = tail call ptr @cintern(ptr noundef nonnull @.str.120.196) #38
  %15 = tail call ptr @setvar(ptr noundef %14, ptr noundef %13, ptr noundef null) #38
  %16 = tail call ptr @cintern(ptr noundef nonnull @.str.121.197) #38
  %17 = tail call ptr @setvar(ptr noundef %16, ptr noundef %13, ptr noundef null) #38
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_subrs_a() #0 {
  tail call void @init_subr_2(ptr noundef nonnull @.str.122.200, ptr noundef nonnull @aref1) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.123.201, ptr noundef nonnull @aset1) #38
  tail call void @init_lsubr(ptr noundef nonnull @.str.124.202, ptr noundef nonnull @string_append) #38
  tail call void @init_lsubr(ptr noundef nonnull @.str.125.203, ptr noundef nonnull @bytes_append) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.126.204, ptr noundef nonnull @string_length) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.127.205, ptr noundef nonnull @string_dim) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.128.206, ptr noundef nonnull @read_from_string) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.129.207, ptr noundef nonnull @print_to_string) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.130.208, ptr noundef nonnull @cons_array) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.131.209, ptr noundef nonnull @sxhash) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.132.210, ptr noundef nonnull @equal) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.133.211, ptr noundef nonnull @href) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.134.212, ptr noundef nonnull @hset) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.135.213, ptr noundef nonnull @assoc) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.136.214, ptr noundef nonnull @assv) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.137.215, ptr noundef nonnull @fast_read) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.138.216, ptr noundef nonnull @fast_print) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.139.217, ptr noundef nonnull @make_list) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.140.218, ptr noundef nonnull @lfread) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.141.219, ptr noundef nonnull @lfwrite) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.142.220, ptr noundef nonnull @lfflush) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.143.221, ptr noundef nonnull @llength) #38
  tail call void @init_subr_4(ptr noundef nonnull @.str.144.222, ptr noundef nonnull @number2string) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.145.223, ptr noundef nonnull @string2number) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.146.224, ptr noundef nonnull @substring) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.147.225, ptr noundef nonnull @string_search) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.148.226, ptr noundef nonnull @string_trim) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.149.227, ptr noundef nonnull @string_trim_left) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.150.228, ptr noundef nonnull @string_trim_right) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.151.229, ptr noundef nonnull @string_upcase) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.152.230, ptr noundef nonnull @string_downcase) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.153.231, ptr noundef nonnull @lstrcmp) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.154.232, ptr noundef nonnull @lstrcat) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.155.233, ptr noundef nonnull @lstrcpy) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.156.234, ptr noundef nonnull @lstrbreakup) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.157.235, ptr noundef nonnull @lstrunbreakup) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.158.236, ptr noundef nonnull @stringp) #38
  tail call void @gc_protect_sym(ptr noundef nonnull @sym_e, ptr noundef nonnull @.str.159.237) #38
  tail call void @gc_protect_sym(ptr noundef nonnull @sym_f, ptr noundef nonnull @.str.160.238) #38
  tail call void @gc_protect_sym(ptr noundef nonnull @sym_plists, ptr noundef nonnull @.str.161.239) #38
  %1 = load ptr, ptr @sym_plists, align 8, !tbaa !7
  %2 = tail call ptr @arcons(i64 noundef 16, i64 noundef 100, i64 noundef 1) #40
  %3 = tail call ptr @setvar(ptr noundef %1, ptr noundef %2, ptr noundef null) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.162.240, ptr noundef nonnull @lref_default) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.163.241, ptr noundef nonnull @larg_default) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.164.242, ptr noundef nonnull @lkey_default) #38
  tail call void @init_lsubr(ptr noundef nonnull @.str.165.243, ptr noundef nonnull @llist) #38
  tail call void @init_lsubr(ptr noundef nonnull @.str.166.244, ptr noundef nonnull @writes) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.167.245, ptr noundef nonnull @lqsort) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.168.246, ptr noundef nonnull @string_lessp) #38
  tail call void @init_lsubr(ptr noundef nonnull @.str.169.247, ptr noundef nonnull @mapcar) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.170.248, ptr noundef nonnull @mapcar2) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.171.249, ptr noundef nonnull @mapcar1) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.172.250, ptr noundef nonnull @benchmark_funcall1) #38
  tail call void @init_lsubr(ptr noundef nonnull @.str.173.251, ptr noundef nonnull @benchmark_funcall2) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.174.252, ptr noundef nonnull @benchmark_eval) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.175.253, ptr noundef nonnull @lfmod) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.176.254, ptr noundef nonnull @lsubset) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.177.255, ptr noundef nonnull @base64encode) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.178.256, ptr noundef nonnull @base64decode) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.179.257, ptr noundef nonnull @ass) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.180.258, ptr noundef nonnull @append2) #38
  tail call void @init_lsubr(ptr noundef nonnull @.str.181.259, ptr noundef nonnull @append) #38
  tail call void @init_subr_5(ptr noundef nonnull @.str.182.260, ptr noundef nonnull @fast_save) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.183.261, ptr noundef nonnull @fast_load) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.184.262, ptr noundef nonnull @swrite) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.185.263, ptr noundef nonnull @lpow) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.186.264, ptr noundef nonnull @lexp) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.187.265, ptr noundef nonnull @llog) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.188.266, ptr noundef nonnull @lsin) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.189.267, ptr noundef nonnull @lcos) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.190.268, ptr noundef nonnull @ltan) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.191.269, ptr noundef nonnull @lasin) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.192.270, ptr noundef nonnull @lacos) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.193.271, ptr noundef nonnull @latan) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.194.272, ptr noundef nonnull @latan2) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.195.273, ptr noundef nonnull @ltypeof) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.196.274, ptr noundef nonnull @caaar) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.197.275, ptr noundef nonnull @caadr) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.198.276, ptr noundef nonnull @cadar) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.199.277, ptr noundef nonnull @caddr) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.200.278, ptr noundef nonnull @cdaar) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.201.279, ptr noundef nonnull @cdadr) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.202.280, ptr noundef nonnull @cddar) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.203.281, ptr noundef nonnull @cdddr) #38
  %4 = tail call ptr @cintern(ptr noundef nonnull @.str.204.282) #38
  %5 = tail call ptr @flocons(double noundef 0x400921FB54442D18) #38
  %6 = tail call ptr @setvar(ptr noundef %4, ptr noundef %5, ptr noundef null) #38
  %7 = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #44
  store ptr %7, ptr @base64_decode_table, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %7, i8 -1, i64 256, i1 false)
  br label %8

8:                                                ; preds = %8, %0
  %9 = phi i64 [ 0, %0 ], [ %15, %8 ]
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds i8, ptr @.str.232.138, i64 %9
  %12 = load i8, ptr %11, align 1, !tbaa !11
  %13 = sext i8 %12 to i64
  %14 = getelementptr inbounds i8, ptr %7, i64 %13
  store i8 %10, ptr %14, align 1, !tbaa !11
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, 65
  br i1 %16, label %17, label %8, !llvm.loop !211

17:                                               ; preds = %8
  tail call void @init_subr_1(ptr noundef nonnull @.str.205.283, ptr noundef nonnull @hexstr) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.206.284, ptr noundef nonnull @hexstr2bytes) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.179.257, ptr noundef nonnull @ass) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.207.285, ptr noundef nonnull @bitand) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.208.286, ptr noundef nonnull @bitor) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.209.287, ptr noundef nonnull @bitxor) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.210.288, ptr noundef nonnull @bitnot) #38
  tail call void @init_msubr(ptr noundef nonnull @.str.211.289, ptr noundef nonnull @leval_cond) #38
  tail call void @init_fsubr(ptr noundef nonnull @.str.212.290, ptr noundef nonnull @leval_prog1) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.213.291, ptr noundef nonnull @lstrspn) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.214.292, ptr noundef nonnull @lstrcspn) #38
  tail call void @init_subr_4(ptr noundef nonnull @.str.215.293, ptr noundef nonnull @substring_equal) #38
  tail call void @init_subr_4(ptr noundef nonnull @.str.216.294, ptr noundef nonnull @substring_equalcase) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.217.295, ptr noundef nonnull @butlast) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.218.296, ptr noundef nonnull @ash) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.219.297, ptr noundef nonnull @getprop) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.220.298, ptr noundef nonnull @setprop) #38
  tail call void @init_subr_3(ptr noundef nonnull @.str.221.299, ptr noundef nonnull @putprop) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.222.300, ptr noundef nonnull @last) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.223.301, ptr noundef nonnull @memq) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.224.302, ptr noundef nonnull @memv) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.225.303, ptr noundef nonnull @member) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.226.304, ptr noundef nonnull @nth) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.227.305, ptr noundef nonnull @nconc) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.228.306, ptr noundef nonnull @set_eval_history) #38
  tail call void @init_subr_1(ptr noundef nonnull @.str.229.307, ptr noundef nonnull @parser_fasl) #38
  %18 = tail call ptr @cintern(ptr noundef nonnull @.str.230.308) #38
  %19 = tail call ptr @a_true_value() #38
  %20 = tail call ptr @setvar(ptr noundef %18, ptr noundef %19, ptr noundef null) #38
  tail call void @init_subr_2(ptr noundef nonnull @.str.231.309, ptr noundef nonnull @parser_fasl_hook) #38
  %21 = tail call ptr @cintern(ptr noundef nonnull @.str.234.310) #38
  %22 = tail call ptr @cintern(ptr noundef nonnull @.str.235) #38
  %23 = tail call ptr @setvar(ptr noundef %21, ptr noundef %22, ptr noundef null) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @parser_fasl(ptr nocapture readnone %0) #0 {
  %2 = tail call ptr @flocons(double noundef 1.000000e+02) #38
  %3 = tail call ptr @cons_array(ptr noundef %2, ptr noundef null) #40
  %4 = tail call ptr @flocons(double noundef 0.000000e+00) #38
  %5 = tail call ptr (i64, ...) @listn(i64 noundef 3, ptr noundef null, ptr noundef %3, ptr noundef %4) #40
  %6 = tail call ptr @cintern(ptr noundef nonnull @.str.231.309) #38
  %7 = tail call ptr @leval(ptr noundef %6, ptr noundef null) #38
  %8 = tail call ptr @closure(ptr noundef %5, ptr noundef %7) #38
  ret ptr %8
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @parser_fasl_hook(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @setcar(ptr noundef %0, ptr noundef %1) #38
  %4 = tail call ptr @fast_read(ptr noundef %0) #40
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @get_eof_val() #38
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  ret ptr %9
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal noalias nonnull ptr @lsystem(ptr nocapture readnone %0) #35 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = load ptr, ptr @stderr, align 8, !tbaa !7
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1.311, i64 29, i64 1, ptr %3) #47
  tail call void @abort() #41
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetuid() #0 {
  %1 = tail call i32 @getuid() #38
  %2 = uitofp i32 %1 to double
  %3 = tail call ptr @flocons(double noundef %2) #38
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare i32 @getuid() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetgid() #0 {
  %1 = tail call i32 @getgid() #38
  %2 = uitofp i32 %1 to double
  %3 = tail call ptr @flocons(double noundef %2) #38
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare i32 @getgid() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetcwd() #0 {
  %1 = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %1) #42
  %2 = call ptr @getcwd(ptr noundef nonnull %1, i64 noundef 4097) #38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %6 = call ptr @strcons(i64 noundef %5, ptr noundef nonnull %1) #38
  br label %10

7:                                                ; preds = %0
  %8 = call ptr @llast_c_errmsg(i32 noundef -1) #38
  %9 = call ptr @err(ptr noundef nonnull @.str.2.312, ptr noundef %8) #38
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %6, %4 ], [ %9, %7 ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %1) #42
  ret ptr %11
}

; Function Attrs: nounwind optsize
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @ldecode_pwent(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !212
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %4 = tail call ptr @strcons(i64 noundef %3, ptr noundef %2) #38
  %5 = getelementptr inbounds %struct.passwd, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !214
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39
  %8 = tail call ptr @strcons(i64 noundef %7, ptr noundef %6) #38
  %9 = getelementptr inbounds %struct.passwd, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !215
  %11 = uitofp i32 %10 to double
  %12 = tail call ptr @flocons(double noundef %11) #38
  %13 = getelementptr inbounds %struct.passwd, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !216
  %15 = uitofp i32 %14 to double
  %16 = tail call ptr @flocons(double noundef %15) #38
  %17 = getelementptr inbounds %struct.passwd, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !217
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #39
  %20 = tail call ptr @strcons(i64 noundef %19, ptr noundef %18) #38
  %21 = getelementptr inbounds %struct.passwd, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !218
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #39
  %24 = tail call ptr @strcons(i64 noundef %23, ptr noundef %22) #38
  %25 = getelementptr inbounds %struct.passwd, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !219
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #39
  %28 = tail call ptr @strcons(i64 noundef %27, ptr noundef %26) #38
  %29 = tail call ptr (ptr, ...) @symalist(ptr noundef nonnull @.str.3.313, ptr noundef %4, ptr noundef nonnull @.str.4.314, ptr noundef %8, ptr noundef nonnull @.str.5.315, ptr noundef %12, ptr noundef nonnull @.str.6.316, ptr noundef %16, ptr noundef nonnull @.str.7.317, ptr noundef %20, ptr noundef nonnull @.str.8.318, ptr noundef %24, ptr noundef nonnull @.str.9.319, ptr noundef %28, ptr noundef null) #40
  ret ptr %29
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @symalist(ptr noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #42
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %1
  call void @llvm.va_start(ptr nonnull %2)
  %5 = load i32, ptr %2, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = zext i32 %5 to i64
  %11 = getelementptr i8, ptr %9, i64 %10
  %12 = add nuw nsw i32 %5, 8
  store i32 %12, ptr %2, align 16
  br label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i64 8
  store ptr %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ]
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @cintern(ptr noundef nonnull %0) #38
  %21 = call ptr @cons(ptr noundef %20, ptr noundef %19) #38
  %22 = call ptr @cons(ptr noundef %21, ptr noundef null) #38
  %23 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %25

25:                                               ; preds = %52, %17
  %26 = phi ptr [ %22, %17 ], [ %57, %52 ]
  %27 = load i32, ptr %2, align 16
  %28 = icmp ult i32 %27, 41
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load ptr, ptr %24, align 16
  %31 = zext i32 %27 to i64
  %32 = getelementptr i8, ptr %30, i64 %31
  %33 = add nuw nsw i32 %27, 8
  store i32 %33, ptr %2, align 16
  br label %37

34:                                               ; preds = %25
  %35 = load ptr, ptr %23, align 8
  %36 = getelementptr i8, ptr %35, i64 8
  store ptr %36, ptr %23, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi i32 [ %33, %29 ], [ %27, %34 ]
  %39 = phi ptr [ %32, %29 ], [ %35, %34 ]
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = icmp ult i32 %38, 41
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  %45 = load ptr, ptr %24, align 16
  %46 = zext i32 %38 to i64
  %47 = getelementptr i8, ptr %45, i64 %46
  %48 = add nuw nsw i32 %38, 8
  store i32 %48, ptr %2, align 16
  br label %52

49:                                               ; preds = %42
  %50 = load ptr, ptr %23, align 8
  %51 = getelementptr i8, ptr %50, i64 8
  store ptr %51, ptr %23, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %47, %44 ], [ %50, %49 ]
  %54 = load ptr, ptr %53, align 8
  %55 = call ptr @cintern(ptr noundef nonnull %40) #38
  %56 = call ptr @cons(ptr noundef %55, ptr noundef %54) #38
  %57 = call ptr @cons(ptr noundef %56, ptr noundef null) #38
  %58 = getelementptr inbounds %struct.obj, ptr %26, i64 0, i32 2, i32 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !11
  br label %25, !llvm.loop !220

59:                                               ; preds = %37
  call void @llvm.va_end(ptr nonnull %2)
  br label %60

60:                                               ; preds = %59, %1
  %61 = phi ptr [ %22, %59 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #42
  ret ptr %61
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetpwuid(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = tail call ptr @getpwuid(i32 noundef %3) #38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @ldecode_pwent(ptr noundef nonnull %5) #40
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi ptr [ %8, %7 ], [ null, %1 ]
  %11 = shl i64 %4, 32
  %12 = ashr exact i64 %11, 32
  %13 = tail call i64 @no_interrupt(i64 noundef %12) #38
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @getpwuid(i32 noundef) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetpwnam(ptr noundef %0) #0 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call ptr @getpwnam(ptr noundef %3) #40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @ldecode_pwent(ptr noundef nonnull %4) #40
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ null, %1 ]
  %10 = shl i64 %2, 32
  %11 = ashr exact i64 %10, 32
  %12 = tail call i64 @no_interrupt(i64 noundef %11) #38
  ret ptr %9
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @getpwnam(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetpwent() #0 {
  %1 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %2 = tail call ptr @getpwent() #38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @ldecode_pwent(ptr noundef nonnull %2) #40
  br label %6

6:                                                ; preds = %4, %0
  %7 = phi ptr [ %5, %4 ], [ null, %0 ]
  %8 = shl i64 %1, 32
  %9 = ashr exact i64 %8, 32
  %10 = tail call i64 @no_interrupt(i64 noundef %9) #38
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @getpwent() local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lsetpwent() #0 {
  %1 = tail call i64 @no_interrupt(i64 noundef 1) #38
  tail call void @setpwent() #38
  %2 = shl i64 %1, 32
  %3 = ashr exact i64 %2, 32
  %4 = tail call i64 @no_interrupt(i64 noundef %3) #38
  ret ptr null
}

; Function Attrs: optsize
declare void @setpwent() local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lendpwent() #0 {
  %1 = tail call i64 @no_interrupt(i64 noundef 1) #38
  tail call void @endpwent() #38
  %2 = shl i64 %1, 32
  %3 = ashr exact i64 %2, 32
  %4 = tail call i64 @no_interrupt(i64 noundef %3) #38
  ret ptr null
}

; Function Attrs: optsize
declare void @endpwent() local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal ptr @lsetuid(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @setuid(i32 noundef %3) #38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %8 = tail call ptr @err(ptr noundef nonnull @.str.10.320, ptr noundef %7) #38
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind optsize
declare i32 @setuid(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lseteuid(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @seteuid(i32 noundef %3) #38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %8 = tail call ptr @err(ptr noundef nonnull @.str.11.321, ptr noundef %7) #38
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind optsize
declare i32 @seteuid(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgeteuid() #0 {
  %1 = tail call i32 @geteuid() #38
  %2 = uitofp i32 %1 to double
  %3 = tail call ptr @flocons(double noundef %2) #38
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare i32 @geteuid() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @laccess_problem(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call ptr @get_c_string(ptr noundef %1) #38
  %5 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %6 = load i8, ptr %4, align 1, !tbaa !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %21, %2
  %9 = phi i8 [ %24, %21 ], [ %6, %2 ]
  %10 = phi ptr [ %23, %21 ], [ %4, %2 ]
  %11 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %12 = sext i8 %9 to i32
  switch i32 %12, label %19 [
    i32 114, label %13
    i32 119, label %15
    i32 120, label %17
    i32 102, label %21
  ]

13:                                               ; preds = %8
  %14 = or i32 %11, 4
  br label %21

15:                                               ; preds = %8
  %16 = or i32 %11, 2
  br label %21

17:                                               ; preds = %8
  %18 = or i32 %11, 1
  br label %21

19:                                               ; preds = %8
  %20 = tail call ptr @err(ptr noundef nonnull @.str.12.322, ptr noundef %1) #38
  br label %21

21:                                               ; preds = %19, %17, %15, %13, %8
  %22 = phi i32 [ %11, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %11, %8 ]
  %23 = getelementptr inbounds i8, ptr %10, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %8, !llvm.loop !221

26:                                               ; preds = %21, %2
  %27 = phi i32 [ 0, %2 ], [ %22, %21 ]
  %28 = tail call i32 @access(ptr noundef %3, i32 noundef %27) #38
  %29 = shl i64 %5, 32
  %30 = ashr exact i64 %29, 32
  %31 = tail call i64 @no_interrupt(i64 noundef %30) #38
  %32 = icmp slt i32 %28, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi ptr [ %34, %33 ], [ null, %26 ]
  ret ptr %36
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lsymlink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = tail call ptr @get_c_string(ptr noundef %1) #38
  %6 = tail call i32 @symlink(ptr noundef %4, ptr noundef %5) #38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %10 = tail call ptr @err(ptr noundef nonnull @.str.13.323, ptr noundef %9) #38
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @no_interrupt(i64 noundef %3) #38
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ null, %11 ]
  ret ptr %14
}

; Function Attrs: nounwind optsize
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @llink(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = tail call ptr @get_c_string(ptr noundef %1) #38
  %6 = tail call i32 @link(ptr noundef %4, ptr noundef %5) #38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %10 = tail call ptr @err(ptr noundef nonnull @.str.14.324, ptr noundef %9) #38
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @no_interrupt(i64 noundef %3) #38
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ null, %11 ]
  ret ptr %14
}

; Function Attrs: nounwind optsize
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lunlink(ptr noundef %0) #0 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call i32 @unlink(ptr noundef %3) #38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %8 = tail call ptr @err(ptr noundef nonnull @.str.15.325, ptr noundef %7) #38
  br label %11

9:                                                ; preds = %1
  %10 = tail call i64 @no_interrupt(i64 noundef %2) #38
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ null, %9 ]
  ret ptr %12
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lrmdir(ptr noundef %0) #0 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call i32 @rmdir(ptr noundef %3) #38
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %8 = tail call ptr @err(ptr noundef nonnull @.str.16.326, ptr noundef %7) #38
  br label %11

9:                                                ; preds = %1
  %10 = tail call i64 @no_interrupt(i64 noundef %2) #38
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ null, %9 ]
  ret ptr %12
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rmdir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lmkdir(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = tail call i64 @get_c_long(ptr noundef %1) #38
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @mkdir(ptr noundef %4, i32 noundef %6) #38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %11 = tail call ptr @err(ptr noundef nonnull @.str.17.327, ptr noundef %10) #38
  br label %14

12:                                               ; preds = %2
  %13 = tail call i64 @no_interrupt(i64 noundef %3) #38
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %11, %9 ], [ null, %12 ]
  ret ptr %15
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lreadlink(ptr noundef %0) #0 {
  %2 = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %2) #42
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = call i64 @readlink(ptr noundef %4, ptr noundef nonnull %2, i64 noundef 4097) #38
  %6 = and i64 %5, 2147483648
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %10 = tail call ptr @err(ptr noundef nonnull @.str.18.328, ptr noundef %9) #38
  br label %15

11:                                               ; preds = %1
  %12 = tail call i64 @no_interrupt(i64 noundef %3) #38
  %13 = and i64 %5, 4294967295
  %14 = call ptr @strcons(i64 noundef %13, ptr noundef nonnull %2) #38
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi ptr [ %10, %8 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %2) #42
  ret ptr %16
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lrename(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = tail call ptr @get_c_string(ptr noundef %1) #38
  %6 = tail call i32 @rename(ptr noundef %4, ptr noundef %5) #38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %10 = tail call ptr @err(ptr noundef nonnull @.str.19.329, ptr noundef %9) #38
  br label %13

11:                                               ; preds = %2
  %12 = tail call i64 @no_interrupt(i64 noundef %3) #38
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ null, %11 ]
  ret ptr %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lrandom(ptr noundef %0) #0 {
  %2 = tail call i64 @random() #38
  %3 = icmp eq ptr %0, null
  %4 = shl i64 %2, 32
  %5 = ashr exact i64 %4, 32
  br i1 %3, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  %8 = srem i64 %5, %7
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i64 [ %8, %6 ], [ %5, %1 ]
  %11 = sitofp i64 %10 to double
  %12 = tail call ptr @flocons(double noundef %11) #38
  ret ptr %12
}

; Function Attrs: nounwind optsize
declare i64 @random() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lsrandom(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  tail call void @srandom(i32 noundef %3) #38
  ret ptr null
}

; Function Attrs: nounwind optsize
declare void @srandom(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lfork() #0 {
  %1 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %2 = tail call i32 @fork() #38
  switch i32 %2, label %10 [
    i32 0, label %3
    i32 -1, label %7
  ]

3:                                                ; preds = %0
  %4 = shl i64 %1, 32
  %5 = ashr exact i64 %4, 32
  %6 = tail call i64 @no_interrupt(i64 noundef %5) #38
  br label %16

7:                                                ; preds = %0
  %8 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %9 = tail call ptr @err(ptr noundef nonnull @.str.20.330, ptr noundef %8) #38
  br label %16

10:                                               ; preds = %0
  %11 = shl i64 %1, 32
  %12 = ashr exact i64 %11, 32
  %13 = tail call i64 @no_interrupt(i64 noundef %12) #38
  %14 = sitofp i32 %2 to double
  %15 = tail call ptr @flocons(double noundef %14) #38
  br label %16

16:                                               ; preds = %10, %7, %3
  %17 = phi ptr [ null, %3 ], [ %9, %7 ], [ %15, %10 ]
  ret ptr %17
}

; Function Attrs: nofree nounwind optsize
declare i32 @fork() local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @list2char(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42
  %4 = tail call ptr @llength(ptr noundef %1) #38
  %5 = tail call i64 @get_c_long(ptr noundef %4) #38
  %6 = shl i64 %5, 3
  %7 = add i64 %6, 8
  %8 = call ptr @mallocl(ptr noundef nonnull %3, i64 noundef %7) #38
  %9 = load ptr, ptr %0, align 8, !tbaa !7
  %10 = call ptr @cons(ptr noundef %8, ptr noundef %9) #38
  store ptr %10, ptr %0, align 8, !tbaa !7
  %11 = icmp sgt i64 %5, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %12, %2
  %13 = phi ptr [ %28, %12 ], [ %1, %2 ]
  %14 = phi i64 [ %29, %12 ], [ 0, %2 ]
  %15 = call ptr @car(ptr noundef %13) #38
  %16 = call ptr @get_c_string(ptr noundef %15) #38
  %17 = load ptr, ptr %3, align 8, !tbaa !7
  %18 = getelementptr inbounds ptr, ptr %17, i64 %14
  %19 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #39
  %20 = add i64 %19, 1
  %21 = call ptr @mallocl(ptr noundef %18, i64 noundef %20) #38
  %22 = load ptr, ptr %0, align 8, !tbaa !7
  %23 = call ptr @cons(ptr noundef %21, ptr noundef %22) #38
  store ptr %23, ptr %0, align 8, !tbaa !7
  %24 = load ptr, ptr %3, align 8, !tbaa !7
  %25 = getelementptr inbounds ptr, ptr %24, i64 %14
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %16) #38
  %28 = call ptr @cdr(ptr noundef %13) #38
  %29 = add nuw nsw i64 %14, 1
  %30 = icmp eq i64 %29, %5
  br i1 %30, label %31, label %12, !llvm.loop !222

31:                                               ; preds = %12, %2
  %32 = load ptr, ptr %3, align 8, !tbaa !7
  %33 = getelementptr inbounds ptr, ptr %32, i64 %5
  store ptr null, ptr %33, align 8, !tbaa !7
  %34 = load ptr, ptr %3, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42
  ret ptr %34
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lexec(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42
  store ptr null, ptr %4, align 8, !tbaa !7
  %5 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %6 = call ptr @list2char(ptr noundef nonnull %4, ptr noundef %1) #40
  %7 = icmp eq ptr %2, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = call ptr @list2char(ptr noundef nonnull %4, ptr noundef nonnull %2) #40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @get_c_string(ptr noundef %0) #38
  %13 = tail call i32 @execve(ptr noundef %12, ptr noundef %6, ptr noundef nonnull %9) #38
  br label %17

14:                                               ; preds = %8, %3
  %15 = tail call ptr @get_c_string(ptr noundef %0) #38
  %16 = tail call i32 @execv(ptr noundef %15, ptr noundef %6) #38
  br label %17

17:                                               ; preds = %14, %11
  %18 = shl i64 %5, 32
  %19 = ashr exact i64 %18, 32
  %20 = tail call i64 @no_interrupt(i64 noundef %19) #38
  %21 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %22 = tail call ptr @err(ptr noundef nonnull @.str.21.331, ptr noundef %21) #38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42
  ret ptr %22
}

; Function Attrs: nofree nounwind optsize
declare i32 @execve(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lnice(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = tail call i32 @nice(i32 noundef %3) #38
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %9 = tail call ptr @err(ptr noundef nonnull @.str.22.332, ptr noundef %8) #38
  br label %10

10:                                               ; preds = %7, %1
  %11 = shl i64 %4, 32
  %12 = ashr exact i64 %11, 32
  %13 = tail call i64 @no_interrupt(i64 noundef %12) #38
  %14 = sitofp i32 %5 to double
  %15 = tail call ptr @flocons(double noundef %14) #38
  ret ptr %15
}

; Function Attrs: nounwind optsize
declare i32 @nice(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal i32 @assemble_options(ptr noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #42
  %3 = icmp eq ptr %0, null
  br i1 %3, label %85, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call ptr @llength(ptr noundef nonnull %0) #38
  %10 = tail call i64 @get_c_long(ptr noundef %9) #38
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -1, %4 ]
  call void @llvm.va_start(ptr nonnull %2)
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %15 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %16

16:                                               ; preds = %65, %12
  %17 = phi i32 [ %13, %12 ], [ -2, %65 ]
  %18 = phi i32 [ 0, %12 ], [ %23, %65 ]
  %19 = phi i32 [ 0, %12 ], [ %67, %65 ]
  %20 = phi ptr [ null, %12 ], [ %66, %65 ]
  %21 = icmp sgt i32 %17, 0
  br label %22

22:                                               ; preds = %68, %16
  %23 = phi i32 [ %18, %16 ], [ %74, %68 ]
  %24 = phi i32 [ %19, %16 ], [ %67, %68 ]
  %25 = phi ptr [ %20, %16 ], [ %66, %68 ]
  br label %26

26:                                               ; preds = %62, %22
  %27 = phi ptr [ %25, %22 ], [ null, %62 ]
  br label %28

28:                                               ; preds = %59, %26
  %29 = load i32, ptr %2, align 16
  %30 = icmp ult i32 %29, 41
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load ptr, ptr %15, align 16
  %33 = zext i32 %29 to i64
  %34 = getelementptr i8, ptr %32, i64 %33
  %35 = add nuw nsw i32 %29, 8
  store i32 %35, ptr %2, align 16
  br label %39

36:                                               ; preds = %28
  %37 = load ptr, ptr %14, align 8
  %38 = getelementptr i8, ptr %37, i64 8
  store ptr %38, ptr %14, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %35, %31 ], [ %29, %36 ]
  %41 = phi ptr [ %34, %31 ], [ %37, %36 ]
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %75, label %44

44:                                               ; preds = %39
  %45 = icmp ult i32 %40, 41
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = load ptr, ptr %15, align 16
  %48 = zext i32 %40 to i64
  %49 = getelementptr i8, ptr %47, i64 %48
  %50 = add nuw nsw i32 %40, 8
  store i32 %50, ptr %2, align 16
  br label %54

51:                                               ; preds = %44
  %52 = load ptr, ptr %14, align 8
  %53 = getelementptr i8, ptr %52, i64 8
  store ptr %53, ptr %14, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi ptr [ %49, %46 ], [ %52, %51 ]
  %56 = load i32, ptr %55, align 4
  %57 = call ptr @cintern(ptr noundef nonnull %42) #38
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i16, ptr %5, align 2, !tbaa !16
  %61 = icmp eq i16 %60, 1
  br i1 %61, label %62, label %28, !llvm.loop !223

62:                                               ; preds = %59
  %.lcssa3 = phi i32 [ %56, %59 ]
  %.lcssa1 = phi ptr [ %57, %59 ]
  %63 = call ptr @memq(ptr noundef %.lcssa1, ptr noundef nonnull %0) #38
  %64 = icmp eq ptr %63, null
  br i1 %64, label %26, label %65, !llvm.loop !223

65:                                               ; preds = %62, %54
  %.lcssa2 = phi i32 [ %.lcssa3, %62 ], [ %56, %54 ]
  %66 = phi ptr [ %27, %54 ], [ %63, %62 ]
  %67 = or i32 %.lcssa2, %24
  br i1 %21, label %68, label %16, !llvm.loop !223

68:                                               ; preds = %65
  %69 = call ptr @llength(ptr noundef %66) #38
  %70 = call i64 @get_c_long(ptr noundef %69) #38
  %71 = trunc i64 %70 to i32
  %72 = sub i32 %17, %71
  %73 = shl nuw i32 1, %72
  %74 = or i32 %73, %23
  br label %22, !llvm.loop !223

75:                                               ; preds = %39
  %.lcssa5 = phi i32 [ %17, %39 ]
  %.lcssa4 = phi i32 [ %23, %39 ]
  %.lcssa = phi i32 [ %24, %39 ]
  call void @llvm.va_end(ptr nonnull %2)
  %76 = icmp eq i32 %.lcssa5, -1
  br i1 %76, label %83, label %77

77:                                               ; preds = %75
  %78 = icmp sgt i32 %.lcssa5, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %77
  %80 = shl nsw i32 -1, %.lcssa5
  %81 = xor i32 %80, -1
  %82 = icmp eq i32 %.lcssa4, %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %79, %75
  %84 = call ptr @err(ptr noundef nonnull @.str.23.333, ptr noundef nonnull %0) #38
  br label %85

85:                                               ; preds = %83, %79, %77, %1
  %86 = phi i32 [ 0, %1 ], [ %.lcssa, %83 ], [ %.lcssa, %79 ], [ %.lcssa, %77 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #42
  ret i32 %86
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lwait(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #42
  store i32 0, ptr %3, align 4, !tbaa !76
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  %7 = trunc i64 %6 to i32
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ %7, %5 ], [ -1, %2 ]
  %10 = tail call i32 (ptr, ...) @assemble_options(ptr noundef %1, ptr noundef nonnull @.str.24.334, i32 noundef 8, ptr noundef nonnull @.str.25.335, i32 noundef 16777216, ptr noundef nonnull @.str.26.336, i32 noundef 1, ptr noundef nonnull @.str.27.337, i32 noundef 2, ptr noundef null) #40
  %11 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %12 = call i32 @waitpid(i32 noundef %9, ptr noundef nonnull %3, i32 noundef %10) #38
  %13 = shl i64 %11, 32
  %14 = ashr exact i64 %13, 32
  %15 = call i64 @no_interrupt(i64 noundef %14) #38
  switch i32 %12, label %19 [
    i32 0, label %27
    i32 -1, label %16
  ]

16:                                               ; preds = %8
  %17 = call ptr @llast_c_errmsg(i32 noundef -1) #38
  %18 = call ptr @err(ptr noundef nonnull @.str.28.338, ptr noundef %17) #38
  br label %27

19:                                               ; preds = %8
  %20 = sitofp i32 %12 to double
  %21 = call ptr @flocons(double noundef %20) #38
  %22 = load i32, ptr %3, align 4, !tbaa !76
  %23 = sitofp i32 %22 to double
  %24 = call ptr @flocons(double noundef %23) #38
  %25 = call ptr @cons(ptr noundef %24, ptr noundef null) #38
  %26 = call ptr @cons(ptr noundef %21, ptr noundef %25) #38
  br label %27

27:                                               ; preds = %19, %16, %8
  %28 = phi ptr [ %18, %16 ], [ %26, %19 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #42
  ret ptr %28
}

; Function Attrs: optsize
declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lkill(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call i64 @get_c_long(ptr noundef %0) #38
  %5 = trunc i64 %4 to i32
  %6 = icmp eq ptr %1, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @get_c_long(ptr noundef nonnull %1) #38
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ 9, %2 ]
  %12 = tail call i32 @kill(i32 noundef %5, i32 noundef %11) #38
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %16 = tail call ptr @err(ptr noundef nonnull @.str.29.339, ptr noundef %15) #38
  br label %19

17:                                               ; preds = %10
  %18 = tail call i64 @no_interrupt(i64 noundef %3) #38
  br label %19

19:                                               ; preds = %17, %14
  ret ptr null
}

; Function Attrs: nounwind optsize
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetpid() #0 {
  %1 = tail call i32 @getpid() #38
  %2 = sitofp i32 %1 to double
  %3 = tail call ptr @flocons(double noundef %2) #38
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetpgrp() #0 {
  %1 = tail call i32 @getpgrp() #38
  %2 = sitofp i32 %1 to double
  %3 = tail call ptr @flocons(double noundef %2) #38
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare i32 @getpgrp() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lsetpgid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i64 @get_c_long(ptr noundef %0) #38
  %4 = trunc i64 %3 to i32
  %5 = tail call i64 @get_c_long(ptr noundef %1) #38
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @setpgid(i32 noundef %4, i32 noundef %6) #38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %11 = tail call ptr @err(ptr noundef nonnull @.str.30.340, ptr noundef %10) #38
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind optsize
declare i32 @setpgid(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetgrgid(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = tail call ptr @getgrgid(i32 noundef %3) #38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !224
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #39
  %10 = tail call ptr @strcons(i64 noundef %9, ptr noundef %8) #38
  %11 = tail call ptr @cons(ptr noundef %10, ptr noundef null) #38
  %12 = getelementptr inbounds %struct.group, ptr %5, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !226
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %16, %7
  %17 = phi ptr [ %26, %16 ], [ %14, %7 ]
  %18 = phi ptr [ %22, %16 ], [ %11, %7 ]
  %19 = phi i64 [ %23, %16 ], [ 0, %7 ]
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #39
  %21 = tail call ptr @strcons(i64 noundef %20, ptr noundef nonnull %17) #38
  %22 = tail call ptr @cons(ptr noundef %21, ptr noundef %18) #38
  %23 = add nuw nsw i64 %19, 1
  %24 = load ptr, ptr %12, align 8, !tbaa !226
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %16, !llvm.loop !227

28:                                               ; preds = %16, %7
  %29 = phi ptr [ %11, %7 ], [ %22, %16 ]
  %30 = tail call ptr @nreverse(ptr noundef %29) #38
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi ptr [ %30, %28 ], [ null, %1 ]
  %33 = tail call i64 @no_interrupt(i64 noundef %4) #38
  ret ptr %32
}

; Function Attrs: optsize
declare ptr @getgrgid(i32 noundef) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetppid() #0 {
  %1 = tail call i32 @getppid() #38
  %2 = sitofp i32 %1 to double
  %3 = tail call ptr @flocons(double noundef %2) #38
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare i32 @getppid() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lmemref_byte(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = inttoptr i64 %2 to ptr
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = uitofp i8 %4 to double
  %6 = tail call ptr @flocons(double noundef %5) #38
  ret ptr %6
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal noalias nonnull ptr @lexit(ptr noundef %0) #35 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = tail call i64 @get_c_long(ptr noundef %0) #38
  %4 = trunc i64 %3 to i32
  tail call void @exit(i32 noundef %4) #41
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @ltrunc(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 2
  br i1 %6, label %9, label %7

7:                                                ; preds = %3, %1
  %8 = tail call ptr @err(ptr noundef nonnull @.str.31.341, ptr noundef %0) #38
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = fptosi double %11 to i64
  %13 = sitofp i64 %12 to double
  %14 = tail call ptr @flocons(double noundef %13) #38
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lputenv(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %4 = add i64 %3, 1
  %5 = tail call ptr @must_malloc(i64 noundef %4) #38
  %6 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %2) #38
  %7 = tail call i32 @putenv(ptr noundef %5) #38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %11 = tail call ptr @err(ptr noundef nonnull @.str.32.342, ptr noundef %10) #38
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind optsize
declare i32 @putenv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal void @handle_sigalrm(i32 %0) #0 {
  %2 = load i64, ptr @nointerrupt, align 8, !tbaa !12
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load i32, ptr @handle_sigalrm_flag, align 4, !tbaa !76
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  store i64 1, ptr @interrupt_differed, align 8, !tbaa !12
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @err(ptr noundef nonnull @.str.33.343, ptr noundef null) #38
  br label %10

10:                                               ; preds = %8, %7, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lalarm(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @signal(i32 noundef 14, ptr noundef nonnull @handle_sigalrm) #38
  %5 = icmp ne ptr %1, null
  %6 = zext i1 %5 to i32
  store i32 %6, ptr @handle_sigalrm_flag, align 4, !tbaa !76
  %7 = tail call i64 @get_c_long(ptr noundef %0) #38
  %8 = trunc i64 %7 to i32
  %9 = tail call i32 @alarm(i32 noundef %8) #38
  %10 = tail call i64 @no_interrupt(i64 noundef %3) #38
  %11 = sitofp i32 %9 to double
  %12 = tail call ptr @flocons(double noundef %11) #38
  ret ptr %12
}

; Function Attrs: nounwind optsize
declare i32 @alarm(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @l_opendir(ptr noundef %0) #0 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = tail call ptr @cons(ptr noundef null, ptr noundef null) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = tail call noalias ptr @opendir(ptr noundef %4) #40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %9 = tail call ptr @err(ptr noundef nonnull @.str.34.344, ptr noundef %8) #38
  br label %16

10:                                               ; preds = %1
  %11 = load i64, ptr @tc_opendir, align 8, !tbaa !12
  %12 = trunc i64 %11 to i16
  %13 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 1
  store i16 %12, ptr %13, align 2, !tbaa !16
  %14 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2
  store ptr %5, ptr %14, align 8, !tbaa !11
  %15 = tail call i64 @no_interrupt(i64 noundef %2) #38
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi ptr [ %3, %10 ], [ %9, %7 ]
  ret ptr %17
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_opendir(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !16
  %7 = sext i16 %6 to i64
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i64 [ %7, %4 ], [ 0, %2 ]
  %10 = load i64, ptr @tc_opendir, align 8, !tbaa !12
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @err(ptr noundef nonnull @.str.35.345, ptr noundef %0) #38
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp ne ptr %16, null
  %18 = icmp eq i64 %1, 0
  %19 = or i1 %18, %17
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call ptr @err(ptr noundef nonnull @.str.36.346, ptr noundef nonnull %0) #38
  br label %22

22:                                               ; preds = %20, %14
  ret ptr %16
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @l_closedir(ptr noundef %0) #0 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = tail call ptr @get_opendir(ptr noundef %0, i64 noundef 1) #40
  %4 = tail call ptr @__errno_location() #45
  %5 = load i32, ptr %4, align 4, !tbaa !76
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !11
  %7 = tail call i32 @closedir(ptr noundef %3) #40
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @llast_c_errmsg(i32 noundef %5) #38
  %11 = tail call ptr @err(ptr noundef nonnull @.str.37.347, ptr noundef %10) #38
  br label %14

12:                                               ; preds = %1
  %13 = tail call i64 @no_interrupt(i64 noundef %2) #38
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi ptr [ %11, %9 ], [ null, %12 ]
  ret ptr %15
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @opendir_gc_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i64
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  %9 = load i64, ptr @tc_opendir, align 8, !tbaa !12
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @err(ptr noundef nonnull @.str.35.345, ptr noundef %0) #38
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 @closedir(ptr noundef nonnull %15) #40
  br label %19

19:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @l_readdir(ptr noundef %0) #0 {
  %2 = tail call ptr @get_opendir(ptr noundef %0, i64 noundef 1) #40
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @readdir(ptr noundef %2) #38
  %5 = tail call i64 @no_interrupt(i64 noundef %3) #38
  %6 = icmp eq ptr %4, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dirent, ptr %4, i64 0, i32 4
  %9 = getelementptr inbounds %struct.dirent, ptr %4, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !228
  %11 = zext i16 %10 to i64
  %12 = tail call i64 @safe_strlen(ptr noundef nonnull %8, i64 noundef %11) #38
  %13 = tail call ptr @strcons(i64 noundef %12, ptr noundef nonnull %8) #38
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ %13, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @readdir(ptr noundef) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal void @opendir_prin1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #42
  %4 = icmp eq ptr %0, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = sext i16 %7 to i64
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i64 [ %8, %5 ], [ 0, %2 ]
  %11 = load i64, ptr @tc_opendir, align 8, !tbaa !12
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @err(ptr noundef nonnull @.str.35.345, ptr noundef %0) #38
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.38.348, ptr noundef %17) #38
  call void @gput_st(ptr noundef %1, ptr noundef nonnull %3) #38
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @file_times(ptr noundef %0) #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #42
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = call i32 @stat(ptr noundef %4, ptr noundef nonnull %2) #38
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = tail call i64 @no_interrupt(i64 noundef %7) #38
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 13
  %12 = load i64, ptr %11, align 8, !tbaa !230
  %13 = sitofp i64 %12 to double
  %14 = tail call ptr @flocons(double noundef %13) #38
  %15 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12
  %16 = load i64, ptr %15, align 8, !tbaa !233
  %17 = sitofp i64 %16 to double
  %18 = tail call ptr @flocons(double noundef %17) #38
  %19 = tail call ptr @cons(ptr noundef %18, ptr noundef null) #38
  %20 = tail call ptr @cons(ptr noundef %14, ptr noundef %19) #38
  br label %21

21:                                               ; preds = %10, %1
  %22 = phi ptr [ %20, %10 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #42
  ret ptr %22
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @decode_st_moden(i32 noundef %0) #0 {
  %2 = and i32 %0, 2048
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @cintern(ptr noundef nonnull @.str.39.349) #38
  %6 = tail call ptr @cons(ptr noundef %5, ptr noundef null) #38
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = and i32 %0, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @cintern(ptr noundef nonnull @.str.40.350) #38
  %13 = tail call ptr @cons(ptr noundef %12, ptr noundef %8) #38
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %8, %7 ]
  %16 = and i32 %0, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @cintern(ptr noundef nonnull @.str.41.351) #38
  %20 = tail call ptr @cons(ptr noundef %19, ptr noundef %15) #38
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi ptr [ %20, %18 ], [ %15, %14 ]
  %23 = and i32 %0, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @cintern(ptr noundef nonnull @.str.42.352) #38
  %27 = tail call ptr @cons(ptr noundef %26, ptr noundef %22) #38
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %27, %25 ], [ %22, %21 ]
  %30 = and i32 %0, 64
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @cintern(ptr noundef nonnull @.str.43.353) #38
  %34 = tail call ptr @cons(ptr noundef %33, ptr noundef %29) #38
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi ptr [ %34, %32 ], [ %29, %28 ]
  %37 = and i32 %0, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @cintern(ptr noundef nonnull @.str.44.354) #38
  %41 = tail call ptr @cons(ptr noundef %40, ptr noundef %36) #38
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi ptr [ %41, %39 ], [ %36, %35 ]
  %44 = and i32 %0, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @cintern(ptr noundef nonnull @.str.45.355) #38
  %48 = tail call ptr @cons(ptr noundef %47, ptr noundef %43) #38
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi ptr [ %48, %46 ], [ %43, %42 ]
  %51 = and i32 %0, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = tail call ptr @cintern(ptr noundef nonnull @.str.46.356) #38
  %55 = tail call ptr @cons(ptr noundef %54, ptr noundef %50) #38
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %55, %53 ], [ %50, %49 ]
  %58 = and i32 %0, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = tail call ptr @cintern(ptr noundef nonnull @.str.47.357) #38
  %62 = tail call ptr @cons(ptr noundef %61, ptr noundef %57) #38
  br label %63

63:                                               ; preds = %60, %56
  %64 = phi ptr [ %62, %60 ], [ %57, %56 ]
  %65 = and i32 %0, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = tail call ptr @cintern(ptr noundef nonnull @.str.48.358) #38
  %69 = tail call ptr @cons(ptr noundef %68, ptr noundef %64) #38
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi ptr [ %69, %67 ], [ %64, %63 ]
  %72 = and i32 %0, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = tail call ptr @cintern(ptr noundef nonnull @.str.49.359) #38
  %76 = tail call ptr @cons(ptr noundef %75, ptr noundef %71) #38
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi ptr [ %76, %74 ], [ %71, %70 ]
  %79 = and i32 %0, 61440
  %80 = add nsw i32 %79, -4096
  %81 = lshr exact i32 %80, 12
  %82 = icmp ult i32 %80, 49152
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = trunc i32 %81 to i16
  %85 = lshr i16 2731, %84
  %86 = and i16 %85, 1
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = zext i32 %81 to i64
  %90 = getelementptr inbounds [12 x ptr], ptr @switch.table.decode_st_moden, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 8
  %92 = tail call ptr @cintern(ptr noundef nonnull %91) #38
  %93 = tail call ptr @cons(ptr noundef %92, ptr noundef %78) #38
  br label %94

94:                                               ; preds = %88, %83, %77
  %95 = phi ptr [ %78, %77 ], [ %93, %88 ], [ %78, %83 ]
  ret ptr %95
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @encode_st_mode(ptr noundef %0) #0 {
  %2 = tail call i32 (ptr, ...) @assemble_options(ptr noundef %0, ptr noundef nonnull @.str.39.349, i32 noundef 2048, ptr noundef nonnull @.str.40.350, i32 noundef 1024, ptr noundef nonnull @.str.41.351, i32 noundef 256, ptr noundef nonnull @.str.42.352, i32 noundef 128, ptr noundef nonnull @.str.43.353, i32 noundef 64, ptr noundef nonnull @.str.44.354, i32 noundef 32, ptr noundef nonnull @.str.45.355, i32 noundef 16, ptr noundef nonnull @.str.46.356, i32 noundef 8, ptr noundef nonnull @.str.47.357, i32 noundef 4, ptr noundef nonnull @.str.48.358, i32 noundef 2, ptr noundef nonnull @.str.49.359, i32 noundef 1, ptr noundef null) #40
  %3 = sitofp i32 %2 to double
  %4 = tail call ptr @flocons(double noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @decode_st_mode(ptr noundef %0) #0 {
  %2 = tail call i64 @get_c_long(ptr noundef %0) #38
  %3 = trunc i64 %2 to i32
  %4 = tail call ptr @decode_st_moden(i32 noundef %3) #40
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @decode_stat(ptr nocapture noundef readonly %0) #0 {
  %2 = load i64, ptr %0, align 8, !tbaa !234
  %3 = uitofp i64 %2 to double
  %4 = tail call ptr @flocons(double noundef %3) #38
  %5 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !235
  %7 = uitofp i64 %6 to double
  %8 = tail call ptr @flocons(double noundef %7) #38
  %9 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !236
  %11 = tail call ptr @decode_st_moden(i32 noundef %10) #40
  %12 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !237
  %14 = uitofp i64 %13 to double
  %15 = tail call ptr @flocons(double noundef %14) #38
  %16 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !238
  %18 = uitofp i32 %17 to double
  %19 = tail call ptr @flocons(double noundef %18) #38
  %20 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !239
  %22 = uitofp i32 %21 to double
  %23 = tail call ptr @flocons(double noundef %22) #38
  %24 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 7
  %25 = load i64, ptr %24, align 8, !tbaa !240
  %26 = uitofp i64 %25 to double
  %27 = tail call ptr @flocons(double noundef %26) #38
  %28 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 8
  %29 = load i64, ptr %28, align 8, !tbaa !241
  %30 = sitofp i64 %29 to double
  %31 = tail call ptr @flocons(double noundef %30) #38
  %32 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 11
  %33 = load i64, ptr %32, align 8, !tbaa !242
  %34 = sitofp i64 %33 to double
  %35 = tail call ptr @flocons(double noundef %34) #38
  %36 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 12
  %37 = load i64, ptr %36, align 8, !tbaa !233
  %38 = sitofp i64 %37 to double
  %39 = tail call ptr @flocons(double noundef %38) #38
  %40 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 13
  %41 = load i64, ptr %40, align 8, !tbaa !230
  %42 = sitofp i64 %41 to double
  %43 = tail call ptr @flocons(double noundef %42) #38
  %44 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 9
  %45 = load i64, ptr %44, align 8, !tbaa !243
  %46 = sitofp i64 %45 to double
  %47 = tail call ptr @flocons(double noundef %46) #38
  %48 = getelementptr inbounds %struct.stat, ptr %0, i64 0, i32 10
  %49 = load i64, ptr %48, align 8, !tbaa !244
  %50 = sitofp i64 %49 to double
  %51 = tail call ptr @flocons(double noundef %50) #38
  %52 = tail call ptr (ptr, ...) @symalist(ptr noundef nonnull @.str.57.367, ptr noundef %4, ptr noundef nonnull @.str.58.368, ptr noundef %8, ptr noundef nonnull @.str.59.369, ptr noundef %11, ptr noundef nonnull @.str.60.370, ptr noundef %15, ptr noundef nonnull @.str.5.315, ptr noundef %19, ptr noundef nonnull @.str.6.316, ptr noundef %23, ptr noundef nonnull @.str.61.371, ptr noundef %27, ptr noundef nonnull @.str.62.372, ptr noundef %31, ptr noundef nonnull @.str.63.373, ptr noundef %35, ptr noundef nonnull @.str.64.374, ptr noundef %39, ptr noundef nonnull @.str.65.375, ptr noundef %43, ptr noundef nonnull @.str.66.376, ptr noundef %47, ptr noundef nonnull @.str.67.377, ptr noundef %51, ptr noundef null) #40
  ret ptr %52
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @l_stat(ptr noundef %0) #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #42
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = call i32 @stat(ptr noundef %4, ptr noundef nonnull %2) #38
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = tail call i64 @no_interrupt(i64 noundef %7) #38
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call ptr @decode_stat(ptr noundef nonnull %2) #40
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #42
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @l_fstat(ptr noundef %0) #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #42
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef null) #38
  %5 = tail call i32 @fileno(ptr noundef %4) #38
  %6 = call i32 @fstat(i32 noundef %5, ptr noundef nonnull %2) #38
  %7 = shl i64 %3, 32
  %8 = ashr exact i64 %7, 32
  %9 = tail call i64 @no_interrupt(i64 noundef %8) #38
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call ptr @decode_stat(ptr noundef nonnull %2) #40
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #42
  ret ptr %14
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @l_lstat(ptr noundef %0) #0 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #42
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, i8 0, i64 144, i1 false)
  %4 = tail call ptr @get_c_string(ptr noundef %0) #38
  %5 = call i32 @lstat(ptr noundef %4, ptr noundef nonnull %2) #38
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = tail call i64 @no_interrupt(i64 noundef %7) #38
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call ptr @decode_stat(ptr noundef nonnull %2) #40
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #42
  ret ptr %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @lstat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @l_chmod(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call i64 @get_c_long(ptr noundef %1) #38
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @chmod(ptr noundef %3, i32 noundef %5) #38
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %10 = tail call ptr @err(ptr noundef nonnull @.str.68.378, ptr noundef %9) #38
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lutime(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #42
  %5 = tail call i64 @get_c_long(ptr noundef %1) #38
  %6 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !245
  %7 = icmp eq ptr %2, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i64 @get_c_long(ptr noundef nonnull %2) #38
  br label %12

10:                                               ; preds = %3
  %11 = tail call i64 @time(ptr noundef null) #38
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %9, %8 ], [ %11, %10 ]
  store i64 %13, ptr %4, align 8, !tbaa !247
  %14 = tail call ptr @get_c_string(ptr noundef %0) #38
  %15 = call i32 @utime(ptr noundef %14, ptr noundef nonnull %4) #38
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %19 = tail call ptr @err(ptr noundef nonnull @.str.69.379, ptr noundef %18) #38
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi ptr [ %19, %17 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #42
  ret ptr %21
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @utime(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @lfchmod(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef null) #38
  %4 = tail call i32 @fileno(ptr noundef %3) #38
  %5 = tail call i64 @get_c_long(ptr noundef %1) #38
  %6 = trunc i64 %5 to i32
  %7 = tail call i32 @fchmod(i32 noundef %4, i32 noundef %6) #38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %11 = tail call ptr @err(ptr noundef nonnull @.str.70.380, ptr noundef %10) #38
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: nounwind optsize
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @encode_open_flags(ptr noundef %0) #0 {
  %2 = tail call i32 (ptr, ...) @assemble_options(ptr noundef %0, ptr noundef nonnull @.str.71.381, i32 noundef 2048, ptr noundef nonnull @.str.72.382, i32 noundef 1024, ptr noundef nonnull @.str.73.383, i32 noundef 0, ptr noundef nonnull @.str.74.384, i32 noundef 1, ptr noundef nonnull @.str.75.385, i32 noundef 2, ptr noundef nonnull @.str.76.386, i32 noundef 64, ptr noundef nonnull @.str.77.387, i32 noundef 512, ptr noundef nonnull @.str.78.388, i32 noundef 128, ptr noundef null) #40
  %3 = sitofp i32 %2 to double
  %4 = tail call ptr @flocons(double noundef %3) #38
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_fd(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 17
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call ptr @get_c_file(ptr noundef nonnull %0, ptr noundef null) #38
  %9 = tail call i32 @fileno(ptr noundef %8) #38
  br label %13

10:                                               ; preds = %3, %1
  %11 = tail call i64 @get_c_long(ptr noundef %0) #38
  %12 = trunc i64 %11 to i32
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @gsetlk(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca %struct.flock, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #42
  %8 = tail call i32 @get_fd(ptr noundef %1) #40
  %9 = tail call i64 @get_c_long(ptr noundef %2) #38
  %10 = trunc i64 %9 to i16
  store i16 %10, ptr %7, align 8, !tbaa !248
  %11 = icmp eq ptr %3, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call i64 @get_c_long(ptr noundef nonnull %3) #38
  %14 = trunc i64 %13 to i16
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i16 [ %14, %12 ], [ 0, %6 ]
  %17 = getelementptr inbounds %struct.flock, ptr %7, i64 0, i32 1
  store i16 %16, ptr %17, align 2, !tbaa !250
  %18 = icmp eq ptr %4, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i64 @get_c_long(ptr noundef nonnull %4) #38
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i64 [ %20, %19 ], [ 0, %15 ]
  %23 = getelementptr inbounds %struct.flock, ptr %7, i64 0, i32 2
  store i64 %22, ptr %23, align 8, !tbaa !251
  %24 = icmp eq ptr %5, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @get_c_long(ptr noundef nonnull %5) #38
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i64 [ %26, %25 ], [ 0, %21 ]
  %29 = getelementptr inbounds %struct.flock, ptr %7, i64 0, i32 3
  store i64 %28, ptr %29, align 8, !tbaa !252
  %30 = getelementptr inbounds %struct.flock, ptr %7, i64 0, i32 4
  store i32 0, ptr %30, align 8, !tbaa !253
  %31 = call i32 (i32, i32, ...) @fcntl(i32 noundef %8, i32 noundef %0, ptr noundef nonnull %7) #38
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call ptr @llast_c_errmsg(i32 noundef -1) #38
  br label %47

35:                                               ; preds = %27
  %36 = icmp eq i32 %0, 5
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load i16, ptr %7, align 8, !tbaa !248
  %39 = icmp eq i16 %38, 2
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = sitofp i16 %38 to double
  %42 = call ptr @flocons(double noundef %41) #38
  %43 = load i32, ptr %30, align 8, !tbaa !253
  %44 = sitofp i32 %43 to double
  %45 = call ptr @flocons(double noundef %44) #38
  %46 = call ptr (i64, ...) @listn(i64 noundef 2, ptr noundef %42, ptr noundef %45) #38
  br label %47

47:                                               ; preds = %40, %37, %35, %33
  %48 = phi ptr [ %34, %33 ], [ %46, %40 ], [ null, %35 ], [ null, %37 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #42
  ret ptr %48
}

; Function Attrs: optsize
declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal ptr @lF_SETLK(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call ptr @gsetlk(i32 noundef 6, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #40
  ret ptr %6
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lF_SETLKW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call ptr @gsetlk(i32 noundef 7, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #40
  ret ptr %6
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lF_GETLK(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = tail call ptr @gsetlk(i32 noundef 5, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #40
  ret ptr %6
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @delete_file(ptr noundef %0) #0 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = tail call i32 @unlink(ptr noundef %3) #38
  %5 = shl i64 %2, 32
  %6 = ashr exact i64 %5, 32
  %7 = tail call i64 @no_interrupt(i64 noundef %6) #38
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @last_c_errmsg(i32 noundef -1) #38
  %11 = tail call ptr @strcons(i64 noundef -1, ptr noundef %10) #38
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi ptr [ %11, %9 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @utime2str(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #42
  %4 = tail call i64 @get_c_long(ptr noundef %0) #38
  store i64 %4, ptr %2, align 8, !tbaa !12
  %5 = call ptr @localtime(ptr noundef nonnull %2) #38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !254
  %10 = add nsw i32 %9, 1900
  %11 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !256
  %13 = add nsw i32 %12, 1
  %14 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !257
  %16 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !258
  %18 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !259
  %20 = load i32, ptr %5, align 8, !tbaa !260
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.79.389, i32 noundef %10, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %20, i32 noundef 0) #38
  %22 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39
  %23 = call ptr @strcons(i64 noundef %22, ptr noundef nonnull %3) #38
  br label %24

24:                                               ; preds = %7, %1
  %25 = phi ptr [ %23, %7 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %25
}

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetenv(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  %3 = tail call ptr @getenv(ptr noundef %2) #38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39
  %7 = tail call ptr @strcons(i64 noundef %6, ptr noundef nonnull %3) #38
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @unix_time() #0 {
  %1 = tail call i64 @time(ptr noundef null) #38
  %2 = sitofp i64 %1 to double
  %3 = tail call ptr @flocons(double noundef %2) #38
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @unix_ctime(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  store i64 %5, ptr %2, align 8, !tbaa !12
  br label %8

6:                                                ; preds = %1
  %7 = call i64 @time(ptr noundef nonnull %2) #38
  br label %8

8:                                                ; preds = %6, %4
  %9 = call ptr @ctime(ptr noundef nonnull %2) #38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 10) #39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i8 0, ptr %12, align 1, !tbaa !11
  br label %15

15:                                               ; preds = %14, %11
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #39
  %17 = call ptr @strcons(i64 noundef %16, ptr noundef nonnull %9) #38
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ %17, %15 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %19
}

; Function Attrs: nounwind optsize
declare ptr @ctime(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @http_date(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #42
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  store i64 %6, ptr %2, align 8, !tbaa !12
  br label %9

7:                                                ; preds = %1
  %8 = call i64 @time(ptr noundef nonnull %2) #38
  br label %9

9:                                                ; preds = %7, %5
  %10 = call ptr @gmtime(ptr noundef nonnull %2) #38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !261
  %15 = shl nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [28 x i8], ptr @.str.81.390, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !257
  %20 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !256
  %22 = shl nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [48 x i8], ptr @.str.82.391, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !254
  %27 = add nsw i32 %26, 1900
  %28 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !258
  %30 = getelementptr inbounds %struct.tm, ptr %10, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !259
  %32 = load i32, ptr %10, align 8, !tbaa !260
  %33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.80.392, ptr noundef nonnull %17, i32 noundef %19, ptr noundef nonnull %24, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %32) #38
  %34 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39
  %35 = call ptr @strcons(i64 noundef %34, ptr noundef nonnull %3) #38
  br label %36

36:                                               ; preds = %12, %9
  %37 = phi ptr [ %35, %12 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %37
}

; Function Attrs: nounwind optsize
declare ptr @gmtime(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @lsleep(ptr noundef %0) #0 {
  %2 = tail call double @get_c_double(ptr noundef %0) #38
  %3 = fmul double %2, 1.000000e+06
  %4 = fptoui double %3 to i32
  %5 = tail call i32 @usleep(i32 noundef %4) #38
  ret ptr null
}

; Function Attrs: optsize
declare i32 @usleep(i32 noundef) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal ptr @url_encode(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  br label %3

3:                                                ; preds = %27, %1
  %4 = phi i32 [ 0, %1 ], [ %28, %27 ]
  %5 = phi i32 [ 0, %1 ], [ %29, %27 ]
  %6 = phi i32 [ 0, %1 ], [ %30, %27 ]
  %7 = phi ptr [ %2, %1 ], [ %31, %27 ]
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = sext i8 %8 to i32
  switch i8 %8, label %12 [
    i8 0, label %32
    i8 32, label %10
  ]

10:                                               ; preds = %3
  %11 = add nsw i32 %6, 1
  br label %27

12:                                               ; preds = %3
  %13 = tail call ptr @__ctype_b_loc() #45
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = sext i8 %8 to i64
  %16 = getelementptr inbounds i16, ptr %14, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !58
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.83.393, i32 %9, i64 6)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = add nsw i32 %4, 1
  br label %27

25:                                               ; preds = %20, %12
  %26 = add nsw i32 %5, 1
  br label %27

27:                                               ; preds = %25, %23, %10
  %28 = phi i32 [ %4, %10 ], [ %4, %25 ], [ %24, %23 ]
  %29 = phi i32 [ %5, %10 ], [ %26, %25 ], [ %5, %23 ]
  %30 = phi i32 [ %11, %10 ], [ %6, %25 ], [ %6, %23 ]
  %31 = getelementptr inbounds i8, ptr %7, i64 1
  br label %3, !llvm.loop !262

32:                                               ; preds = %3
  %.lcssa3 = phi i32 [ %4, %3 ]
  %.lcssa2 = phi i32 [ %5, %3 ]
  %.lcssa1 = phi i32 [ %6, %3 ]
  %33 = icmp eq i32 %.lcssa1, 0
  %34 = icmp eq i32 %.lcssa3, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %71, label %36

36:                                               ; preds = %32
  %37 = mul nsw i32 %.lcssa3, 3
  %38 = add i32 %37, %.lcssa2
  %39 = add i32 %38, %.lcssa1
  %40 = sext i32 %39 to i64
  %41 = tail call ptr @strcons(i64 noundef %40, ptr noundef null) #38
  %42 = tail call ptr @get_c_string(ptr noundef %41) #38
  br label %43

43:                                               ; preds = %67, %36
  %44 = phi ptr [ %2, %36 ], [ %69, %67 ]
  %45 = phi ptr [ %42, %36 ], [ %68, %67 ]
  %46 = load i8, ptr %44, align 1, !tbaa !11
  %47 = sext i8 %46 to i32
  switch i8 %46, label %50 [
    i8 0, label %70
    i8 32, label %48
  ]

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 43, ptr %45, align 1, !tbaa !11
  br label %67

50:                                               ; preds = %43
  %51 = tail call ptr @__ctype_b_loc() #45
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = sext i8 %46 to i64
  %54 = getelementptr inbounds i16, ptr %52, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !58
  %56 = and i16 %55, 8
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.83.393, i32 %47, i64 6)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = and i32 %47, 255
  %63 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) @.str.84.394, i32 noundef %62) #38
  %64 = getelementptr inbounds i8, ptr %45, i64 3
  br label %67

65:                                               ; preds = %58, %50
  %66 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %46, ptr %45, align 1, !tbaa !11
  br label %67

67:                                               ; preds = %65, %61, %48
  %68 = phi ptr [ %49, %48 ], [ %66, %65 ], [ %64, %61 ]
  %69 = getelementptr inbounds i8, ptr %44, i64 1
  br label %43, !llvm.loop !263

70:                                               ; preds = %43
  %.lcssa = phi ptr [ %45, %43 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !11
  br label %71

71:                                               ; preds = %70, %32
  %72 = phi ptr [ %41, %70 ], [ %0, %32 ]
  ret ptr %72
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @url_decode(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_string(ptr noundef %0) #38
  br label %3

3:                                                ; preds = %33, %1
  %4 = phi i32 [ 0, %1 ], [ %34, %33 ]
  %5 = phi ptr [ %2, %1 ], [ %37, %33 ]
  %6 = phi i32 [ 0, %1 ], [ %35, %33 ]
  %7 = phi i32 [ 0, %1 ], [ %36, %33 ]
  %8 = load i8, ptr %5, align 1, !tbaa !11
  switch i8 %8, label %31 [
    i8 0, label %38
    i8 43, label %9
    i8 37, label %11
  ]

9:                                                ; preds = %3
  %10 = add nsw i32 %7, 1
  br label %33

11:                                               ; preds = %3
  %12 = tail call ptr @__ctype_b_loc() #45
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds i8, ptr %5, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = sext i8 %15 to i64
  %17 = getelementptr inbounds i16, ptr %13, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !58
  %19 = and i16 %18, 4096
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %91, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %5, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = sext i8 %23 to i64
  %25 = getelementptr inbounds i16, ptr %13, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !58
  %27 = and i16 %26, 4096
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %91, label %29

29:                                               ; preds = %21
  %30 = add nsw i32 %6, 1
  br label %33

31:                                               ; preds = %3
  %32 = add nsw i32 %4, 1
  br label %33

33:                                               ; preds = %31, %29, %9
  %34 = phi i32 [ %4, %9 ], [ %4, %29 ], [ %32, %31 ]
  %35 = phi i32 [ %6, %9 ], [ %30, %29 ], [ %6, %31 ]
  %36 = phi i32 [ %10, %9 ], [ %7, %29 ], [ %7, %31 ]
  %37 = getelementptr inbounds i8, ptr %5, i64 1
  br label %3, !llvm.loop !264

38:                                               ; preds = %3
  %.lcssa5 = phi i32 [ %4, %3 ]
  %.lcssa3 = phi i32 [ %6, %3 ]
  %.lcssa1 = phi i32 [ %7, %3 ]
  %39 = icmp eq i32 %.lcssa1, 0
  %40 = icmp eq i32 %.lcssa3, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %91, label %42

42:                                               ; preds = %38
  %43 = add i32 %.lcssa3, %.lcssa5
  %44 = add i32 %43, %.lcssa1
  %45 = sext i32 %44 to i64
  %46 = tail call ptr @strcons(i64 noundef %45, ptr noundef null) #38
  %47 = tail call ptr @get_c_string(ptr noundef %46) #38
  br label %48

48:                                               ; preds = %86, %42
  %49 = phi ptr [ %2, %42 ], [ %89, %86 ]
  %50 = phi ptr [ %47, %42 ], [ %88, %86 ]
  %51 = load i8, ptr %49, align 1, !tbaa !11
  switch i8 %51, label %85 [
    i8 0, label %90
    i8 43, label %52
    i8 37, label %53
  ]

52:                                               ; preds = %48
  store i8 32, ptr %50, align 1, !tbaa !11
  br label %86

53:                                               ; preds = %48
  store i8 0, ptr %50, align 1, !tbaa !11
  %54 = tail call ptr @__ctype_b_loc() #45
  br label %55

55:                                               ; preds = %77, %53
  %56 = phi i32 [ 0, %53 ], [ %79, %77 ]
  %57 = phi i64 [ 1, %53 ], [ %81, %77 ]
  %58 = shl i32 %56, 24
  %59 = ashr exact i32 %58, 20
  %60 = load ptr, ptr %54, align 8, !tbaa !7
  %61 = getelementptr inbounds i8, ptr %49, i64 %57
  %62 = load i8, ptr %61, align 1, !tbaa !11
  %63 = sext i8 %62 to i64
  %64 = getelementptr inbounds i16, ptr %60, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !58
  %66 = and i16 %65, 2048
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %55
  %69 = zext i8 %62 to i32
  %70 = add nsw i32 %69, -48
  br label %77

71:                                               ; preds = %55
  %72 = tail call ptr @__ctype_toupper_loc() #45
  %73 = load ptr, ptr %72, align 8, !tbaa !7
  %74 = getelementptr inbounds i32, ptr %73, i64 %63
  %75 = load i32, ptr %74, align 4, !tbaa !76
  %76 = add nsw i32 %75, -55
  br label %77

77:                                               ; preds = %71, %68
  %78 = phi i32 [ %70, %68 ], [ %76, %71 ]
  %79 = add i32 %78, %59
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr %50, align 1, !tbaa !11
  %81 = add nuw nsw i64 %57, 1
  %82 = icmp eq i64 %81, 3
  br i1 %82, label %83, label %55, !llvm.loop !265

83:                                               ; preds = %77
  %84 = getelementptr inbounds i8, ptr %49, i64 2
  br label %86

85:                                               ; preds = %48
  store i8 %51, ptr %50, align 1, !tbaa !11
  br label %86

86:                                               ; preds = %85, %83, %52
  %87 = phi ptr [ %49, %52 ], [ %84, %83 ], [ %49, %85 ]
  %88 = getelementptr inbounds i8, ptr %50, i64 1
  %89 = getelementptr inbounds i8, ptr %87, i64 1
  br label %48, !llvm.loop !266

90:                                               ; preds = %48
  %.lcssa = phi ptr [ %50, %48 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !11
  br label %91

91:                                               ; preds = %90, %38, %21, %11
  %92 = phi ptr [ %46, %90 ], [ %0, %38 ], [ null, %21 ], [ null, %11 ]
  ret ptr %92
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @html_encode(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %55, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = sext i16 %5 to i32
  switch i32 %6, label %55 [
    i32 13, label %7
    i32 3, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = tail call ptr @get_c_string(ptr noundef nonnull %0) #38
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #39
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %20, %7
  %12 = phi i64 [ %23, %20 ], [ 0, %7 ]
  %13 = phi i64 [ %22, %20 ], [ 0, %7 ]
  %14 = getelementptr inbounds i8, ptr %8, i64 %12
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = sext i8 %15 to i32
  switch i32 %16, label %19 [
    i32 62, label %20
    i32 60, label %20
    i32 38, label %17
    i32 34, label %18
  ]

17:                                               ; preds = %11
  br label %20

18:                                               ; preds = %11
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %18, %17, %11, %11
  %21 = phi i64 [ 5, %17 ], [ 6, %18 ], [ 1, %19 ], [ 4, %11 ], [ 4, %11 ]
  %22 = add nuw nsw i64 %13, %21
  %23 = add nuw nsw i64 %12, 1
  %24 = icmp eq i64 %23, %9
  br i1 %24, label %25, label %11, !llvm.loop !267

25:                                               ; preds = %20, %7
  %26 = phi i64 [ 0, %7 ], [ %22, %20 ]
  %27 = icmp eq i64 %9, %26
  br i1 %27, label %55, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @strcons(i64 noundef %26, ptr noundef null) #38
  %30 = tail call ptr @get_c_string(ptr noundef %29) #38
  br i1 %10, label %31, label %55

31:                                               ; preds = %51, %28
  %32 = phi ptr [ %52, %51 ], [ %30, %28 ]
  %33 = phi i64 [ %53, %51 ], [ 0, %28 ]
  %34 = getelementptr inbounds i8, ptr %8, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !11
  %36 = sext i8 %35 to i32
  switch i32 %36, label %49 [
    i32 62, label %37
    i32 60, label %40
    i32 38, label %43
    i32 34, label %46
  ]

37:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %32, ptr noundef nonnull align 1 dereferenceable(5) @.str.85.395, i64 5, i1 false) #38
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #39
  %39 = getelementptr inbounds i8, ptr %32, i64 %38
  br label %51

40:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %32, ptr noundef nonnull align 1 dereferenceable(5) @.str.86.396, i64 5, i1 false) #38
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #39
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  br label %51

43:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %32, ptr noundef nonnull align 1 dereferenceable(6) @.str.87.397, i64 6, i1 false) #38
  %44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #39
  %45 = getelementptr inbounds i8, ptr %32, i64 %44
  br label %51

46:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %32, ptr noundef nonnull align 1 dereferenceable(7) @.str.88.398, i64 7, i1 false) #38
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #39
  %48 = getelementptr inbounds i8, ptr %32, i64 %47
  br label %51

49:                                               ; preds = %31
  %50 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %35, ptr %32, align 1, !tbaa !11
  br label %51

51:                                               ; preds = %49, %46, %43, %40, %37
  %52 = phi ptr [ %50, %49 ], [ %48, %46 ], [ %45, %43 ], [ %42, %40 ], [ %39, %37 ]
  %53 = add nuw nsw i64 %33, 1
  %54 = icmp eq i64 %53, %9
  br i1 %54, label %55, label %31, !llvm.loop !268

55:                                               ; preds = %51, %28, %25, %3, %1
  %56 = phi ptr [ %0, %3 ], [ %0, %25 ], [ null, %1 ], [ %29, %28 ], [ %29, %51 ]
  ret ptr %56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal ptr @html_decode(ptr noundef readnone returned %0) #17 {
  ret ptr %0
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgets(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #42
  %4 = load ptr, ptr @stdin, align 8, !tbaa !7
  %5 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef %4) #38
  %6 = icmp eq ptr %1, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @get_c_long(ptr noundef nonnull %1) #38
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call ptr @err(ptr noundef nonnull @.str.89.399, ptr noundef nonnull %1) #38
  br label %18

12:                                               ; preds = %7
  %13 = icmp ugt i64 %8, 2048
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = tail call ptr @flocons(double noundef 2.048000e+03) #38
  %16 = tail call ptr (i64, ...) @listn(i64 noundef 2, ptr noundef nonnull %1, ptr noundef %15) #38
  %17 = tail call ptr @err(ptr noundef nonnull @.str.90.400, ptr noundef %16) #38
  br label %18

18:                                               ; preds = %14, %12, %10, %2
  %19 = phi i64 [ %8, %10 ], [ %8, %14 ], [ %8, %12 ], [ 2048, %2 ]
  %20 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %21 = trunc i64 %19 to i32
  %22 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef %21, ptr noundef %5) #40
  %23 = icmp eq ptr %22, null
  %24 = shl i64 %20, 32
  %25 = ashr exact i64 %24, 32
  %26 = call i64 @no_interrupt(i64 noundef %25) #38
  br i1 %23, label %30, label %27

27:                                               ; preds = %18
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #39
  %29 = call ptr @strcons(i64 noundef %28, ptr noundef nonnull %3) #38
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi ptr [ %29, %27 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #42
  ret ptr %31
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @readline(ptr noundef %0) #0 {
  %2 = tail call ptr @lgets(ptr noundef %0, ptr noundef null) #40
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @get_c_string(ptr noundef nonnull %2) #38
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 10) #39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  store i8 0, ptr %6, align 1, !tbaa !11
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !11
  br label %13

13:                                               ; preds = %8, %4, %1
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @l_chown(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = tail call ptr @get_c_string(ptr noundef %0) #38
  %6 = tail call i64 @get_c_long(ptr noundef %1) #38
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @get_c_long(ptr noundef %2) #38
  %9 = trunc i64 %8 to i32
  %10 = tail call i32 @chown(ptr noundef %5, i32 noundef %7, i32 noundef %9) #38
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %14 = tail call ptr @cons(ptr noundef %0, ptr noundef %13) #38
  %15 = tail call ptr @err(ptr noundef nonnull @.str.91.401, ptr noundef %14) #38
  br label %16

16:                                               ; preds = %12, %3
  %17 = tail call i64 @no_interrupt(i64 noundef %4) #38
  ret ptr null
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chown(ptr nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @popen_l(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @get_c_string(ptr noundef %0) #38
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @get_c_string(ptr noundef nonnull %1) #38
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ @.str.92.402, %2 ]
  %9 = tail call ptr @fopen_cg(ptr noundef nonnull @popen, ptr noundef %3, ptr noundef %8) #38
  ret ptr %9
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @pclose_l(ptr noundef %0) #0 {
  %2 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef null) #38
  %3 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %4 = tail call i32 @pclose(ptr noundef %2) #40
  %5 = tail call ptr @__errno_location() #45
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  tail call void @free(ptr noundef %9) #38
  store ptr null, ptr %8, align 8, !tbaa !11
  %10 = tail call i64 @no_interrupt(i64 noundef %3) #38
  %11 = icmp slt i32 %4, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = tail call ptr @llast_c_errmsg(i32 noundef %6) #38
  %14 = tail call ptr @err(ptr noundef nonnull @.str.93.403, ptr noundef %13) #38
  br label %15

15:                                               ; preds = %12, %1
  %16 = sitofp i32 %4 to double
  %17 = tail call ptr @flocons(double noundef %16) #38
  ret ptr %17
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @so_init_name(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = tail call ptr @cintern(ptr noundef nonnull @.str.94.404) #38
  %6 = tail call ptr @lstrbreakup(ptr noundef %0, ptr noundef %5) #38
  %7 = tail call ptr @last(ptr noundef %6) #38
  %8 = tail call ptr @car(ptr noundef %7) #38
  %9 = tail call ptr @cintern(ptr noundef nonnull @.str.95.405) #38
  %10 = tail call ptr @lstrbreakup(ptr noundef %8, ptr noundef %9) #38
  %11 = tail call ptr @butlast(ptr noundef %10) #38
  %12 = tail call ptr @cintern(ptr noundef nonnull @.str.95.405) #38
  %13 = tail call ptr @lstrunbreakup(ptr noundef %11, ptr noundef %12) #38
  %14 = tail call ptr @cintern(ptr noundef nonnull @.str.96.406) #38
  %15 = tail call ptr (i64, ...) @listn(i64 noundef 2, ptr noundef %14, ptr noundef %13) #38
  %16 = tail call ptr @string_append(ptr noundef %15) #38
  br label %17

17:                                               ; preds = %4, %2
  %18 = phi ptr [ %16, %4 ], [ %1, %2 ]
  %19 = tail call ptr @intern(ptr noundef %18) #38
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @so_ext(ptr noundef %0) #0 {
  %2 = tail call ptr @strcons(i64 noundef 3, ptr noundef nonnull @.str.97.407) #38
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr (i64, ...) @listn(i64 noundef 2, ptr noundef nonnull %0, ptr noundef %2) #38
  %6 = tail call ptr @string_append(ptr noundef %5) #38
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ %2, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @load_so(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @so_init_name(ptr noundef %0, ptr noundef %1) #40
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = tail call i32 @siod_verbose_check(i32 noundef 3) #38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  tail call void @put_st(ptr noundef nonnull @.str.98.408) #38
  %8 = tail call ptr @get_c_string(ptr noundef %0) #38
  tail call void @put_st(ptr noundef %8) #38
  tail call void @put_st(ptr noundef nonnull @.str.99.409) #38
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call ptr @err(ptr noundef nonnull @.str.100.410, ptr noundef %3) #38
  %11 = tail call i64 @no_interrupt(i64 noundef %4) #38
  %12 = tail call i32 @siod_verbose_check(i32 noundef 3) #38
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @put_st(ptr noundef nonnull @.str.101.411) #38
  br label %15

15:                                               ; preds = %14, %9
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @require_so(ptr noundef %0) #0 {
  %2 = tail call ptr @so_init_name(ptr noundef %0, ptr noundef null) #40
  %3 = tail call ptr @symbol_boundp(ptr noundef %2, ptr noundef null) #38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @symbol_value(ptr noundef %2, ptr noundef null) #38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %5, %1
  %9 = tail call ptr @load_so(ptr noundef %0, ptr noundef null) #40
  %10 = tail call ptr @a_true_value() #38
  %11 = tail call ptr @setvar(ptr noundef %2, ptr noundef %10, ptr noundef null) #38
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi ptr [ %11, %8 ], [ null, %5 ]
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @siod_lib_l() #0 {
  %1 = load ptr, ptr @siod_lib, align 8, !tbaa !7
  %2 = tail call ptr @rintern(ptr noundef %1) #38
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @decode_tm(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !260
  %3 = sitofp i32 %2 to double
  %4 = tail call ptr @flocons(double noundef %3) #38
  %5 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !259
  %7 = sitofp i32 %6 to double
  %8 = tail call ptr @flocons(double noundef %7) #38
  %9 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !258
  %11 = sitofp i32 %10 to double
  %12 = tail call ptr @flocons(double noundef %11) #38
  %13 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !257
  %15 = sitofp i32 %14 to double
  %16 = tail call ptr @flocons(double noundef %15) #38
  %17 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !256
  %19 = sitofp i32 %18 to double
  %20 = tail call ptr @flocons(double noundef %19) #38
  %21 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !254
  %23 = sitofp i32 %22 to double
  %24 = tail call ptr @flocons(double noundef %23) #38
  %25 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !261
  %27 = sitofp i32 %26 to double
  %28 = tail call ptr @flocons(double noundef %27) #38
  %29 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !269
  %31 = sitofp i32 %30 to double
  %32 = tail call ptr @flocons(double noundef %31) #38
  %33 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !270
  %35 = sitofp i32 %34 to double
  %36 = tail call ptr @flocons(double noundef %35) #38
  %37 = tail call ptr (ptr, ...) @symalist(ptr noundef nonnull @.str.102.412, ptr noundef %4, ptr noundef nonnull @.str.103.413, ptr noundef %8, ptr noundef nonnull @.str.104.414, ptr noundef %12, ptr noundef nonnull @.str.105.415, ptr noundef %16, ptr noundef nonnull @.str.106.416, ptr noundef %20, ptr noundef nonnull @.str.107.417, ptr noundef %24, ptr noundef nonnull @.str.108.418, ptr noundef %28, ptr noundef nonnull @.str.109.419, ptr noundef %32, ptr noundef nonnull @.str.110.420, ptr noundef %36, ptr noundef null) #40
  ret ptr %37
}

; Function Attrs: nounwind optsize uwtable
define internal void @encode_tm(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @cintern(ptr noundef nonnull @.str.102.412) #38
  %4 = tail call ptr @assq(ptr noundef %3, ptr noundef %0) #38
  %5 = tail call ptr @cdr(ptr noundef %4) #38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @get_c_long(ptr noundef nonnull %5) #38
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ 0, %2 ]
  store i32 %11, ptr %1, align 8, !tbaa !260
  %12 = tail call ptr @cintern(ptr noundef nonnull @.str.103.413) #38
  %13 = tail call ptr @assq(ptr noundef %12, ptr noundef %0) #38
  %14 = tail call ptr @cdr(ptr noundef %13) #38
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = tail call i64 @get_c_long(ptr noundef nonnull %14) #38
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %18, %16 ], [ 0, %10 ]
  %21 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !259
  %22 = tail call ptr @cintern(ptr noundef nonnull @.str.104.414) #38
  %23 = tail call ptr @assq(ptr noundef %22, ptr noundef %0) #38
  %24 = tail call ptr @cdr(ptr noundef %23) #38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = tail call i64 @get_c_long(ptr noundef nonnull %24) #38
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i32 [ %28, %26 ], [ 0, %19 ]
  %31 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 2
  store i32 %30, ptr %31, align 8, !tbaa !258
  %32 = tail call ptr @cintern(ptr noundef nonnull @.str.105.415) #38
  %33 = tail call ptr @assq(ptr noundef %32, ptr noundef %0) #38
  %34 = tail call ptr @cdr(ptr noundef %33) #38
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = tail call i64 @get_c_long(ptr noundef nonnull %34) #38
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i32 [ %38, %36 ], [ 0, %29 ]
  %41 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 3
  store i32 %40, ptr %41, align 4, !tbaa !257
  %42 = tail call ptr @cintern(ptr noundef nonnull @.str.106.416) #38
  %43 = tail call ptr @assq(ptr noundef %42, ptr noundef %0) #38
  %44 = tail call ptr @cdr(ptr noundef %43) #38
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = tail call i64 @get_c_long(ptr noundef nonnull %44) #38
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %48, %46 ], [ 0, %39 ]
  %51 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 4
  store i32 %50, ptr %51, align 8, !tbaa !256
  %52 = tail call ptr @cintern(ptr noundef nonnull @.str.107.417) #38
  %53 = tail call ptr @assq(ptr noundef %52, ptr noundef %0) #38
  %54 = tail call ptr @cdr(ptr noundef %53) #38
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = tail call i64 @get_c_long(ptr noundef nonnull %54) #38
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %56, %49
  %60 = phi i32 [ %58, %56 ], [ 0, %49 ]
  %61 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 5
  store i32 %60, ptr %61, align 4, !tbaa !254
  %62 = tail call ptr @cintern(ptr noundef nonnull @.str.108.418) #38
  %63 = tail call ptr @assq(ptr noundef %62, ptr noundef %0) #38
  %64 = tail call ptr @cdr(ptr noundef %63) #38
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = tail call i64 @get_c_long(ptr noundef nonnull %64) #38
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi i32 [ %68, %66 ], [ 0, %59 ]
  %71 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 6
  store i32 %70, ptr %71, align 8, !tbaa !261
  %72 = tail call ptr @cintern(ptr noundef nonnull @.str.109.419) #38
  %73 = tail call ptr @assq(ptr noundef %72, ptr noundef %0) #38
  %74 = tail call ptr @cdr(ptr noundef %73) #38
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = tail call i64 @get_c_long(ptr noundef nonnull %74) #38
  %78 = trunc i64 %77 to i32
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi i32 [ %78, %76 ], [ 0, %69 ]
  %81 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 7
  store i32 %80, ptr %81, align 4, !tbaa !269
  %82 = tail call ptr @cintern(ptr noundef nonnull @.str.110.420) #38
  %83 = tail call ptr @assq(ptr noundef %82, ptr noundef %0) #38
  %84 = tail call ptr @cdr(ptr noundef %83) #38
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = tail call i64 @get_c_long(ptr noundef nonnull %84) #38
  %88 = trunc i64 %87 to i32
  br label %89

89:                                               ; preds = %86, %79
  %90 = phi i32 [ %88, %86 ], [ -1, %79 ]
  %91 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 8
  store i32 %90, ptr %91, align 8, !tbaa !270
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @llocaltime(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  store i64 %5, ptr %2, align 8, !tbaa !12
  br label %8

6:                                                ; preds = %1
  %7 = call i64 @time(ptr noundef nonnull %2) #38
  br label %8

8:                                                ; preds = %6, %4
  %9 = call ptr @localtime(ptr noundef nonnull %2) #38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call ptr @decode_tm(ptr noundef nonnull %9) #40
  br label %16

13:                                               ; preds = %8
  %14 = call ptr @llast_c_errmsg(i32 noundef -1) #38
  %15 = call ptr @err(ptr noundef nonnull @.str.111.421, ptr noundef %14) #38
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgmtime(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #42
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @get_c_long(ptr noundef nonnull %0) #38
  store i64 %5, ptr %2, align 8, !tbaa !12
  br label %8

6:                                                ; preds = %1
  %7 = call i64 @time(ptr noundef nonnull %2) #38
  br label %8

8:                                                ; preds = %6, %4
  %9 = call ptr @gmtime(ptr noundef nonnull %2) #38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call ptr @decode_tm(ptr noundef nonnull %9) #40
  br label %16

13:                                               ; preds = %8
  %14 = call ptr @llast_c_errmsg(i32 noundef -1) #38
  %15 = call ptr @err(ptr noundef nonnull @.str.112.422, ptr noundef %14) #38
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %12, %11 ], [ %15, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #42
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @ltzset() #0 {
  tail call void @tzset() #38
  ret ptr null
}

; Function Attrs: nounwind optsize
declare void @tzset() local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lmktime(ptr noundef %0) #0 {
  %2 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #42
  call void @encode_tm(ptr noundef %0, ptr noundef nonnull %2) #40
  %3 = call i64 @mktime(ptr noundef nonnull %2) #38
  %4 = sitofp i64 %3 to double
  %5 = tail call ptr @flocons(double noundef %4) #38
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #42
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare noundef i64 @mktime(ptr nocapture noundef) local_unnamed_addr #37

; Function Attrs: nounwind optsize uwtable
define internal ptr @lstrptime(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.tm, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #42
  call void @encode_tm(ptr noundef %2, ptr noundef nonnull %4) #40
  %5 = tail call ptr @get_c_string(ptr noundef %0) #38
  %6 = tail call ptr @get_c_string(ptr noundef %1) #38
  %7 = call i32 (ptr, ptr, ptr, ...) @strptime(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %4) #38
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call ptr @decode_tm(ptr noundef nonnull %4) #40
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #42
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @strptime(...) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal ptr @lstrftime(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.tm, align 8
  %4 = alloca i64, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #42
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @encode_tm(ptr noundef nonnull %1, ptr noundef nonnull %3) #40
  br label %12

8:                                                ; preds = %2
  %9 = call i64 @time(ptr noundef nonnull %4) #38
  %10 = call ptr @gmtime(ptr noundef nonnull %4) #38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8, %7
  %13 = phi ptr [ %3, %7 ], [ %10, %8 ]
  %14 = call ptr @get_c_string(ptr noundef %0) #38
  %15 = call i64 @strftime(ptr noundef nonnull %5, i64 noundef 1024, ptr noundef %14, ptr noundef nonnull %13) #38
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call ptr @strcons(i64 noundef %15, ptr noundef nonnull %5) #38
  br label %19

19:                                               ; preds = %17, %12, %8
  %20 = phi ptr [ %18, %17 ], [ null, %8 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #42
  ret ptr %20
}

; Function Attrs: nounwind optsize
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lchdir(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 17
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = tail call ptr @get_c_file(ptr noundef nonnull %0, ptr noundef null) #38
  %9 = tail call i32 @fileno(ptr noundef %8) #38
  %10 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %11 = tail call i32 @fchdir(i32 noundef %9) #38
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %15 = tail call ptr @err(ptr noundef nonnull @.str.113.423, ptr noundef %14) #38
  br label %28

16:                                               ; preds = %7
  %17 = tail call i64 @no_interrupt(i64 noundef %10) #38
  br label %28

18:                                               ; preds = %3, %1
  %19 = tail call ptr @get_c_string(ptr noundef %0) #38
  %20 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %21 = tail call i32 @chdir(ptr noundef %19) #38
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @llast_c_errmsg(i32 noundef -1) #38
  %25 = tail call ptr @err(ptr noundef nonnull @.str.114.424, ptr noundef %24) #38
  br label %28

26:                                               ; preds = %18
  %27 = tail call i64 @no_interrupt(i64 noundef %20) #38
  br label %28

28:                                               ; preds = %26, %23, %16, %13
  %29 = phi ptr [ %15, %13 ], [ null, %16 ], [ %25, %23 ], [ null, %26 ]
  ret ptr %29
}

; Function Attrs: nounwind optsize
declare i32 @fchdir(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare i32 @chdir(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @lgetpass(ptr noundef %0) #0 {
  %2 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @get_c_string(ptr noundef nonnull %0) #38
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ @.str.115.425, %1 ]
  %8 = tail call ptr @getpass(ptr noundef %7) #38
  %9 = tail call i64 @no_interrupt(i64 noundef %2) #38
  %10 = icmp eq ptr %8, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #39
  %13 = tail call ptr @strcons(i64 noundef %12, ptr noundef nonnull %8) #38
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ null, %6 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @getpass(ptr noundef) local_unnamed_addr #36

; Function Attrs: nounwind optsize uwtable
define internal ptr @lpipe() #0 {
  %1 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #42
  %2 = tail call ptr @cons(ptr noundef null, ptr noundef null) #38
  %3 = tail call ptr @cons(ptr noundef null, ptr noundef null) #38
  %4 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %5 = call i32 @pipe(ptr noundef nonnull %1) #38
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 1
  store i16 17, ptr %8, align 2, !tbaa !16
  %9 = load i32, ptr %1, align 4, !tbaa !76
  %10 = call noalias ptr @fdopen(i32 noundef %9, ptr noundef nonnull @.str.92.402) #38
  %11 = getelementptr inbounds %struct.obj, ptr %2, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 1
  store i16 17, ptr %12, align 2, !tbaa !16
  %13 = getelementptr inbounds [2 x i32], ptr %1, i64 0, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !76
  %15 = call noalias ptr @fdopen(i32 noundef %14, ptr noundef nonnull @.str.116.426) #38
  %16 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !11
  %17 = call i64 @no_interrupt(i64 noundef %4) #38
  %18 = call ptr (i64, ...) @listn(i64 noundef 2, ptr noundef %2, ptr noundef %3) #38
  br label %22

19:                                               ; preds = %0
  %20 = call ptr @llast_c_errmsg(i32 noundef -1) #38
  %21 = call ptr @err(ptr noundef nonnull @.str.117.427, ptr noundef %20) #38
  br label %22

22:                                               ; preds = %19, %7
  %23 = phi ptr [ %18, %7 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #42
  ret ptr %23
}

; Function Attrs: nounwind optsize
declare i32 @pipe(ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @datref(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #42
  %5 = call ptr @get_c_string_dim(ptr noundef %0, ptr noundef nonnull %4) #38
  %6 = call i64 @get_c_long(ptr noundef %2) #38
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call ptr @err(ptr noundef nonnull @.str.119.428, ptr noundef %2) #38
  br label %10

10:                                               ; preds = %8, %3
  %11 = call i64 @get_c_long(ptr noundef %1) #38
  switch i64 %11, label %127 [
    i64 1, label %12
    i64 2, label %24
    i64 9, label %35
    i64 5, label %47
    i64 3, label %59
    i64 7, label %69
    i64 10, label %81
    i64 6, label %93
    i64 4, label %105
    i64 8, label %115
  ]

12:                                               ; preds = %10
  %13 = shl i64 %6, 2
  %14 = add i64 %13, 4
  %15 = load i64, ptr %4, align 8, !tbaa !12
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %19

19:                                               ; preds = %17, %12
  %20 = getelementptr inbounds float, ptr %5, i64 %6
  %21 = load float, ptr %20, align 4, !tbaa !271
  %22 = fpext float %21 to double
  %23 = call ptr @flocons(double noundef %22) #38
  br label %129

24:                                               ; preds = %10
  %25 = shl i64 %6, 3
  %26 = add i64 %25, 8
  %27 = load i64, ptr %4, align 8, !tbaa !12
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %31

31:                                               ; preds = %29, %24
  %32 = getelementptr inbounds double, ptr %5, i64 %6
  %33 = load double, ptr %32, align 8, !tbaa !36
  %34 = call ptr @flocons(double noundef %33) #38
  br label %129

35:                                               ; preds = %10
  %36 = shl i64 %6, 3
  %37 = add i64 %36, 8
  %38 = load i64, ptr %4, align 8, !tbaa !12
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %42

42:                                               ; preds = %40, %35
  %43 = getelementptr inbounds i64, ptr %5, i64 %6
  %44 = load i64, ptr %43, align 8, !tbaa !12
  %45 = sitofp i64 %44 to double
  %46 = call ptr @flocons(double noundef %45) #38
  br label %129

47:                                               ; preds = %10
  %48 = shl i64 %6, 1
  %49 = add i64 %48, 2
  %50 = load i64, ptr %4, align 8, !tbaa !12
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %54

54:                                               ; preds = %52, %47
  %55 = getelementptr inbounds i16, ptr %5, i64 %6
  %56 = load i16, ptr %55, align 2, !tbaa !58
  %57 = sitofp i16 %56 to double
  %58 = call ptr @flocons(double noundef %57) #38
  br label %129

59:                                               ; preds = %10
  %60 = load i64, ptr %4, align 8, !tbaa !12
  %61 = icmp slt i64 %6, %60
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %64

64:                                               ; preds = %62, %59
  %65 = getelementptr inbounds i8, ptr %5, i64 %6
  %66 = load i8, ptr %65, align 1, !tbaa !11
  %67 = sitofp i8 %66 to double
  %68 = call ptr @flocons(double noundef %67) #38
  br label %129

69:                                               ; preds = %10
  %70 = shl i64 %6, 2
  %71 = add i64 %70, 4
  %72 = load i64, ptr %4, align 8, !tbaa !12
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %76

76:                                               ; preds = %74, %69
  %77 = getelementptr inbounds i32, ptr %5, i64 %6
  %78 = load i32, ptr %77, align 4, !tbaa !76
  %79 = sitofp i32 %78 to double
  %80 = call ptr @flocons(double noundef %79) #38
  br label %129

81:                                               ; preds = %10
  %82 = shl i64 %6, 3
  %83 = add i64 %82, 8
  %84 = load i64, ptr %4, align 8, !tbaa !12
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %88

88:                                               ; preds = %86, %81
  %89 = getelementptr inbounds i64, ptr %5, i64 %6
  %90 = load i64, ptr %89, align 8, !tbaa !12
  %91 = uitofp i64 %90 to double
  %92 = call ptr @flocons(double noundef %91) #38
  br label %129

93:                                               ; preds = %10
  %94 = shl i64 %6, 1
  %95 = add i64 %94, 2
  %96 = load i64, ptr %4, align 8, !tbaa !12
  %97 = icmp sgt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %100

100:                                              ; preds = %98, %93
  %101 = getelementptr inbounds i16, ptr %5, i64 %6
  %102 = load i16, ptr %101, align 2, !tbaa !58
  %103 = uitofp i16 %102 to double
  %104 = call ptr @flocons(double noundef %103) #38
  br label %129

105:                                              ; preds = %10
  %106 = load i64, ptr %4, align 8, !tbaa !12
  %107 = icmp slt i64 %6, %106
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %110

110:                                              ; preds = %108, %105
  %111 = getelementptr inbounds i8, ptr %5, i64 %6
  %112 = load i8, ptr %111, align 1, !tbaa !11
  %113 = uitofp i8 %112 to double
  %114 = call ptr @flocons(double noundef %113) #38
  br label %129

115:                                              ; preds = %10
  %116 = shl i64 %6, 2
  %117 = add i64 %116, 4
  %118 = load i64, ptr %4, align 8, !tbaa !12
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = call ptr @err(ptr noundef nonnull @.str.118.429, ptr noundef %2) #38
  br label %122

122:                                              ; preds = %120, %115
  %123 = getelementptr inbounds i32, ptr %5, i64 %6
  %124 = load i32, ptr %123, align 4, !tbaa !76
  %125 = uitofp i32 %124 to double
  %126 = call ptr @flocons(double noundef %125) #38
  br label %129

127:                                              ; preds = %10
  %128 = call ptr @err(ptr noundef nonnull @.str.120.430, ptr noundef %1) #38
  br label %129

129:                                              ; preds = %127, %122, %110, %100, %88, %76, %64, %54, %42, %31, %19
  %130 = phi ptr [ %128, %127 ], [ %126, %122 ], [ %114, %110 ], [ %104, %100 ], [ %92, %88 ], [ %80, %76 ], [ %68, %64 ], [ %58, %54 ], [ %46, %42 ], [ %34, %31 ], [ %23, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #42
  ret ptr %130
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @sdatref(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @car(ptr noundef %0) #38
  %4 = tail call ptr @cdr(ptr noundef %0) #38
  %5 = tail call ptr @datref(ptr noundef %1, ptr noundef %3, ptr noundef %4) #40
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @mkdatref(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @cons(ptr noundef %0, ptr noundef %1) #38
  %4 = tail call ptr @cintern(ptr noundef nonnull @.str.121.431) #38
  %5 = tail call ptr @leval(ptr noundef %4, ptr noundef null) #38
  %6 = tail call ptr @closure(ptr noundef %3, ptr noundef %5) #38
  ret ptr %6
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @datlength(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #42
  %4 = call ptr @get_c_string_dim(ptr noundef %0, ptr noundef nonnull %3) #38
  %5 = call i64 @get_c_long(ptr noundef %1) #38
  switch i64 %5, label %54 [
    i64 1, label %6
    i64 2, label %11
    i64 9, label %16
    i64 5, label %21
    i64 3, label %26
    i64 7, label %30
    i64 10, label %35
    i64 6, label %40
    i64 4, label %45
    i64 8, label %49
  ]

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8, !tbaa !12
  %8 = lshr i64 %7, 2
  %9 = uitofp i64 %8 to double
  %10 = call ptr @flocons(double noundef %9) #38
  br label %56

11:                                               ; preds = %2
  %12 = load i64, ptr %3, align 8, !tbaa !12
  %13 = lshr i64 %12, 3
  %14 = uitofp i64 %13 to double
  %15 = call ptr @flocons(double noundef %14) #38
  br label %56

16:                                               ; preds = %2
  %17 = load i64, ptr %3, align 8, !tbaa !12
  %18 = lshr i64 %17, 3
  %19 = uitofp i64 %18 to double
  %20 = call ptr @flocons(double noundef %19) #38
  br label %56

21:                                               ; preds = %2
  %22 = load i64, ptr %3, align 8, !tbaa !12
  %23 = lshr i64 %22, 1
  %24 = uitofp i64 %23 to double
  %25 = call ptr @flocons(double noundef %24) #38
  br label %56

26:                                               ; preds = %2
  %27 = load i64, ptr %3, align 8, !tbaa !12
  %28 = uitofp i64 %27 to double
  %29 = call ptr @flocons(double noundef %28) #38
  br label %56

30:                                               ; preds = %2
  %31 = load i64, ptr %3, align 8, !tbaa !12
  %32 = lshr i64 %31, 2
  %33 = uitofp i64 %32 to double
  %34 = call ptr @flocons(double noundef %33) #38
  br label %56

35:                                               ; preds = %2
  %36 = load i64, ptr %3, align 8, !tbaa !12
  %37 = lshr i64 %36, 3
  %38 = uitofp i64 %37 to double
  %39 = call ptr @flocons(double noundef %38) #38
  br label %56

40:                                               ; preds = %2
  %41 = load i64, ptr %3, align 8, !tbaa !12
  %42 = lshr i64 %41, 1
  %43 = uitofp i64 %42 to double
  %44 = call ptr @flocons(double noundef %43) #38
  br label %56

45:                                               ; preds = %2
  %46 = load i64, ptr %3, align 8, !tbaa !12
  %47 = uitofp i64 %46 to double
  %48 = call ptr @flocons(double noundef %47) #38
  br label %56

49:                                               ; preds = %2
  %50 = load i64, ptr %3, align 8, !tbaa !12
  %51 = lshr i64 %50, 2
  %52 = uitofp i64 %51 to double
  %53 = call ptr @flocons(double noundef %52) #38
  br label %56

54:                                               ; preds = %2
  %55 = call ptr @err(ptr noundef nonnull @.str.120.430, ptr noundef %1) #38
  br label %56

56:                                               ; preds = %54, %49, %45, %40, %35, %30, %26, %21, %16, %11, %6
  %57 = phi ptr [ %55, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %11 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #42
  ret ptr %57
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @siod_main(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #42
  store ptr @.str.115.425, ptr %4, align 16, !tbaa !7
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %73

6:                                                ; preds = %3
  %7 = getelementptr inbounds [2 x ptr], ptr %4, i64 0, i64 1
  %8 = zext i32 %0 to i64
  br label %9

9:                                                ; preds = %67, %6
  %10 = phi i64 [ 1, %6 ], [ %71, %67 ]
  %11 = phi i32 [ 0, %6 ], [ %70, %67 ]
  %12 = phi i32 [ 0, %6 ], [ %69, %67 ]
  %13 = phi i32 [ 0, %6 ], [ %68, %67 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 %10
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 45
  br i1 %17, label %18, label %65

18:                                               ; preds = %57, %9
  %19 = phi ptr [ %62, %57 ], [ %15, %9 ]
  %20 = phi i32 [ %49, %57 ], [ %11, %9 ]
  %21 = phi i32 [ %58, %57 ], [ %12, %9 ]
  %22 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) @.str.122.434) #39
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #39
  %26 = getelementptr inbounds i8, ptr %19, i64 %25
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ %22, %18 ], [ %26, %24 ]
  %29 = ptrtoint ptr %28 to i64
  %30 = ptrtoint ptr %19 to i64
  %31 = sub i64 %29, %30
  %32 = add nsw i64 %31, 1
  %33 = call noalias ptr @malloc(i64 noundef %32) #44
  store ptr %33, ptr %7, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %33, ptr nonnull align 1 %19, i64 %31, i1 false)
  %34 = getelementptr inbounds i8, ptr %33, i64 %31
  store i8 0, ptr %34, align 1, !tbaa !11
  %35 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(3) @.str.123.435, i64 noundef 2) #39
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = getelementptr inbounds i8, ptr %33, i64 2
  %39 = call i64 @atol(ptr nocapture noundef nonnull %38) #39
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i8, ptr %38, align 1, !tbaa !11
  %43 = icmp eq i8 %42, 48
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i32 @puts(ptr nonnull dereferenceable(1) @str.232)
  %46 = load ptr, ptr %7, align 8, !tbaa !7
  br label %47

47:                                               ; preds = %44, %41, %37, %27
  %48 = phi ptr [ %46, %44 ], [ %33, %41 ], [ %33, %37 ], [ %33, %27 ]
  %49 = phi i32 [ 1, %44 ], [ %20, %41 ], [ %20, %37 ], [ %20, %27 ]
  %50 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(3) @.str.125.436, i64 noundef 2) #39
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, ptr %48, i64 2
  %54 = call i64 @atol(ptr nocapture noundef nonnull %53) #39
  %55 = trunc i64 %54 to i32
  br label %57

56:                                               ; preds = %47
  call void @process_cla(i32 noundef 2, ptr noundef nonnull %4, i32 noundef 1) #38
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ %21, %56 ]
  %59 = load i8, ptr %28, align 1, !tbaa !11
  %60 = icmp ne i8 %59, 0
  %61 = zext i1 %60 to i64
  %62 = getelementptr inbounds i8, ptr %28, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %18, !llvm.loop !273

65:                                               ; preds = %9
  %66 = add nsw i32 %13, 1
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi i32 [ %66, %65 ], [ %13, %57 ]
  %69 = phi i32 [ %12, %65 ], [ %58, %57 ]
  %70 = phi i32 [ %11, %65 ], [ %49, %57 ]
  %71 = add nuw nsw i64 %10, 1
  %72 = icmp eq i64 %71, %8
  br i1 %72, label %73, label %9, !llvm.loop !274

73:                                               ; preds = %67, %3
  %74 = phi i32 [ 0, %3 ], [ %68, %67 ]
  %75 = phi i32 [ 0, %3 ], [ %69, %67 ]
  %76 = phi i32 [ 0, %3 ], [ %70, %67 ]
  call void @print_welcome() #38
  call void @print_hs_1() #38
  call void @init_storage() #38
  %77 = icmp sgt i32 %0, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = zext i32 %0 to i64
  br label %80

80:                                               ; preds = %80, %78
  %81 = phi i64 [ 0, %78 ], [ %88, %80 ]
  %82 = phi ptr [ null, %78 ], [ %87, %80 ]
  %83 = getelementptr inbounds ptr, ptr %1, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !7
  %85 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %84) #39
  %86 = call ptr @strcons(i64 noundef %85, ptr noundef %84) #38
  %87 = call ptr @cons(ptr noundef %86, ptr noundef %82) #38
  %88 = add nuw nsw i64 %81, 1
  %89 = icmp eq i64 %88, %79
  br i1 %89, label %90, label %80, !llvm.loop !275

90:                                               ; preds = %80, %73
  %91 = phi ptr [ null, %73 ], [ %87, %80 ]
  %92 = call ptr @cintern(ptr noundef nonnull @.str.126.437) #38
  %93 = call ptr @nreverse(ptr noundef %91) #38
  %94 = call ptr @setvar(ptr noundef %92, ptr noundef %93, ptr noundef null) #38
  %95 = icmp eq ptr %2, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %2, align 8, !tbaa !7
  %98 = icmp eq ptr %97, null
  br i1 %98, label %110, label %99

99:                                               ; preds = %99, %96
  %100 = phi ptr [ %108, %99 ], [ %97, %96 ]
  %101 = phi ptr [ %105, %99 ], [ null, %96 ]
  %102 = phi i64 [ %106, %99 ], [ 0, %96 ]
  %103 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #39
  %104 = call ptr @strcons(i64 noundef %103, ptr noundef nonnull %100) #38
  %105 = call ptr @cons(ptr noundef %104, ptr noundef %101) #38
  %106 = add nuw i64 %102, 1
  %107 = getelementptr inbounds ptr, ptr %2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !7
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %99

110:                                              ; preds = %99, %96, %90
  %111 = phi ptr [ null, %90 ], [ null, %96 ], [ %105, %99 ]
  %112 = call ptr @cintern(ptr noundef nonnull @.str.127.438) #38
  %113 = call ptr @nreverse(ptr noundef %111) #38
  %114 = call ptr @setvar(ptr noundef %112, ptr noundef %113, ptr noundef null) #38
  call void @init_subrs() #38
  call void @init_trace() #38
  call void @init_slibu() #40
  call void @init_subr_1(ptr noundef nonnull @.str.128.439, ptr noundef nonnull @cgi_main) #38
  %115 = icmp eq i32 %74, 0
  br i1 %115, label %124, label %116

116:                                              ; preds = %110
  %117 = icmp sgt i32 %75, 1
  %118 = icmp sgt i32 %0, 3
  %119 = and i1 %118, %117
  %120 = select i1 %119, i32 3, i32 %0
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %139

122:                                              ; preds = %116
  %123 = zext i32 %120 to i64
  br label %127

124:                                              ; preds = %110
  %125 = call i64 @repl_driver(i64 noundef 1, i64 noundef 1, ptr noundef null) #38
  %126 = trunc i64 %125 to i32
  br label %148

127:                                              ; preds = %136, %122
  %128 = phi i64 [ 1, %122 ], [ %137, %136 ]
  %129 = getelementptr inbounds ptr, ptr %1, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !7
  %131 = load i8, ptr %130, align 1, !tbaa !11
  %132 = icmp eq i8 %131, 45
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = call fastcc i32 @htqs_arg(ptr noundef nonnull %130) #40
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133, %127
  %137 = add nuw nsw i64 %128, 1
  %138 = icmp eq i64 %137, %123
  br i1 %138, label %139, label %127, !llvm.loop !276

139:                                              ; preds = %136, %133, %116
  %140 = phi i32 [ 0, %116 ], [ %134, %133 ], [ 0, %136 ]
  %141 = icmp eq i32 %75, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %139
  %143 = icmp sgt i32 %75, 2
  %144 = icmp eq i32 %76, 0
  %145 = select i1 %143, i1 %144, i1 false
  %146 = select i1 %145, ptr @.str.129.440, ptr @.str.130.441
  %147 = call fastcc i32 @htqs_arg(ptr noundef nonnull %146) #40
  br label %148

148:                                              ; preds = %142, %139, %124
  %149 = phi i32 [ %126, %124 ], [ %147, %142 ], [ %140, %139 ]
  %150 = call i32 @siod_verbose_check(i32 noundef 2) #38
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 @puts(ptr nonnull dereferenceable(1) @str.442)
  br label %154

154:                                              ; preds = %152, %148
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #42
  ret i32 %149
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_slibu() #0 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #42
  %2 = tail call i64 @allocate_user_tc() #38
  store i64 %2, ptr @tc_opendir, align 8, !tbaa !12
  call void @set_gc_hooks(i64 noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @opendir_gc_free, ptr noundef nonnull %1) #38
  %3 = load i64, ptr @tc_opendir, align 8, !tbaa !12
  call void @set_print_hooks(i64 noundef %3, ptr noundef nonnull @opendir_prin1) #38
  call void @init_subr_2(ptr noundef nonnull @.str.68.378, ptr noundef nonnull @l_chmod) #38
  call void @gc_protect_sym(ptr noundef nonnull @sym_channels, ptr noundef nonnull @.str.137.457) #38
  %4 = load ptr, ptr @sym_channels, align 8, !tbaa !7
  %5 = call ptr @setvar(ptr noundef %4, ptr noundef null, ptr noundef null) #38
  call void @init_lsubr(ptr noundef nonnull @.str.138.458, ptr noundef nonnull @lsystem) #38
  call void @init_subr_0(ptr noundef nonnull @.str.139.459, ptr noundef nonnull @lgetgid) #38
  call void @init_subr_0(ptr noundef nonnull @.str.140.460, ptr noundef nonnull @lgetuid) #38
  call void @init_subr_0(ptr noundef nonnull @.str.2.312, ptr noundef nonnull @lgetcwd) #38
  call void @init_subr_1(ptr noundef nonnull @.str.141.461, ptr noundef nonnull @lgetpwuid) #38
  call void @init_subr_1(ptr noundef nonnull @.str.142.462, ptr noundef nonnull @lgetpwnam) #38
  call void @init_subr_0(ptr noundef nonnull @.str.143.463, ptr noundef nonnull @lgetpwent) #38
  call void @init_subr_0(ptr noundef nonnull @.str.144.464, ptr noundef nonnull @lsetpwent) #38
  call void @init_subr_0(ptr noundef nonnull @.str.145.465, ptr noundef nonnull @lendpwent) #38
  call void @init_subr_1(ptr noundef nonnull @.str.10.320, ptr noundef nonnull @lsetuid) #38
  call void @init_subr_1(ptr noundef nonnull @.str.11.321, ptr noundef nonnull @lseteuid) #38
  call void @init_subr_0(ptr noundef nonnull @.str.146.466, ptr noundef nonnull @lgeteuid) #38
  call void @init_subr_2(ptr noundef nonnull @.str.147.467, ptr noundef nonnull @laccess_problem) #38
  call void @init_subr_3(ptr noundef nonnull @.str.69.379, ptr noundef nonnull @lutime) #38
  call void @init_subr_2(ptr noundef nonnull @.str.70.380, ptr noundef nonnull @lfchmod) #38
  call void @init_subr_1(ptr noundef nonnull @.str.148.468, ptr noundef nonnull @lrandom) #38
  call void @init_subr_1(ptr noundef nonnull @.str.149.469, ptr noundef nonnull @lsrandom) #38
  call void @init_subr_1(ptr noundef nonnull @.str.150.470, ptr noundef nonnull @car) #38
  call void @init_subr_1(ptr noundef nonnull @.str.151.471, ptr noundef nonnull @cdr) #38
  call void @init_subr_0(ptr noundef nonnull @.str.20.330, ptr noundef nonnull @lfork) #38
  call void @init_subr_3(ptr noundef nonnull @.str.21.331, ptr noundef nonnull @lexec) #38
  call void @init_subr_1(ptr noundef nonnull @.str.22.332, ptr noundef nonnull @lnice) #38
  call void @init_subr_2(ptr noundef nonnull @.str.28.338, ptr noundef nonnull @lwait) #38
  call void @init_subr_0(ptr noundef nonnull @.str.152.472, ptr noundef nonnull @lgetpgrp) #38
  call void @init_subr_1(ptr noundef nonnull @.str.153.473, ptr noundef nonnull @lgetgrgid) #38
  call void @init_subr_2(ptr noundef nonnull @.str.30.340, ptr noundef nonnull @lsetpgid) #38
  call void @init_subr_2(ptr noundef nonnull @.str.29.339, ptr noundef nonnull @lkill) #38
  call void @init_subr_1(ptr noundef nonnull @.str.154.474, ptr noundef nonnull @lmemref_byte) #38
  call void @init_subr_0(ptr noundef nonnull @.str.155.475, ptr noundef nonnull @lgetpid) #38
  call void @init_subr_0(ptr noundef nonnull @.str.156.476, ptr noundef nonnull @lgetppid) #38
  call void @init_subr_1(ptr noundef nonnull @.str.157.477, ptr noundef nonnull @lexit) #38
  call void @init_subr_1(ptr noundef nonnull @.str.158.478, ptr noundef nonnull @ltrunc) #38
  call void @init_subr_1(ptr noundef nonnull @.str.32.342, ptr noundef nonnull @lputenv) #38
  call void @init_subr_1(ptr noundef nonnull @.str.34.344, ptr noundef nonnull @l_opendir) #38
  call void @init_subr_1(ptr noundef nonnull @.str.37.347, ptr noundef nonnull @l_closedir) #38
  call void @init_subr_1(ptr noundef nonnull @.str.159.479, ptr noundef nonnull @l_readdir) #38
  call void @init_subr_1(ptr noundef nonnull @.str.160.480, ptr noundef nonnull @delete_file) #38
  call void @init_subr_1(ptr noundef nonnull @.str.161.481, ptr noundef nonnull @file_times) #38
  call void @init_subr_1(ptr noundef nonnull @.str.162.482, ptr noundef nonnull @utime2str) #38
  call void @init_subr_0(ptr noundef nonnull @.str.163.483, ptr noundef nonnull @unix_time) #38
  call void @init_subr_1(ptr noundef nonnull @.str.164.484, ptr noundef nonnull @unix_ctime) #38
  call void @init_subr_1(ptr noundef nonnull @.str.165.485, ptr noundef nonnull @lgetenv) #38
  call void @init_subr_1(ptr noundef nonnull @.str.166.486, ptr noundef nonnull @lsleep) #38
  call void @init_subr_1(ptr noundef nonnull @.str.167.487, ptr noundef nonnull @url_encode) #38
  call void @init_subr_1(ptr noundef nonnull @.str.168.488, ptr noundef nonnull @url_decode) #38
  call void @init_subr_2(ptr noundef nonnull @.str.169.489, ptr noundef nonnull @lgets) #38
  call void @init_subr_1(ptr noundef nonnull @.str.170.490, ptr noundef nonnull @readline) #38
  call void @init_subr_1(ptr noundef nonnull @.str.171.491, ptr noundef nonnull @html_encode) #38
  call void @init_subr_1(ptr noundef nonnull @.str.172.492, ptr noundef nonnull @html_decode) #38
  call void @init_subr_1(ptr noundef nonnull @.str.173.493, ptr noundef nonnull @decode_st_mode) #38
  call void @init_subr_1(ptr noundef nonnull @.str.174.494, ptr noundef nonnull @encode_st_mode) #38
  call void @init_subr_1(ptr noundef nonnull @.str.175.495, ptr noundef nonnull @l_stat) #38
  call void @init_subr_1(ptr noundef nonnull @.str.176.496, ptr noundef nonnull @l_fstat) #38
  call void @init_subr_1(ptr noundef nonnull @.str.177.497, ptr noundef nonnull @encode_open_flags) #38
  call void @init_subr_1(ptr noundef nonnull @.str.178.498, ptr noundef nonnull @l_lstat) #38
  call void @init_subr_2(ptr noundef nonnull @.str.13.323, ptr noundef nonnull @lsymlink) #38
  call void @init_subr_2(ptr noundef nonnull @.str.14.324, ptr noundef nonnull @llink) #38
  call void @init_subr_1(ptr noundef nonnull @.str.15.325, ptr noundef nonnull @lunlink) #38
  call void @init_subr_1(ptr noundef nonnull @.str.16.326, ptr noundef nonnull @lrmdir) #38
  call void @init_subr_2(ptr noundef nonnull @.str.17.327, ptr noundef nonnull @lmkdir) #38
  call void @init_subr_2(ptr noundef nonnull @.str.19.329, ptr noundef nonnull @lrename) #38
  call void @init_subr_1(ptr noundef nonnull @.str.18.328, ptr noundef nonnull @lreadlink) #38
  call void @init_subr_3(ptr noundef nonnull @.str.91.401, ptr noundef nonnull @l_chown) #38
  call void @init_subr_1(ptr noundef nonnull @.str.179.499, ptr noundef nonnull @http_date) #38
  call void @init_subr_2(ptr noundef nonnull @.str.180.500, ptr noundef nonnull @popen_l) #38
  call void @init_subr_1(ptr noundef nonnull @.str.93.403, ptr noundef nonnull @pclose_l) #38
  call void @init_subr_2(ptr noundef nonnull @.str.181.501, ptr noundef nonnull @load_so) #38
  call void @init_subr_1(ptr noundef nonnull @.str.182.502, ptr noundef nonnull @require_so) #38
  call void @init_subr_1(ptr noundef nonnull @.str.183.503, ptr noundef nonnull @so_ext) #38
  %6 = call ptr @cintern(ptr noundef nonnull @.str.184.504) #38
  %7 = call ptr @flocons(double noundef 0.000000e+00) #38
  %8 = call ptr @setvar(ptr noundef %6, ptr noundef %7, ptr noundef null) #38
  %9 = call ptr @cintern(ptr noundef nonnull @.str.185.505) #38
  %10 = call ptr @flocons(double noundef 1.000000e+00) #38
  %11 = call ptr @setvar(ptr noundef %9, ptr noundef %10, ptr noundef null) #38
  %12 = call ptr @cintern(ptr noundef nonnull @.str.186.506) #38
  %13 = call ptr @flocons(double noundef 2.000000e+00) #38
  %14 = call ptr @setvar(ptr noundef %12, ptr noundef %13, ptr noundef null) #38
  %15 = call ptr @cintern(ptr noundef nonnull @.str.187.507) #38
  %16 = call ptr @flocons(double noundef 0.000000e+00) #38
  %17 = call ptr @setvar(ptr noundef %15, ptr noundef %16, ptr noundef null) #38
  %18 = call ptr @cintern(ptr noundef nonnull @.str.188.508) #38
  %19 = call ptr @flocons(double noundef 1.000000e+00) #38
  %20 = call ptr @setvar(ptr noundef %18, ptr noundef %19, ptr noundef null) #38
  %21 = call ptr @cintern(ptr noundef nonnull @.str.189.509) #38
  %22 = call ptr @flocons(double noundef 2.000000e+00) #38
  %23 = call ptr @setvar(ptr noundef %21, ptr noundef %22, ptr noundef null) #38
  call void @init_subr_5(ptr noundef nonnull @.str.190.510, ptr noundef nonnull @lF_SETLK) #38
  call void @init_subr_5(ptr noundef nonnull @.str.191.511, ptr noundef nonnull @lF_SETLKW) #38
  call void @init_subr_5(ptr noundef nonnull @.str.192.512, ptr noundef nonnull @lF_GETLK) #38
  call void @init_subr_0(ptr noundef nonnull @.str.193.513, ptr noundef nonnull @siod_lib_l) #38
  %24 = load ptr, ptr @ld_library_path_env, align 8, !tbaa !7
  %25 = call ptr @getenv(ptr noundef %24) #38
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %0
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #39
  %29 = load ptr, ptr @siod_lib, align 8, !tbaa !7
  br label %38

30:                                               ; preds = %0
  %31 = load ptr, ptr @siod_lib, align 8, !tbaa !7
  %32 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %31) #39
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #39
  %36 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #39
  %37 = add i64 %36, 1
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi ptr [ %31, %34 ], [ %29, %27 ]
  %40 = phi i64 [ %35, %34 ], [ %28, %27 ]
  %41 = phi ptr [ @.str.195.514, %34 ], [ @.str.115.425, %27 ]
  %42 = phi ptr [ %25, %34 ], [ @.str.115.425, %27 ]
  %43 = phi i64 [ %37, %34 ], [ 0, %27 ]
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #39
  %45 = add i64 %40, 2
  %46 = add i64 %45, %43
  %47 = add i64 %46, %44
  %48 = call ptr @must_malloc(i64 noundef %47) #38
  %49 = load ptr, ptr @ld_library_path_env, align 8, !tbaa !7
  %50 = load ptr, ptr @siod_lib, align 8, !tbaa !7
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(1) @.str.194.515, ptr noundef %49, ptr noundef nonnull %42, ptr noundef nonnull %41, ptr noundef %50) #38
  %52 = call i32 @putenv(ptr noundef %48) #38
  br label %53

53:                                               ; preds = %38, %30
  call void @init_subr_1(ptr noundef nonnull @.str.111.421, ptr noundef nonnull @llocaltime) #38
  call void @init_subr_1(ptr noundef nonnull @.str.112.422, ptr noundef nonnull @lgmtime) #38
  call void @init_subr_0(ptr noundef nonnull @.str.196.516, ptr noundef nonnull @ltzset) #38
  call void @init_subr_1(ptr noundef nonnull @.str.197.517, ptr noundef nonnull @lmktime) #38
  call void @init_subr_1(ptr noundef nonnull @.str.114.424, ptr noundef nonnull @lchdir) #38
  call void @init_subr_3(ptr noundef nonnull @.str.198.518, ptr noundef nonnull @lstrptime) #38
  call void @init_subr_2(ptr noundef nonnull @.str.199.519, ptr noundef nonnull @lstrftime) #38
  call void @init_subr_1(ptr noundef nonnull @.str.200.520, ptr noundef nonnull @lgetpass) #38
  call void @init_subr_0(ptr noundef nonnull @.str.117.427, ptr noundef nonnull @lpipe) #38
  call void @init_subr_2(ptr noundef nonnull @.str.201.521, ptr noundef nonnull @lalarm) #38
  %54 = call ptr @cintern(ptr noundef nonnull @.str.202.522) #38
  %55 = call ptr @flocons(double noundef 1.000000e+00) #38
  %56 = call ptr @setvar(ptr noundef %54, ptr noundef %55, ptr noundef null) #38
  %57 = call ptr @cintern(ptr noundef nonnull @.str.203.523) #38
  %58 = call ptr @flocons(double noundef 2.000000e+00) #38
  %59 = call ptr @setvar(ptr noundef %57, ptr noundef %58, ptr noundef null) #38
  %60 = call ptr @cintern(ptr noundef nonnull @.str.204.524) #38
  %61 = call ptr @flocons(double noundef 9.000000e+00) #38
  %62 = call ptr @setvar(ptr noundef %60, ptr noundef %61, ptr noundef null) #38
  %63 = call ptr @cintern(ptr noundef nonnull @.str.205.525) #38
  %64 = call ptr @flocons(double noundef 5.000000e+00) #38
  %65 = call ptr @setvar(ptr noundef %63, ptr noundef %64, ptr noundef null) #38
  %66 = call ptr @cintern(ptr noundef nonnull @.str.206.526) #38
  %67 = call ptr @flocons(double noundef 3.000000e+00) #38
  %68 = call ptr @setvar(ptr noundef %66, ptr noundef %67, ptr noundef null) #38
  %69 = call ptr @cintern(ptr noundef nonnull @.str.207.527) #38
  %70 = call ptr @flocons(double noundef 7.000000e+00) #38
  %71 = call ptr @setvar(ptr noundef %69, ptr noundef %70, ptr noundef null) #38
  %72 = call ptr @cintern(ptr noundef nonnull @.str.208.528) #38
  %73 = call ptr @flocons(double noundef 1.000000e+01) #38
  %74 = call ptr @setvar(ptr noundef %72, ptr noundef %73, ptr noundef null) #38
  %75 = call ptr @cintern(ptr noundef nonnull @.str.209.529) #38
  %76 = call ptr @flocons(double noundef 6.000000e+00) #38
  %77 = call ptr @setvar(ptr noundef %75, ptr noundef %76, ptr noundef null) #38
  %78 = call ptr @cintern(ptr noundef nonnull @.str.210.530) #38
  %79 = call ptr @flocons(double noundef 4.000000e+00) #38
  %80 = call ptr @setvar(ptr noundef %78, ptr noundef %79, ptr noundef null) #38
  %81 = call ptr @cintern(ptr noundef nonnull @.str.211.531) #38
  %82 = call ptr @flocons(double noundef 8.000000e+00) #38
  %83 = call ptr @setvar(ptr noundef %81, ptr noundef %82, ptr noundef null) #38
  call void @init_subr_3(ptr noundef nonnull @.str.212.532, ptr noundef nonnull @datref) #38
  call void @init_subr_2(ptr noundef nonnull @.str.121.431, ptr noundef nonnull @sdatref) #38
  call void @init_subr_2(ptr noundef nonnull @.str.213.533, ptr noundef nonnull @mkdatref) #38
  call void @init_subr_2(ptr noundef nonnull @.str.214.534, ptr noundef nonnull @datlength) #38
  call void @init_subr_1(ptr noundef nonnull @.str.215.535, ptr noundef nonnull @lposition_script) #38
  %84 = call ptr @cintern(ptr noundef nonnull @.str.230.536) #38
  %85 = call ptr @cintern(ptr noundef nonnull @.str.231.537) #38
  %86 = call ptr @setvar(ptr noundef %84, ptr noundef %85, ptr noundef null) #38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @cgi_main(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = tail call ptr @car(ptr noundef nonnull %0) #38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @car(ptr noundef nonnull %0) #38
  %12 = getelementptr inbounds %struct.obj, ptr %11, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !16
  %14 = icmp eq i16 %13, 13
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  tail call void @put_st(ptr noundef nonnull @.str.216.448) #38
  tail call void @put_st(ptr noundef nonnull @.str.217.449) #38
  tail call void @put_st(ptr noundef nonnull @.str.218.450) #38
  tail call void @put_st(ptr noundef nonnull @.str.219.451) #38
  tail call void @put_st(ptr noundef nonnull @.str.220.452) #38
  tail call void @put_st(ptr noundef nonnull @.str.221.453) #38
  tail call void @put_st(ptr noundef nonnull @.str.222.454) #38
  %16 = tail call ptr @car(ptr noundef nonnull %0) #38
  %17 = tail call ptr @lprint(ptr noundef %16, ptr noundef null) #38
  %18 = tail call ptr @cdr(ptr noundef nonnull %0) #38
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  tail call void @put_st(ptr noundef nonnull @.str.99.409) #38
  %21 = tail call ptr @cdr(ptr noundef nonnull %0) #38
  %22 = tail call ptr @lprint(ptr noundef %21, ptr noundef null) #38
  br label %23

23:                                               ; preds = %20, %15
  tail call void @put_st(ptr noundef nonnull @.str.223.455) #38
  %24 = tail call ptr @err(ptr noundef nonnull @.str.224.456, ptr noundef null) #38
  br label %25

25:                                               ; preds = %23, %10, %7, %3, %1
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @htqs_arg(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #42
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.225.443) #39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.226.444) #39
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5, %1
  %9 = tail call i64 @repl_driver(i64 noundef 1, i64 noundef 1, ptr noundef null) #38
  br label %42

10:                                               ; preds = %5
  %11 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 40) #39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %2, ptr noundef nonnull align 1 dereferenceable(11) @.str.227.445, i64 11, i1 false) #38
  %14 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39
  %15 = getelementptr inbounds [1024 x i8], ptr %2, i64 0, i64 %14
  %16 = load i8, ptr %0, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %28, %13
  %19 = phi i8 [ %33, %28 ], [ %16, %13 ]
  %20 = phi ptr [ %32, %28 ], [ %0, %13 ]
  %21 = phi ptr [ %31, %28 ], [ %15, %13 ]
  %22 = sext i8 %19 to i32
  %23 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.228.446, i32 %22, i64 3)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 92, ptr %21, align 1, !tbaa !11
  %27 = load i8, ptr %20, align 1, !tbaa !11
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi i8 [ %27, %25 ], [ %19, %18 ]
  %30 = phi ptr [ %26, %25 ], [ %21, %18 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %29, ptr %30, align 1, !tbaa !11
  %32 = getelementptr inbounds i8, ptr %20, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %18, !llvm.loop !277

35:                                               ; preds = %28, %13
  %36 = phi ptr [ %15, %13 ], [ %31, %28 ]
  store i8 0, ptr %36, align 1, !tbaa !11
  %37 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %38 = getelementptr inbounds i8, ptr %2, i64 %37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %38, ptr noundef nonnull align 1 dereferenceable(3) @.str.229.447, i64 3, i1 false)
  %39 = call i64 @repl_c_string(ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef 0) #38
  br label %42

40:                                               ; preds = %10
  %41 = tail call i64 @repl_c_string(ptr noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #38
  br label %42

42:                                               ; preds = %40, %35, %8
  %43 = phi i64 [ %9, %8 ], [ %41, %40 ], [ %39, %35 ]
  %44 = trunc i64 %43 to i32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #42
  ret i32 %44
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @lposition_script(ptr noundef %0) #0 {
  %2 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #42
  %3 = load ptr, ptr @stdin, align 8, !tbaa !7
  %4 = tail call ptr @get_c_file(ptr noundef %0, ptr noundef %3) #38
  %5 = tail call i64 @no_interrupt(i64 noundef 1) #38
  %6 = call i64 @position_script(ptr noundef %4, ptr noundef nonnull %2, i64 noundef 100) #40
  %7 = tail call i64 @no_interrupt(i64 noundef %5) #38
  %8 = icmp slt i64 %6, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = sitofp i64 %6 to double
  %11 = tail call ptr @flocons(double noundef %10) #38
  %12 = call ptr @strcons(i64 noundef -1, ptr noundef nonnull %2) #38
  %13 = call ptr @cons(ptr noundef %11, ptr noundef %12) #38
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi ptr [ %13, %9 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #42
  ret ptr %15
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i64 @position_script(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) #1 {
  store i8 0, ptr %1, align 1, !tbaa !11
  br label %4

4:                                                ; preds = %33, %3
  %5 = phi i64 [ 0, %3 ], [ %36, %33 ]
  %6 = phi i64 [ -1, %3 ], [ %35, %33 ]
  %7 = phi i32 [ 0, %3 ], [ %34, %33 ]
  %8 = tail call i32 @getc(ptr noundef %0) #40
  switch i32 %8, label %32 [
    i32 -1, label %38
    i32 35, label %33
    i32 33, label %9
    i32 47, label %12
  ]

9:                                                ; preds = %4
  %10 = icmp eq i32 %7, 35
  %11 = select i1 %10, i32 33, i32 0
  br label %33

12:                                               ; preds = %4
  %13 = icmp eq i32 %7, 33
  br i1 %13, label %14, label %33

14:                                               ; preds = %14, %12
  %.lcssa1 = phi i64 [ %.lcssa1, %14 ], [ %6, %12 ]
  %15 = tail call i32 @getc(ptr noundef %0) #40
  switch i32 %15, label %14 [
    i32 -1, label %16
    i32 32, label %16
  ]

16:                                               ; preds = %14, %14
  %.lcssa1.lcssa = phi i64 [ %.lcssa1, %14 ], [ %.lcssa1, %14 ]
  br label %17

17:                                               ; preds = %23, %16
  %18 = phi i64 [ %21, %23 ], [ 0, %16 ]
  %19 = tail call i32 @getc(ptr noundef %0) #40
  switch i32 %19, label %20 [
    i32 -1, label %27
    i32 10, label %27
  ]

20:                                               ; preds = %17
  %21 = add i64 %18, 1
  %22 = icmp ugt i64 %21, %2
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = trunc i32 %19 to i8
  %25 = getelementptr inbounds i8, ptr %1, i64 %18
  store i8 %24, ptr %25, align 1, !tbaa !11
  %26 = getelementptr inbounds i8, ptr %1, i64 %21
  store i8 0, ptr %26, align 1, !tbaa !11
  br label %17, !llvm.loop !278

27:                                               ; preds = %20, %17, %17
  %28 = tail call i64 @strspn(ptr noundef nonnull %1, ptr noundef nonnull @.str.132.538) #39
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  store i8 0, ptr %1, align 1, !tbaa !11
  br label %38

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %12, %9, %4
  %34 = phi i32 [ 0, %32 ], [ %11, %9 ], [ %8, %4 ], [ 0, %12 ]
  %35 = phi i64 [ %6, %32 ], [ %6, %9 ], [ %5, %4 ], [ %6, %12 ]
  %36 = add nuw nsw i64 %5, 1
  %37 = icmp eq i64 %36, 250000
  br i1 %37, label %38, label %4, !llvm.loop !279

38:                                               ; preds = %33, %31, %27, %4
  %39 = phi i64 [ %.lcssa1.lcssa, %31 ], [ %.lcssa1.lcssa, %27 ], [ -1, %4 ], [ -1, %33 ]
  ret i64 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal ptr @ltrace_fcn_name(ptr noundef readonly %0) #24 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 1
  br i1 %6, label %7, label %44

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr @sym_begin, align 8, !tbaa !7
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.obj, ptr %14, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !16
  %19 = icmp eq i16 %18, 1
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.obj, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.obj, ptr %22, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !16
  %27 = icmp eq i16 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.obj, ptr %22, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = load ptr, ptr @sym_quote.540, align 8, !tbaa !7
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.obj, ptr %22, i64 0, i32 2, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.obj, ptr %35, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !16
  %40 = icmp eq i16 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.obj, ptr %35, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %41, %37, %33, %28, %24, %20, %16, %12, %7, %3, %1
  %45 = phi ptr [ %43, %41 ], [ null, %3 ], [ null, %7 ], [ null, %16 ], [ null, %24 ], [ null, %28 ], [ null, %37 ], [ null, %1 ], [ null, %12 ], [ null, %20 ], [ null, %33 ]
  ret ptr %45
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @ltrace_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @leval(ptr noundef %0, ptr noundef %1) #38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !16
  %8 = icmp eq i16 %7, 11
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.obj, ptr %3, i64 0, i32 2, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call ptr @cdr(ptr noundef %11) #38
  %13 = tail call ptr @ltrace_fcn_name(ptr noundef %12) #40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load ptr, ptr @sym_begin, align 8, !tbaa !7
  %17 = load ptr, ptr @sym_quote.540, align 8, !tbaa !7
  %18 = tail call ptr @cons(ptr noundef %0, ptr noundef null) #38
  %19 = tail call ptr @cons(ptr noundef %17, ptr noundef %18) #38
  %20 = tail call ptr @cdr(ptr noundef %11) #38
  %21 = tail call ptr @cons(ptr noundef %20, ptr noundef null) #38
  %22 = tail call ptr @cons(ptr noundef %19, ptr noundef %21) #38
  %23 = tail call ptr @cons(ptr noundef %16, ptr noundef %22) #38
  %24 = tail call ptr @setcdr(ptr noundef %11, ptr noundef %23) #38
  br label %25

25:                                               ; preds = %15, %9
  %26 = load i64, ptr @tc_closure_traced, align 8, !tbaa !12
  %27 = trunc i64 %26 to i16
  store i16 %27, ptr %6, align 2, !tbaa !16
  br label %36

28:                                               ; preds = %5
  %29 = sext i16 %7 to i64
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i64 [ %29, %28 ], [ 0, %2 ]
  %32 = load i64, ptr @tc_closure_traced, align 8, !tbaa !12
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @err(ptr noundef nonnull @.str.541, ptr noundef %3) #38
  br label %36

36:                                               ; preds = %34, %30, %25
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @ltrace(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %6 = tail call ptr @car(ptr noundef nonnull %5) #38
  %7 = tail call ptr @ltrace_1(ptr noundef %6, ptr noundef %1) #40
  %8 = tail call ptr @cdr(ptr noundef nonnull %5) #38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !280

10:                                               ; preds = %4, %2
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @luntrace_1(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !16
  %6 = icmp eq i16 %5, 11
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = sext i16 %5 to i64
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i64 [ %8, %7 ], [ 0, %1 ]
  %11 = load i64, ptr @tc_closure_traced, align 8, !tbaa !12
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 1
  store i16 11, ptr %14, align 2, !tbaa !16
  br label %17

15:                                               ; preds = %9
  %16 = tail call ptr @err(ptr noundef nonnull @.str.1.542, ptr noundef %0) #38
  br label %17

17:                                               ; preds = %15, %13, %3
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @luntrace(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = tail call ptr @car(ptr noundef nonnull %4) #38
  %6 = tail call ptr @luntrace_1(ptr noundef %5) #40
  %7 = tail call ptr @cdr(ptr noundef nonnull %4) #38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !llvm.loop !281

9:                                                ; preds = %3, %1
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @ct_prin1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.2.543) #38
  %3 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = tail call ptr @car(ptr noundef %4) #38
  %6 = tail call ptr @lprin1g(ptr noundef %5, ptr noundef %1) #38
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.3.544) #38
  %7 = load ptr, ptr %3, align 8, !tbaa !11
  %8 = tail call ptr @cdr(ptr noundef %7) #38
  %9 = tail call ptr @lprin1g(ptr noundef %8, ptr noundef %1) #38
  tail call void @gput_st(ptr noundef %1, ptr noundef nonnull @.str.4.545) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @ct_eval(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = tail call ptr @cdr(ptr noundef %5) #38
  %7 = tail call ptr @ltrace_fcn_name(ptr noundef %6) #40
  %8 = load ptr, ptr %1, align 8, !tbaa !7
  %9 = getelementptr inbounds %struct.obj, ptr %8, i64 0, i32 2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load ptr, ptr %2, align 8, !tbaa !7
  %12 = tail call ptr @leval_args(ptr noundef %10, ptr noundef %11) #38
  %13 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %13, ptr noundef nonnull @.str.5.546) #38
  %14 = load ptr, ptr @stdout, align 8, !tbaa !7
  %15 = tail call ptr @lprin1f(ptr noundef %7, ptr noundef %14) #38
  %16 = icmp eq ptr %12, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %3
  %18 = phi ptr [ %23, %17 ], [ %12, %3 ]
  %19 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %19, ptr noundef nonnull @.str.3.544) #38
  %20 = tail call ptr @car(ptr noundef nonnull %18) #38
  %21 = load ptr, ptr @stdout, align 8, !tbaa !7
  %22 = tail call ptr @lprin1f(ptr noundef %20, ptr noundef %21) #38
  %23 = tail call ptr @cdr(ptr noundef nonnull %18) #38
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17, !llvm.loop !282

25:                                               ; preds = %17, %3
  %26 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %27, ptr noundef nonnull @.str.6.547) #38
  %28 = load ptr, ptr %4, align 8, !tbaa !11
  %29 = tail call ptr @car(ptr noundef %28) #38
  %30 = load ptr, ptr %26, align 8, !tbaa !11
  %31 = tail call ptr @extend_env(ptr noundef %12, ptr noundef %29, ptr noundef %30) #38
  %32 = load ptr, ptr %4, align 8, !tbaa !11
  %33 = tail call ptr @cdr(ptr noundef %32) #38
  %34 = tail call ptr @leval(ptr noundef %33, ptr noundef %31) #38
  %35 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %35, ptr noundef nonnull @.str.7.548) #38
  %36 = load ptr, ptr @stdout, align 8, !tbaa !7
  %37 = tail call ptr @lprin1f(ptr noundef %7, ptr noundef %36) #38
  %38 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %38, ptr noundef nonnull @.str.3.544) #38
  %39 = load ptr, ptr @stdout, align 8, !tbaa !7
  %40 = tail call ptr @lprin1f(ptr noundef %34, ptr noundef %39) #38
  %41 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @fput_st(ptr noundef %41, ptr noundef nonnull @.str.6.547) #38
  store ptr %34, ptr %1, align 8, !tbaa !7
  ret ptr null
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_trace() #0 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #42
  %2 = tail call i64 @allocate_user_tc() #38
  store i64 %2, ptr @tc_closure_traced, align 8, !tbaa !12
  call void @set_gc_hooks(i64 noundef %2, ptr noundef null, ptr noundef nonnull @ct_gc_mark, ptr noundef nonnull @ct_gc_scan, ptr noundef null, ptr noundef nonnull %1) #38
  call void @gc_protect_sym(ptr noundef nonnull @sym_traced, ptr noundef nonnull @.str.8.551) #38
  %3 = load ptr, ptr @sym_traced, align 8, !tbaa !7
  %4 = call ptr @setvar(ptr noundef %3, ptr noundef null, ptr noundef null) #38
  call void @gc_protect_sym(ptr noundef nonnull @sym_begin, ptr noundef nonnull @.str.9.552) #38
  call void @gc_protect_sym(ptr noundef nonnull @sym_quote.540, ptr noundef nonnull @.str.10.553) #38
  %5 = load i64, ptr @tc_closure_traced, align 8, !tbaa !12
  call void @set_print_hooks(i64 noundef %5, ptr noundef nonnull @ct_prin1) #38
  %6 = load i64, ptr @tc_closure_traced, align 8, !tbaa !12
  call void @set_eval_hooks(i64 noundef %6, ptr noundef nonnull @ct_eval) #38
  call void @init_fsubr(ptr noundef nonnull @.str.11.554, ptr noundef nonnull @ltrace) #38
  call void @init_lsubr(ptr noundef nonnull @.str.12.555, ptr noundef nonnull @luntrace) #38
  %7 = call ptr @cintern(ptr noundef nonnull @.str.13.556) #38
  %8 = call ptr @cintern(ptr noundef nonnull @.str.14.557) #38
  %9 = call ptr @setvar(ptr noundef %7, ptr noundef %8, ptr noundef null) #38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @ct_gc_mark(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  tail call void @gc_mark(ptr noundef %4) #38
  %5 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @ct_gc_scan(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = tail call ptr @gc_relocate(ptr noundef %3) #38
  store ptr %4, ptr %2, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.obj, ptr %0, i64 0, i32 2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call ptr @gc_relocate(ptr noundef %6) #38
  store ptr %7, ptr %5, align 8, !tbaa !11
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind willreturn memory(argmem: read) }
attributes #31 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn }
attributes #34 = { mustprogress nofree nounwind optsize willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind optsize }
attributes #39 = { nounwind optsize willreturn memory(read) }
attributes #40 = { optsize }
attributes #41 = { noreturn nounwind optsize }
attributes #42 = { nounwind }
attributes #43 = { nounwind optsize returns_twice }
attributes #44 = { nounwind optsize allocsize(0) }
attributes #45 = { nounwind optsize willreturn memory(none) }
attributes #46 = { optsize "function-inline-cost-multiplier"="2" }
attributes #47 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0}
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
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !18, i64 2}
!17 = !{!"obj", !18, i64 0, !18, i64 2, !9, i64 8}
!18 = !{!"short", !9, i64 0}
!19 = !{!20, !8, i64 0}
!20 = !{!"catch_frame", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 216}
!21 = !{!20, !8, i64 8}
!22 = distinct !{!22, !15}
!23 = !{!17, !18, i64 0}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = !{!29, !8, i64 40}
!29 = !{!"user_type_hooks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!34, !13, i64 0}
!34 = !{!"tms", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!35 = !{!34, !13, i64 8}
!36 = !{!37, !37, i64 0}
!37 = !{!"double", !9, i64 0}
!38 = !{i64 0, i64 2}
!39 = distinct !{!39, !15}
!40 = !{!41, !8, i64 0}
!41 = !{!"gc_protected", !8, i64 0, !13, i64 8, !8, i64 16}
!42 = !{!41, !13, i64 8}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = !{!29, !8, i64 24}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = !{!29, !8, i64 16}
!49 = distinct !{!49, !15}
!50 = !{!51, !8, i64 0}
!51 = !{!"repl_hooks", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!52 = !{!51, !8, i64 8}
!53 = !{!51, !8, i64 16}
!54 = !{!51, !8, i64 24}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15}
!58 = !{!18, !18, i64 0}
!59 = distinct !{!59, !15}
!60 = !{!61, !8, i64 0}
!61 = !{!"gen_printio", !8, i64 0, !8, i64 8, !8, i64 16}
!62 = !{!61, !8, i64 8}
!63 = !{!61, !8, i64 16}
!64 = !{!65, !8, i64 0}
!65 = !{!"gen_readio", !8, i64 0, !8, i64 8, !8, i64 16}
!66 = !{!65, !8, i64 8}
!67 = !{!65, !8, i64 16}
!68 = !{!69, !13, i64 0}
!69 = !{!"timeval", !13, i64 0, !13, i64 8}
!70 = !{!69, !13, i64 8}
!71 = distinct !{!71, !15}
!72 = !{!29, !8, i64 32}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = !{!77, !77, i64 0}
!77 = !{!"int", !9, i64 0}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = !{!29, !8, i64 8}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = !{!29, !8, i64 0}
!87 = !{i64 0, i64 3}
!88 = !{!89, !8, i64 0}
!89 = !{!"rcsp_puts", !8, i64 0, !8, i64 8}
!90 = !{!89, !8, i64 8}
!91 = !{!41, !8, i64 16}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = distinct !{!101, !15}
!102 = distinct !{!102, !15}
!103 = !{!20, !8, i64 216}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !15}
!107 = distinct !{!107, !15}
!108 = distinct !{!108, !15}
!109 = distinct !{!109, !15}
!110 = distinct !{!110, !15}
!111 = distinct !{!111, !15}
!112 = distinct !{!112, !15}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = !{!29, !8, i64 56}
!118 = !{!29, !8, i64 64}
!119 = !{!29, !8, i64 72}
!120 = !{!29, !8, i64 48}
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
!132 = distinct !{!132, !15}
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
!145 = !{i64 0, i64 -9223372036854775808}
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
!157 = distinct !{!157, !15}
!158 = distinct !{!158, !15}
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
!191 = distinct !{!191, !15}
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
!212 = !{!213, !8, i64 0}
!213 = !{!"passwd", !8, i64 0, !8, i64 8, !77, i64 16, !77, i64 20, !8, i64 24, !8, i64 32, !8, i64 40}
!214 = !{!213, !8, i64 8}
!215 = !{!213, !77, i64 16}
!216 = !{!213, !77, i64 20}
!217 = !{!213, !8, i64 32}
!218 = !{!213, !8, i64 24}
!219 = !{!213, !8, i64 40}
!220 = distinct !{!220, !15}
!221 = distinct !{!221, !15}
!222 = distinct !{!222, !15}
!223 = distinct !{!223, !15}
!224 = !{!225, !8, i64 0}
!225 = !{!"group", !8, i64 0, !8, i64 8, !77, i64 16, !8, i64 24}
!226 = !{!225, !8, i64 24}
!227 = distinct !{!227, !15}
!228 = !{!229, !18, i64 16}
!229 = !{!"dirent", !13, i64 0, !13, i64 8, !18, i64 16, !9, i64 18, !9, i64 19}
!230 = !{!231, !13, i64 104}
!231 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !77, i64 24, !77, i64 28, !77, i64 32, !77, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !232, i64 72, !232, i64 88, !232, i64 104, !9, i64 120}
!232 = !{!"timespec", !13, i64 0, !13, i64 8}
!233 = !{!231, !13, i64 88}
!234 = !{!231, !13, i64 0}
!235 = !{!231, !13, i64 8}
!236 = !{!231, !77, i64 24}
!237 = !{!231, !13, i64 16}
!238 = !{!231, !77, i64 28}
!239 = !{!231, !77, i64 32}
!240 = !{!231, !13, i64 40}
!241 = !{!231, !13, i64 48}
!242 = !{!231, !13, i64 72}
!243 = !{!231, !13, i64 56}
!244 = !{!231, !13, i64 64}
!245 = !{!246, !13, i64 8}
!246 = !{!"utimbuf", !13, i64 0, !13, i64 8}
!247 = !{!246, !13, i64 0}
!248 = !{!249, !18, i64 0}
!249 = !{!"flock", !18, i64 0, !18, i64 2, !13, i64 8, !13, i64 16, !77, i64 24}
!250 = !{!249, !18, i64 2}
!251 = !{!249, !13, i64 8}
!252 = !{!249, !13, i64 16}
!253 = !{!249, !77, i64 24}
!254 = !{!255, !77, i64 20}
!255 = !{!"tm", !77, i64 0, !77, i64 4, !77, i64 8, !77, i64 12, !77, i64 16, !77, i64 20, !77, i64 24, !77, i64 28, !77, i64 32, !13, i64 40, !8, i64 48}
!256 = !{!255, !77, i64 16}
!257 = !{!255, !77, i64 12}
!258 = !{!255, !77, i64 8}
!259 = !{!255, !77, i64 4}
!260 = !{!255, !77, i64 0}
!261 = !{!255, !77, i64 24}
!262 = distinct !{!262, !15}
!263 = distinct !{!263, !15}
!264 = distinct !{!264, !15}
!265 = distinct !{!265, !15}
!266 = distinct !{!266, !15}
!267 = distinct !{!267, !15}
!268 = distinct !{!268, !15}
!269 = !{!255, !77, i64 28}
!270 = !{!255, !77, i64 32}
!271 = !{!272, !272, i64 0}
!272 = !{!"float", !9, i64 0}
!273 = distinct !{!273, !15}
!274 = distinct !{!274, !15}
!275 = distinct !{!275, !15}
!276 = distinct !{!276, !15}
!277 = distinct !{!277, !15}
!278 = distinct !{!278, !15}
!279 = distinct !{!279, !15}
!280 = distinct !{!280, !15}
!281 = distinct !{!281, !15}
!282 = distinct !{!282, !15}
