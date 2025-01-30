; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/unix-tbl/unix-tbl.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optstr = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1.2 = private unnamed_addr constant [4 x i8] c".TS\00", align 1
@sargc = internal global i32 0, align 4
@sargv = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-ms\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-mm\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-TX\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c".ds f. %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open file\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@options = internal global [21 x %struct.optstr] zeroinitializer, align 16
@.str.1.11 = private unnamed_addr constant [7 x i8] c"EXPAND\00", align 1
@.str.2.12 = private unnamed_addr constant [7 x i8] c"center\00", align 1
@.str.3.13 = private unnamed_addr constant [7 x i8] c"CENTER\00", align 1
@.str.4.14 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str.5.15 = private unnamed_addr constant [4 x i8] c"BOX\00", align 1
@.str.6.16 = private unnamed_addr constant [7 x i8] c"allbox\00", align 1
@.str.7.17 = private unnamed_addr constant [7 x i8] c"ALLBOX\00", align 1
@.str.8.18 = private unnamed_addr constant [10 x i8] c"doublebox\00", align 1
@.str.9.19 = private unnamed_addr constant [10 x i8] c"DOUBLEBOX\00", align 1
@.str.10.20 = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"doubleframe\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"DOUBLEFRAME\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"TAB\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"linesize\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"LINESIZE\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"delim\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"DELIM\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c".nr %d \\n(.s\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Misspelled global option\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c".nr %d %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Illegal option\00", align 1
@oncol = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c".rm\00", align 1
@.str.1.26 = private unnamed_addr constant [6 x i8] c" %02d\00", align 1
@.str.3.27 = private unnamed_addr constant [34 x i8] c"bad table specification character\00", align 1
@.str.4.28 = private unnamed_addr constant [32 x i8] c"too many lines in specification\00", align 1
@.str.5.29 = private unnamed_addr constant [17 x i8] c"no specification\00", align 1
@.str.6.30 = private unnamed_addr constant [38 x i8] c"dot not last character on format line\00", align 1
@.str.7.31 = private unnamed_addr constant [40 x i8] c"tried to widen table in T&, not allowed\00", align 1
@.str.8.32 = private unnamed_addr constant [31 x i8] c"first column can not be S-type\00", align 1
@.str.9.33 = private unnamed_addr constant [51 x i8] c".tm warning: can't span a-type cols, changed to l\0A\00", align 1
@.str.10.34 = private unnamed_addr constant [51 x i8] c".tm warning: can't span n-type cols, changed to c\0A\00", align 1
@.str.11.35 = private unnamed_addr constant [40 x i8] c"first row can not contain vertical span\00", align 1
@.str.12.36 = private unnamed_addr constant [26 x i8] c"too many columns in table\00", align 1
@.str.13.37 = private unnamed_addr constant [24 x i8] c"Nonterminated font name\00", align 1
@.str.14.38 = private unnamed_addr constant [21 x i8] c"point size too large\00", align 1
@.str.15.39 = private unnamed_addr constant [24 x i8] c"point size unreasonable\00", align 1
@.str.16.40 = private unnamed_addr constant [33 x i8] c"vertical spacing value too large\00", align 1
@.str.17.41 = private unnamed_addr constant [22 x i8] c"column width too long\00", align 1
@.str.18.42 = private unnamed_addr constant [32 x i8] c"EOF reading table specification\00", align 1
@nslin = internal global i32 0, align 4
@.str.45 = private unnamed_addr constant [4 x i8] c".TE\00", align 1
@.str.1.46 = private unnamed_addr constant [4 x i8] c".TC\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c".T&\00", align 1
@nclin = internal global i32 0, align 4
@.str.3.48 = private unnamed_addr constant [3 x i8] c"T{\00", align 1
@.str.4.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5.50 = private unnamed_addr constant [43 x i8] c"Vertical spanning in first row not allowed\00", align 1
@.str.6.51 = private unnamed_addr constant [3 x i8] c"\\^\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c".nr %d 0\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [16 x i8] c".%02d\0A.rm %02d\0A\00", align 1
@.str.2.56 = private unnamed_addr constant [19 x i8] c".nr %d 0\0A.nr %d 0\0A\00", align 1
@.str.3.57 = private unnamed_addr constant [32 x i8] c".if \\n(%c->\\n(%d .nr %d \\n(%c-\0A\00", align 1
@.str.4.58 = private unnamed_addr constant [8 x i8] c".nr %d \00", align 1
@.str.6.59 = private unnamed_addr constant [30 x i8] c".if \\n(%d<\\n(%d .nr %d \\n(%d\0A\00", align 1
@.str.7.60 = private unnamed_addr constant [17 x i8] c".nr %d \\w%c%s%c\0A\00", align 1
@.str.8.61 = private unnamed_addr constant [35 x i8] c".if \\n(%d>=\\n(%d .nr %d \\n(%du+2n\0A\00", align 1
@.str.9.62 = private unnamed_addr constant [14 x i8] c".nr %d \\n(%d\0A\00", align 1
@.str.10.63 = private unnamed_addr constant [20 x i8] c".nr %d \\n(%d+\\n(%d\0A\00", align 1
@.str.11.64 = private unnamed_addr constant [30 x i8] c".if \\n(%d>\\n(%d .nr %d \\n(%d\0A\00", align 1
@.str.12.65 = private unnamed_addr constant [41 x i8] c".if \\n(%d<\\n(%d .nr %d +(\\n(%d-\\n(%d)/2\0A\00", align 1
@.str.13.66 = private unnamed_addr constant [12 x i8] c".nr %d %sn\0A\00", align 1
@.str.14.67 = private unnamed_addr constant [7 x i8] c"-\\n(%d\00", align 1
@expflg = internal global i32 0, align 4
@.str.15.68 = private unnamed_addr constant [5 x i8] c"-%dn\00", align 1
@sep = internal global [20 x i32] zeroinitializer, align 16
@.str.16.69 = private unnamed_addr constant [29 x i8] c".if \\n(%d>0 .nr %d \\n(%d/%d\0A\00", align 1
@.str.17.70 = private unnamed_addr constant [22 x i8] c".if \\n(%d<0 .nr %d 0\0A\00", align 1
@.str.18.71 = private unnamed_addr constant [17 x i8] c".nr %d +\\n(%d/2\0A\00", align 1
@.str.19.72 = private unnamed_addr constant [15 x i8] c".nr %d +\\n(%d\0A\00", align 1
@evenflg = internal global i32 0, align 4
@evenup = internal global [20 x i32] zeroinitializer, align 16
@.str.20.73 = private unnamed_addr constant [36 x i8] c".nr %d (100*\\n(%d/\\n(%d)*\\n(%d/100\0A\00", align 1
@.str.21.74 = private unnamed_addr constant [9 x i8] c".nr %d 0\00", align 1
@.str.22.75 = private unnamed_addr constant [7 x i8] c"+\\n(%d\00", align 1
@.str.23.76 = private unnamed_addr constant [20 x i8] c".nr %d \\n(.l-\\n(%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c".nr %d \\n(%d/%d\0A\00", align 1
@.str.25.77 = private unnamed_addr constant [11 x i8] c".nr %d 1n\0A\00", align 1
@left1flg = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c".nr %d \\n(%d+(%d*\\n(%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c".nr %d (\\n(%d+\\n(%d)/2\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c".nr TW \\n(%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c".nr TW +%d*\\n(%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [79 x i8] c".if t .if \\n(TW>\\n(.li .tm Table at line %d file %s is too wide - \\n(TW units\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"\\w%c\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\\n(%c-\00", align 1
@ctrflg = internal global i32 0, align 4
@.str.80 = private unnamed_addr constant [14 x i8] c".nr #I \\n(.i\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [32 x i8] c".in +(\\n(.lu-\\n(TWu-\\n(.iu)/2u\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [11 x i8] c".fc %c %c\0A\00", align 1
@.str.3.83 = private unnamed_addr constant [12 x i8] c".nr #T 0-1\0A\00", align 1
@.str.4.84 = private unnamed_addr constant [5 x i8] c".fc\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [10 x i8] c".nr T. 1\0A\00", align 1
@.str.6.86 = private unnamed_addr constant [7 x i8] c".T# 1\0A\00", align 1
@.str.7.87 = private unnamed_addr constant [12 x i8] c".in \\n(#Iu\0A\00", align 1
@.str.8.109 = private unnamed_addr constant [5 x i8] c".ta \00", align 1
@.str.9.110 = private unnamed_addr constant [8 x i8] c"\\n(%du \00", align 1
@.str.11.108 = private unnamed_addr constant [13 x i8] c".ne %dv+%dp\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [13 x i8] c".nr #%c 0-1\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [12 x i8] c".nr #a 0-1\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [5 x i8] c".eo\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [8 x i8] c".de T#\0A\00", align 1
@.str.16.92 = private unnamed_addr constant [11 x i8] c".ds #d .d\0A\00", align 1
@.str.17.93 = private unnamed_addr constant [33 x i8] c".if \\(ts\\n(.z\\(ts\\(ts .ds #d nl\0A\00", align 1
@.str.18.94 = private unnamed_addr constant [8 x i8] c".mk ##\0A\00", align 1
@.str.19.95 = private unnamed_addr constant [12 x i8] c".nr ## -1v\0A\00", align 1
@.str.20.96 = private unnamed_addr constant [7 x i8] c".ls 1\0A\00", align 1
@.str.21.97 = private unnamed_addr constant [28 x i8] c".if \\n(#T>=0 .nr #%c \\n(#T\0A\00", align 1
@.str.22.98 = private unnamed_addr constant [29 x i8] c".if \\n(T. .vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.23.99 = private unnamed_addr constant [11 x i8] c".if \\n(T. \00", align 1
@.str.24.100 = private unnamed_addr constant [16 x i8] c"\0A.if \\n(T. .vs\0A\00", align 1
@.str.25.101 = private unnamed_addr constant [22 x i8] c".if \\n(#%c>=0 .sp -1\0A\00", align 1
@.str.26.102 = private unnamed_addr constant [15 x i8] c".if \\n(#%c>=0 \00", align 1
@.str.27.103 = private unnamed_addr constant [13 x i8] c"\\h'|\\n(TWu'\0A\00", align 1
@.str.28.104 = private unnamed_addr constant [21 x i8] c".if \\n(#a>=0 .sp -1\0A\00", align 1
@.str.29.105 = private unnamed_addr constant [25 x i8] c".if \\n(#a>=0 \\h'|\\n(TWu'\00", align 1
@.str.30.106 = private unnamed_addr constant [5 x i8] c".ls\0A\00", align 1
@.str.31.107 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c".ec\0A\00", align 1
@watchout = internal global i32 0, align 4
@once = internal global i32 0, align 4
@.str.113 = private unnamed_addr constant [20 x i8] c".ne \\n(%c|u+\\n(.Vu\0A\00", align 1
@.str.1.114 = private unnamed_addr constant [9 x i8] c".mk #%c\0A\00", align 1
@.str.2.115 = private unnamed_addr constant [18 x i8] c".nr #^ \\n(\\*(#du\0A\00", align 1
@.str.3.116 = private unnamed_addr constant [14 x i8] c".nr #- \\n(#^\0A\00", align 1
@font = internal global [100 x [20 x [2 x i8]]] zeroinitializer, align 16
@.str.4.117 = private unnamed_addr constant [63 x i8] c".if (\\n(%c|+\\n(^%c-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(^%c-\\n(#--1v)\0A\00", align 1
@.str.5.118 = private unnamed_addr constant [61 x i8] c".if (\\n(%c|+\\n(#^-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(#^-\\n(#--1v)\0A\00", align 1
@.str.6.119 = private unnamed_addr constant [14 x i8] c".nr %d \\n(.v\0A\00", align 1
@.str.7.120 = private unnamed_addr constant [19 x i8] c".vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.8.121 = private unnamed_addr constant [15 x i8] c".nr %2d \\n(.f\0A\00", align 1
@.str.9.122 = private unnamed_addr constant [11 x i8] c".nr 35 1m\0A\00", align 1
@.str.10.123 = private unnamed_addr constant [3 x i8] c"\\&\00", align 1
@rightl = internal global i32 0, align 4
@.str.11.124 = private unnamed_addr constant [12 x i8] c"\\h'|\\n(%du'\00", align 1
@csize = internal global [100 x [20 x [4 x i8]]] zeroinitializer, align 16
@.str.12.125 = private unnamed_addr constant [23 x i8] c"\\v'-(\\n(\\*(#du-\\n(^%cu\00", align 1
@.str.13.126 = private unnamed_addr constant [23 x i8] c"-((\\n(#-u-\\n(^%cu)/2u)\00", align 1
@.str.15.127 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.17.128 = private unnamed_addr constant [44 x i8] c"%s: line %d: Data ignored on table line %d\0A\00", align 1
@.str.18.129 = private unnamed_addr constant [16 x i8] c"\\l'|\\n(%du\\&%s'\00", align 1
@ctop = internal global [100 x [20 x i32]] zeroinitializer, align 16
@topat = internal global [20 x i32] zeroinitializer, align 16
@.str.19.130 = private unnamed_addr constant [22 x i8] c"\\v'(\\n(\\*(#du-\\n(^%cu\00", align 1
@.str.20.131 = private unnamed_addr constant [10 x i8] c"\0A.sp-1\0A\\&\00", align 1
@.str.22.132 = private unnamed_addr constant [12 x i8] c".vs \\n(%du\0A\00", align 1
@.str.23.133 = private unnamed_addr constant [16 x i8] c".nr ^%c \\n(#^u\0A\00", align 1
@.str.25.146 = private unnamed_addr constant [9 x i8] c"\\f\\n(%2d\00", align 1
@.str.26.147 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.27.134 = private unnamed_addr constant [8 x i8] c".mk ##\0A\00", align 1
@.str.28.135 = private unnamed_addr constant [14 x i8] c".nr %d \\n(##\0A\00", align 1
@.str.29.136 = private unnamed_addr constant [16 x i8] c".sp |\\n(##u-1v\0A\00", align 1
@.str.30.137 = private unnamed_addr constant [8 x i8] c".nr %d \00", align 1
@.str.31.138 = private unnamed_addr constant [28 x i8] c"(\\n(%du+\\n(%du-\\n(%c-u)/2u\0A\00", align 1
@.str.32.139 = private unnamed_addr constant [8 x i8] c"\\n(%du\0A\00", align 1
@.str.33.140 = private unnamed_addr constant [16 x i8] c"\\n(%du-\\n(%c-u\0A\00", align 1
@.str.34.141 = private unnamed_addr constant [13 x i8] c".in +\\n(%du\0A\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c".sp |\\n(^%cu\0A\00", align 1
@.str.36.143 = private unnamed_addr constant [32 x i8] c".nr %d \\n(#-u-\\n(^%c-\\n(%c|+1v\0A\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c".if \\n(%d>0 .sp \\n(%du/2u\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c".%c+\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c".in -\\n(%du\0A\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c".mk %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c".if \\n(%d>\\n(%d .nr %d \\n(%d\0A\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c".sp |\\n(%du\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c".sp -1\0A\00", align 1
@.str.45.142 = private unnamed_addr constant [8 x i8] c"\\f(%.2s\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\f%.2s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\\s%s\00", align 1
@useln = internal unnamed_addr global i32 0, align 4
@.str.152 = private unnamed_addr constant [26 x i8] c"Wierd.  No data in table.\00", align 1
@.str.1.153 = private unnamed_addr constant [32 x i8] c"Wierd.  No real lines in table.\00", align 1
@leftover = internal global i32 0, align 4
@cspace = internal global ptr null, align 8
@cstore = internal global ptr null, align 8
@.str.2.154 = private unnamed_addr constant [4 x i8] c".TE\00", align 1
@.str.3.155 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rused = internal global [20 x i32] zeroinitializer, align 16
@lused = internal global [20 x i32] zeroinitializer, align 16
@used = internal global [20 x i32] zeroinitializer, align 16
@spcount = internal global i32 0, align 4
@spvecs = internal global [20 x ptr] zeroinitializer, align 16
@.str.162 = private unnamed_addr constant [29 x i8] c"Too many characters in table\00", align 1
@.str.1.163 = private unnamed_addr constant [24 x i8] c"no space for characters\00", align 1
@tpcount = internal global i32 -1, align 4
@thisvec = internal global ptr null, align 8
@tpvecs = internal global [50 x ptr] zeroinitializer, align 16
@.str.2.166 = private unnamed_addr constant [21 x i8] c"no space for vectors\00", align 1
@F2 = internal global i32 0, align 4
@F1 = internal global i32 0, align 4
@.str.171 = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07!%&#/?,:;<=>@`^~_{}+-*ABCDEFGHIJKMNOPQRSTUVWXYZabcdefgjkoqrstwxyz\00", align 1
@.str.1.172 = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07:_~^`@;,<=>#%&!/?{}+-*ABCDEFGHIJKMNOPQRSTUVWXZabcdefgjkoqrstuwxyz\00", align 1
@.str.2.173 = private unnamed_addr constant [47 x i8] c"couldn't find characters to use for delimiters\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.178 = private unnamed_addr constant [18 x i8] c"\0A%s: line %d: %s\0A\00", align 1
@ifile = internal global ptr @.str, align 8
@.str.1.179 = private unnamed_addr constant [11 x i8] c"tbl quits\0A\00", align 1
@tabin = internal global ptr null, align 8
@backup = internal global [500 x i8] zeroinitializer, align 16
@backp = internal global ptr @backup, align 8
@.str.2.184 = private unnamed_addr constant [16 x i8] c"too much backup\00", align 1
@.str.3.187 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1
@.str.190 = private unnamed_addr constant [8 x i8] c".de %d\0A\00", align 1
@.str.1.191 = private unnamed_addr constant [11 x i8] c".ps \\n(.s\0A\00", align 1
@.str.2.192 = private unnamed_addr constant [12 x i8] c".vs \\n(.vu\0A\00", align 1
@.str.3.193 = private unnamed_addr constant [12 x i8] c".in \\n(.iu\0A\00", align 1
@.str.4.194 = private unnamed_addr constant [15 x i8] c".if \\n(.u .fi\0A\00", align 1
@.str.5.195 = private unnamed_addr constant [15 x i8] c".if \\n(.j .ad\0A\00", align 1
@.str.6.196 = private unnamed_addr constant [17 x i8] c".if \\n(.j=0 .na\0A\00", align 1
@.str.7.197 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.8.198 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.9.199 = private unnamed_addr constant [10 x i8] c".nr #~ 0\0A\00", align 1
@.str.10.200 = private unnamed_addr constant [19 x i8] c".if n .nr #~ 0.6n\0A\00", align 1
@.str.11.203 = private unnamed_addr constant [5 x i8] c".%d\0A\00", align 1
@.str.12.206 = private unnamed_addr constant [11 x i8] c".nr #%c 0\0A\00", align 1
@.str.13.207 = private unnamed_addr constant [9 x i8] c".rm %c+\0A\00", align 1
@.str.14.208 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@last = internal global ptr null, align 8
@.str.15.211 = private unnamed_addr constant [11 x i8] c".ds #d .d\0A\00", align 1
@.str.16.212 = private unnamed_addr constant [33 x i8] c".if \\(ts\\n(.z\\(ts\\(ts .ds #d nl\0A\00", align 1
@.str.17.215 = private unnamed_addr constant [35 x i8] c".if \\n+(b.=1 .nr d. \\n(.c-\\n(c.-1\0A\00", align 1
@iline = internal global i32 1, align 4
@linstart = internal global i32 0, align 4
@.str.18.218 = private unnamed_addr constant [36 x i8] c".if \\n-(b.=0 .nr c. \\n(.c-\\n(d.-%d\0A\00", align 1
@.str.19.221 = private unnamed_addr constant [5 x i8] c".fc\0A\00", align 1
@texname = internal global i32 97, align 4
@.str.224 = private unnamed_addr constant [31 x i8] c"Too many text block diversions\00", align 1
@textflg = internal global i32 0, align 4
@.str.1.225 = private unnamed_addr constant [15 x i8] c".nr %d \\n(.lu\0A\00", align 1
@.str.2.226 = private unnamed_addr constant [5 x i8] c".eo\0A\00", align 1
@.str.3.227 = private unnamed_addr constant [10 x i8] c".am %02d\0A\00", align 1
@.str.4.228 = private unnamed_addr constant [5 x i8] c".br\0A\00", align 1
@.str.5.229 = private unnamed_addr constant [9 x i8] c".di %c+\0A\00", align 1
@.str.6.230 = private unnamed_addr constant [21 x i8] c".nr %d \\n(.f\0A.ft %s\0A\00", align 1
@.str.7.231 = private unnamed_addr constant [11 x i8] c".ft \\n(.f\0A\00", align 1
@vsize = internal global [100 x [20 x [4 x i8]]] zeroinitializer, align 16
@.str.8.232 = private unnamed_addr constant [14 x i8] c".nr %d \\n(.v\0A\00", align 1
@.str.9.233 = private unnamed_addr constant [8 x i8] c"\\n(.s+2\00", align 1
@.str.10.234 = private unnamed_addr constant [8 x i8] c".ps %s\0A\00", align 1
@.str.11.235 = private unnamed_addr constant [8 x i8] c".vs %s\0A\00", align 1
@.str.12.236 = private unnamed_addr constant [37 x i8] c".if \\n(%du>\\n(.vu .sp \\n(%du-\\n(.vu\0A\00", align 1
@cll = internal global [20 x [10 x i8]] zeroinitializer, align 16
@.str.13.237 = private unnamed_addr constant [9 x i8] c".ll %sn\0A\00", align 1
@.str.14.238 = private unnamed_addr constant [20 x i8] c".ll \\n(%du*%du/%du\0A\00", align 1
@.str.15.239 = private unnamed_addr constant [28 x i8] c".if \\n(.l<\\n(%d .ll \\n(%du\0A\00", align 1
@.str.16.240 = private unnamed_addr constant [9 x i8] c".ll -2n\0A\00", align 1
@.str.17.241 = private unnamed_addr constant [7 x i8] c".in 0\0A\00", align 1
@tab = internal global i32 9, align 4
@.str.18.242 = private unnamed_addr constant [3 x i8] c"T}\00", align 1
@.str.19.243 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20.244 = private unnamed_addr constant [11 x i8] c".ft \\n(%d\0A\00", align 1
@.str.21.245 = private unnamed_addr constant [13 x i8] c".br\0A.ps\0A.vs\0A\00", align 1
@.str.22.246 = private unnamed_addr constant [5 x i8] c".di\0A\00", align 1
@.str.23.247 = private unnamed_addr constant [15 x i8] c".nr %c| \\n(dn\0A\00", align 1
@.str.24.248 = private unnamed_addr constant [15 x i8] c".nr %c- \\n(dl\0A\00", align 1
@.str.25.249 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.26.250 = private unnamed_addr constant [7 x i8] c".ec \\\0A\00", align 1
@texstr = internal global [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWYXZ0123456789\00", align 16
@texct = internal global i32 0, align 4
@.str.27.253 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.28.254 = private unnamed_addr constant [12 x i8] c".ll \\n(%du\0A\00", align 1
@exstore = internal global ptr null, align 8
@exlim = internal global ptr null, align 8
@delim1 = internal global i32 0, align 4
@delim2 = internal global i32 0, align 4
@style = internal global [100 x [20 x i32]] zeroinitializer, align 16
@.str.283 = private unnamed_addr constant [7 x i8] c"\\h'|0'\00", align 1
@.str.1.284 = private unnamed_addr constant [25 x i8] c"\\h'(|\\n(%du+|\\n(%du)/2u'\00", align 1
@ncol = internal global i32 0, align 4
@pr1403 = internal global i32 0, align 4
@.str.313 = private unnamed_addr constant [32 x i8] c".nr %d \\n(.v\0A.vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.2.314 = private unnamed_addr constant [12 x i8] c".vs \\n(%du\0A\00", align 1
@.str.3.294 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.293 = private unnamed_addr constant [9 x i8] c"\\v'-.5m'\00", align 1
@.str.5.295 = private unnamed_addr constant [8 x i8] c"\\v'%dp'\00", align 1
@.str.6.296 = private unnamed_addr constant [3 x i8] c"1p\00", align 1
@.str.7.297 = private unnamed_addr constant [4 x i8] c"-1p\00", align 1
@.str.8.298 = private unnamed_addr constant [7 x i8] c"\\h'%s'\00", align 1
@.str.9.299 = private unnamed_addr constant [4 x i8] c"+1p\00", align 1
@.str.10.300 = private unnamed_addr constant [12 x i8] c"\\h'|\\n(%du'\00", align 1
@.str.11.301 = private unnamed_addr constant [8 x i8] c"\\s\\n(%d\00", align 1
@.str.12.302 = private unnamed_addr constant [15 x i8] c"\\v'-\\n(%dp/6u'\00", align 1
@.str.13.303 = private unnamed_addr constant [12 x i8] c"\\l'|\\n(%du'\00", align 1
@.str.14.304 = private unnamed_addr constant [5 x i8] c"\\(ul\00", align 1
@.str.16.305 = private unnamed_addr constant [5 x i8] c"\\(ru\00", align 1
@.str.17.306 = private unnamed_addr constant [16 x i8] c"\\l'|\\n(TWu%s%s'\00", align 1
@.str.18.307 = private unnamed_addr constant [29 x i8] c"\\l'(|\\n(%du+|\\n(%du)/2u%s%s'\00", align 1
@.str.19.308 = private unnamed_addr constant [14 x i8] c"\\v'\\n(%dp/6u'\00", align 1
@.str.20.309 = private unnamed_addr constant [4 x i8] c"\\s0\00", align 1
@.str.21.310 = private unnamed_addr constant [9 x i8] c"\\v'+.5m'\00", align 1
@boxflg = internal global i32 0, align 4
@allflg = internal global i32 0, align 4
@dboxflg = internal global i32 0, align 4
@.str.22.325 = private unnamed_addr constant [4 x i8] c".TH\00", align 1
@stynum = internal global [201 x i32] zeroinitializer, align 16
@lefline = internal global [100 x [20 x i32]] zeroinitializer, align 16
@switch.table.drawline = private unnamed_addr constant [3 x ptr] [ptr @.str.7.297, ptr @.str.7.297, ptr @.str.6.296], align 8
@instead = internal global [200 x ptr] zeroinitializer, align 16
@tabout = internal global ptr null, align 8
@.str.328 = private unnamed_addr constant [8 x i8] c"\\h'%dp'\00", align 1
@nlin = internal global i32 0, align 4
@fullbot = internal global [200 x i32] zeroinitializer, align 16
@.str.1.329 = private unnamed_addr constant [7 x i8] c"1v-.5m\00", align 1
@.str.2.330 = private unnamed_addr constant [4 x i8] c".5m\00", align 1
@.str.3.331 = private unnamed_addr constant [7 x i8] c"\\v'%s'\00", align 1
@.str.4.332 = private unnamed_addr constant [8 x i8] c"\\v'%dp'\00", align 1
@.str.5.333 = private unnamed_addr constant [8 x i8] c"\\s\\n(%d\00", align 1
@linsize = internal global i32 0, align 4
@.str.6.334 = private unnamed_addr constant [15 x i8] c"\\v'-\\n(%dp/6u'\00", align 1
@.str.7.335 = private unnamed_addr constant [12 x i8] c"\\h'-\\n(#~u'\00", align 1
@.str.8.338 = private unnamed_addr constant [15 x i8] c"\\L'|\\n(#%cu-%s\00", align 1
@linestop = internal global [200 x i32] zeroinitializer, align 16
@.str.9.336 = private unnamed_addr constant [3 x i8] c"1v\00", align 1
@.str.10.337 = private unnamed_addr constant [7 x i8] c"\\n(35u\00", align 1
@.str.11.339 = private unnamed_addr constant [6 x i8] c"-(%s)\00", align 1
@.str.12.342 = private unnamed_addr constant [6 x i8] c"%s%dp\00", align 1
@.str.13.340 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14.341 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15.343 = private unnamed_addr constant [28 x i8] c"'\\s0\\v'\\n(\\*(#du-\\n(#%cu+%s\00", align 1
@.str.16.344 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.18.345 = private unnamed_addr constant [14 x i8] c"\\v'\\n(%dp/6u'\00", align 1
@table = internal global [200 x ptr] zeroinitializer, align 16

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull @badsig) #22
  %4 = tail call i32 (...) @init_options() #22
  %5 = tail call i32 @tbl(i32 noundef %0, ptr noundef %1) #23
  tail call void @exit(i32 noundef 0) #24
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @badsig() #0 {
  %1 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #22
  tail call void @exit(i32 noundef 0) #24
  unreachable
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @tbl(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #25
  %4 = load ptr, ptr @stdin, align 8, !tbaa !7
  store ptr %4, ptr @tabin, align 8, !tbaa !7
  %5 = load ptr, ptr @stdout, align 8, !tbaa !7
  store ptr %5, ptr @tabout, align 8, !tbaa !7
  %6 = add nsw i32 %0, -1
  store i32 %6, ptr @sargc, align 4, !tbaa !11
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %7, ptr @sargv, align 8, !tbaa !7
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @swapin() #23, !range !13
  br label %11

11:                                               ; preds = %9, %2
  br label %12

12:                                               ; preds = %21, %11
  %13 = call ptr @gets1(ptr noundef nonnull %3) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @tabout, align 8, !tbaa !7
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #23
  %18 = call i32 @prefix(ptr noundef nonnull @.str.1.2, ptr noundef nonnull %3) #22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  call void @tableput() #22
  br label %21

21:                                               ; preds = %20, %15
  br label %12, !llvm.loop !14

22:                                               ; preds = %12
  %23 = load ptr, ptr @tabin, align 8, !tbaa !7
  %24 = call i32 @fclose(ptr noundef %23) #23
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #25
  ret i32 0
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal i32 @swapin() #2 {
  %1 = load i32, ptr @sargc, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %56

3:                                                ; preds = %0
  %4 = load ptr, ptr @sargv, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %26, %3
  %6 = phi ptr [ %4, %3 ], [ %30, %26 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %9 = icmp eq i8 %8, 45
  br i1 %9, label %10, label %32

10:                                               ; preds = %5
  %11 = tail call i32 @match(ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #22
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr @sargv, align 8, !tbaa !7
  br i1 %12, label %15, label %14

14:                                               ; preds = %10
  %.lcssa = phi ptr [ %13, %10 ]
  store ptr @.str.3, ptr %.lcssa, align 8, !tbaa !7
  br label %32

15:                                               ; preds = %10
  %16 = load ptr, ptr %13, align 8, !tbaa !7
  %17 = tail call i32 @match(ptr noundef nonnull @.str.4, ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr @sargv, align 8, !tbaa !7
  br i1 %18, label %21, label %20

20:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %19, %15 ]
  store ptr @.str.5, ptr %.lcssa2, align 8, !tbaa !7
  br label %32

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !7
  %23 = tail call i32 @match(ptr noundef nonnull @.str.6, ptr noundef %22) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 1, ptr @pr1403, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i32, ptr @sargc, align 4, !tbaa !11
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr @sargc, align 4, !tbaa !11
  %29 = load ptr, ptr @sargv, align 8, !tbaa !7
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr %30, ptr @sargv, align 8, !tbaa !7
  %31 = icmp sgt i32 %27, 1
  br i1 %31, label %5, label %56, !llvm.loop !17

32:                                               ; preds = %20, %14, %5
  %33 = load i32, ptr @sargc, align 4, !tbaa !11
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %56, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @tabin, align 8, !tbaa !7
  %37 = load ptr, ptr @stdin, align 8, !tbaa !7
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @fclose(ptr noundef %36) #23
  br label %41

41:                                               ; preds = %39, %35
  %42 = load ptr, ptr @sargv, align 8, !tbaa !7
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  store ptr %43, ptr @ifile, align 8, !tbaa !7
  %44 = tail call noalias ptr @fopen(ptr noundef %43, ptr noundef nonnull @.str.7) #23
  store ptr %44, ptr @tabin, align 8, !tbaa !7
  store i32 1, ptr @iline, align 4, !tbaa !11
  %45 = load ptr, ptr @tabout, align 8, !tbaa !7
  %46 = load ptr, ptr @ifile, align 8, !tbaa !7
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.8, ptr noundef %46) #23
  %48 = load ptr, ptr @tabin, align 8, !tbaa !7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  tail call void @error(ptr noundef nonnull @.str.9) #22
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, ptr @sargc, align 4, !tbaa !11
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr @sargc, align 4, !tbaa !11
  %54 = load ptr, ptr @sargv, align 8, !tbaa !7
  %55 = getelementptr inbounds ptr, ptr %54, i64 1
  store ptr %55, ptr @sargv, align 8, !tbaa !7
  br label %56

56:                                               ; preds = %51, %32, %26, %0
  %57 = phi i32 [ 1, %51 ], [ 0, %32 ], [ 0, %0 ], [ 0, %26 ]
  ret i32 %57
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal void @tableput() #2 {
  tail call void @saveline() #22
  tail call void @savefill() #22
  tail call void @ifdivert() #22
  tail call void @cleanfc() #22
  tail call void @getcomm() #22
  tail call void @getspec() #22
  tail call void @gettbl() #22
  tail call void @getstop() #22
  tail call void @checkuse() #22
  tail call void @choochar() #22
  tail call void @maktab() #22
  tail call void @runout() #22
  tail call void @release() #22
  tail call void @rstofill() #22
  tail call void @endoff() #22
  tail call void @restline() #22
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_options() #6 {
  store ptr @.str.10, ptr @options, align 16, !tbaa !18
  store ptr @expflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 0, i32 1), align 8, !tbaa !20
  store ptr @.str.1.11, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 1), align 16, !tbaa !18
  store ptr @expflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 1, i32 1), align 8, !tbaa !20
  store ptr @.str.2.12, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 2), align 16, !tbaa !18
  store ptr @ctrflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 2, i32 1), align 8, !tbaa !20
  store ptr @.str.3.13, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 3), align 16, !tbaa !18
  store ptr @ctrflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 3, i32 1), align 8, !tbaa !20
  store ptr @.str.4.14, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 4), align 16, !tbaa !18
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 4, i32 1), align 8, !tbaa !20
  store ptr @.str.5.15, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 5), align 16, !tbaa !18
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 5, i32 1), align 8, !tbaa !20
  store ptr @.str.6.16, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 6), align 16, !tbaa !18
  store ptr @allflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 6, i32 1), align 8, !tbaa !20
  store ptr @.str.7.17, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 7), align 16, !tbaa !18
  store ptr @allflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 7, i32 1), align 8, !tbaa !20
  store ptr @.str.8.18, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 8), align 16, !tbaa !18
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 8, i32 1), align 8, !tbaa !20
  store ptr @.str.9.19, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 9), align 16, !tbaa !18
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 9, i32 1), align 8, !tbaa !20
  store ptr @.str.10.20, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 10), align 16, !tbaa !18
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 10, i32 1), align 8, !tbaa !20
  store ptr @.str.11, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 11), align 16, !tbaa !18
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 11, i32 1), align 8, !tbaa !20
  store ptr @.str.12, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 12), align 16, !tbaa !18
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 12, i32 1), align 8, !tbaa !20
  store ptr @.str.13, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 13), align 16, !tbaa !18
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 13, i32 1), align 8, !tbaa !20
  store ptr @.str.14, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 14), align 16, !tbaa !18
  store ptr @tab, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 14, i32 1), align 8, !tbaa !20
  store ptr @.str.15, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 15), align 16, !tbaa !18
  store ptr @tab, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 15, i32 1), align 8, !tbaa !20
  store ptr @.str.16, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 16), align 16, !tbaa !18
  store ptr @linsize, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 16, i32 1), align 8, !tbaa !20
  store ptr @.str.17, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 17), align 16, !tbaa !18
  store ptr @linsize, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 17, i32 1), align 8, !tbaa !20
  store ptr @.str.18, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 18), align 16, !tbaa !18
  store ptr @delim1, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 18, i32 1), align 8, !tbaa !20
  store ptr @.str.19, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 19), align 16, !tbaa !18
  store ptr @delim1, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 19, i32 1), align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 20), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind optsize uwtable
define internal void @getcomm() #2 {
  %1 = alloca [200 x i8], align 16
  %2 = alloca [25 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %2) #25
  %3 = load ptr, ptr @options, align 16, !tbaa !18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %0
  %6 = phi ptr [ %9, %5 ], [ @options, %0 ]
  %7 = getelementptr inbounds %struct.optstr, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  store i32 0, ptr %8, align 4, !tbaa !11
  %9 = getelementptr inbounds %struct.optstr, ptr %6, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !21

12:                                               ; preds = %5, %0
  store i32 0, ptr @texct, align 4, !tbaa !11
  %13 = load i8, ptr @texstr, align 1, !tbaa !16
  %14 = sext i8 %13 to i32
  store i32 %14, ptr @texname, align 4, !tbaa !11
  store i32 9, ptr @tab, align 4, !tbaa !11
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 33) #23
  %16 = call ptr @gets1(ptr noundef nonnull %1) #22
  %17 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 59) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %107, label %19

19:                                               ; preds = %12
  %20 = load i8, ptr %1, align 16, !tbaa !16
  %21 = icmp eq i8 %20, 59
  br i1 %21, label %104, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds [25 x i8], ptr %2, i64 0, i64 1
  br label %24

24:                                               ; preds = %99, %22
  %25 = phi i8 [ %20, %22 ], [ %102, %99 ]
  %26 = phi ptr [ %1, %22 ], [ %101, %99 ]
  %27 = sext i8 %25 to i32
  %28 = call i32 @letter(i32 noundef %27) #22
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %99, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 0, i32 1), align 8, !tbaa !20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %98, label %33

33:                                               ; preds = %93, %30
  %34 = phi ptr [ %94, %93 ], [ @options, %30 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = call i32 @prefix(ptr noundef %35, ptr noundef nonnull %26) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %93, label %38

38:                                               ; preds = %33
  %.lcssa = phi ptr [ %34, %33 ]
  %39 = getelementptr inbounds %struct.optstr, ptr %.lcssa, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !20
  store i32 1, ptr %40, align 4, !tbaa !11
  %41 = load ptr, ptr %.lcssa, align 8, !tbaa !18
  %42 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #26
  %43 = getelementptr inbounds i8, ptr %26, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !16
  %45 = sext i8 %44 to i32
  %46 = call i32 @letter(i32 noundef %45) #22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  call void @error(ptr noundef nonnull @.str.21) #22
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %57, %49
  %51 = phi ptr [ %58, %57 ], [ %43, %49 ]
  %52 = load i8, ptr %51, align 1, !tbaa !16
  switch i8 %52, label %67 [
    i8 32, label %57
    i8 40, label %53
  ]

53:                                               ; preds = %50
  %.lcssa2 = phi ptr [ %51, %50 ]
  %54 = getelementptr inbounds i8, ptr %.lcssa2, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !16
  %56 = icmp eq i8 %55, 41
  br i1 %56, label %69, label %59

57:                                               ; preds = %50
  %58 = getelementptr inbounds i8, ptr %51, i64 1
  br label %50, !llvm.loop !22

59:                                               ; preds = %59, %53
  %60 = phi i8 [ %65, %59 ], [ %55, %53 ]
  %61 = phi ptr [ %64, %59 ], [ %54, %53 ]
  %62 = phi ptr [ %63, %59 ], [ %2, %53 ]
  %63 = getelementptr inbounds i8, ptr %62, i64 1
  store i8 %60, ptr %62, align 1, !tbaa !16
  %64 = getelementptr inbounds i8, ptr %61, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !16
  %66 = icmp eq i8 %65, 41
  br i1 %66, label %69, label %59, !llvm.loop !23

67:                                               ; preds = %50
  %.lcssa1 = phi ptr [ %51, %50 ]
  %68 = getelementptr inbounds i8, ptr %.lcssa1, i64 -1
  br label %69

69:                                               ; preds = %67, %59, %53
  %70 = phi ptr [ %2, %67 ], [ %2, %53 ], [ %63, %59 ]
  %71 = phi ptr [ %68, %67 ], [ %54, %53 ], [ %64, %59 ]
  %72 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 0, ptr %70, align 1, !tbaa !16
  store i8 0, ptr %72, align 1, !tbaa !16
  %73 = load ptr, ptr %39, align 8, !tbaa !20
  %74 = icmp eq ptr %73, @tab
  %75 = load i8, ptr %2, align 16
  %76 = icmp ne i8 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = sext i8 %75 to i32
  store i32 %79, ptr @tab, align 4, !tbaa !11
  br label %99

80:                                               ; preds = %69
  %81 = icmp eq ptr %73, @linsize
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 33, ptr noundef nonnull %2) #23
  %84 = load ptr, ptr %39, align 8, !tbaa !20
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi ptr [ %84, %82 ], [ %73, %80 ]
  %87 = icmp eq ptr %86, @delim1
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i8, ptr %2, align 16, !tbaa !16
  %90 = sext i8 %89 to i32
  store i32 %90, ptr @delim1, align 4, !tbaa !11
  %91 = load i8, ptr %23, align 1, !tbaa !16
  %92 = sext i8 %91 to i32
  store i32 %92, ptr @delim2, align 4, !tbaa !11
  br label %99

93:                                               ; preds = %33
  %94 = getelementptr inbounds %struct.optstr, ptr %34, i64 1
  %95 = getelementptr inbounds %struct.optstr, ptr %34, i64 1, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !20
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %33, !llvm.loop !24

98:                                               ; preds = %93, %30
  call void @error(ptr noundef nonnull @.str.23) #22
  br label %99

99:                                               ; preds = %98, %88, %85, %78, %24
  %100 = phi ptr [ %26, %98 ], [ %26, %24 ], [ %71, %85 ], [ %71, %88 ], [ %71, %78 ]
  %101 = getelementptr inbounds i8, ptr %100, i64 1
  %102 = load i8, ptr %101, align 1, !tbaa !16
  %103 = icmp eq i8 %102, 59
  br i1 %103, label %104, label %24, !llvm.loop !25

104:                                              ; preds = %99, %19
  %105 = phi ptr [ %1, %19 ], [ %101, %99 ]
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  br label %107

107:                                              ; preds = %104, %12
  %108 = phi ptr [ %106, %104 ], [ %1, %12 ]
  call void @backrest(ptr noundef nonnull %108) #23
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %1) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal void @backrest(ptr noundef readonly %0) #2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i8, ptr %3, align 1, !tbaa !16
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  br i1 %5, label %7, label %2, !llvm.loop !26

7:                                                ; preds = %2
  %.lcssa = phi ptr [ %3, %2 ]
  tail call void @un1getc(i32 noundef 10) #22
  %8 = icmp ugt ptr %.lcssa, %0
  br i1 %8, label %9, label %15

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %11, %9 ], [ %.lcssa, %7 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 -1
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = sext i8 %12 to i32
  tail call void @un1getc(i32 noundef %13) #22
  %14 = icmp ugt ptr %11, %0
  br i1 %14, label %9, label %15, !llvm.loop !27

15:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @getspec() #2 {
  br label %1

1:                                                ; preds = %16, %0
  %2 = phi i64 [ 0, %0 ], [ %17, %16 ]
  %3 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %2
  store i32 -1, ptr %3, align 4, !tbaa !11
  %4 = getelementptr inbounds [0 x i32], ptr @evenup, i64 0, i64 %2
  store i32 0, ptr %4, align 4, !tbaa !11
  %5 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %2
  store i8 0, ptr %5, align 2, !tbaa !16
  br label %6

6:                                                ; preds = %6, %1
  %7 = phi i64 [ 0, %1 ], [ %14, %6 ]
  %8 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %7, i64 %2
  store i8 0, ptr %8, align 4, !tbaa !16
  %9 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @vsize, i64 0, i64 %7, i64 %2
  store i8 0, ptr %9, align 4, !tbaa !16
  %10 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %7, i64 %2
  store i32 0, ptr %10, align 4, !tbaa !11
  %11 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %7, i64 %2
  store i8 0, ptr %11, align 2, !tbaa !16
  %12 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %7, i64 %2
  store i32 0, ptr %12, align 4, !tbaa !11
  %13 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %7, i64 %2
  store i32 108, ptr %13, align 4, !tbaa !11
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 100
  br i1 %15, label %16, label %6, !llvm.loop !28

16:                                               ; preds = %6
  %17 = add nuw nsw i64 %2, 1
  %18 = icmp eq i64 %17, 20
  br i1 %18, label %19, label %1, !llvm.loop !29

19:                                               ; preds = %16
  store i32 0, ptr @ncol, align 4, !tbaa !11
  store i32 0, ptr @nclin, align 4, !tbaa !11
  store i32 0, ptr @oncol, align 4, !tbaa !11
  store i32 0, ptr @rightl, align 4, !tbaa !11
  store i32 0, ptr @left1flg, align 4, !tbaa !11
  tail call void @readspec() #23
  %20 = load ptr, ptr @tabout, align 8, !tbaa !7
  %21 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 3, i64 1, ptr %20)
  %22 = load i32, ptr @ncol, align 4, !tbaa !11
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %24, %19
  %25 = phi i32 [ %29, %24 ], [ 0, %19 ]
  %26 = load ptr, ptr @tabout, align 8, !tbaa !7
  %27 = add nuw nsw i32 %25, 80
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.1.26, i32 noundef %27) #23
  %29 = add nuw nsw i32 %25, 1
  %30 = load i32, ptr @ncol, align 4, !tbaa !11
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %24, label %32, !llvm.loop !30

32:                                               ; preds = %24, %19
  %33 = load ptr, ptr @tabout, align 8, !tbaa !7
  %34 = tail call i32 @fputc(i32 10, ptr %33)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @readspec() #2 {
  %1 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %1) #25
  br label %2

2:                                                ; preds = %329, %0
  %3 = phi i32 [ 0, %0 ], [ %330, %329 ]
  %4 = phi i32 [ 0, %0 ], [ %331, %329 ]
  %5 = call i32 @get1char() #22
  switch i32 %5, label %6 [
    i32 0, label %333
    i32 32, label %329
    i32 10, label %10
    i32 44, label %12
    i32 46, label %12
    i32 67, label %74
    i32 83, label %74
    i32 82, label %74
    i32 78, label %74
    i32 76, label %74
    i32 65, label %74
    i32 95, label %76
    i32 61, label %78
    i32 45, label %78
    i32 94, label %78
    i32 99, label %78
    i32 115, label %78
    i32 110, label %78
    i32 114, label %78
    i32 108, label %78
    i32 97, label %78
    i32 98, label %118
    i32 105, label %118
    i32 66, label %120
    i32 73, label %120
    i32 116, label %132
    i32 84, label %132
    i32 100, label %140
    i32 68, label %140
    i32 102, label %148
    i32 70, label %148
    i32 80, label %194
    i32 112, label %194
    i32 86, label %232
    i32 118, label %232
    i32 119, label %266
    i32 87, label %266
    i32 101, label %297
    i32 69, label %297
    i32 48, label %303
    i32 49, label %303
    i32 50, label %303
    i32 51, label %303
    i32 52, label %303
    i32 53, label %303
    i32 54, label %303
    i32 55, label %303
    i32 56, label %303
    i32 57, label %303
    i32 124, label %321
  ]

6:                                                ; preds = %2
  %7 = load i32, ptr @tab, align 4, !tbaa !11
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %329, label %9

9:                                                ; preds = %6
  call void @error(ptr noundef nonnull @.str.3.27) #22
  br label %329

10:                                               ; preds = %2
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %329, label %12

12:                                               ; preds = %10, %2, %2
  %13 = load i32, ptr @ncol, align 4, !tbaa !11
  %14 = call i32 @max(i32 noundef %13, i32 noundef %3) #22
  store i32 %14, ptr @ncol, align 4, !tbaa !11
  %15 = load i32, ptr @nclin, align 4
  %16 = sext i32 %15 to i64
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = add nsw i32 %14, 1
  store i32 %22, ptr @ncol, align 4, !tbaa !11
  %23 = load i32, ptr @rightl, align 4, !tbaa !11
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr @rightl, align 4, !tbaa !11
  br label %25

25:                                               ; preds = %21, %12
  %26 = phi i32 [ %22, %21 ], [ %14, %12 ]
  %27 = icmp eq i32 %4, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = add nsw i32 %15, 1
  store i32 %29, ptr @nclin, align 4, !tbaa !11
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ %15, %25 ]
  %32 = icmp sgt i32 %31, 99
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  call void @error(ptr noundef nonnull @.str.4.28) #22
  %34 = load i32, ptr @ncol, align 4, !tbaa !11
  %35 = load i32, ptr @nclin, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %35, %33 ], [ %31, %30 ]
  %38 = phi i32 [ %34, %33 ], [ %26, %30 ]
  %39 = icmp eq i32 %38, 0
  %40 = icmp eq i32 %37, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @error(ptr noundef nonnull @.str.5.29) #22
  br label %43

43:                                               ; preds = %42, %36
  %44 = icmp eq i32 %5, 46
  br i1 %44, label %45, label %329

45:                                               ; preds = %47, %43
  %46 = call i32 @get1char() #22
  switch i32 %46, label %48 [
    i32 10, label %49
    i32 0, label %49
    i32 32, label %47
    i32 9, label %47
  ]

47:                                               ; preds = %48, %45, %45
  br label %45, !llvm.loop !31

48:                                               ; preds = %45
  call void @error(ptr noundef nonnull @.str.6.30) #22
  br label %47

49:                                               ; preds = %45, %45
  %50 = load i32, ptr @ncol, align 4, !tbaa !11
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = zext i32 %50 to i64
  %54 = zext i32 %50 to i64
  br label %55

55:                                               ; preds = %64, %52
  %56 = phi i64 [ 0, %52 ], [ %60, %64 ]
  %57 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !11
  %59 = icmp slt i32 %58, 0
  %60 = add nuw nsw i64 %56, 1
  br i1 %59, label %61, label %64

61:                                               ; preds = %55
  %62 = icmp ult i64 %60, %53
  %63 = select i1 %62, i32 3, i32 1
  store i32 %63, ptr %57, align 4, !tbaa !11
  br label %64

64:                                               ; preds = %61, %55
  %65 = icmp eq i64 %60, %54
  br i1 %65, label %66, label %55, !llvm.loop !32

66:                                               ; preds = %64, %49
  %67 = load i32, ptr @oncol, align 4, !tbaa !11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 %50, ptr @oncol, align 4, !tbaa !11
  br label %334

70:                                               ; preds = %66
  %71 = add nsw i32 %67, 2
  %72 = icmp slt i32 %71, %50
  br i1 %72, label %73, label %334

73:                                               ; preds = %70
  call void @error(ptr noundef nonnull @.str.7.31) #22
  br label %334

74:                                               ; preds = %2, %2, %2, %2, %2, %2
  %75 = add nuw nsw i32 %5, 32
  br label %76

76:                                               ; preds = %74, %2
  %77 = phi i32 [ %75, %74 ], [ 45, %2 ]
  br label %78

78:                                               ; preds = %76, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %79 = phi i32 [ %77, %76 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ]
  %80 = load i32, ptr @nclin, align 4
  %81 = sext i32 %80 to i64
  %82 = sext i32 %3 to i64
  %83 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %81, i64 %82
  store i32 %79, ptr %83, align 4, !tbaa !11
  %84 = icmp eq i32 %79, 115
  %85 = icmp slt i32 %3, 1
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  call void @error(ptr noundef nonnull @.str.8.32) #22
  %88 = load i32, ptr @nclin, align 4, !tbaa !11
  %89 = sext i32 %88 to i64
  br label %91

90:                                               ; preds = %78
  br i1 %84, label %91, label %109

91:                                               ; preds = %90, %87
  %92 = phi i64 [ %89, %87 ], [ %81, %90 ]
  %93 = add nsw i32 %3, -1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %92, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !11
  switch i32 %96, label %114 [
    i32 97, label %97
    i32 110, label %103
  ]

97:                                               ; preds = %91
  %98 = load ptr, ptr @tabout, align 8, !tbaa !7
  %99 = call i64 @fwrite(ptr nonnull @.str.9.33, i64 50, i64 1, ptr %98)
  %100 = load i32, ptr @nclin, align 4, !tbaa !11
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %101, i64 %94
  store i32 108, ptr %102, align 4, !tbaa !11
  br label %114

103:                                              ; preds = %91
  %104 = load ptr, ptr @tabout, align 8, !tbaa !7
  %105 = call i64 @fwrite(ptr nonnull @.str.10.34, i64 50, i64 1, ptr %104)
  %106 = load i32, ptr @nclin, align 4, !tbaa !11
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %107, i64 %94
  store i32 99, ptr %108, align 4, !tbaa !11
  br label %114

109:                                              ; preds = %90
  %110 = icmp eq i32 %79, 94
  %111 = icmp slt i32 %80, 1
  %112 = and i1 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  call void @error(ptr noundef nonnull @.str.11.35) #22
  br label %114

114:                                              ; preds = %113, %109, %103, %97, %91
  %115 = add nsw i32 %3, 1
  %116 = icmp sgt i32 %3, 18
  br i1 %116, label %117, label %329

117:                                              ; preds = %114
  call void @error(ptr noundef nonnull @.str.12.36) #22
  br label %329

118:                                              ; preds = %2, %2
  %119 = add nsw i32 %5, -32
  br label %120

120:                                              ; preds = %118, %2, %2
  %121 = phi i32 [ %119, %118 ], [ %5, %2 ], [ %5, %2 ]
  %122 = icmp eq i32 %3, 0
  br i1 %122, label %329, label %123

123:                                              ; preds = %120
  %124 = load i32, ptr @nclin, align 4, !tbaa !11
  %125 = sext i32 %124 to i64
  %126 = add nsw i32 %3, -1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %125, i64 %127
  %129 = icmp eq i32 %121, 73
  %130 = select i1 %129, i8 50, i8 51
  store i8 %130, ptr %128, align 2, !tbaa !16
  %131 = getelementptr inbounds i8, ptr %128, i64 1
  store i8 0, ptr %131, align 1, !tbaa !16
  br label %329

132:                                              ; preds = %2, %2
  %133 = icmp sgt i32 %3, 0
  br i1 %133, label %134, label %329

134:                                              ; preds = %132
  %135 = load i32, ptr @nclin, align 4, !tbaa !11
  %136 = sext i32 %135 to i64
  %137 = add nsw i32 %3, -1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %136, i64 %138
  store i32 1, ptr %139, align 4, !tbaa !11
  br label %329

140:                                              ; preds = %2, %2
  %141 = icmp sgt i32 %3, 0
  br i1 %141, label %142, label %329

142:                                              ; preds = %140
  %143 = load i32, ptr @nclin, align 4, !tbaa !11
  %144 = sext i32 %143 to i64
  %145 = add nsw i32 %3, -1
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %144, i64 %146
  store i32 -1, ptr %147, align 4, !tbaa !11
  br label %329

148:                                              ; preds = %2, %2
  %149 = icmp eq i32 %3, 0
  br i1 %149, label %329, label %150

150:                                              ; preds = %148
  %151 = load i32, ptr @nclin, align 4, !tbaa !11
  %152 = sext i32 %151 to i64
  %153 = add nsw i32 %3, -1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %152, i64 %154
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  store i8 0, ptr %156, align 1, !tbaa !16
  store i8 0, ptr %155, align 2, !tbaa !16
  br label %157

157:                                              ; preds = %182, %150
  %158 = phi i1 [ false, %182 ], [ true, %150 ]
  %159 = phi i64 [ 1, %182 ], [ 0, %150 ]
  %160 = phi i32 [ %168, %182 ], [ 0, %150 ]
  %161 = call i32 @get1char() #22
  %162 = icmp eq i32 %161, 40
  %163 = select i1 %158, i1 %162, i1 false
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = call i32 @get1char() #22
  br label %166

166:                                              ; preds = %164, %157
  %167 = phi i32 [ %165, %164 ], [ %161, %157 ]
  %168 = phi i32 [ 41, %164 ], [ %160, %157 ]
  %169 = icmp eq i32 %167, 0
  br i1 %169, label %188, label %170

170:                                              ; preds = %166
  %171 = icmp eq i32 %167, %168
  br i1 %171, label %329, label %172, !llvm.loop !33

172:                                              ; preds = %170
  %173 = icmp eq i32 %168, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %172
  %175 = icmp eq i32 %167, 32
  %176 = load i32, ptr @tab, align 4
  %177 = icmp eq i32 %167, %176
  %178 = select i1 %175, i1 true, i1 %177
  br i1 %178, label %329, label %179, !llvm.loop !33

179:                                              ; preds = %174, %172
  %180 = icmp eq i32 %167, 10
  br i1 %180, label %181, label %182

181:                                              ; preds = %179
  %.lcssa9 = phi i32 [ %168, %179 ]
  call void @un1getc(i32 noundef 10) #22
  br label %188

182:                                              ; preds = %179
  %183 = trunc i32 %167 to i8
  %184 = getelementptr inbounds i8, ptr %155, i64 %159
  store i8 %183, ptr %184, align 1, !tbaa !16
  %185 = add i32 %167, -58
  %186 = icmp ult i32 %185, -10
  %187 = and i1 %186, %158
  br i1 %187, label %157, label %188, !llvm.loop !34

188:                                              ; preds = %182, %181, %166
  %.lcssa8 = phi i32 [ %168, %182 ], [ %.lcssa9, %181 ], [ %168, %166 ]
  %189 = icmp eq i32 %.lcssa8, 0
  br i1 %189, label %329, label %190

190:                                              ; preds = %188
  %191 = call i32 @get1char() #22
  %192 = icmp eq i32 %191, %.lcssa8
  br i1 %192, label %329, label %193

193:                                              ; preds = %190
  call void @error(ptr noundef nonnull @.str.13.37) #22
  br label %329

194:                                              ; preds = %2, %2
  %195 = icmp slt i32 %3, 1
  br i1 %195, label %329, label %196

196:                                              ; preds = %194
  %197 = load i32, ptr @nclin, align 4, !tbaa !11
  %198 = sext i32 %197 to i64
  %199 = add nsw i32 %3, -1
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %198, i64 %200
  %202 = ptrtoint ptr %201 to i64
  br label %203

203:                                              ; preds = %226, %196
  %204 = phi ptr [ %201, %196 ], [ %220, %226 ]
  %205 = call i32 @get1char() #22
  %206 = and i32 %205, -33
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %227, label %208

208:                                              ; preds = %203
  %209 = load i32, ptr @tab, align 4, !tbaa !11
  %210 = icmp eq i32 %205, %209
  %211 = icmp eq i32 %205, 10
  %212 = or i1 %211, %210
  br i1 %212, label %227, label %213

213:                                              ; preds = %208
  switch i32 %205, label %216 [
    i32 45, label %214
    i32 43, label %214
  ]

214:                                              ; preds = %213, %213
  %215 = icmp ugt ptr %204, %201
  br i1 %215, label %227, label %219

216:                                              ; preds = %213
  %217 = call i32 @digit(i32 noundef %205) #22
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %216, %214
  %220 = getelementptr inbounds i8, ptr %204, i64 1
  %221 = trunc i32 %205 to i8
  store i8 %221, ptr %204, align 1, !tbaa !16
  %222 = ptrtoint ptr %220 to i64
  %223 = sub i64 %222, %202
  %224 = icmp sgt i64 %223, 4
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  call void @error(ptr noundef nonnull @.str.14.38) #22
  br label %226

226:                                              ; preds = %225, %219
  br label %203, !llvm.loop !35

227:                                              ; preds = %216, %214, %208, %203
  %.lcssa7 = phi ptr [ %204, %216 ], [ %204, %214 ], [ %204, %208 ], [ %204, %203 ]
  %.lcssa6 = phi i32 [ %205, %216 ], [ %205, %214 ], [ %205, %208 ], [ %205, %203 ]
  store i8 0, ptr %.lcssa7, align 1, !tbaa !16
  %228 = call i32 @atoi(ptr nocapture noundef nonnull %201) #26
  %229 = icmp sgt i32 %228, 36
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  call void @error(ptr noundef nonnull @.str.15.39) #22
  br label %231

231:                                              ; preds = %230, %227
  call void @un1getc(i32 noundef %.lcssa6) #22
  br label %329

232:                                              ; preds = %2, %2
  %233 = icmp slt i32 %3, 1
  br i1 %233, label %329, label %234

234:                                              ; preds = %232
  %235 = load i32, ptr @nclin, align 4, !tbaa !11
  %236 = sext i32 %235 to i64
  %237 = add nsw i32 %3, -1
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @vsize, i64 0, i64 %236, i64 %238
  %240 = ptrtoint ptr %239 to i64
  br label %241

241:                                              ; preds = %264, %234
  %242 = phi ptr [ %239, %234 ], [ %258, %264 ]
  %243 = call i32 @get1char() #22
  %244 = and i32 %243, -33
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %265, label %246

246:                                              ; preds = %241
  %247 = load i32, ptr @tab, align 4, !tbaa !11
  %248 = icmp eq i32 %243, %247
  %249 = icmp eq i32 %243, 10
  %250 = or i1 %249, %248
  br i1 %250, label %265, label %251

251:                                              ; preds = %246
  switch i32 %243, label %254 [
    i32 45, label %252
    i32 43, label %252
  ]

252:                                              ; preds = %251, %251
  %253 = icmp ugt ptr %242, %239
  br i1 %253, label %265, label %257

254:                                              ; preds = %251
  %255 = call i32 @digit(i32 noundef %243) #22
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %254, %252
  %258 = getelementptr inbounds i8, ptr %242, i64 1
  %259 = trunc i32 %243 to i8
  store i8 %259, ptr %242, align 1, !tbaa !16
  %260 = ptrtoint ptr %258 to i64
  %261 = sub i64 %260, %240
  %262 = icmp sgt i64 %261, 4
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  call void @error(ptr noundef nonnull @.str.16.40) #22
  br label %264

264:                                              ; preds = %263, %257
  br label %241, !llvm.loop !36

265:                                              ; preds = %254, %252, %246, %241
  %.lcssa5 = phi ptr [ %242, %254 ], [ %242, %252 ], [ %242, %246 ], [ %242, %241 ]
  %.lcssa4 = phi i32 [ %243, %254 ], [ %243, %252 ], [ %243, %246 ], [ %243, %241 ]
  store i8 0, ptr %.lcssa5, align 1, !tbaa !16
  call void @un1getc(i32 noundef %.lcssa4) #22
  br label %329

266:                                              ; preds = %2, %2
  %267 = add nsw i32 %3, -1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %268
  br label %270

270:                                              ; preds = %277, %266
  %271 = phi i1 [ true, %266 ], [ false, %277 ]
  %272 = phi i32 [ 0, %266 ], [ 41, %277 ]
  br label %273

273:                                              ; preds = %286, %270
  %274 = phi ptr [ %288, %286 ], [ %269, %270 ]
  %275 = call i32 @get1char() #22
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %289, label %277

277:                                              ; preds = %273
  %278 = icmp eq ptr %274, %269
  %279 = icmp eq i32 %275, 40
  %280 = and i1 %278, %279
  br i1 %280, label %270, label %281, !llvm.loop !37

281:                                              ; preds = %277
  %282 = add i32 %275, -48
  %283 = icmp ult i32 %282, 10
  %284 = icmp ne i32 %275, %272
  %285 = select i1 %271, i1 %283, i1 %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = trunc i32 %275 to i8
  %288 = getelementptr inbounds i8, ptr %274, i64 1
  store i8 %287, ptr %274, align 1, !tbaa !16
  br label %273, !llvm.loop !37

289:                                              ; preds = %281, %273
  %.lcssa3 = phi i1 [ %271, %281 ], [ %271, %273 ]
  %.lcssa2 = phi ptr [ %274, %281 ], [ %274, %273 ]
  %.lcssa1 = phi i32 [ %275, %281 ], [ %275, %273 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !16
  %290 = ptrtoint ptr %.lcssa2 to i64
  %291 = ptrtoint ptr %269 to i64
  %292 = sub i64 %290, %291
  %293 = icmp sgt i64 %292, 10
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  call void @error(ptr noundef nonnull @.str.17.41) #22
  br label %295

295:                                              ; preds = %294, %289
  br i1 %.lcssa3, label %296, label %329

296:                                              ; preds = %295
  call void @un1getc(i32 noundef %.lcssa1) #22
  br label %329

297:                                              ; preds = %2, %2
  %298 = icmp slt i32 %3, 1
  br i1 %298, label %329, label %299

299:                                              ; preds = %297
  %300 = add nsw i32 %3, -1
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [0 x i32], ptr @evenup, i64 0, i64 %301
  store i32 1, ptr %302, align 4, !tbaa !11
  store i32 1, ptr @evenflg, align 4, !tbaa !11
  br label %329

303:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %304 = trunc i32 %5 to i8
  store i8 %304, ptr %1, align 1, !tbaa !16
  br label %305

305:                                              ; preds = %305, %303
  %306 = phi ptr [ %1, %303 ], [ %307, %305 ]
  %307 = getelementptr inbounds i8, ptr %306, i64 1
  %308 = call i32 @get1char() #22
  %309 = trunc i32 %308 to i8
  store i8 %309, ptr %307, align 1, !tbaa !16
  %310 = shl i32 %308, 24
  %311 = ashr exact i32 %310, 24
  %312 = call i32 @digit(i32 noundef %311) #22
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %305, !llvm.loop !38

314:                                              ; preds = %305
  %.lcssa = phi i32 [ %308, %305 ]
  call void @un1getc(i32 noundef %.lcssa) #22
  %315 = add nsw i32 %3, -1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %316
  %318 = load i32, ptr %317, align 4, !tbaa !11
  %319 = call i32 @numb(ptr noundef nonnull %1) #22
  %320 = call i32 @max(i32 noundef %318, i32 noundef %319) #22
  store i32 %320, ptr %317, align 4, !tbaa !11
  br label %329

321:                                              ; preds = %2
  %322 = load i32, ptr @nclin, align 4, !tbaa !11
  %323 = sext i32 %322 to i64
  %324 = sext i32 %3 to i64
  %325 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %323, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !11
  %327 = add nsw i32 %326, 1
  store i32 %327, ptr %325, align 4, !tbaa !11
  %328 = icmp eq i32 %3, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %332, %321, %314, %299, %297, %296, %295, %265, %232, %231, %194, %193, %190, %188, %174, %170, %148, %142, %140, %134, %132, %123, %120, %117, %114, %43, %10, %9, %6, %2
  %330 = phi i32 [ %3, %314 ], [ %3, %297 ], [ %3, %299 ], [ %3, %232 ], [ %3, %265 ], [ %3, %194 ], [ %3, %231 ], [ 0, %148 ], [ 0, %120 ], [ %3, %123 ], [ %3, %10 ], [ 0, %43 ], [ %3, %2 ], [ %3, %6 ], [ %3, %9 ], [ %115, %117 ], [ %115, %114 ], [ %3, %134 ], [ %3, %132 ], [ %3, %142 ], [ %3, %140 ], [ %3, %190 ], [ %3, %193 ], [ %3, %188 ], [ %3, %296 ], [ %3, %295 ], [ 0, %332 ], [ %3, %321 ], [ %3, %174 ], [ %3, %170 ]
  %331 = phi i32 [ %4, %314 ], [ %4, %297 ], [ %4, %299 ], [ %4, %232 ], [ %4, %265 ], [ %4, %194 ], [ %4, %231 ], [ %4, %148 ], [ %4, %120 ], [ %4, %123 ], [ 0, %10 ], [ 0, %43 ], [ %4, %2 ], [ %4, %6 ], [ %4, %9 ], [ 1, %117 ], [ 1, %114 ], [ %4, %134 ], [ %4, %132 ], [ %4, %142 ], [ %4, %140 ], [ %4, %190 ], [ %4, %193 ], [ %4, %188 ], [ %4, %296 ], [ %4, %295 ], [ %4, %332 ], [ %4, %321 ], [ %4, %174 ], [ %4, %170 ]
  br label %2, !llvm.loop !33

332:                                              ; preds = %321
  store i32 1, ptr @left1flg, align 4, !tbaa !11
  br label %329

333:                                              ; preds = %2
  call void @error(ptr noundef nonnull @.str.18.42) #22
  br label %334

334:                                              ; preds = %333, %73, %70, %69
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %1) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @gettbl() #2 {
  %1 = tail call ptr (...) @chspace() #22
  store ptr %1, ptr @cspace, align 8, !tbaa !7
  store ptr %1, ptr @cstore, align 8, !tbaa !7
  store i32 0, ptr @textflg, align 4, !tbaa !11
  store i32 0, ptr @nslin, align 4, !tbaa !11
  br label %2

2:                                                ; preds = %242, %0
  %3 = phi ptr [ %1, %0 ], [ %243, %242 ]
  %4 = phi i32 [ 0, %0 ], [ %245, %242 ]
  store i32 %4, ptr @nlin, align 4, !tbaa !11
  %5 = tail call ptr @gets1(ptr noundef %3) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %248, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @nslin, align 4, !tbaa !11
  %9 = load i32, ptr @nlin, align 4, !tbaa !11
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %10
  store i32 %8, ptr %11, align 4, !tbaa !11
  %12 = load ptr, ptr @cstore, align 8, !tbaa !7
  %13 = tail call i32 @prefix(ptr noundef nonnull @.str.45, ptr noundef %12) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %246

15:                                               ; preds = %7
  %16 = load ptr, ptr @cstore, align 8, !tbaa !7
  %17 = tail call i32 @prefix(ptr noundef nonnull @.str.1.46, ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr @cstore, align 8, !tbaa !7
  %21 = tail call i32 @prefix(ptr noundef nonnull @.str.2.47, ptr noundef %20) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %15
  tail call void @readspec() #22
  %24 = load i32, ptr @nslin, align 4, !tbaa !11
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @nslin, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, ptr @nlin, align 4, !tbaa !11
  %28 = icmp sgt i32 %27, 199
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load ptr, ptr @cstore, align 8, !tbaa !7
  %31 = ptrtoint ptr %30 to i64
  %32 = trunc i64 %31 to i32
  br label %246

33:                                               ; preds = %26
  %34 = sext i32 %27 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %34
  store i32 0, ptr %35, align 4, !tbaa !11
  %36 = load ptr, ptr @cstore, align 8, !tbaa !7
  %37 = load i8, ptr %36, align 1, !tbaa !16
  %38 = icmp eq i8 %37, 46
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = tail call ptr @__ctype_b_loc() #27
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = getelementptr inbounds i8, ptr %36, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !16
  %44 = sext i8 %43 to i64
  %45 = getelementptr inbounds i16, ptr %41, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !39
  %47 = and i16 %46, 2048
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %34
  store ptr %36, ptr %50, align 8, !tbaa !7
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi ptr [ %53, %51 ], [ %36, %49 ]
  %53 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %53, ptr @cstore, align 8, !tbaa !7
  %54 = load i8, ptr %52, align 1, !tbaa !16
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %242, label %51, !llvm.loop !41

56:                                               ; preds = %39, %33
  %57 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %34
  store ptr null, ptr %57, align 8, !tbaa !7
  %58 = tail call i32 @nodata(i32 noundef %27) #23, !range !13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr @nlin, align 4, !tbaa !11
  %62 = tail call i32 @oneh(i32 noundef %61) #23
  %63 = icmp eq i32 %62, 0
  %64 = load i32, ptr @nlin, align 4, !tbaa !11
  br i1 %63, label %68, label %65

65:                                               ; preds = %60
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %66
  store i32 %62, ptr %67, align 4, !tbaa !11
  br label %68

68:                                               ; preds = %65, %60
  %69 = add nsw i32 %64, 1
  store i32 %69, ptr @nlin, align 4, !tbaa !11
  %70 = load i32, ptr @nslin, align 4, !tbaa !11
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr @nslin, align 4, !tbaa !11
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %72
  store ptr null, ptr %73, align 8, !tbaa !7
  %74 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %72
  store i32 0, ptr %74, align 4, !tbaa !11
  br label %75

75:                                               ; preds = %68, %56
  %76 = load i32, ptr @ncol, align 4, !tbaa !11
  %77 = shl i32 %76, 4
  %78 = add i32 %77, 32
  %79 = tail call ptr @alocv(i32 noundef %78) #22
  %80 = load i32, ptr @nlin, align 4, !tbaa !11
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %81
  store ptr %79, ptr %82, align 8, !tbaa !7
  %83 = load ptr, ptr @cstore, align 8, !tbaa !7
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !16
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %75
  %88 = load i8, ptr %83, align 1, !tbaa !16
  %89 = sext i8 %88 to i32
  switch i32 %89, label %94 [
    i32 95, label %90
    i32 61, label %92
  ]

90:                                               ; preds = %87
  %91 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %81
  store i32 45, ptr %91, align 4, !tbaa !11
  br label %242

92:                                               ; preds = %87
  %93 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %81
  store i32 61, ptr %93, align 4, !tbaa !11
  br label %242

94:                                               ; preds = %87, %75
  %95 = load i32, ptr @nslin, align 4, !tbaa !11
  %96 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %81
  store i32 %95, ptr %96, align 4, !tbaa !11
  %97 = add nsw i32 %95, 1
  %98 = load i32, ptr @nclin, align 4, !tbaa !11
  %99 = add nsw i32 %98, -1
  %100 = tail call i32 @min(i32 noundef %97, i32 noundef %99) #22
  store i32 %100, ptr @nslin, align 4, !tbaa !11
  br label %101

101:                                              ; preds = %200, %94
  %102 = phi i32 [ 0, %94 ], [ %.lcssa, %200 ]
  %103 = load i32, ptr @ncol, align 4, !tbaa !11
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %205

105:                                              ; preds = %101
  %106 = load ptr, ptr @cstore, align 8, !tbaa !7
  %107 = load i32, ptr @nlin, align 4, !tbaa !11
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !7
  %111 = sext i32 %102 to i64
  %112 = getelementptr inbounds %struct.optstr, ptr %110, i64 %111
  store ptr %106, ptr %112, align 8, !tbaa !42
  %113 = load ptr, ptr %109, align 8, !tbaa !7
  %114 = getelementptr inbounds %struct.optstr, ptr %113, i64 %111, i32 1
  store ptr null, ptr %114, align 8, !tbaa !44
  %115 = load ptr, ptr @cstore, align 8, !tbaa !7
  %116 = tail call i32 @match(ptr noundef %115, ptr noundef nonnull @.str.3.48) #22
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %105
  %119 = load i32, ptr @tab, align 4
  %120 = load ptr, ptr @cstore, align 8, !tbaa !7
  %121 = load i8, ptr %120, align 1, !tbaa !16
  %122 = sext i8 %121 to i32
  %123 = icmp ne i8 %121, 0
  %124 = icmp ne i32 %119, %122
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %143, label %151

126:                                              ; preds = %105
  %127 = load ptr, ptr @cstore, align 8, !tbaa !7
  %128 = load i32, ptr @nlin, align 4, !tbaa !11
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !11
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %132, i64 %111
  %134 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %132, i64 %111
  %135 = tail call i32 @gettext(ptr noundef %127, i32 noundef %128, i32 noundef %102, ptr noundef nonnull %133, ptr noundef nonnull %134) #22
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to ptr
  %138 = load i32, ptr @nlin, align 4, !tbaa !11
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !7
  %142 = getelementptr inbounds %struct.optstr, ptr %141, i64 %111
  store ptr %137, ptr %142, align 8, !tbaa !42
  br label %184

143:                                              ; preds = %143, %118
  %144 = phi ptr [ %145, %143 ], [ %120, %118 ]
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  store ptr %145, ptr @cstore, align 8, !tbaa !7
  %146 = load i8, ptr %145, align 1, !tbaa !16
  %147 = sext i8 %146 to i32
  %148 = icmp ne i8 %146, 0
  %149 = icmp ne i32 %119, %147
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %143, label %151, !llvm.loop !45

151:                                              ; preds = %143, %118
  %152 = phi ptr [ %120, %118 ], [ %145, %143 ]
  %153 = phi i32 [ %122, %118 ], [ %147, %143 ]
  %154 = getelementptr inbounds i8, ptr %152, i64 1
  store ptr %154, ptr @cstore, align 8, !tbaa !7
  store i8 0, ptr %152, align 1, !tbaa !16
  %155 = load i32, ptr @nlin, align 4, !tbaa !11
  %156 = tail call i32 @ctype(i32 noundef %155, i32 noundef %102) #22
  switch i32 %156, label %157 [
    i32 110, label %159
    i32 97, label %174
  ]

157:                                              ; preds = %151
  %158 = load i32, ptr @nlin, align 4, !tbaa !11
  br label %184

159:                                              ; preds = %151
  %160 = load i32, ptr @nlin, align 4, !tbaa !11
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !7
  %164 = getelementptr inbounds %struct.optstr, ptr %163, i64 %111
  %165 = load ptr, ptr %164, align 8, !tbaa !42
  %166 = tail call i32 @maknew(ptr noundef %165) #22
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to ptr
  %169 = load i32, ptr @nlin, align 4, !tbaa !11
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !7
  %173 = getelementptr inbounds %struct.optstr, ptr %172, i64 %111, i32 1
  store ptr %168, ptr %173, align 8, !tbaa !44
  br label %184

174:                                              ; preds = %151
  %175 = load i32, ptr @nlin, align 4, !tbaa !11
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !7
  %179 = getelementptr inbounds %struct.optstr, ptr %178, i64 %111
  %180 = load ptr, ptr %179, align 8, !tbaa !42
  %181 = getelementptr inbounds %struct.optstr, ptr %178, i64 %111, i32 1
  store ptr %180, ptr %181, align 8, !tbaa !44
  %182 = load ptr, ptr %177, align 8, !tbaa !7
  %183 = getelementptr inbounds %struct.optstr, ptr %182, i64 %111
  store ptr @.str.4.49, ptr %183, align 8, !tbaa !42
  br label %184

184:                                              ; preds = %174, %159, %157, %126
  %185 = phi i32 [ %138, %126 ], [ %158, %157 ], [ %175, %174 ], [ %169, %159 ]
  %186 = phi i32 [ 1, %126 ], [ %153, %157 ], [ %153, %174 ], [ %153, %159 ]
  br label %187

187:                                              ; preds = %194, %184
  %188 = phi i32 [ %195, %194 ], [ %185, %184 ]
  %189 = phi i64 [ %190, %194 ], [ %111, %184 ]
  %190 = add i64 %189, 1
  %191 = trunc i64 %190 to i32
  %192 = tail call i32 @ctype(i32 noundef %188, i32 noundef %191) #22
  %193 = icmp eq i32 %192, 115
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load i32, ptr @nlin, align 4, !tbaa !11
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !7
  %199 = getelementptr inbounds %struct.optstr, ptr %198, i64 %190
  store ptr @.str.4.49, ptr %199, align 8, !tbaa !42
  br label %187, !llvm.loop !46

200:                                              ; preds = %187
  %.lcssa1 = phi i64 [ %189, %187 ]
  %.lcssa = phi i32 [ %191, %187 ]
  %201 = icmp eq i32 %186, 0
  br i1 %201, label %202, label %101, !llvm.loop !47

202:                                              ; preds = %200
  %.lcssa1.lcssa = phi i64 [ %.lcssa1, %200 ]
  %203 = trunc i64 %.lcssa1.lcssa to i32
  %204 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %205

205:                                              ; preds = %202, %101
  %206 = phi i32 [ %204, %202 ], [ %103, %101 ]
  %207 = phi i32 [ %203, %202 ], [ %102, %101 ]
  %208 = icmp sgt i32 %207, %206
  br i1 %208, label %215, label %209

209:                                              ; preds = %205
  %210 = load i32, ptr @nlin, align 4, !tbaa !11
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %211
  %213 = sext i32 %207 to i64
  %214 = add i32 %206, 1
  br label %219

215:                                              ; preds = %219, %205
  %216 = load ptr, ptr @cstore, align 8, !tbaa !7
  %217 = load i8, ptr %216, align 1, !tbaa !16
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %233, label %228

219:                                              ; preds = %219, %209
  %220 = phi i64 [ %213, %209 ], [ %221, %219 ]
  %221 = add nsw i64 %220, 1
  %222 = load ptr, ptr %212, align 8, !tbaa !7
  %223 = getelementptr inbounds %struct.optstr, ptr %222, i64 %221
  store ptr @.str.4.49, ptr %223, align 8, !tbaa !42
  %224 = load ptr, ptr %212, align 8, !tbaa !7
  %225 = getelementptr inbounds %struct.optstr, ptr %224, i64 %221, i32 1
  store ptr null, ptr %225, align 8, !tbaa !44
  %226 = trunc i64 %221 to i32
  %227 = icmp eq i32 %214, %226
  br i1 %227, label %215, label %219, !llvm.loop !48

228:                                              ; preds = %228, %215
  %229 = phi ptr [ %230, %228 ], [ %216, %215 ]
  %230 = getelementptr inbounds i8, ptr %229, i64 1
  store ptr %230, ptr @cstore, align 8, !tbaa !7
  %231 = load i8, ptr %230, align 1, !tbaa !16
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %228, !llvm.loop !49

233:                                              ; preds = %228, %215
  %234 = phi ptr [ %216, %215 ], [ %230, %228 ]
  %235 = load ptr, ptr @cspace, align 8, !tbaa !7
  %236 = ptrtoint ptr %234 to i64
  %237 = ptrtoint ptr %235 to i64
  %238 = sub i64 %236, %237
  %239 = icmp sgt i64 %238, 2000
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = tail call ptr (...) @chspace() #22
  store ptr %241, ptr @cspace, align 8, !tbaa !7
  store ptr %241, ptr @cstore, align 8, !tbaa !7
  br label %242

242:                                              ; preds = %240, %233, %92, %90, %51
  %243 = phi ptr [ %234, %233 ], [ %241, %240 ], [ %83, %92 ], [ %83, %90 ], [ %53, %51 ]
  %244 = load i32, ptr @nlin, align 4, !tbaa !11
  %245 = add nsw i32 %244, 1
  br label %2, !llvm.loop !50

246:                                              ; preds = %29, %7
  %247 = phi i32 [ %32, %29 ], [ 0, %7 ]
  store i32 %247, ptr @leftover, align 4, !tbaa !11
  br label %248

248:                                              ; preds = %246, %2
  %249 = load ptr, ptr @cstore, align 8, !tbaa !7
  store ptr %249, ptr @last, align 8, !tbaa !7
  %250 = tail call i32 @permute() #23
  %251 = load i32, ptr @textflg, align 4, !tbaa !11
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %248
  tail call void @untext() #22
  br label %254

254:                                              ; preds = %253, %248
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal i32 @nodata(i32 noundef %0) #2 {
  %2 = load i32, ptr @ncol, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %7, %1
  %5 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %6 = tail call i32 @ctype(i32 noundef %0, i32 noundef %5) #22
  switch i32 %6, label %7 [
    i32 99, label %11
    i32 110, label %11
    i32 114, label %11
    i32 108, label %11
    i32 115, label %11
    i32 97, label %11
  ]

7:                                                ; preds = %4
  %8 = add nuw nsw i32 %5, 1
  %9 = load i32, ptr @ncol, align 4, !tbaa !11
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %4, label %11, !llvm.loop !51

11:                                               ; preds = %7, %4, %4, %4, %4, %4, %4, %1
  %12 = phi i32 [ 1, %1 ], [ 1, %7 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ], [ 0, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @oneh(i32 noundef %0) #2 {
  %2 = tail call i32 @ctype(i32 noundef %0, i32 noundef 0) #22
  %3 = load i32, ptr @ncol, align 4, !tbaa !11
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %9, label %13

5:                                                ; preds = %9
  %6 = add nuw nsw i32 %10, 1
  %7 = load i32, ptr @ncol, align 4, !tbaa !11
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %13, !llvm.loop !52

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %6, %5 ], [ 1, %1 ]
  %11 = tail call i32 @ctype(i32 noundef %0, i32 noundef %10) #22
  %12 = icmp eq i32 %2, %11
  br i1 %12, label %5, label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi i32 [ %2, %1 ], [ %2, %5 ], [ 0, %9 ]
  ret i32 %14
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @permute() #2 {
  %1 = load i32, ptr @ncol, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %71

3:                                                ; preds = %0
  %4 = load i32, ptr @nlin, align 4, !tbaa !11
  br label %5

5:                                                ; preds = %65, %3
  %6 = phi i32 [ %1, %3 ], [ %66, %65 ]
  %7 = phi i32 [ %4, %3 ], [ %67, %65 ]
  %8 = phi i64 [ 0, %3 ], [ %68, %65 ]
  %9 = icmp sgt i32 %7, 1
  br i1 %9, label %10, label %65

10:                                               ; preds = %5
  %11 = trunc i64 %8 to i32
  br label %12

12:                                               ; preds = %58, %10
  %13 = phi i32 [ 1, %10 ], [ %60, %58 ]
  %14 = tail call i32 @vspand(i32 noundef %13, i32 noundef %11, i32 noundef 0) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @prev(i32 noundef %13) #22
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @error(ptr noundef nonnull @.str.5.50) #22
  br label %20

20:                                               ; preds = %19, %16
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = getelementptr inbounds %struct.optstr, ptr %23, i64 %8
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.optstr, ptr %23, i64 %8, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = load i32, ptr @nlin, align 4, !tbaa !11
  %29 = icmp slt i32 %13, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %34, %20
  %31 = phi i32 [ %35, %34 ], [ %13, %20 ]
  %32 = tail call i32 @vspand(i32 noundef %31, i32 noundef %11, i32 noundef 0) #23
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = add nsw i32 %31, 1
  %36 = load i32, ptr @nlin, align 4, !tbaa !11
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %30, label %38, !llvm.loop !53

38:                                               ; preds = %34, %30, %20
  %39 = phi i32 [ %13, %20 ], [ %35, %34 ], [ %31, %30 ]
  %40 = add nsw i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = getelementptr inbounds %struct.optstr, ptr %43, i64 %8
  store ptr %25, ptr %44, align 8, !tbaa !42
  %45 = load ptr, ptr %42, align 8, !tbaa !7
  %46 = getelementptr inbounds %struct.optstr, ptr %45, i64 %8, i32 1
  store ptr %27, ptr %46, align 8, !tbaa !44
  %47 = icmp slt i32 %17, %40
  br i1 %47, label %48, label %58

48:                                               ; preds = %48, %38
  %49 = phi i32 [ %56, %48 ], [ %17, %38 ]
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = getelementptr inbounds %struct.optstr, ptr %52, i64 %8, i32 1
  store ptr null, ptr %53, align 8, !tbaa !44
  %54 = load ptr, ptr %51, align 8, !tbaa !7
  %55 = getelementptr inbounds %struct.optstr, ptr %54, i64 %8
  store ptr @.str.6.51, ptr %55, align 8, !tbaa !42
  %56 = tail call i32 @next(i32 noundef %49) #22
  %57 = icmp slt i32 %56, %40
  br i1 %57, label %48, label %58, !llvm.loop !54

58:                                               ; preds = %48, %38, %12
  %59 = phi i32 [ %13, %12 ], [ %40, %38 ], [ %40, %48 ]
  %60 = add nsw i32 %59, 1
  %61 = load i32, ptr @nlin, align 4, !tbaa !11
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %12, label %63, !llvm.loop !55

63:                                               ; preds = %58
  %.lcssa = phi i32 [ %61, %58 ]
  %64 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %65

65:                                               ; preds = %63, %5
  %66 = phi i32 [ %64, %63 ], [ %6, %5 ]
  %67 = phi i32 [ %.lcssa, %63 ], [ %7, %5 ]
  %68 = add nuw nsw i64 %8, 1
  %69 = sext i32 %66 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %5, label %71, !llvm.loop !56

71:                                               ; preds = %65, %0
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @vspand(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp sgt i32 %0, -1
  %5 = load i32, ptr @nlin, align 4
  %6 = icmp sgt i32 %5, %0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = tail call i32 @ctype(i32 noundef %0, i32 noundef %1) #22
  %17 = icmp eq i32 %16, 94
  br i1 %17, label %33, label %18

18:                                               ; preds = %15, %13
  %19 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %9
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.optstr, ptr %20, i64 %21
  %23 = getelementptr inbounds %struct.optstr, ptr %20, i64 %21, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %9
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load ptr, ptr %22, align 8, !tbaa !42
  %32 = tail call i32 @vspen(ptr noundef %31) #23
  br label %33

33:                                               ; preds = %30, %26, %18, %15, %8, %3
  %34 = phi i32 [ %32, %30 ], [ 0, %3 ], [ 0, %8 ], [ 1, %15 ], [ 0, %18 ], [ 0, %26 ]
  ret i32 %34
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @vspen(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @point(i32 noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @match(ptr noundef nonnull %0, ptr noundef nonnull @.str.6.51) #22
  br label %10

10:                                               ; preds = %8, %3, %1
  %11 = phi i32 [ %9, %8 ], [ 0, %1 ], [ 0, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind optsize uwtable
define internal void @maktab() #2 {
  %1 = alloca [20 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %1) #25
  %2 = load i32, ptr @ncol, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %317

4:                                                ; preds = %312, %0
  %5 = phi i64 [ %313, %312 ], [ 0, %0 ]
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %5
  store i32 0, ptr %7, align 4, !tbaa !11
  %8 = load ptr, ptr @tabout, align 8, !tbaa !7
  %9 = add nuw nsw i64 %5, 80
  %10 = trunc i64 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.54, i32 noundef %10) #23
  br label %12

12:                                               ; preds = %191, %4
  %13 = phi i32 [ 0, %4 ], [ %192, %191 ]
  %14 = phi i32 [ 0, %4 ], [ %193, %191 ]
  %15 = phi i1 [ false, %4 ], [ true, %191 ]
  %16 = phi i1 [ true, %4 ], [ false, %191 ]
  %17 = phi i32 [ 0, %4 ], [ 1, %191 ]
  br i1 %15, label %18, label %21

18:                                               ; preds = %12
  %19 = load ptr, ptr @tabout, align 8, !tbaa !7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.1.55, i32 noundef %10, i32 noundef %10) #23
  br label %21

21:                                               ; preds = %18, %12
  %22 = load i32, ptr @nlin, align 4, !tbaa !11
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %191

24:                                               ; preds = %184, %21
  %25 = phi i32 [ %185, %184 ], [ %13, %21 ]
  %26 = phi i32 [ %186, %184 ], [ %14, %21 ]
  %27 = phi i64 [ %187, %184 ], [ 0, %21 ]
  %28 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %184

31:                                               ; preds = %24
  %32 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %27
  %33 = load i32, ptr %32, align 4, !tbaa !11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %184

35:                                               ; preds = %31
  %36 = trunc i64 %27 to i32
  %37 = tail call i32 @prev(i32 noundef %36) #22
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %52

39:                                               ; preds = %49, %35
  %40 = phi i32 [ %50, %49 ], [ %37, %35 ]
  %41 = phi i32 [ %40, %49 ], [ %36, %35 ]
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = getelementptr inbounds %struct.optstr, ptr %44, i64 %5
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = tail call i32 @vspen(ptr noundef %46) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %39
  %50 = tail call i32 @prev(i32 noundef %40) #22
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %39, label %52, !llvm.loop !57

52:                                               ; preds = %49, %39, %35
  %53 = phi i32 [ %36, %35 ], [ %40, %49 ], [ %41, %39 ]
  %54 = tail call i32 @fspan(i32 noundef %53, i32 noundef %6) #22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %184

56:                                               ; preds = %52
  %57 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %27
  %58 = load ptr, ptr %57, align 8, !tbaa !7
  %59 = getelementptr inbounds %struct.optstr, ptr %58, i64 %5
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = ptrtoint ptr %60 to i64
  %62 = trunc i64 %61 to i32
  %63 = tail call i32 @point(i32 noundef %62) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %56
  %66 = load i8, ptr %60, align 1, !tbaa !16
  %67 = icmp eq i8 %66, 92
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds i8, ptr %60, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !16
  %71 = icmp eq i8 %70, 82
  br i1 %71, label %184, label %72

72:                                               ; preds = %68, %65, %56
  %73 = tail call i32 @ctype(i32 noundef %53, i32 noundef %6) #22
  switch i32 %73, label %184 [
    i32 97, label %74
    i32 110, label %91
    i32 114, label %153
    i32 99, label %153
    i32 108, label %153
  ]

74:                                               ; preds = %72
  %75 = load ptr, ptr %57, align 8, !tbaa !7
  %76 = getelementptr inbounds %struct.optstr, ptr %75, i64 %5
  %77 = load ptr, ptr %76, align 8, !tbaa !42
  %78 = ptrtoint ptr %77 to i64
  %79 = trunc i64 %78 to i32
  %80 = add i32 %79, -1
  %81 = icmp ult i32 %80, 127
  %82 = and i1 %15, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = icmp eq i32 %26, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load ptr, ptr @tabout, align 8, !tbaa !7
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.2.56, i32 noundef 31, i32 noundef 32) #23
  br label %88

88:                                               ; preds = %85, %83
  store i32 1, ptr %7, align 4, !tbaa !11
  %89 = load ptr, ptr @tabout, align 8, !tbaa !7
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.3.57, ptr noundef %77, i32 noundef 32, i32 noundef 32, ptr noundef %77) #23
  br label %91

91:                                               ; preds = %88, %74, %72
  %92 = phi i32 [ 1, %74 ], [ 1, %88 ], [ %25, %72 ]
  %93 = phi i32 [ %26, %74 ], [ 1, %88 ], [ %26, %72 ]
  %94 = load ptr, ptr %57, align 8, !tbaa !7
  %95 = getelementptr inbounds %struct.optstr, ptr %94, i64 %5, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !44
  %97 = icmp eq ptr %96, null
  br i1 %97, label %153, label %98

98:                                               ; preds = %91
  %99 = or i32 %93, %17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load ptr, ptr @tabout, align 8, !tbaa !7
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.2.56, i32 noundef 31, i32 noundef 32) #23
  %104 = load ptr, ptr %57, align 8, !tbaa !7
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi ptr [ %104, %101 ], [ %94, %98 ]
  store i32 1, ptr %7, align 4, !tbaa !11
  %107 = getelementptr inbounds %struct.optstr, ptr %106, i64 %5
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  %109 = tail call i32 @real(ptr noundef %108) #22
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %134, label %111

111:                                              ; preds = %105
  %112 = tail call i32 @vspen(ptr noundef %108) #22
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %111
  %115 = ptrtoint ptr %108 to i64
  %116 = trunc i64 %115 to i32
  %117 = add i32 %116, -1
  %118 = icmp ult i32 %117, 127
  %119 = zext i1 %118 to i32
  %120 = icmp eq i32 %17, %119
  br i1 %120, label %121, label %184

121:                                              ; preds = %114
  %122 = load ptr, ptr @tabout, align 8, !tbaa !7
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.4.58, i32 noundef 38) #23
  %124 = sext i32 %53 to i64
  %125 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !11
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %127, i64 %5
  %129 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %127, i64 %5
  tail call void @wide(ptr noundef %108, ptr noundef nonnull %128, ptr noundef nonnull %129) #23
  %130 = load ptr, ptr @tabout, align 8, !tbaa !7
  %131 = tail call i32 @fputc(i32 10, ptr %130)
  %132 = load ptr, ptr @tabout, align 8, !tbaa !7
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.6.59, i32 noundef 31, i32 noundef 38, i32 noundef 31, i32 noundef 38) #23
  br label %134

134:                                              ; preds = %121, %111, %105
  br i1 %16, label %135, label %184

135:                                              ; preds = %134
  %136 = load ptr, ptr %57, align 8, !tbaa !7
  %137 = getelementptr inbounds %struct.optstr, ptr %136, i64 %5, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !44
  %139 = tail call i32 @real(ptr noundef %138) #22
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %184, label %141

141:                                              ; preds = %135
  %142 = tail call i32 @vspen(ptr noundef %138) #22
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %184

144:                                              ; preds = %141
  %145 = tail call i32 @barent(ptr noundef %138) #22
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %184

147:                                              ; preds = %144
  %148 = load ptr, ptr @tabout, align 8, !tbaa !7
  %149 = load i32, ptr @F1, align 4, !tbaa !11
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str.7.60, i32 noundef 38, i32 noundef %149, ptr noundef %138, i32 noundef %149) #23
  %151 = load ptr, ptr @tabout, align 8, !tbaa !7
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef nonnull @.str.6.59, i32 noundef 32, i32 noundef 38, i32 noundef 32, i32 noundef 38) #23
  br label %184

153:                                              ; preds = %91, %72, %72, %72
  %154 = phi i32 [ %92, %91 ], [ %25, %72 ], [ %25, %72 ], [ %25, %72 ]
  %155 = phi i32 [ %93, %91 ], [ %26, %72 ], [ %26, %72 ], [ %26, %72 ]
  %156 = load ptr, ptr %57, align 8, !tbaa !7
  %157 = getelementptr inbounds %struct.optstr, ptr %156, i64 %5
  %158 = load ptr, ptr %157, align 8, !tbaa !42
  %159 = tail call i32 @real(ptr noundef %158) #22
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %184, label %161

161:                                              ; preds = %153
  %162 = tail call i32 @vspen(ptr noundef %158) #22
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %184

164:                                              ; preds = %161
  %165 = ptrtoint ptr %158 to i64
  %166 = trunc i64 %165 to i32
  %167 = add i32 %166, -1
  %168 = icmp ult i32 %167, 127
  %169 = zext i1 %168 to i32
  %170 = icmp eq i32 %17, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %164
  %172 = load ptr, ptr @tabout, align 8, !tbaa !7
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.4.58, i32 noundef 38) #23
  %174 = sext i32 %53 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !11
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %177, i64 %5
  %179 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %177, i64 %5
  tail call void @wide(ptr noundef %158, ptr noundef nonnull %178, ptr noundef nonnull %179) #23
  %180 = load ptr, ptr @tabout, align 8, !tbaa !7
  %181 = tail call i32 @fputc(i32 10, ptr %180)
  %182 = load ptr, ptr @tabout, align 8, !tbaa !7
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.6.59, i32 noundef %10, i32 noundef 38, i32 noundef %10, i32 noundef 38) #23
  br label %184

184:                                              ; preds = %171, %164, %161, %153, %147, %144, %141, %135, %134, %114, %72, %68, %52, %31, %24
  %185 = phi i32 [ %25, %72 ], [ %154, %171 ], [ %154, %161 ], [ %154, %153 ], [ %154, %164 ], [ %92, %134 ], [ %92, %135 ], [ %92, %141 ], [ %92, %144 ], [ %92, %147 ], [ %92, %114 ], [ %25, %68 ], [ %25, %52 ], [ %25, %24 ], [ %25, %31 ]
  %186 = phi i32 [ %26, %72 ], [ %155, %171 ], [ %155, %161 ], [ %155, %153 ], [ %155, %164 ], [ 1, %134 ], [ 1, %135 ], [ 1, %141 ], [ 1, %144 ], [ 1, %147 ], [ 1, %114 ], [ %26, %68 ], [ %26, %52 ], [ %26, %24 ], [ %26, %31 ]
  %187 = add nuw nsw i64 %27, 1
  %188 = load i32, ptr @nlin, align 4, !tbaa !11
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %24, label %191, !llvm.loop !58

191:                                              ; preds = %184, %21
  %192 = phi i32 [ %13, %21 ], [ %185, %184 ]
  %193 = phi i32 [ %14, %21 ], [ %186, %184 ]
  br i1 %16, label %12, label %194, !llvm.loop !59

194:                                              ; preds = %191
  %.lcssa2 = phi i32 [ %192, %191 ]
  %.lcssa1 = phi i32 [ %193, %191 ]
  %195 = icmp eq i32 %.lcssa2, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %194
  %197 = load ptr, ptr @tabout, align 8, !tbaa !7
  %198 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.8.61, i32 noundef 32, i32 noundef %10, i32 noundef %10, i32 noundef 32) #23
  br label %199

199:                                              ; preds = %196, %194
  %200 = icmp eq i32 %.lcssa1, 0
  br i1 %200, label %213, label %201

201:                                              ; preds = %199
  %202 = load ptr, ptr @tabout, align 8, !tbaa !7
  %203 = add nuw nsw i32 %6, 60
  %204 = trunc i64 %5 to i32
  %205 = add i32 %204, 60
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.9.62, i32 noundef %205, i32 noundef 31) #23
  %207 = load ptr, ptr @tabout, align 8, !tbaa !7
  %208 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %207, ptr noundef nonnull @.str.10.63, i32 noundef 38, i32 noundef %205, i32 noundef 32) #23
  %209 = load ptr, ptr @tabout, align 8, !tbaa !7
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str.11.64, i32 noundef 38, i32 noundef %10, i32 noundef %10, i32 noundef 38) #23
  %211 = load ptr, ptr @tabout, align 8, !tbaa !7
  %212 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef nonnull @.str.12.65, i32 noundef 38, i32 noundef %10, i32 noundef %203, i32 noundef %10, i32 noundef 38) #23
  br label %213

213:                                              ; preds = %201, %199
  %214 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %5
  %215 = load i8, ptr %214, align 2, !tbaa !16
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr @tabout, align 8, !tbaa !7
  %219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.13.66, i32 noundef 38, ptr noundef nonnull %214) #23
  %220 = load ptr, ptr @tabout, align 8, !tbaa !7
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.6.59, i32 noundef %10, i32 noundef 38, i32 noundef %10, i32 noundef 38) #23
  br label %222

222:                                              ; preds = %217, %213
  %223 = load i32, ptr @nlin, align 4, !tbaa !11
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %312

225:                                              ; preds = %307, %222
  %226 = phi i64 [ %308, %307 ], [ 0, %222 ]
  %227 = trunc i64 %226 to i32
  %228 = tail call i32 @lspan(i32 noundef %227, i32 noundef %6) #22
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %307, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %226
  %232 = load ptr, ptr %231, align 8, !tbaa !7
  %233 = sub nsw i32 %6, %228
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.optstr, ptr %232, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !42
  %237 = tail call i32 @real(ptr noundef %236) #22
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %307, label %239

239:                                              ; preds = %230
  %240 = tail call i32 @barent(ptr noundef %236) #22
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %307

242:                                              ; preds = %239
  %243 = tail call i32 @vspen(ptr noundef %236) #22
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %307

245:                                              ; preds = %242
  %246 = load ptr, ptr @tabout, align 8, !tbaa !7
  %247 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.4.58, i32 noundef 38) #23
  %248 = load ptr, ptr %231, align 8, !tbaa !7
  %249 = getelementptr inbounds %struct.optstr, ptr %248, i64 %234
  %250 = load ptr, ptr %249, align 8, !tbaa !42
  %251 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %226
  %252 = load i32, ptr %251, align 4, !tbaa !11
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %253, i64 %234
  %255 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %253, i64 %234
  tail call void @wide(ptr noundef %250, ptr noundef nonnull %254, ptr noundef nonnull %255) #23
  %256 = icmp sgt i32 %228, -1
  br i1 %256, label %257, label %278

257:                                              ; preds = %245
  %258 = zext i32 %228 to i64
  br label %259

259:                                              ; preds = %275, %257
  %260 = phi i64 [ %258, %257 ], [ %276, %275 ]
  %261 = load ptr, ptr @tabout, align 8, !tbaa !7
  %262 = sub nsw i64 %9, %260
  %263 = trunc i64 %262 to i32
  %264 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.14.67, i32 noundef %263) #23
  %265 = load i32, ptr @expflg, align 4, !tbaa !11
  %266 = icmp eq i32 %265, 0
  %267 = icmp ne i64 %260, 0
  %268 = and i1 %267, %266
  br i1 %268, label %269, label %275

269:                                              ; preds = %259
  %270 = load ptr, ptr @tabout, align 8, !tbaa !7
  %271 = sub nsw i64 %5, %260
  %272 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !11
  %274 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %270, ptr noundef nonnull @.str.15.68, i32 noundef %273) #23
  br label %275

275:                                              ; preds = %269, %259
  %276 = add nsw i64 %260, -1
  %277 = icmp sgt i64 %260, 0
  br i1 %277, label %259, label %278, !llvm.loop !60

278:                                              ; preds = %275, %245
  %279 = load ptr, ptr @tabout, align 8, !tbaa !7
  %280 = tail call i32 @fputc(i32 10, ptr %279)
  %281 = load ptr, ptr @tabout, align 8, !tbaa !7
  %282 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.16.69, i32 noundef 38, i32 noundef 38, i32 noundef 38, i32 noundef %228) #23
  %283 = load ptr, ptr @tabout, align 8, !tbaa !7
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef nonnull @.str.17.70, i32 noundef 38, i32 noundef 38) #23
  %285 = icmp slt i32 %228, 1
  br i1 %285, label %307, label %286

286:                                              ; preds = %278
  %287 = add nuw i32 %228, 1
  %288 = zext i32 %287 to i64
  br label %289

289:                                              ; preds = %301, %286
  %290 = phi i64 [ 1, %286 ], [ %305, %301 ]
  %291 = trunc i64 %290 to i32
  %292 = add nsw i32 %233, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !11
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %289
  %298 = load ptr, ptr @tabout, align 8, !tbaa !7
  %299 = add nsw i32 %292, 60
  %300 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %298, ptr noundef nonnull @.str.18.71, i32 noundef %299, i32 noundef 38) #23
  br label %301

301:                                              ; preds = %297, %289
  %302 = load ptr, ptr @tabout, align 8, !tbaa !7
  %303 = add nsw i32 %292, 80
  %304 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef nonnull @.str.19.72, i32 noundef %303, i32 noundef 38) #23
  %305 = add nuw nsw i64 %290, 1
  %306 = icmp eq i64 %305, %288
  br i1 %306, label %307, label %289, !llvm.loop !61

307:                                              ; preds = %301, %278, %242, %239, %230, %225
  %308 = add nuw nsw i64 %226, 1
  %309 = load i32, ptr @nlin, align 4, !tbaa !11
  %310 = sext i32 %309 to i64
  %311 = icmp slt i64 %308, %310
  br i1 %311, label %225, label %312, !llvm.loop !62

312:                                              ; preds = %307, %222
  %313 = add nuw nsw i64 %5, 1
  %314 = load i32, ptr @ncol, align 4, !tbaa !11
  %315 = sext i32 %314 to i64
  %316 = icmp slt i64 %313, %315
  br i1 %316, label %4, label %317, !llvm.loop !63

317:                                              ; preds = %312, %0
  %318 = load i32, ptr @textflg, align 4, !tbaa !11
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  tail call void @untext() #22
  br label %321

321:                                              ; preds = %320, %317
  %322 = load i32, ptr @evenflg, align 4, !tbaa !11
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %321
  %325 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %378

326:                                              ; preds = %321
  %327 = load ptr, ptr @tabout, align 8, !tbaa !7
  %328 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %327, ptr noundef nonnull @.str.54, i32 noundef 38) #23
  %329 = load i32, ptr @ncol, align 4, !tbaa !11
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %333, label %391

331:                                              ; preds = %345
  %.lcssa = phi i32 [ %346, %345 ]
  %332 = icmp sgt i32 %.lcssa, 0
  br i1 %332, label %350, label %391

333:                                              ; preds = %345, %326
  %334 = phi i32 [ %346, %345 ], [ %329, %326 ]
  %335 = phi i64 [ %347, %345 ], [ 0, %326 ]
  %336 = getelementptr inbounds [0 x i32], ptr @evenup, i64 0, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !11
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %345, label %339

339:                                              ; preds = %333
  %340 = load ptr, ptr @tabout, align 8, !tbaa !7
  %341 = trunc i64 %335 to i32
  %342 = add i32 %341, 80
  %343 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %340, ptr noundef nonnull @.str.11.64, i32 noundef %342, i32 noundef 38, i32 noundef 38, i32 noundef %342) #23
  %344 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %345

345:                                              ; preds = %339, %333
  %346 = phi i32 [ %334, %333 ], [ %344, %339 ]
  %347 = add nuw nsw i64 %335, 1
  %348 = sext i32 %346 to i64
  %349 = icmp slt i64 %347, %348
  br i1 %349, label %333, label %331, !llvm.loop !64

350:                                              ; preds = %373, %331
  %351 = phi i32 [ %374, %373 ], [ %.lcssa, %331 ]
  %352 = phi i64 [ %375, %373 ], [ 0, %331 ]
  %353 = trunc i64 %352 to i32
  %354 = getelementptr inbounds [0 x i32], ptr @evenup, i64 0, i64 %352
  %355 = load i32, ptr %354, align 4, !tbaa !11
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %373, label %357

357:                                              ; preds = %350
  %358 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %352
  %359 = load i32, ptr %358, align 4, !tbaa !11
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %367, label %361

361:                                              ; preds = %357
  %362 = load ptr, ptr @tabout, align 8, !tbaa !7
  %363 = add nuw nsw i32 %353, 80
  %364 = trunc i64 %352 to i32
  %365 = add i32 %364, 60
  %366 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %362, ptr noundef nonnull @.str.20.73, i32 noundef %365, i32 noundef %365, i32 noundef %363, i32 noundef 38) #23
  br label %367

367:                                              ; preds = %361, %357
  %368 = load ptr, ptr @tabout, align 8, !tbaa !7
  %369 = trunc i64 %352 to i32
  %370 = add i32 %369, 80
  %371 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %368, ptr noundef nonnull @.str.9.62, i32 noundef %370, i32 noundef 38) #23
  %372 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %373

373:                                              ; preds = %367, %350
  %374 = phi i32 [ %351, %350 ], [ %372, %367 ]
  %375 = add nuw nsw i64 %352, 1
  %376 = sext i32 %374 to i64
  %377 = icmp slt i64 %375, %376
  br i1 %377, label %350, label %378, !llvm.loop !65

378:                                              ; preds = %373, %324
  %379 = phi i32 [ %325, %324 ], [ %374, %373 ]
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %391

381:                                              ; preds = %378
  %382 = zext i32 %379 to i64
  br label %383

383:                                              ; preds = %383, %381
  %384 = phi i64 [ 0, %381 ], [ %389, %383 ]
  %385 = phi i32 [ 0, %381 ], [ %388, %383 ]
  %386 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %384
  %387 = load i32, ptr %386, align 4, !tbaa !11
  %388 = add nsw i32 %387, %385
  %389 = add nuw nsw i64 %384, 1
  %390 = icmp eq i64 %389, %382
  br i1 %390, label %391, label %383, !llvm.loop !66

391:                                              ; preds = %383, %378, %331, %326
  %392 = phi i32 [ 0, %378 ], [ 0, %331 ], [ 0, %326 ], [ %388, %383 ]
  %393 = load i32, ptr @expflg, align 4, !tbaa !11
  %394 = icmp eq i32 %393, 0
  %395 = load ptr, ptr @tabout, align 8, !tbaa !7
  br i1 %394, label %436, label %396

396:                                              ; preds = %391
  %397 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %395, ptr noundef nonnull @.str.21.74, i32 noundef 38) #23
  %398 = load i32, ptr @ncol, align 4, !tbaa !11
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %408

400:                                              ; preds = %400, %396
  %401 = phi i32 [ %405, %400 ], [ 0, %396 ]
  %402 = load ptr, ptr @tabout, align 8, !tbaa !7
  %403 = add nuw nsw i32 %401, 80
  %404 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %402, ptr noundef nonnull @.str.22.75, i32 noundef %403) #23
  %405 = add nuw nsw i32 %401, 1
  %406 = load i32, ptr @ncol, align 4, !tbaa !11
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %400, label %408, !llvm.loop !67

408:                                              ; preds = %400, %396
  %409 = load ptr, ptr @tabout, align 8, !tbaa !7
  %410 = tail call i32 @fputc(i32 10, ptr %409)
  %411 = load ptr, ptr @tabout, align 8, !tbaa !7
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %411, ptr noundef nonnull @.str.23.76, i32 noundef 38, i32 noundef 38) #23
  %413 = load i32, ptr @boxflg, align 4, !tbaa !11
  %414 = icmp ne i32 %413, 0
  %415 = load i32, ptr @dboxflg, align 4
  %416 = icmp ne i32 %415, 0
  %417 = select i1 %414, i1 true, i1 %416
  %418 = load i32, ptr @allflg, align 4
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %417, i1 true, i1 %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %408
  %422 = add nsw i32 %392, 1
  br label %430

423:                                              ; preds = %408
  %424 = load i32, ptr @ncol, align 4, !tbaa !11
  %425 = add nsw i32 %424, -1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !11
  %429 = sub nsw i32 %392, %428
  br label %430

430:                                              ; preds = %423, %421
  %431 = phi i32 [ %422, %421 ], [ %429, %423 ]
  %432 = load ptr, ptr @tabout, align 8, !tbaa !7
  %433 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef nonnull @.str.24, i32 noundef 38, i32 noundef 38, i32 noundef %431) #23
  %434 = load ptr, ptr @tabout, align 8, !tbaa !7
  %435 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %434, ptr noundef nonnull @.str.17.70, i32 noundef 38, i32 noundef 38) #23
  br label %438

436:                                              ; preds = %391
  %437 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %395, ptr noundef nonnull @.str.25.77, i32 noundef 38) #23
  br label %438

438:                                              ; preds = %436, %430
  %439 = load ptr, ptr @tabout, align 8, !tbaa !7
  %440 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %439, ptr noundef nonnull @.str.54, i32 noundef 79) #23
  %441 = load i32, ptr @ncol, align 4, !tbaa !11
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %484

443:                                              ; preds = %438
  %444 = load i32, ptr @boxflg, align 4, !tbaa !11
  %445 = icmp ne i32 %444, 0
  %446 = load i32, ptr @allflg, align 4
  %447 = icmp ne i32 %446, 0
  %448 = select i1 %445, i1 true, i1 %447
  %449 = load i32, ptr @dboxflg, align 4
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %448, i1 true, i1 %450
  %452 = load i32, ptr @left1flg, align 4
  %453 = icmp ne i32 %452, 0
  %454 = select i1 %451, i1 true, i1 %453
  %455 = zext i1 %454 to i32
  br label %456

456:                                              ; preds = %477, %443
  %457 = phi i64 [ 0, %443 ], [ %480, %477 ]
  %458 = phi i32 [ %455, %443 ], [ %479, %477 ]
  %459 = trunc i64 %457 to i32
  %460 = load ptr, ptr @tabout, align 8, !tbaa !7
  %461 = add nuw nsw i32 %459, 40
  %462 = add nuw nsw i32 %459, 80
  %463 = trunc i64 %457 to i32
  %464 = add i32 %463, 79
  %465 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %460, ptr noundef nonnull @.str.26, i32 noundef %461, i32 noundef %464, i32 noundef %458, i32 noundef 38) #23
  %466 = load ptr, ptr @tabout, align 8, !tbaa !7
  %467 = trunc i64 %457 to i32
  %468 = add i32 %467, 40
  %469 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %466, ptr noundef nonnull @.str.19.72, i32 noundef %462, i32 noundef %468) #23
  %470 = getelementptr inbounds [20 x i32], ptr %1, i64 0, i64 %457
  %471 = load i32, ptr %470, align 4, !tbaa !11
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %477, label %473

473:                                              ; preds = %456
  %474 = load ptr, ptr @tabout, align 8, !tbaa !7
  %475 = add nuw nsw i32 %459, 60
  %476 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %474, ptr noundef nonnull @.str.19.72, i32 noundef %475, i32 noundef %468) #23
  br label %477

477:                                              ; preds = %473, %456
  %478 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %457
  %479 = load i32, ptr %478, align 4, !tbaa !11
  %480 = add nuw nsw i64 %457, 1
  %481 = load i32, ptr @ncol, align 4, !tbaa !11
  %482 = sext i32 %481 to i64
  %483 = icmp slt i64 %480, %482
  br i1 %483, label %456, label %484, !llvm.loop !68

484:                                              ; preds = %477, %438
  %485 = phi i32 [ %441, %438 ], [ %481, %477 ]
  %486 = load i32, ptr @rightl, align 4, !tbaa !11
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %495, label %488

488:                                              ; preds = %484
  %489 = load ptr, ptr @tabout, align 8, !tbaa !7
  %490 = add nsw i32 %485, 79
  %491 = add nsw i32 %485, 39
  %492 = add nsw i32 %485, 78
  %493 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %489, ptr noundef nonnull @.str.27, i32 noundef %490, i32 noundef %491, i32 noundef %492) #23
  %494 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %495

495:                                              ; preds = %488, %484
  %496 = phi i32 [ %494, %488 ], [ %485, %484 ]
  %497 = load ptr, ptr @tabout, align 8, !tbaa !7
  %498 = add nsw i32 %496, 79
  %499 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %497, ptr noundef nonnull @.str.28, i32 noundef %498) #23
  %500 = load i32, ptr @boxflg, align 4, !tbaa !11
  %501 = icmp ne i32 %500, 0
  %502 = load i32, ptr @allflg, align 4
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %501, i1 true, i1 %503
  %505 = load i32, ptr @dboxflg, align 4
  %506 = icmp ne i32 %505, 0
  %507 = select i1 %504, i1 true, i1 %506
  br i1 %507, label %508, label %516

508:                                              ; preds = %495
  %509 = load ptr, ptr @tabout, align 8, !tbaa !7
  %510 = load i32, ptr @ncol, align 4, !tbaa !11
  %511 = add nsw i32 %510, -1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !11
  %515 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %509, ptr noundef nonnull @.str.29, i32 noundef %514, i32 noundef 38) #23
  br label %516

516:                                              ; preds = %508, %495
  %517 = load ptr, ptr @tabout, align 8, !tbaa !7
  %518 = load i32, ptr @iline, align 4, !tbaa !11
  %519 = add nsw i32 %518, -1
  %520 = load ptr, ptr @ifile, align 8, !tbaa !7
  %521 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %517, ptr noundef nonnull @.str.30, i32 noundef %519, ptr noundef %520) #23
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %1) #25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @wide(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @point(i32 noundef %5) #22
  %7 = icmp eq i32 %6, 0
  %8 = load ptr, ptr @tabout, align 8, !tbaa !7
  br i1 %7, label %33, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr @F1, align 4, !tbaa !11
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.31, i32 noundef %10) #23
  %12 = load i8, ptr %1, align 1, !tbaa !16
  %13 = icmp sgt i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call void @putfont(ptr noundef nonnull %1) #22
  br label %15

15:                                               ; preds = %14, %9
  %16 = load i8, ptr %2, align 1, !tbaa !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @putsize(ptr noundef nonnull %2) #22
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @tabout, align 8, !tbaa !7
  %21 = tail call i32 @fputs(ptr %0, ptr %20)
  %22 = load i8, ptr %1, align 1, !tbaa !16
  %23 = icmp sgt i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @putfont(ptr noundef nonnull @.str.33) #22
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i8, ptr %2, align 1, !tbaa !16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @putsize(ptr noundef nonnull @.str.34) #22
  br label %29

29:                                               ; preds = %28, %25
  %30 = load ptr, ptr @tabout, align 8, !tbaa !7
  %31 = load i32, ptr @F1, align 4, !tbaa !11
  %32 = tail call i32 @fputc(i32 %31, ptr %30)
  br label %35

33:                                               ; preds = %3
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef %0) #23
  br label %35

35:                                               ; preds = %33, %29
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal i32 @filler(ptr noundef %0) #2 {
  %2 = ptrtoint ptr %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @point(i32 noundef %3) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr %0, align 1, !tbaa !16
  %8 = icmp eq i8 %7, 92
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !16
  %12 = icmp eq i8 %11, 82
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %6, %1
  %15 = phi i32 [ 0, %6 ], [ 0, %1 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @runout() #2 {
  %1 = load i32, ptr @boxflg, align 4, !tbaa !11
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @allflg, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @dboxflg, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @need() #23
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i32, ptr @ctrflg, align 4, !tbaa !11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @tabout, align 8, !tbaa !7
  %15 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 13, i64 1, ptr %14)
  %16 = load ptr, ptr @tabout, align 8, !tbaa !7
  %17 = tail call i64 @fwrite(ptr nonnull @.str.1.81, i64 31, i64 1, ptr %16)
  br label %18

18:                                               ; preds = %13, %10
  %19 = load ptr, ptr @tabout, align 8, !tbaa !7
  %20 = load i32, ptr @F1, align 4, !tbaa !11
  %21 = load i32, ptr @F2, align 4, !tbaa !11
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.2.82, i32 noundef %20, i32 noundef %21) #23
  %23 = load ptr, ptr @tabout, align 8, !tbaa !7
  %24 = tail call i64 @fwrite(ptr nonnull @.str.3.83, i64 11, i64 1, ptr %23)
  tail call void @deftail() #23
  %25 = load i32, ptr @nlin, align 4, !tbaa !11
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %27, %18
  %28 = phi i32 [ %29, %27 ], [ 0, %18 ]
  tail call void @putline(i32 noundef %28, i32 noundef %28) #22
  %29 = add nuw nsw i32 %28, 1
  %30 = load i32, ptr @nlin, align 4, !tbaa !11
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %27, label %32, !llvm.loop !69

32:                                               ; preds = %27, %18
  %33 = load i32, ptr @leftover, align 4, !tbaa !11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  tail call void @yetmore() #22
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr @tabout, align 8, !tbaa !7
  %38 = tail call i64 @fwrite(ptr nonnull @.str.4.84, i64 4, i64 1, ptr %37)
  %39 = load ptr, ptr @tabout, align 8, !tbaa !7
  %40 = tail call i64 @fwrite(ptr nonnull @.str.5.85, i64 9, i64 1, ptr %39)
  %41 = load ptr, ptr @tabout, align 8, !tbaa !7
  %42 = tail call i64 @fwrite(ptr nonnull @.str.6.86, i64 6, i64 1, ptr %41)
  %43 = load i32, ptr @ctrflg, align 4, !tbaa !11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr @tabout, align 8, !tbaa !7
  %47 = tail call i64 @fwrite(ptr nonnull @.str.7.87, i64 11, i64 1, ptr %46)
  br label %48

48:                                               ; preds = %45, %36
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @need() #12 {
  %1 = load i32, ptr @nlin, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %25

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %20, %3
  %6 = phi i64 [ 0, %3 ], [ %23, %20 ]
  %7 = phi i32 [ 0, %3 ], [ %22, %20 ]
  %8 = phi i32 [ 0, %3 ], [ %21, %20 ]
  %9 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %6
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = add nsw i32 %7, 1
  br label %20

14:                                               ; preds = %5
  %15 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  %18 = zext i1 %17 to i32
  %19 = add nsw i32 %8, %18
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi i32 [ %8, %12 ], [ %19, %14 ]
  %22 = phi i32 [ %13, %12 ], [ %7, %14 ]
  %23 = add nuw nsw i64 %6, 1
  %24 = icmp eq i64 %23, %4
  br i1 %24, label %25, label %5, !llvm.loop !70

25:                                               ; preds = %20, %0
  %26 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %27 = phi i32 [ 0, %0 ], [ %22, %20 ]
  %28 = load ptr, ptr @tabout, align 8, !tbaa !7
  %29 = shl nsw i32 %27, 1
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.11.108, i32 noundef %26, i32 noundef %29) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @deftail() #2 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #25
  br label %2

2:                                                ; preds = %11, %0
  %3 = phi i64 [ 0, %0 ], [ %12, %11 ]
  %4 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @tabout, align 8, !tbaa !7
  %9 = add nsw i32 %5, 96
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.12.88, i32 noundef %9) #23
  br label %11

11:                                               ; preds = %7, %2
  %12 = add nuw nsw i64 %3, 1
  %13 = icmp eq i64 %12, 100
  br i1 %13, label %14, label %2, !llvm.loop !71

14:                                               ; preds = %11
  %15 = load ptr, ptr @tabout, align 8, !tbaa !7
  %16 = tail call i64 @fwrite(ptr nonnull @.str.13.89, i64 11, i64 1, ptr %15)
  %17 = load ptr, ptr @tabout, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.14.90, i64 4, i64 1, ptr %17)
  %19 = load ptr, ptr @tabout, align 8, !tbaa !7
  %20 = tail call i64 @fwrite(ptr nonnull @.str.15.91, i64 7, i64 1, ptr %19)
  %21 = load ptr, ptr @tabout, align 8, !tbaa !7
  %22 = tail call i64 @fwrite(ptr nonnull @.str.16.92, i64 10, i64 1, ptr %21)
  %23 = load ptr, ptr @tabout, align 8, !tbaa !7
  %24 = tail call i64 @fwrite(ptr nonnull @.str.17.93, i64 32, i64 1, ptr %23)
  %25 = load ptr, ptr @tabout, align 8, !tbaa !7
  %26 = tail call i64 @fwrite(ptr nonnull @.str.18.94, i64 7, i64 1, ptr %25)
  %27 = load ptr, ptr @tabout, align 8, !tbaa !7
  %28 = tail call i64 @fwrite(ptr nonnull @.str.19.95, i64 11, i64 1, ptr %27)
  %29 = load ptr, ptr @tabout, align 8, !tbaa !7
  %30 = tail call i64 @fwrite(ptr nonnull @.str.20.96, i64 6, i64 1, ptr %29)
  br label %31

31:                                               ; preds = %40, %14
  %32 = phi i64 [ 0, %14 ], [ %41, %40 ]
  %33 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr @tabout, align 8, !tbaa !7
  %38 = add nsw i32 %34, 96
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.21.97, i32 noundef %38) #23
  br label %40

40:                                               ; preds = %36, %31
  %41 = add nuw nsw i64 %32, 1
  %42 = icmp eq i64 %41, 100
  br i1 %42, label %43, label %31, !llvm.loop !72

43:                                               ; preds = %40
  %44 = load i32, ptr @boxflg, align 4, !tbaa !11
  %45 = icmp ne i32 %44, 0
  %46 = load i32, ptr @allflg, align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 true, i1 %47
  %49 = load i32, ptr @dboxflg, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %43
  %53 = load i32, ptr @nlin, align 4, !tbaa !11
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !11
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = load i32, ptr @pr1403, align 4, !tbaa !11
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load ptr, ptr @tabout, align 8, !tbaa !7
  %64 = tail call i64 @fwrite(ptr nonnull @.str.22.98, i64 28, i64 1, ptr %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load ptr, ptr @tabout, align 8, !tbaa !7
  %67 = tail call i64 @fwrite(ptr nonnull @.str.23.99, i64 10, i64 1, ptr %66)
  %68 = load i32, ptr @nlin, align 4, !tbaa !11
  %69 = load i32, ptr @ncol, align 4, !tbaa !11
  %70 = load i32, ptr @dboxflg, align 4, !tbaa !11
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 45, i32 61
  tail call void @drawline(i32 noundef %68, i32 noundef 0, i32 noundef %69, i32 noundef %72, i32 noundef 1, i32 noundef 0) #22
  %73 = load ptr, ptr @tabout, align 8, !tbaa !7
  %74 = tail call i64 @fwrite(ptr nonnull @.str.24.100, i64 15, i64 1, ptr %73)
  br label %75

75:                                               ; preds = %65, %52, %43
  %76 = load i32, ptr @ncol, align 4, !tbaa !11
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %100, %75
  %79 = phi i32 [ %101, %100 ], [ 0, %75 ]
  %80 = load i32, ptr @nlin, align 4, !tbaa !11
  %81 = add nsw i32 %80, -1
  %82 = call i32 @left(i32 noundef %81, i32 noundef %79, ptr noundef nonnull %1) #22
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load ptr, ptr @tabout, align 8, !tbaa !7
  %86 = zext i32 %82 to i64
  %87 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !11
  %89 = add nsw i32 %88, 96
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.25.101, i32 noundef %89) #23
  %91 = load ptr, ptr @tabout, align 8, !tbaa !7
  %92 = load i32, ptr %87, align 4, !tbaa !11
  %93 = add nsw i32 %92, 96
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.26.102, i32 noundef %93) #23
  call void @tohcol(i32 noundef %79) #22
  %95 = load i32, ptr @nlin, align 4, !tbaa !11
  %96 = add nsw i32 %95, -1
  %97 = load i32, ptr %1, align 4, !tbaa !11
  call void @drawvert(i32 noundef %82, i32 noundef %96, i32 noundef %79, i32 noundef %97) #22
  %98 = load ptr, ptr @tabout, align 8, !tbaa !7
  %99 = call i64 @fwrite(ptr nonnull @.str.27.103, i64 12, i64 1, ptr %98)
  br label %100

100:                                              ; preds = %84, %78
  %101 = add nuw nsw i32 %79, 1
  %102 = load i32, ptr @ncol, align 4, !tbaa !11
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %78, label %104, !llvm.loop !73

104:                                              ; preds = %100, %75
  %105 = load i32, ptr @boxflg, align 4, !tbaa !11
  %106 = icmp ne i32 %105, 0
  %107 = load i32, ptr @allflg, align 4
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %106, i1 true, i1 %108
  %110 = load i32, ptr @dboxflg, align 4
  %111 = icmp ne i32 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %104
  %114 = load ptr, ptr @tabout, align 8, !tbaa !7
  %115 = call i64 @fwrite(ptr nonnull @.str.28.104, i64 20, i64 1, ptr %114)
  %116 = load ptr, ptr @tabout, align 8, !tbaa !7
  %117 = call i64 @fwrite(ptr nonnull @.str.29.105, i64 24, i64 1, ptr %116)
  %118 = load i32, ptr @nlin, align 4, !tbaa !11
  %119 = add nsw i32 %118, -1
  %120 = load i32, ptr @ncol, align 4, !tbaa !11
  %121 = load i32, ptr @dboxflg, align 4, !tbaa !11
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i32 1, i32 2
  call void @drawvert(i32 noundef 0, i32 noundef %119, i32 noundef %120, i32 noundef %123) #22
  %124 = load ptr, ptr @tabout, align 8, !tbaa !7
  %125 = call i32 @fputc(i32 10, ptr %124)
  br label %126

126:                                              ; preds = %113, %104
  %127 = load ptr, ptr @tabout, align 8, !tbaa !7
  %128 = call i64 @fwrite(ptr nonnull @.str.30.106, i64 4, i64 1, ptr %127)
  %129 = load ptr, ptr @tabout, align 8, !tbaa !7
  %130 = call i64 @fwrite(ptr nonnull @.str.31.107, i64 3, i64 1, ptr %129)
  %131 = load ptr, ptr @tabout, align 8, !tbaa !7
  %132 = call i64 @fwrite(ptr nonnull @.str.32, i64 4, i64 1, ptr %131)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @runtabs(i32 noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr @tabout, align 8, !tbaa !7
  %4 = tail call i64 @fwrite(ptr nonnull @.str.8.109, i64 4, i64 1, ptr %3)
  %5 = load i32, ptr @ncol, align 4, !tbaa !11
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %78

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %8
  br label %10

10:                                               ; preds = %73, %7
  %11 = phi i64 [ 0, %7 ], [ %74, %73 ]
  %12 = tail call i32 @prev(i32 noundef %0) #22
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %27

14:                                               ; preds = %24, %10
  %15 = phi i32 [ %25, %24 ], [ %12, %10 ]
  %16 = phi i32 [ %15, %24 ], [ %0, %10 ]
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.optstr, ptr %19, i64 %11
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = tail call i32 @vspen(ptr noundef %21) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = tail call i32 @prev(i32 noundef %15) #22
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %14, label %27, !llvm.loop !74

27:                                               ; preds = %24, %14, %10
  %28 = phi i32 [ %0, %10 ], [ %15, %24 ], [ %16, %14 ]
  %29 = trunc i64 %11 to i32
  %30 = tail call i32 @fspan(i32 noundef %28, i32 noundef %29) #22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %27
  %33 = tail call i32 @ctype(i32 noundef %28, i32 noundef %29) #22
  switch i32 %33, label %73 [
    i32 110, label %34
    i32 97, label %34
    i32 115, label %65
    i32 99, label %58
    i32 108, label %58
    i32 114, label %58
  ]

34:                                               ; preds = %32, %32
  %35 = load ptr, ptr %9, align 8, !tbaa !7
  %36 = getelementptr inbounds %struct.optstr, ptr %35, i64 %11, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %11
  %41 = load i32, ptr %40, align 4, !tbaa !11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @tabout, align 8, !tbaa !7
  %45 = trunc i64 %11 to i32
  %46 = add i32 %45, 60
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.9.110, i32 noundef %46) #23
  br label %48

48:                                               ; preds = %43, %39, %34
  switch i32 %33, label %58 [
    i32 110, label %49
    i32 97, label %49
  ]

49:                                               ; preds = %48, %48
  %50 = load ptr, ptr %9, align 8, !tbaa !7
  %51 = getelementptr inbounds %struct.optstr, ptr %50, i64 %11, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds [0 x i32], ptr @rused, i64 0, i64 %11
  %56 = load i32, ptr %55, align 4, !tbaa !11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %68

58:                                               ; preds = %49, %48, %32, %32, %32
  %59 = getelementptr inbounds [0 x i32], ptr @used, i64 0, i64 %11
  %60 = load i32, ptr %59, align 4, !tbaa !11
  %61 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %11
  %62 = load i32, ptr %61, align 4, !tbaa !11
  %63 = sub i32 0, %62
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %73, label %68

65:                                               ; preds = %32
  %66 = tail call i32 @lspan(i32 noundef %0, i32 noundef %29) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65, %58, %54
  %69 = load ptr, ptr @tabout, align 8, !tbaa !7
  %70 = trunc i64 %11 to i32
  %71 = add i32 %70, 80
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.9.110, i32 noundef %71) #23
  br label %73

73:                                               ; preds = %68, %65, %58, %54, %32, %27
  %74 = add nuw nsw i64 %11, 1
  %75 = load i32, ptr @ncol, align 4, !tbaa !11
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %10, label %78, !llvm.loop !75

78:                                               ; preds = %73, %2
  %79 = load ptr, ptr @tabout, align 8, !tbaa !7
  %80 = tail call i32 @fputc(i32 10, ptr %79)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @ifline(ptr noundef %0) #2 {
  %2 = ptrtoint ptr %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = tail call i32 @point(i32 noundef %3) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr %0, align 1, !tbaa !16
  %8 = icmp eq i8 %7, 92
  %9 = zext i1 %8 to i64
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = load i8, ptr %10, align 1, !tbaa !16
  %16 = icmp eq i8 %15, 61
  %17 = select i1 %16, i32 61, i32 0
  %18 = icmp eq i8 %15, 95
  %19 = select i1 %18, i32 45, i32 %17
  br label %20

20:                                               ; preds = %14, %6, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %6 ], [ %19, %14 ]
  ret i32 %21
}

; Function Attrs: nounwind optsize uwtable
define internal void @putline(i32 noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr @watchout, align 4, !tbaa !11
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  store i32 0, ptr @once, align 4, !tbaa !11
  %6 = load i32, ptr @allflg, align 4, !tbaa !11
  %7 = icmp ne i32 %6, 0
  %8 = load i32, ptr @boxflg, align 4
  %9 = icmp ne i32 %8, 0
  %10 = select i1 %7, i1 true, i1 %9
  %11 = load i32, ptr @dboxflg, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = select i1 %12, i32 61, i32 45
  tail call void @fullwide(i32 noundef 0, i32 noundef %15) #22
  br label %16

16:                                               ; preds = %14, %5, %2
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %80

21:                                               ; preds = %16
  %22 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %17
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr @ncol, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %80

28:                                               ; preds = %21
  %29 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %17
  br label %30

30:                                               ; preds = %74, %28
  %31 = phi i64 [ 0, %28 ], [ %76, %74 ]
  %32 = phi i32 [ undef, %28 ], [ %75, %74 ]
  %33 = load ptr, ptr %29, align 8, !tbaa !7
  %34 = getelementptr inbounds %struct.optstr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = icmp eq ptr %35, null
  br i1 %36, label %74, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @vspen(ptr noundef nonnull %35) #22
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %66, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr @nlin, align 4, !tbaa !11
  %42 = icmp sgt i32 %41, %1
  br i1 %42, label %43, label %56

43:                                               ; preds = %52, %40
  %44 = phi i32 [ %53, %52 ], [ %1, %40 ]
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = getelementptr inbounds %struct.optstr, ptr %47, i64 %31
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = tail call i32 @vspen(ptr noundef %49) #22
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = tail call i32 @next(i32 noundef %44) #22
  %54 = load i32, ptr @nlin, align 4, !tbaa !11
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %43, label %56, !llvm.loop !76

56:                                               ; preds = %52, %43, %40
  %57 = phi i32 [ %1, %40 ], [ %44, %43 ], [ %53, %52 ]
  %58 = phi ptr [ %35, %40 ], [ %49, %43 ], [ %49, %52 ]
  %59 = ptrtoint ptr %58 to i64
  %60 = trunc i64 %59 to i32
  %61 = add i32 %60, -1
  %62 = icmp ult i32 %61, 127
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load ptr, ptr @tabout, align 8, !tbaa !7
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.113, ptr noundef %58) #23
  br label %74

66:                                               ; preds = %37
  %67 = ptrtoint ptr %35 to i64
  %68 = trunc i64 %67 to i32
  %69 = tail call i32 @point(i32 noundef %68) #22
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load ptr, ptr @tabout, align 8, !tbaa !7
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.113, ptr noundef nonnull %35) #23
  store i32 1, ptr @watchout, align 4, !tbaa !11
  br label %74

74:                                               ; preds = %71, %66, %63, %56, %30
  %75 = phi i32 [ %32, %30 ], [ %57, %63 ], [ %57, %56 ], [ %32, %66 ], [ %32, %71 ]
  %76 = add nuw nsw i64 %31, 1
  %77 = load i32, ptr @ncol, align 4, !tbaa !11
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %30, label %80, !llvm.loop !77

80:                                               ; preds = %74, %21, %16
  %81 = phi i32 [ undef, %21 ], [ undef, %16 ], [ %75, %74 ]
  %82 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %17
  %83 = load i32, ptr %82, align 4, !tbaa !11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr @tabout, align 8, !tbaa !7
  %87 = add nsw i32 %83, 96
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.1.114, i32 noundef %87) #23
  br label %89

89:                                               ; preds = %85, %80
  %90 = tail call i32 @prev(i32 noundef %1) #22
  %91 = load ptr, ptr %18, align 8, !tbaa !7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %91) #23
  br label %604

95:                                               ; preds = %89
  %96 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %17
  %97 = load i32, ptr %96, align 4, !tbaa !11
  switch i32 %97, label %604 [
    i32 0, label %98
    i32 61, label %106
    i32 45, label %106
  ]

98:                                               ; preds = %95
  %99 = load i32, ptr @ncol, align 4, !tbaa !11
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %194

101:                                              ; preds = %98
  %102 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %17
  %103 = icmp sgt i32 %90, -1
  %104 = zext i32 %90 to i64
  %105 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %104
  br label %107

106:                                              ; preds = %95, %95
  tail call void @fullwide(i32 noundef %1, i32 noundef %97) #22
  br label %604

107:                                              ; preds = %131, %101
  %108 = phi i64 [ 0, %101 ], [ %133, %131 ]
  %109 = phi i32 [ 0, %101 ], [ %132, %131 ]
  %110 = load ptr, ptr %18, align 8, !tbaa !7
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load i32, ptr %96, align 4, !tbaa !11
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load ptr, ptr %102, align 8, !tbaa !7
  %117 = getelementptr inbounds %struct.optstr, ptr %116, i64 %108
  %118 = load ptr, ptr %117, align 8, !tbaa !42
  %119 = tail call i32 @vspen(ptr noundef %118) #22
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 %109, i32 1
  br label %122

122:                                              ; preds = %115, %112, %107
  %123 = phi i32 [ %109, %112 ], [ %109, %107 ], [ %121, %115 ]
  br i1 %103, label %124, label %131

124:                                              ; preds = %122
  %125 = load ptr, ptr %105, align 8, !tbaa !7
  %126 = getelementptr inbounds %struct.optstr, ptr %125, i64 %108
  %127 = load ptr, ptr %126, align 8, !tbaa !42
  %128 = tail call i32 @vspen(ptr noundef %127) #22
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 %123, i32 1
  br label %131

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %123, %122 ], [ %130, %124 ]
  %133 = add nuw nsw i64 %108, 1
  %134 = load i32, ptr @ncol, align 4, !tbaa !11
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %107, label %137, !llvm.loop !78

137:                                              ; preds = %131
  %.lcssa1 = phi i32 [ %132, %131 ]
  %.lcssa = phi i32 [ %134, %131 ]
  %138 = icmp eq i32 %.lcssa1, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %137
  %140 = load ptr, ptr @tabout, align 8, !tbaa !7
  %141 = tail call i64 @fwrite(ptr nonnull @.str.2.115, i64 17, i64 1, ptr %140)
  %142 = load ptr, ptr @tabout, align 8, !tbaa !7
  %143 = tail call i64 @fwrite(ptr nonnull @.str.3.116, i64 13, i64 1, ptr %142)
  %144 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %145

145:                                              ; preds = %139, %137
  %146 = phi i32 [ %144, %139 ], [ %.lcssa, %137 ]
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %194

148:                                              ; preds = %145
  %149 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %17
  %150 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %17
  br label %151

151:                                              ; preds = %188, %148
  %152 = phi i64 [ 0, %148 ], [ %190, %188 ]
  %153 = phi i32 [ 0, %148 ], [ %189, %188 ]
  %154 = load ptr, ptr %149, align 8, !tbaa !7
  %155 = getelementptr inbounds %struct.optstr, ptr %154, i64 %152
  %156 = load ptr, ptr %155, align 8, !tbaa !42
  %157 = icmp eq ptr %156, null
  br i1 %157, label %188, label %158

158:                                              ; preds = %151
  %159 = load i32, ptr %150, align 4, !tbaa !11
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %160, i64 %152
  %162 = ptrtoint ptr %161 to i64
  %163 = trunc i64 %162 to i32
  %164 = or i32 %153, %163
  %165 = ptrtoint ptr %156 to i64
  %166 = trunc i64 %165 to i32
  %167 = tail call i32 @point(i32 noundef %166) #22
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %188

169:                                              ; preds = %158
  %170 = tail call i32 @prev(i32 noundef %1) #22
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = zext i32 %170 to i64
  %174 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !7
  %176 = getelementptr inbounds %struct.optstr, ptr %175, i64 %152
  %177 = load ptr, ptr %176, align 8, !tbaa !42
  %178 = tail call i32 @vspen(ptr noundef %177) #22
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %172
  %181 = load ptr, ptr @tabout, align 8, !tbaa !7
  %182 = trunc i64 %152 to i32
  %183 = add i32 %182, 97
  %184 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %181, ptr noundef nonnull @.str.4.117, ptr noundef nonnull %156, i32 noundef %183, ptr noundef nonnull %156, i32 noundef %183) #23
  br label %188

185:                                              ; preds = %172, %169
  %186 = load ptr, ptr @tabout, align 8, !tbaa !7
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.5.118, ptr noundef nonnull %156, ptr noundef nonnull %156) #23
  br label %188

188:                                              ; preds = %185, %180, %158, %151
  %189 = phi i32 [ %153, %151 ], [ %164, %158 ], [ %164, %180 ], [ %164, %185 ]
  %190 = add nuw nsw i64 %152, 1
  %191 = load i32, ptr @ncol, align 4, !tbaa !11
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %190, %192
  br i1 %193, label %151, label %194, !llvm.loop !79

194:                                              ; preds = %188, %145, %98
  %195 = phi i32 [ 0, %145 ], [ 0, %98 ], [ %189, %188 ]
  %196 = load i32, ptr @allflg, align 4, !tbaa !11
  %197 = icmp ne i32 %196, 0
  %198 = load i32, ptr @once, align 4
  %199 = icmp sgt i32 %198, 0
  %200 = select i1 %197, i1 %199, i1 false
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  tail call void @fullwide(i32 noundef %0, i32 noundef 45) #22
  br label %202

202:                                              ; preds = %201, %194
  store i32 1, ptr @once, align 4, !tbaa !11
  tail call void @runtabs(i32 noundef %0, i32 noundef %1) #22
  %203 = tail call i32 @allh(i32 noundef %0) #22
  %204 = icmp eq i32 %203, 0
  %205 = load i32, ptr @pr1403, align 4
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %204, i1 true, i1 %206
  br i1 %207, label %213, label %208

208:                                              ; preds = %202
  %209 = load ptr, ptr @tabout, align 8, !tbaa !7
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str.6.119, i32 noundef 36) #23
  %211 = load ptr, ptr @tabout, align 8, !tbaa !7
  %212 = tail call i64 @fwrite(ptr nonnull @.str.7.120, i64 18, i64 1, ptr %211)
  br label %213

213:                                              ; preds = %208, %202
  %214 = icmp eq i32 %195, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %213
  %216 = load ptr, ptr @tabout, align 8, !tbaa !7
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef nonnull @.str.8.121, i32 noundef 31) #23
  br label %218

218:                                              ; preds = %215, %213
  %219 = load ptr, ptr @tabout, align 8, !tbaa !7
  %220 = tail call i64 @fwrite(ptr nonnull @.str.9.122, i64 10, i64 1, ptr %219)
  %221 = load ptr, ptr @tabout, align 8, !tbaa !7
  %222 = tail call i64 @fwrite(ptr nonnull @.str.10.123, i64 2, i64 1, ptr %221)
  %223 = load i32, ptr @ncol, align 4, !tbaa !11
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %550

225:                                              ; preds = %218
  %226 = add nsw i32 %0, 1
  %227 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %17
  %228 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %17
  br label %229

229:                                              ; preds = %540, %225
  %230 = phi i64 [ 0, %225 ], [ %546, %540 ]
  %231 = phi i32 [ 0, %225 ], [ %545, %540 ]
  %232 = phi i32 [ 0, %225 ], [ %544, %540 ]
  %233 = phi i32 [ undef, %225 ], [ %543, %540 ]
  %234 = phi i32 [ %81, %225 ], [ %542, %540 ]
  %235 = phi i32 [ 0, %225 ], [ %541, %540 ]
  %236 = trunc i64 %230 to i32
  %237 = load i32, ptr @watchout, align 4, !tbaa !11
  %238 = icmp eq i32 %237, 0
  %239 = load i32, ptr @nlin, align 4
  %240 = icmp slt i32 %226, %239
  %241 = select i1 %238, i1 %240, i1 false
  br i1 %241, label %242, label %248

242:                                              ; preds = %229
  %243 = call i32 @left(i32 noundef %0, i32 noundef %236, ptr noundef nonnull %3) #22
  %244 = icmp sgt i32 %243, -1
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  call void @tohcol(i32 noundef %236) #22
  %246 = load i32, ptr %3, align 4, !tbaa !11
  call void @drawvert(i32 noundef %243, i32 noundef %0, i32 noundef %236, i32 noundef %246) #22
  %247 = add nsw i32 %231, 2
  br label %248

248:                                              ; preds = %245, %242, %229
  %249 = phi i32 [ %247, %245 ], [ %231, %242 ], [ %231, %229 ]
  %250 = load i32, ptr @rightl, align 4, !tbaa !11
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %257, label %252

252:                                              ; preds = %248
  %253 = add nuw nsw i64 %230, 1
  %254 = load i32, ptr @ncol, align 4, !tbaa !11
  %255 = zext i32 %254 to i64
  %256 = icmp eq i64 %253, %255
  br i1 %256, label %540, label %257

257:                                              ; preds = %252, %248
  %258 = call i32 @prev(i32 noundef %1) #22
  %259 = icmp sgt i32 %258, -1
  br i1 %259, label %260, label %273

260:                                              ; preds = %270, %257
  %261 = phi i32 [ %262, %270 ], [ %0, %257 ]
  %262 = phi i32 [ %271, %270 ], [ %258, %257 ]
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !7
  %266 = getelementptr inbounds %struct.optstr, ptr %265, i64 %230
  %267 = load ptr, ptr %266, align 8, !tbaa !42
  %268 = call i32 @vspen(ptr noundef %267) #22
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %260
  %271 = call i32 @prev(i32 noundef %262) #22
  %272 = icmp sgt i32 %271, -1
  br i1 %272, label %260, label %273, !llvm.loop !80

273:                                              ; preds = %270, %260, %257
  %274 = phi i32 [ %0, %257 ], [ %262, %270 ], [ %261, %260 ]
  %275 = call i32 @ctype(i32 noundef %274, i32 noundef %236) #22
  %276 = icmp eq i32 %275, 115
  br i1 %276, label %300, label %277

277:                                              ; preds = %273
  %278 = icmp eq i32 %275, 97
  %279 = add nuw nsw i32 %236, 60
  %280 = trunc i64 %230 to i32
  %281 = add i32 %280, 40
  %282 = select i1 %278, i32 %279, i32 %281
  %283 = icmp eq i32 %275, 110
  br i1 %283, label %284, label %296

284:                                              ; preds = %277
  %285 = load ptr, ptr %227, align 8, !tbaa !7
  %286 = getelementptr inbounds %struct.optstr, ptr %285, i64 %230, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !44
  %288 = icmp eq ptr %287, null
  br i1 %288, label %296, label %289

289:                                              ; preds = %284
  %290 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %230
  %291 = load i32, ptr %290, align 4, !tbaa !11
  %292 = icmp eq i32 %291, 0
  %293 = trunc i64 %230 to i32
  %294 = add i32 %293, 60
  %295 = select i1 %292, i32 %294, i32 %282
  br label %296

296:                                              ; preds = %289, %284, %277
  %297 = phi i32 [ %282, %284 ], [ %282, %277 ], [ %295, %289 ]
  %298 = load ptr, ptr @tabout, align 8, !tbaa !7
  %299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %298, ptr noundef nonnull @.str.11.124, i32 noundef %297) #23
  br label %300

300:                                              ; preds = %296, %273
  %301 = load ptr, ptr %227, align 8, !tbaa !7
  %302 = getelementptr inbounds %struct.optstr, ptr %301, i64 %230
  %303 = load ptr, ptr %302, align 8, !tbaa !42
  %304 = sext i32 %274 to i64
  %305 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !11
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %307, i64 %230
  %309 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %307, i64 %230
  %310 = load i8, ptr %309, align 4, !tbaa !16
  %311 = icmp eq i8 %310, 0
  %312 = select i1 %311, ptr null, ptr %309
  %313 = call i32 @ctype(i32 noundef %274, i32 noundef %236) #22
  switch i32 %313, label %540 [
    i32 110, label %314
    i32 97, label %314
    i32 99, label %389
    i32 114, label %362
    i32 108, label %363
    i32 45, label %364
    i32 61, label %364
  ]

314:                                              ; preds = %300, %300
  %315 = load ptr, ptr %227, align 8, !tbaa !7
  %316 = getelementptr inbounds %struct.optstr, ptr %315, i64 %230, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !44
  %318 = icmp ne ptr %317, null
  br i1 %318, label %319, label %377

319:                                              ; preds = %314
  %320 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %230
  %321 = load i32, ptr %320, align 4, !tbaa !11
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %377, label %323

323:                                              ; preds = %319
  %324 = call i32 @prev(i32 noundef %1) #22
  %325 = icmp sgt i32 %324, -1
  br i1 %325, label %326, label %349

326:                                              ; preds = %323
  %327 = zext i32 %324 to i64
  %328 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !7
  %330 = getelementptr inbounds %struct.optstr, ptr %329, i64 %230
  %331 = load ptr, ptr %330, align 8, !tbaa !42
  %332 = call i32 @vspen(ptr noundef %331) #22
  %333 = icmp ne i32 %332, 0
  %334 = icmp eq i32 %232, 0
  %335 = select i1 %333, i1 %334, i1 false
  br i1 %335, label %336, label %349

336:                                              ; preds = %326
  %337 = load ptr, ptr @tabout, align 8, !tbaa !7
  %338 = trunc i64 %230 to i32
  %339 = add i32 %338, 97
  %340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef nonnull @.str.12.125, i32 noundef %339) #23
  %341 = icmp eq i32 %233, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %336
  %343 = load ptr, ptr @tabout, align 8, !tbaa !7
  %344 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef nonnull @.str.13.126, i32 noundef %339) #23
  br label %345

345:                                              ; preds = %342, %336
  %346 = add nsw i32 %249, 1
  %347 = load ptr, ptr @tabout, align 8, !tbaa !7
  %348 = call i32 @fputc(i32 39, ptr %347)
  br label %349

349:                                              ; preds = %345, %326, %323
  %350 = phi i32 [ 1, %345 ], [ %232, %326 ], [ %232, %323 ]
  %351 = phi i32 [ %346, %345 ], [ %249, %326 ], [ %249, %323 ]
  %352 = load ptr, ptr @tabout, align 8, !tbaa !7
  %353 = load i32, ptr @F1, align 4, !tbaa !11
  %354 = load i32, ptr @F2, align 4, !tbaa !11
  %355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef nonnull @.str.15.127, i32 noundef %353, i32 noundef %354) #23
  call void @puttext(ptr noundef %303, ptr noundef nonnull %308, ptr noundef %312) #23
  %356 = load ptr, ptr @tabout, align 8, !tbaa !7
  %357 = load i32, ptr @F1, align 4, !tbaa !11
  %358 = call i32 @fputc(i32 %357, ptr %356)
  %359 = load ptr, ptr %227, align 8, !tbaa !7
  %360 = getelementptr inbounds %struct.optstr, ptr %359, i64 %230, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !44
  br label %377

362:                                              ; preds = %300
  br label %389

363:                                              ; preds = %300
  br label %389

364:                                              ; preds = %300, %300
  %365 = load ptr, ptr %227, align 8, !tbaa !7
  %366 = getelementptr inbounds %struct.optstr, ptr %365, i64 %230
  %367 = load ptr, ptr %366, align 8, !tbaa !42
  %368 = call i32 @real(ptr noundef %367) #22
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %364
  %371 = load ptr, ptr @stderr, align 8, !tbaa !7
  %372 = load ptr, ptr @ifile, align 8, !tbaa !7
  %373 = load i32, ptr @iline, align 4, !tbaa !11
  %374 = add nsw i32 %373, -1
  %375 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %371, ptr noundef nonnull @.str.17.128, ptr noundef %372, i32 noundef %374, i32 noundef %226) #28
  br label %376

376:                                              ; preds = %370, %364
  call void @makeline(i32 noundef %0, i32 noundef %236, i32 noundef %313) #22
  br label %540

377:                                              ; preds = %349, %319, %314
  %378 = phi ptr [ null, %314 ], [ %361, %349 ], [ %317, %319 ]
  %379 = phi i32 [ %234, %314 ], [ %324, %349 ], [ %234, %319 ]
  %380 = phi i32 [ %232, %314 ], [ %350, %349 ], [ %232, %319 ]
  %381 = phi i32 [ %249, %314 ], [ %351, %349 ], [ %249, %319 ]
  %382 = phi ptr [ %303, %314 ], [ %361, %349 ], [ %317, %319 ]
  switch i32 %313, label %389 [
    i32 110, label %383
    i32 97, label %383
  ]

383:                                              ; preds = %377, %377
  %384 = icmp eq ptr %378, null
  br i1 %384, label %389, label %385

385:                                              ; preds = %383
  %386 = getelementptr inbounds [0 x i32], ptr @rused, i64 0, i64 %230
  %387 = load i32, ptr %386, align 4, !tbaa !11
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %472, label %399

389:                                              ; preds = %383, %377, %363, %362, %300
  %390 = phi ptr [ %382, %377 ], [ %382, %383 ], [ %303, %300 ], [ %303, %363 ], [ %303, %362 ]
  %391 = phi i32 [ %381, %377 ], [ %381, %383 ], [ %249, %300 ], [ %249, %363 ], [ %249, %362 ]
  %392 = phi i32 [ %380, %377 ], [ %380, %383 ], [ %232, %300 ], [ %232, %363 ], [ %232, %362 ]
  %393 = phi i32 [ %379, %377 ], [ %379, %383 ], [ %234, %300 ], [ %234, %363 ], [ %234, %362 ]
  %394 = phi i1 [ false, %377 ], [ false, %383 ], [ false, %300 ], [ false, %363 ], [ true, %362 ]
  %395 = phi i1 [ %318, %377 ], [ %318, %383 ], [ false, %300 ], [ true, %363 ], [ false, %362 ]
  %396 = getelementptr inbounds [0 x i32], ptr @used, i64 0, i64 %230
  %397 = load i32, ptr %396, align 4, !tbaa !11
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %472, label %399

399:                                              ; preds = %389, %385
  %400 = phi ptr [ %390, %389 ], [ %382, %385 ]
  %401 = phi i32 [ %391, %389 ], [ %381, %385 ]
  %402 = phi i32 [ %392, %389 ], [ %380, %385 ]
  %403 = phi i32 [ %393, %389 ], [ %379, %385 ]
  %404 = phi i1 [ %394, %389 ], [ false, %385 ]
  %405 = phi i1 [ %395, %389 ], [ %318, %385 ]
  %406 = call i32 @ifline(ptr noundef %400) #22
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %410, label %408

408:                                              ; preds = %399
  %409 = call i32 @ifline(ptr noundef %400) #22
  call void @makeline(i32 noundef %0, i32 noundef %236, i32 noundef %409) #22
  br label %540

410:                                              ; preds = %399
  %411 = call i32 @filler(ptr noundef %400) #22
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %418, label %413

413:                                              ; preds = %410
  %414 = getelementptr inbounds i8, ptr %400, i64 2
  %415 = trunc i64 %230 to i32
  %416 = add i32 %415, 80
  %417 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18.129, i32 noundef %416, ptr noundef nonnull %414) #23
  br label %540

418:                                              ; preds = %410
  %419 = call i32 @prev(i32 noundef %1) #22
  %420 = load i32, ptr %228, align 4, !tbaa !11
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %421, i64 %230
  %423 = load i32, ptr %422, align 4, !tbaa !11
  %424 = icmp eq i32 %423, 0
  %425 = zext i1 %424 to i32
  %426 = icmp sgt i32 %419, -1
  br i1 %426, label %427, label %449

427:                                              ; preds = %418
  %428 = zext i32 %419 to i64
  %429 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !7
  %431 = getelementptr inbounds %struct.optstr, ptr %430, i64 %230
  %432 = load ptr, ptr %431, align 8, !tbaa !42
  %433 = call i32 @vspen(ptr noundef %432) #22
  %434 = icmp ne i32 %433, 0
  %435 = icmp eq i32 %402, 0
  %436 = select i1 %434, i1 %435, i1 false
  br i1 %436, label %437, label %449

437:                                              ; preds = %427
  %438 = load ptr, ptr @tabout, align 8, !tbaa !7
  %439 = trunc i64 %230 to i32
  %440 = add i32 %439, 97
  %441 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %438, ptr noundef nonnull @.str.12.125, i32 noundef %440) #23
  br i1 %424, label %442, label %445

442:                                              ; preds = %437
  %443 = load ptr, ptr @tabout, align 8, !tbaa !7
  %444 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %443, ptr noundef nonnull @.str.13.126, i32 noundef %440) #23
  br label %445

445:                                              ; preds = %442, %437
  %446 = add nsw i32 %401, 1
  %447 = load ptr, ptr @tabout, align 8, !tbaa !7
  %448 = call i32 @fputc(i32 39, ptr %447)
  br label %449

449:                                              ; preds = %445, %427, %418
  %450 = phi i32 [ %446, %445 ], [ %401, %427 ], [ %401, %418 ]
  %451 = load ptr, ptr @tabout, align 8, !tbaa !7
  %452 = load i32, ptr @F1, align 4, !tbaa !11
  %453 = call i32 @fputc(i32 %452, ptr %451)
  br i1 %405, label %458, label %454

454:                                              ; preds = %449
  %455 = load ptr, ptr @tabout, align 8, !tbaa !7
  %456 = load i32, ptr @F2, align 4, !tbaa !11
  %457 = call i32 @fputc(i32 %456, ptr %455)
  br label %458

458:                                              ; preds = %454, %449
  %459 = call i32 @vspen(ptr noundef %400) #22
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  call void @puttext(ptr noundef %400, ptr noundef nonnull %308, ptr noundef %312) #23
  br label %462

462:                                              ; preds = %461, %458
  %463 = phi i32 [ %235, %461 ], [ 1, %458 ]
  br i1 %404, label %468, label %464

464:                                              ; preds = %462
  %465 = load ptr, ptr @tabout, align 8, !tbaa !7
  %466 = load i32, ptr @F2, align 4, !tbaa !11
  %467 = call i32 @fputc(i32 %466, ptr %465)
  br label %468

468:                                              ; preds = %464, %462
  %469 = load ptr, ptr @tabout, align 8, !tbaa !7
  %470 = load i32, ptr @F1, align 4, !tbaa !11
  %471 = call i32 @fputc(i32 %470, ptr %469)
  br label %472

472:                                              ; preds = %468, %389, %385
  %473 = phi i32 [ %402, %468 ], [ %380, %385 ], [ %392, %389 ]
  %474 = phi i32 [ %463, %468 ], [ %235, %385 ], [ %235, %389 ]
  %475 = phi i32 [ %419, %468 ], [ %379, %385 ], [ %393, %389 ]
  %476 = phi i32 [ %425, %468 ], [ %233, %385 ], [ %233, %389 ]
  %477 = phi i32 [ %450, %468 ], [ %381, %385 ], [ %391, %389 ]
  %478 = icmp sgt i32 %475, -1
  br i1 %478, label %479, label %529

479:                                              ; preds = %472
  %480 = zext i32 %475 to i64
  %481 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !7
  %483 = getelementptr inbounds %struct.optstr, ptr %482, i64 %230
  %484 = load ptr, ptr %483, align 8, !tbaa !42
  %485 = call i32 @vspen(ptr noundef %484) #22
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %529, label %487

487:                                              ; preds = %479
  %488 = add nuw nsw i64 %230, 1
  %489 = load i32, ptr @ncol, align 4, !tbaa !11
  %490 = sext i32 %489 to i64
  %491 = icmp slt i64 %488, %490
  br i1 %491, label %492, label %516

492:                                              ; preds = %487
  %493 = load ptr, ptr %481, align 8, !tbaa !7
  %494 = getelementptr inbounds %struct.optstr, ptr %493, i64 %488
  %495 = load ptr, ptr %494, align 8, !tbaa !42
  %496 = call i32 @vspen(ptr noundef %495) #22
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %516, label %498

498:                                              ; preds = %492
  %499 = getelementptr inbounds [20 x i32], ptr @topat, i64 0, i64 %230
  %500 = load i32, ptr %499, align 4, !tbaa !11
  %501 = getelementptr inbounds [20 x i32], ptr @topat, i64 0, i64 %488
  %502 = load i32, ptr %501, align 4, !tbaa !11
  %503 = icmp eq i32 %500, %502
  br i1 %503, label %504, label %516

504:                                              ; preds = %498
  %505 = load i32, ptr %228, align 4, !tbaa !11
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %506, i64 %488
  %508 = load i32, ptr %507, align 4, !tbaa !11
  %509 = icmp eq i32 %508, 0
  %510 = zext i1 %509 to i32
  %511 = icmp eq i32 %476, %510
  br i1 %511, label %512, label %516

512:                                              ; preds = %504
  %513 = trunc i64 %488 to i32
  %514 = call i32 @left(i32 noundef %0, i32 noundef %513, ptr noundef nonnull %3) #22
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %529, label %516

516:                                              ; preds = %512, %504, %498, %492, %487
  %517 = load ptr, ptr @tabout, align 8, !tbaa !7
  %518 = trunc i64 %230 to i32
  %519 = add i32 %518, 97
  %520 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %517, ptr noundef nonnull @.str.19.130, i32 noundef %519) #23
  %521 = icmp eq i32 %476, 0
  br i1 %521, label %525, label %522

522:                                              ; preds = %516
  %523 = load ptr, ptr @tabout, align 8, !tbaa !7
  %524 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %523, ptr noundef nonnull @.str.13.126, i32 noundef %519) #23
  br label %525

525:                                              ; preds = %522, %516
  %526 = add nsw i32 %477, 1
  %527 = load ptr, ptr @tabout, align 8, !tbaa !7
  %528 = call i32 @fputc(i32 39, ptr %527)
  br label %529

529:                                              ; preds = %525, %512, %479, %472
  %530 = phi i32 [ 0, %525 ], [ 1, %512 ], [ %473, %472 ], [ 0, %479 ]
  %531 = phi i32 [ %526, %525 ], [ %477, %512 ], [ %477, %472 ], [ %477, %479 ]
  %532 = icmp sgt i32 %531, 7
  %533 = load i32, ptr @ncol, align 4
  %534 = sext i32 %533 to i64
  %535 = icmp slt i64 %230, %534
  %536 = select i1 %532, i1 %535, i1 false
  br i1 %536, label %537, label %540

537:                                              ; preds = %529
  %538 = load ptr, ptr @tabout, align 8, !tbaa !7
  %539 = call i64 @fwrite(ptr nonnull @.str.20.131, i64 9, i64 1, ptr %538)
  br label %540

540:                                              ; preds = %537, %529, %413, %408, %376, %300, %252
  %541 = phi i32 [ %235, %252 ], [ %235, %300 ], [ %235, %376 ], [ %235, %408 ], [ %235, %413 ], [ %474, %537 ], [ %474, %529 ]
  %542 = phi i32 [ %234, %252 ], [ %234, %300 ], [ %234, %376 ], [ %403, %408 ], [ %403, %413 ], [ %475, %537 ], [ %475, %529 ]
  %543 = phi i32 [ %233, %252 ], [ %233, %300 ], [ %233, %376 ], [ %233, %408 ], [ %233, %413 ], [ %476, %537 ], [ %476, %529 ]
  %544 = phi i32 [ %232, %252 ], [ %232, %300 ], [ %232, %376 ], [ %402, %408 ], [ %402, %413 ], [ %530, %537 ], [ %530, %529 ]
  %545 = phi i32 [ %249, %252 ], [ %249, %300 ], [ %249, %376 ], [ %401, %408 ], [ %401, %413 ], [ 0, %537 ], [ %531, %529 ]
  %546 = add nuw nsw i64 %230, 1
  %547 = load i32, ptr @ncol, align 4, !tbaa !11
  %548 = sext i32 %547 to i64
  %549 = icmp slt i64 %546, %548
  br i1 %549, label %229, label %550, !llvm.loop !81

550:                                              ; preds = %540, %218
  %551 = phi i32 [ 0, %218 ], [ %541, %540 ]
  %552 = load ptr, ptr @tabout, align 8, !tbaa !7
  %553 = call i32 @fputc(i32 10, ptr %552)
  %554 = call i32 @allh(i32 noundef %0) #22
  %555 = icmp eq i32 %554, 0
  %556 = load i32, ptr @pr1403, align 4
  %557 = icmp ne i32 %556, 0
  %558 = select i1 %555, i1 true, i1 %557
  br i1 %558, label %562, label %559

559:                                              ; preds = %550
  %560 = load ptr, ptr @tabout, align 8, !tbaa !7
  %561 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %560, ptr noundef nonnull @.str.22.132, i32 noundef 36) #23
  br label %562

562:                                              ; preds = %559, %550
  %563 = load i32, ptr @watchout, align 4, !tbaa !11
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %562
  call void @funnies(i32 noundef %0, i32 noundef %1) #23
  br label %566

566:                                              ; preds = %565, %562
  %567 = icmp ne i32 %551, 0
  %568 = load i32, ptr @ncol, align 4
  %569 = icmp sgt i32 %568, 0
  %570 = select i1 %567, i1 %569, i1 false
  br i1 %570, label %571, label %604

571:                                              ; preds = %566
  %572 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %17
  %573 = icmp eq i32 %1, 0
  br label %574

574:                                              ; preds = %599, %571
  %575 = phi i64 [ 0, %571 ], [ %600, %599 ]
  %576 = load ptr, ptr %572, align 8, !tbaa !7
  %577 = getelementptr inbounds %struct.optstr, ptr %576, i64 %575
  %578 = load ptr, ptr %577, align 8, !tbaa !42
  %579 = call i32 @vspen(ptr noundef %578) #22
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %599, label %581

581:                                              ; preds = %574
  br i1 %573, label %593, label %582

582:                                              ; preds = %581
  %583 = call i32 @prev(i32 noundef %1) #22
  %584 = icmp slt i32 %583, 0
  br i1 %584, label %593, label %585

585:                                              ; preds = %582
  %586 = zext i32 %583 to i64
  %587 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %586
  %588 = load ptr, ptr %587, align 8, !tbaa !7
  %589 = getelementptr inbounds %struct.optstr, ptr %588, i64 %575
  %590 = load ptr, ptr %589, align 8, !tbaa !42
  %591 = call i32 @vspen(ptr noundef %590) #22
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %599

593:                                              ; preds = %585, %582, %581
  %594 = load ptr, ptr @tabout, align 8, !tbaa !7
  %595 = trunc i64 %575 to i32
  %596 = add i32 %595, 97
  %597 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %594, ptr noundef nonnull @.str.23.133, i32 noundef %596) #23
  %598 = getelementptr inbounds [20 x i32], ptr @topat, i64 0, i64 %575
  store i32 %1, ptr %598, align 4, !tbaa !11
  br label %599

599:                                              ; preds = %593, %585, %574
  %600 = add nuw nsw i64 %575, 1
  %601 = load i32, ptr @ncol, align 4, !tbaa !11
  %602 = sext i32 %601 to i64
  %603 = icmp slt i64 %600, %602
  br i1 %603, label %574, label %604, !llvm.loop !82

604:                                              ; preds = %599, %566, %106, %95, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal void @puttext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @point(i32 noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  tail call void @putfont(ptr noundef %1) #23
  %9 = icmp eq ptr %2, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %2, align 1, !tbaa !16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @tabout, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.47, ptr noundef nonnull %2) #23
  br label %16

16:                                               ; preds = %13, %10, %8
  %17 = load ptr, ptr @tabout, align 8, !tbaa !7
  %18 = tail call i32 @fputs(ptr %0, ptr %17)
  %19 = load i8, ptr %1, align 1, !tbaa !16
  %20 = icmp sgt i8 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load ptr, ptr @tabout, align 8, !tbaa !7
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.25.146, i32 noundef 31) #23
  br label %24

24:                                               ; preds = %21, %16
  br i1 %9, label %28, label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr @tabout, align 8, !tbaa !7
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.26.147) #23
  br label %28

28:                                               ; preds = %25, %24, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @funnies(i32 noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = load ptr, ptr @tabout, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.27.134, i64 7, i64 1, ptr %4)
  %6 = load ptr, ptr @tabout, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.28.135, i32 noundef 31) #23
  %8 = load i32, ptr @ncol, align 4, !tbaa !11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %139

10:                                               ; preds = %2
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %11
  %13 = icmp sgt i32 %0, -1
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %14
  %16 = icmp sgt i32 %0, 0
  br label %17

17:                                               ; preds = %133, %10
  %18 = phi i64 [ 0, %10 ], [ %135, %133 ]
  %19 = phi i32 [ undef, %10 ], [ %134, %133 ]
  %20 = load ptr, ptr %12, align 8, !tbaa !7
  %21 = getelementptr inbounds %struct.optstr, ptr %20, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = ptrtoint ptr %22 to i64
  %24 = trunc i64 %23 to i32
  %25 = tail call i32 @point(i32 noundef %24) #22
  %26 = icmp ne i32 %25, 0
  %27 = icmp eq i32 %24, 0
  %28 = or i1 %26, %27
  br i1 %28, label %133, label %29

29:                                               ; preds = %17
  %30 = load ptr, ptr @tabout, align 8, !tbaa !7
  %31 = tail call i64 @fwrite(ptr nonnull @.str.29.136, i64 15, i64 1, ptr %30)
  %32 = load ptr, ptr @tabout, align 8, !tbaa !7
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.30.137, i32 noundef 37) #23
  br i1 %13, label %34, label %49

34:                                               ; preds = %29
  %35 = tail call ptr @__ctype_b_loc() #27
  %36 = trunc i64 %18 to i32
  br label %37

37:                                               ; preds = %46, %34
  %38 = phi i32 [ %0, %34 ], [ %47, %46 ]
  %39 = load ptr, ptr %35, align 8, !tbaa !7
  %40 = tail call i32 @ctype(i32 noundef %38, i32 noundef %36) #22
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !39
  %44 = and i16 %43, 1024
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = tail call i32 @prev(i32 noundef %38) #22
  %48 = icmp sgt i32 %47, -1
  br i1 %48, label %37, label %49, !llvm.loop !83

49:                                               ; preds = %46, %37, %29
  %50 = phi i32 [ %19, %29 ], [ %40, %46 ], [ %40, %37 ]
  switch i32 %50, label %76 [
    i32 110, label %51
    i32 99, label %51
    i32 108, label %61
    i32 97, label %66
    i32 114, label %71
  ]

51:                                               ; preds = %49, %49
  %52 = load ptr, ptr @tabout, align 8, !tbaa !7
  %53 = trunc i64 %18 to i32
  %54 = tail call i32 @ctspan(i32 noundef %1, i32 noundef %53) #22
  %55 = trunc i64 %18 to i32
  %56 = add i32 %55, 79
  %57 = add i32 %56, %54
  %58 = trunc i64 %18 to i32
  %59 = add i32 %58, 40
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.31.138, i32 noundef %59, i32 noundef %57, i32 noundef %24) #23
  br label %76

61:                                               ; preds = %49
  %62 = load ptr, ptr @tabout, align 8, !tbaa !7
  %63 = trunc i64 %18 to i32
  %64 = add i32 %63, 40
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.32.139, i32 noundef %64) #23
  br label %76

66:                                               ; preds = %49
  %67 = load ptr, ptr @tabout, align 8, !tbaa !7
  %68 = trunc i64 %18 to i32
  %69 = add i32 %68, 60
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.32.139, i32 noundef %69) #23
  br label %76

71:                                               ; preds = %49
  %72 = load ptr, ptr @tabout, align 8, !tbaa !7
  %73 = trunc i64 %18 to i32
  %74 = add i32 %73, 80
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.33.140, i32 noundef %74, i32 noundef %24) #23
  br label %76

76:                                               ; preds = %71, %66, %61, %51, %49
  %77 = load ptr, ptr @tabout, align 8, !tbaa !7
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.34.141, i32 noundef 37) #23
  %79 = load i32, ptr %15, align 4, !tbaa !11
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %80, i64 %18
  %82 = load i8, ptr %81, align 2, !tbaa !16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load ptr, ptr @tabout, align 8, !tbaa !7
  %86 = getelementptr inbounds i8, ptr %81, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !16
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr @.str.46, ptr @.str.45.142
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull %89, ptr noundef nonnull %81) #23
  br label %91

91:                                               ; preds = %84, %76
  %92 = tail call i32 @prev(i32 noundef %0) #22
  %93 = icmp sgt i32 %92, -1
  %94 = select i1 %16, i1 %93, i1 false
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = zext i32 %92 to i64
  %97 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !7
  %99 = getelementptr inbounds %struct.optstr, ptr %98, i64 %18
  %100 = load ptr, ptr %99, align 8, !tbaa !42
  %101 = tail call i32 @vspen(ptr noundef %100) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %95
  %104 = load ptr, ptr @tabout, align 8, !tbaa !7
  %105 = trunc i64 %18 to i32
  %106 = add i32 %105, 97
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.35, i32 noundef %106) #23
  %108 = load i32, ptr %15, align 4, !tbaa !11
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %109, i64 %18
  %111 = load i32, ptr %110, align 4, !tbaa !11
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load ptr, ptr @tabout, align 8, !tbaa !7
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.36.143, i32 noundef 38, i32 noundef %106, i32 noundef %24) #23
  %116 = load ptr, ptr @tabout, align 8, !tbaa !7
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef nonnull @.str.37, i32 noundef 38, i32 noundef 38) #23
  br label %118

118:                                              ; preds = %113, %103, %95, %91
  %119 = load ptr, ptr @tabout, align 8, !tbaa !7
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.38, i32 noundef %24) #23
  %121 = load ptr, ptr @tabout, align 8, !tbaa !7
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.39, i32 noundef 37) #23
  %123 = load i8, ptr %81, align 2, !tbaa !16
  %124 = icmp sgt i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load ptr, ptr @tabout, align 8, !tbaa !7
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.40) #23
  br label %128

128:                                              ; preds = %125, %118
  %129 = load ptr, ptr @tabout, align 8, !tbaa !7
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef nonnull @.str.41, i32 noundef 32) #23
  %131 = load ptr, ptr @tabout, align 8, !tbaa !7
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.42, i32 noundef 32, i32 noundef 31, i32 noundef 31, i32 noundef 32) #23
  br label %133

133:                                              ; preds = %128, %17
  %134 = phi i32 [ %19, %17 ], [ %50, %128 ]
  %135 = add nuw nsw i64 %18, 1
  %136 = load i32, ptr @ncol, align 4, !tbaa !11
  %137 = sext i32 %136 to i64
  %138 = icmp slt i64 %135, %137
  br i1 %138, label %17, label %139, !llvm.loop !84

139:                                              ; preds = %133, %2
  %140 = load ptr, ptr @tabout, align 8, !tbaa !7
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.43, i32 noundef 31) #23
  %142 = load i32, ptr @ncol, align 4, !tbaa !11
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %139
  %145 = add nsw i32 %0, 1
  br label %146

146:                                              ; preds = %162, %144
  %147 = phi i32 [ 0, %144 ], [ %164, %162 ]
  %148 = phi i32 [ 0, %144 ], [ %163, %162 ]
  %149 = load i32, ptr @nlin, align 4, !tbaa !11
  %150 = icmp slt i32 %145, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = call i32 @left(i32 noundef %0, i32 noundef %147, ptr noundef nonnull %3) #22
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = icmp eq i32 %148, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load ptr, ptr @tabout, align 8, !tbaa !7
  %158 = call i64 @fwrite(ptr nonnull @.str.44, i64 7, i64 1, ptr %157)
  br label %159

159:                                              ; preds = %156, %154
  call void @tohcol(i32 noundef %147) #22
  %160 = add nsw i32 %148, 2
  %161 = load i32, ptr %3, align 4, !tbaa !11
  call void @drawvert(i32 noundef %152, i32 noundef %0, i32 noundef %147, i32 noundef %161) #22
  br label %162

162:                                              ; preds = %159, %151, %146
  %163 = phi i32 [ %160, %159 ], [ %148, %151 ], [ %148, %146 ]
  %164 = add nuw nsw i32 %147, 1
  %165 = load i32, ptr @ncol, align 4, !tbaa !11
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %146, label %167, !llvm.loop !85

167:                                              ; preds = %162
  %.lcssa = phi i32 [ %163, %162 ]
  %168 = icmp eq i32 %.lcssa, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %167
  %170 = load ptr, ptr @tabout, align 8, !tbaa !7
  %171 = call i32 @fputc(i32 10, ptr %170)
  br label %172

172:                                              ; preds = %169, %167, %139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @putfont(ptr noundef %0) #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @tabout, align 8, !tbaa !7
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !16
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr @.str.46, ptr @.str.45.142
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull %11, ptr noundef nonnull %0) #23
  br label %13

13:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @putsize(ptr noundef %0) #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @tabout, align 8, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.47, ptr noundef nonnull %0) #23
  br label %9

9:                                                ; preds = %6, %3, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @yetmore() #2 {
  br label %1

1:                                                ; preds = %6, %0
  %2 = phi i64 [ 0, %0 ], [ %7, %6 ]
  %3 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = add nuw nsw i64 %2, 1
  %8 = icmp eq i64 %7, 200
  br i1 %8, label %9, label %1, !llvm.loop !86

9:                                                ; preds = %6
  store i32 200, ptr @useln, align 4, !tbaa !11
  tail call void @error(ptr noundef nonnull @.str.152) #22
  %10 = load i32, ptr @useln, align 4, !tbaa !11
  br label %13

11:                                               ; preds = %1
  %.lcssa = phi i64 [ %2, %1 ]
  %12 = trunc i64 %.lcssa to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %12, %11 ], [ %10, %9 ]
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  store ptr %17, ptr @table, align 8, !tbaa !7
  %18 = load i32, ptr @nlin, align 4, !tbaa !11
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr @useln, align 4, !tbaa !11
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %31, %13
  %22 = phi i32 [ %32, %31 ], [ %19, %13 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %21
  %32 = add nsw i32 %22, -1
  store i32 %32, ptr @useln, align 4, !tbaa !11
  %33 = icmp sgt i32 %22, 0
  br i1 %33, label %21, label %34, !llvm.loop !87

34:                                               ; preds = %31, %13
  tail call void @error(ptr noundef nonnull @.str.1.153) #22
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, ptr @leftover, align 4, !tbaa !11
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to ptr
  %39 = tail call i32 @domore(ptr noundef %38) #23, !range !13
  br label %40

40:                                               ; preds = %44, %35
  %41 = load ptr, ptr @cspace, align 8, !tbaa !7
  store ptr %41, ptr @cstore, align 8, !tbaa !7
  %42 = tail call ptr @gets1(ptr noundef %41) #22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @cstore, align 8, !tbaa !7
  %46 = tail call i32 @domore(ptr noundef %45) #23, !range !13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %40, !llvm.loop !88

48:                                               ; preds = %44, %40
  %49 = load ptr, ptr @cstore, align 8, !tbaa !7
  store ptr %49, ptr @last, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @domore(ptr noundef %0) #2 {
  %2 = tail call i32 @prefix(ptr noundef nonnull @.str.2.154, ptr noundef %0) #22
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %103

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !16
  %6 = icmp eq i8 %5, 46
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = tail call ptr @__ctype_b_loc() #27
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !16
  %12 = sext i8 %11 to i64
  %13 = getelementptr inbounds i16, ptr %9, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !39
  %15 = and i16 %14, 2048
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %0) #23
  br label %103

19:                                               ; preds = %7, %4
  store ptr null, ptr @instead, align 8, !tbaa !7
  store i32 0, ptr @fullbot, align 4, !tbaa !11
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !16
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %24, %19
  br label %31

24:                                               ; preds = %19
  %25 = load i8, ptr %0, align 1, !tbaa !16
  %26 = sext i8 %25 to i32
  switch i32 %26, label %23 [
    i32 95, label %27
    i32 61, label %29
  ]

27:                                               ; preds = %24
  store i32 45, ptr @fullbot, align 4, !tbaa !11
  %28 = load i32, ptr @useln, align 4, !tbaa !11
  tail call void @putline(i32 noundef %28, i32 noundef 0) #22
  br label %103

29:                                               ; preds = %24
  store i32 61, ptr @fullbot, align 4, !tbaa !11
  %30 = load i32, ptr @useln, align 4, !tbaa !11
  tail call void @putline(i32 noundef %30, i32 noundef 0) #22
  br label %103

31:                                               ; preds = %81, %23
  %32 = phi ptr [ %.lcssa, %81 ], [ %0, %23 ]
  %33 = phi i32 [ %.lcssa3, %81 ], [ 0, %23 ]
  %34 = load i32, ptr @ncol, align 4, !tbaa !11
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %31
  %37 = load ptr, ptr @table, align 8, !tbaa !7
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds %struct.optstr, ptr %37, i64 %38
  store ptr %32, ptr %39, align 8, !tbaa !42
  %40 = load ptr, ptr @table, align 8, !tbaa !7
  %41 = getelementptr inbounds %struct.optstr, ptr %40, i64 %38, i32 1
  store ptr null, ptr %41, align 8, !tbaa !44
  %42 = load i32, ptr @tab, align 4
  br label %43

43:                                               ; preds = %43, %36
  %44 = phi ptr [ %32, %36 ], [ %50, %43 ]
  %45 = load i8, ptr %44, align 1, !tbaa !16
  %46 = sext i8 %45 to i32
  %47 = icmp ne i8 %45, 0
  %48 = icmp ne i32 %42, %46
  %49 = select i1 %47, i1 %48, i1 false
  %50 = getelementptr inbounds i8, ptr %44, i64 1
  br i1 %49, label %43, label %51, !llvm.loop !89

51:                                               ; preds = %43
  %.lcssa2 = phi ptr [ %44, %43 ]
  %.lcssa1 = phi i8 [ %45, %43 ]
  %.lcssa = phi ptr [ %50, %43 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !16
  %52 = load i32, ptr @useln, align 4, !tbaa !11
  %53 = tail call i32 @ctype(i32 noundef %52, i32 noundef %33) #22
  switch i32 %53, label %70 [
    i32 110, label %54
    i32 97, label %63
  ]

54:                                               ; preds = %51
  %55 = load ptr, ptr @table, align 8, !tbaa !7
  %56 = getelementptr inbounds %struct.optstr, ptr %55, i64 %38
  %57 = load ptr, ptr %56, align 8, !tbaa !42
  %58 = tail call i32 @maknew(ptr noundef %57) #22
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to ptr
  %61 = load ptr, ptr @table, align 8, !tbaa !7
  %62 = getelementptr inbounds %struct.optstr, ptr %61, i64 %38, i32 1
  store ptr %60, ptr %62, align 8, !tbaa !44
  br label %70

63:                                               ; preds = %51
  %64 = load ptr, ptr @table, align 8, !tbaa !7
  %65 = getelementptr inbounds %struct.optstr, ptr %64, i64 %38
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = getelementptr inbounds %struct.optstr, ptr %64, i64 %38, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !44
  %68 = load ptr, ptr @table, align 8, !tbaa !7
  %69 = getelementptr inbounds %struct.optstr, ptr %68, i64 %38
  store ptr @.str.3.155, ptr %69, align 8, !tbaa !42
  br label %70

70:                                               ; preds = %63, %54, %51
  br label %71

71:                                               ; preds = %78, %70
  %72 = phi i64 [ %74, %78 ], [ %38, %70 ]
  %73 = load i32, ptr @useln, align 4, !tbaa !11
  %74 = add i64 %72, 1
  %75 = trunc i64 %74 to i32
  %76 = tail call i32 @ctype(i32 noundef %73, i32 noundef %75) #22
  %77 = icmp eq i32 %76, 115
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load ptr, ptr @table, align 8, !tbaa !7
  %80 = getelementptr inbounds %struct.optstr, ptr %79, i64 %74
  store ptr @.str.3.155, ptr %80, align 8, !tbaa !42
  br label %71, !llvm.loop !90

81:                                               ; preds = %71
  %.lcssa4 = phi i64 [ %72, %71 ]
  %.lcssa3 = phi i32 [ %75, %71 ]
  %82 = icmp eq i8 %.lcssa1, 0
  br i1 %82, label %83, label %31, !llvm.loop !91

83:                                               ; preds = %81
  %.lcssa4.lcssa = phi i64 [ %.lcssa4, %81 ]
  %84 = trunc i64 %.lcssa4.lcssa to i32
  %85 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %86

86:                                               ; preds = %83, %31
  %87 = phi i32 [ %85, %83 ], [ %34, %31 ]
  %88 = phi i32 [ %84, %83 ], [ %33, %31 ]
  %89 = add nsw i32 %88, 1
  %90 = icmp slt i32 %89, %87
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = sext i32 %88 to i64
  %93 = add nsw i64 %92, 1
  br label %94

94:                                               ; preds = %94, %91
  %95 = phi i64 [ %93, %91 ], [ %98, %94 ]
  %96 = load ptr, ptr @table, align 8, !tbaa !7
  %97 = getelementptr inbounds %struct.optstr, ptr %96, i64 %95
  store ptr @.str.3.155, ptr %97, align 8, !tbaa !42
  %98 = add nsw i64 %95, 1
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %87, %99
  br i1 %100, label %101, label %94, !llvm.loop !92

101:                                              ; preds = %94, %86
  %102 = load i32, ptr @useln, align 4, !tbaa !11
  tail call void @putline(i32 noundef %102, i32 noundef 0) #22
  br label %103

103:                                              ; preds = %101, %29, %27, %17, %1
  %104 = phi i32 [ 1, %101 ], [ 1, %29 ], [ 1, %27 ], [ 1, %17 ], [ 0, %1 ]
  ret i32 %104
}

; Function Attrs: nounwind optsize uwtable
define internal void @checkuse() #2 {
  %1 = load i32, ptr @ncol, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %130

3:                                                ; preds = %0
  %4 = load i32, ptr @nlin, align 4, !tbaa !11
  br label %5

5:                                                ; preds = %124, %3
  %6 = phi i32 [ %1, %3 ], [ %125, %124 ]
  %7 = phi i32 [ %4, %3 ], [ %126, %124 ]
  %8 = phi i64 [ 0, %3 ], [ %127, %124 ]
  %9 = getelementptr inbounds [0 x i32], ptr @rused, i64 0, i64 %8
  store i32 0, ptr %9, align 4, !tbaa !11
  %10 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %8
  store i32 0, ptr %10, align 4, !tbaa !11
  %11 = getelementptr inbounds [0 x i32], ptr @used, i64 0, i64 %8
  store i32 0, ptr %11, align 4, !tbaa !11
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %124

13:                                               ; preds = %5
  %14 = trunc i64 %8 to i32
  br label %15

15:                                               ; preds = %117, %13
  %16 = phi i64 [ 0, %13 ], [ %118, %117 ]
  %17 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %117

20:                                               ; preds = %15
  %21 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %16
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %117

24:                                               ; preds = %20
  %25 = trunc i64 %16 to i32
  %26 = tail call i32 @ctype(i32 noundef %25, i32 noundef %14) #22
  %27 = and i32 %26, -17
  %28 = icmp eq i32 %27, 45
  br i1 %28, label %117, label %29

29:                                               ; preds = %24
  switch i32 %26, label %95 [
    i32 110, label %30
    i32 97, label %30
  ]

30:                                               ; preds = %29, %29
  %31 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %16
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.optstr, ptr %32, i64 %8, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = ptrtoint ptr %34 to i64
  %38 = trunc i64 %37 to i32
  %39 = tail call i32 @point(i32 noundef %38) #22
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i8, ptr %34, align 1, !tbaa !16
  %43 = icmp ne i8 %42, 0
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %41, %36, %30
  %46 = phi i32 [ 0, %30 ], [ 1, %36 ], [ %44, %41 ]
  %47 = load i32, ptr %9, align 4, !tbaa !11
  %48 = or i32 %47, %46
  store i32 %48, ptr %9, align 4, !tbaa !11
  %49 = load ptr, ptr %31, align 8, !tbaa !7
  %50 = getelementptr inbounds %struct.optstr, ptr %49, i64 %8, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %45
  %54 = ptrtoint ptr %51 to i64
  %55 = trunc i64 %54 to i32
  %56 = tail call i32 @point(i32 noundef %55) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %81, label %58

58:                                               ; preds = %53
  %59 = load i8, ptr %51, align 1, !tbaa !16
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load ptr, ptr %31, align 8, !tbaa !7
  br label %63

63:                                               ; preds = %61, %45
  %64 = phi ptr [ %62, %61 ], [ %49, %45 ]
  %65 = getelementptr inbounds %struct.optstr, ptr %64, i64 %8
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %63
  %69 = ptrtoint ptr %66 to i64
  %70 = trunc i64 %69 to i32
  %71 = tail call i32 @point(i32 noundef %70) #22
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = load i8, ptr %66, align 1, !tbaa !16
  %75 = icmp ne i8 %74, 0
  %76 = zext i1 %75 to i32
  br label %77

77:                                               ; preds = %73, %68, %63
  %78 = phi i32 [ 0, %63 ], [ 1, %68 ], [ %76, %73 ]
  %79 = load i32, ptr %11, align 4, !tbaa !11
  %80 = or i32 %79, %78
  store i32 %80, ptr %11, align 4, !tbaa !11
  br label %81

81:                                               ; preds = %77, %58, %53
  %82 = load ptr, ptr %31, align 8, !tbaa !7
  %83 = getelementptr inbounds %struct.optstr, ptr %82, i64 %8, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !44
  %85 = icmp eq ptr %84, null
  br i1 %85, label %117, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.optstr, ptr %82, i64 %8
  %88 = load ptr, ptr %87, align 8, !tbaa !42
  %89 = icmp eq ptr %88, null
  br i1 %89, label %112, label %90

90:                                               ; preds = %86
  %91 = ptrtoint ptr %88 to i64
  %92 = trunc i64 %91 to i32
  %93 = tail call i32 @point(i32 noundef %92) #22
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %112, label %106

95:                                               ; preds = %29
  %96 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %16
  %97 = load ptr, ptr %96, align 8, !tbaa !7
  %98 = getelementptr inbounds %struct.optstr, ptr %97, i64 %8
  %99 = load ptr, ptr %98, align 8, !tbaa !42
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = ptrtoint ptr %99 to i64
  %103 = trunc i64 %102 to i32
  %104 = tail call i32 @point(i32 noundef %103) #22
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101, %90
  %107 = phi ptr [ %88, %90 ], [ %99, %101 ]
  %108 = phi ptr [ %10, %90 ], [ %11, %101 ]
  %109 = load i8, ptr %107, align 1, !tbaa !16
  %110 = icmp ne i8 %109, 0
  %111 = zext i1 %110 to i32
  br label %112

112:                                              ; preds = %106, %101, %95, %90, %86
  %113 = phi ptr [ %10, %86 ], [ %10, %90 ], [ %11, %95 ], [ %11, %101 ], [ %108, %106 ]
  %114 = phi i32 [ 0, %86 ], [ 1, %90 ], [ 0, %95 ], [ 1, %101 ], [ %111, %106 ]
  %115 = load i32, ptr %113, align 4, !tbaa !11
  %116 = or i32 %115, %114
  store i32 %116, ptr %113, align 4, !tbaa !11
  br label %117

117:                                              ; preds = %112, %81, %24, %20, %15
  %118 = add nuw nsw i64 %16, 1
  %119 = load i32, ptr @nlin, align 4, !tbaa !11
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %15, label %122, !llvm.loop !93

122:                                              ; preds = %117
  %.lcssa = phi i32 [ %119, %117 ]
  %123 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %124

124:                                              ; preds = %122, %5
  %125 = phi i32 [ %123, %122 ], [ %6, %5 ]
  %126 = phi i32 [ %.lcssa, %122 ], [ %7, %5 ]
  %127 = add nuw nsw i64 %8, 1
  %128 = sext i32 %125 to i64
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %5, label %130, !llvm.loop !94

130:                                              ; preds = %124, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @real(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @point(i32 noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1, !tbaa !16
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %8, %3, %1
  %13 = phi i32 [ 0, %1 ], [ 1, %3 ], [ %11, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @chspace() #2 {
  %1 = load i32, ptr @spcount, align 4, !tbaa !11
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [20 x ptr], ptr @spvecs, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = add nsw i32 %1, 1
  store i32 %7, ptr @spcount, align 4, !tbaa !11
  br label %22

8:                                                ; preds = %0
  %9 = icmp sgt i32 %1, 19
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.162) #22
  %11 = load i32, ptr @spcount, align 4, !tbaa !11
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i64 [ %12, %10 ], [ %2, %8 ]
  %15 = phi i32 [ %11, %10 ], [ %1, %8 ]
  %16 = tail call noalias dereferenceable_or_null(2200) ptr @calloc(i64 noundef 2200, i64 noundef 1) #29
  %17 = add nsw i32 %15, 1
  store i32 %17, ptr @spcount, align 4, !tbaa !11
  %18 = getelementptr inbounds [20 x ptr], ptr @spvecs, i64 0, i64 %14
  store ptr %16, ptr %18, align 8, !tbaa !7
  %19 = ptrtoint ptr %16 to i64
  %20 = trunc i64 %19 to i32
  switch i32 %20, label %22 [
    i32 -1, label %21
    i32 0, label %21
  ]

21:                                               ; preds = %13, %13
  tail call void @error(ptr noundef nonnull @.str.1.163) #22
  br label %22

22:                                               ; preds = %21, %13, %6
  %23 = phi ptr [ %4, %6 ], [ %16, %13 ], [ %16, %21 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal ptr @alocv(i32 noundef %0) #2 {
  %2 = load i32, ptr @tpcount, align 4, !tbaa !11
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @thisvec, align 8, !tbaa !7
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds [50 x ptr], ptr @tpvecs, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %10, i64 2000
  %12 = icmp ugt ptr %7, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %4, %1
  %14 = add nsw i32 %2, 1
  store i32 %14, ptr @tpcount, align 4, !tbaa !11
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [50 x ptr], ptr @tpvecs, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call noalias dereferenceable_or_null(2000) ptr @calloc(i64 noundef 2000, i64 noundef 1) #29
  store ptr %20, ptr %16, align 8, !tbaa !7
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %20, %19 ], [ %17, %13 ]
  store ptr %22, ptr @thisvec, align 8, !tbaa !7
  %23 = ptrtoint ptr %22 to i64
  %24 = and i64 %23, 4294967295
  %25 = icmp eq i64 %24, 4294967295
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  tail call void @error(ptr noundef nonnull @.str.2.166) #22
  %27 = load ptr, ptr @thisvec, align 8, !tbaa !7
  br label %28

28:                                               ; preds = %26, %21, %4
  %29 = phi ptr [ %22, %21 ], [ %27, %26 ], [ %5, %4 ]
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  store ptr %31, ptr @thisvec, align 8, !tbaa !7
  %32 = icmp sgt i32 %0, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = ptrtoint ptr %29 to i64
  %35 = add i64 %34, %30
  %36 = add i64 %34, 4
  %37 = tail call i64 @llvm.umax.i64(i64 %35, i64 %36)
  %38 = xor i64 %34, -1
  %39 = add i64 %37, %38
  %40 = and i64 %39, -4
  %41 = add i64 %40, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %29, i8 0, i64 %41, i1 false), !tbaa !11
  br label %42

42:                                               ; preds = %33, %28
  ret ptr %29
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @release() #15 {
  store i32 0, ptr @spcount, align 4, !tbaa !11
  store i32 -1, ptr @tpcount, align 4, !tbaa !11
  store ptr null, ptr @exstore, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @choochar() #2 {
  %1 = alloca [128 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %1) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %1, i8 0, i64 512, i1 false), !tbaa !11
  store i32 0, ptr @F2, align 4, !tbaa !11
  store i32 0, ptr @F1, align 4, !tbaa !11
  %2 = load i32, ptr @nlin, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %71

4:                                                ; preds = %66, %0
  %5 = phi i32 [ %67, %66 ], [ %2, %0 ]
  %6 = phi i64 [ %68, %66 ], [ 0, %0 ]
  %7 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %66

10:                                               ; preds = %4
  %11 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %6
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr @ncol, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %66

17:                                               ; preds = %10
  %18 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %6
  %19 = trunc i64 %6 to i32
  br label %20

20:                                               ; preds = %59, %17
  %21 = phi i64 [ 0, %17 ], [ %60, %59 ]
  %22 = trunc i64 %21 to i32
  %23 = tail call i32 @ctype(i32 noundef %19, i32 noundef %22) #22
  switch i32 %23, label %24 [
    i32 61, label %59
    i32 45, label %59
    i32 0, label %59
  ]

24:                                               ; preds = %20
  %25 = load ptr, ptr %18, align 8, !tbaa !7
  %26 = getelementptr inbounds %struct.optstr, ptr %25, i64 %21
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 4294967168
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %24
  %32 = load i8, ptr %27, align 1, !tbaa !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %31
  %35 = phi i8 [ %40, %34 ], [ %32, %31 ]
  %36 = phi ptr [ %37, %34 ], [ %27, %31 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = sext i8 %35 to i64
  %39 = getelementptr inbounds [128 x i32], ptr %1, i64 0, i64 %38
  store i32 1, ptr %39, align 4, !tbaa !11
  %40 = load i8, ptr %37, align 1, !tbaa !16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !95

42:                                               ; preds = %34, %31, %24
  %43 = getelementptr inbounds %struct.optstr, ptr %25, i64 %21, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = ptrtoint ptr %44 to i64
  %46 = and i64 %45, 4294967168
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load i8, ptr %44, align 1, !tbaa !16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %51, %48
  %52 = phi i8 [ %57, %51 ], [ %49, %48 ]
  %53 = phi ptr [ %54, %51 ], [ %44, %48 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  %55 = sext i8 %52 to i64
  %56 = getelementptr inbounds [128 x i32], ptr %1, i64 0, i64 %55
  store i32 1, ptr %56, align 4, !tbaa !11
  %57 = load i8, ptr %54, align 1, !tbaa !16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %51, !llvm.loop !96

59:                                               ; preds = %51, %48, %42, %20, %20, %20
  %60 = add nuw nsw i64 %21, 1
  %61 = load i32, ptr @ncol, align 4, !tbaa !11
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %60, %62
  br i1 %63, label %20, label %64, !llvm.loop !97

64:                                               ; preds = %59
  %65 = load i32, ptr @nlin, align 4, !tbaa !11
  br label %66

66:                                               ; preds = %64, %10, %4
  %67 = phi i32 [ %65, %64 ], [ %5, %10 ], [ %5, %4 ]
  %68 = add nuw nsw i64 %6, 1
  %69 = sext i32 %67 to i64
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %4, label %71, !llvm.loop !98

71:                                               ; preds = %66, %0
  br label %76

72:                                               ; preds = %76
  %73 = getelementptr inbounds i8, ptr %78, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !16
  %75 = icmp eq ptr %73, getelementptr inbounds ([71 x i8], ptr @.str.171, i64 0, i64 70)
  br i1 %75, label %86, label %76, !llvm.loop !99

76:                                               ; preds = %72, %71
  %77 = phi i8 [ %74, %72 ], [ 2, %71 ]
  %78 = phi ptr [ %73, %72 ], [ @.str.171, %71 ]
  %79 = sext i8 %77 to i64
  %80 = getelementptr inbounds [128 x i32], ptr %1, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %72

83:                                               ; preds = %76
  %.lcssa4 = phi i8 [ %77, %76 ]
  %.lcssa2 = phi i64 [ %79, %76 ]
  %84 = getelementptr inbounds [128 x i32], ptr %1, i64 0, i64 %.lcssa2
  %85 = sext i8 %.lcssa4 to i32
  store i32 %85, ptr @F1, align 4, !tbaa !11
  store i32 1, ptr %84, align 4, !tbaa !11
  br label %86

86:                                               ; preds = %83, %72
  br label %91

87:                                               ; preds = %91
  %88 = getelementptr inbounds i8, ptr %93, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !16
  %90 = icmp eq ptr %88, getelementptr inbounds ([71 x i8], ptr @.str.1.172, i64 0, i64 70)
  br i1 %90, label %100, label %91, !llvm.loop !100

91:                                               ; preds = %87, %86
  %92 = phi i8 [ %89, %87 ], [ 2, %86 ]
  %93 = phi ptr [ %88, %87 ], [ @.str.1.172, %86 ]
  %94 = sext i8 %92 to i64
  %95 = getelementptr inbounds [128 x i32], ptr %1, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %87

98:                                               ; preds = %91
  %.lcssa = phi i8 [ %92, %91 ]
  %99 = sext i8 %.lcssa to i32
  store i32 %99, ptr @F2, align 4, !tbaa !11
  br label %102

100:                                              ; preds = %87
  %101 = load i32, ptr @F2, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %101, %100 ], [ %99, %98 ]
  %104 = load i32, ptr @F1, align 4, !tbaa !11
  %105 = icmp eq i32 %104, 0
  %106 = icmp eq i32 %103, 0
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  tail call void @error(ptr noundef nonnull @.str.2.173) #22
  br label %109

109:                                              ; preds = %108, %102
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @point(i32 noundef %0) #16 {
  %2 = icmp ugt i32 %0, 127
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local void @error(ptr noundef %0) #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = load ptr, ptr @ifile, align 8, !tbaa !7
  %4 = load i32, ptr @iline, align 4, !tbaa !11
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.178, ptr noundef %3, i32 noundef %4, ptr noundef %0) #28
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1.179, i64 10, i64 1, ptr %6) #30
  tail call void @exit(i32 noundef 1) #24
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @gets1(ptr noundef %0) #2 {
  br label %2

2:                                                ; preds = %53, %1
  %3 = phi ptr [ %0, %1 ], [ %.lcssa2, %53 ]
  %4 = phi ptr [ poison, %1 ], [ %54, %53 ]
  %5 = phi i1 [ false, %1 ], [ true, %53 ]
  %6 = load i32, ptr @iline, align 4, !tbaa !11
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @iline, align 4, !tbaa !11
  %8 = load ptr, ptr @tabin, align 8, !tbaa !7
  %9 = tail call ptr @fgets(ptr noundef %3, i32 noundef 8192, ptr noundef %8) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %16, %2
  %12 = phi ptr [ %9, %2 ], [ %18, %16 ]
  br label %20

13:                                               ; preds = %16, %2
  %14 = tail call i32 @swapin() #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @tabin, align 8, !tbaa !7
  %18 = tail call ptr @fgets(ptr noundef %3, i32 noundef 8192, ptr noundef %17) #23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %13, label %11, !llvm.loop !101

20:                                               ; preds = %20, %11
  %21 = phi ptr [ %24, %20 ], [ %3, %11 ]
  %22 = load i8, ptr %21, align 1, !tbaa !16
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %23, label %25, label %20, !llvm.loop !102

25:                                               ; preds = %20
  %.lcssa = phi ptr [ %21, %20 ]
  %26 = getelementptr inbounds i8, ptr %.lcssa, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !16
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %.lcssa, i64 -2
  store i8 0, ptr %26, align 1, !tbaa !16
  %31 = load i8, ptr %30, align 1, !tbaa !16
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i8 [ %31, %29 ], [ %27, %25 ]
  %34 = phi ptr [ %30, %29 ], [ %26, %25 ]
  %35 = icmp eq i8 %33, 92
  %36 = icmp ugt ptr %34, %12
  %37 = and i1 %36, %35
  br i1 %37, label %38, label %55

38:                                               ; preds = %38, %32
  %39 = phi i32 [ %41, %38 ], [ 0, %32 ]
  %40 = phi ptr [ %42, %38 ], [ %34, %32 ]
  %41 = add nuw nsw i32 %39, 1
  %42 = getelementptr inbounds i8, ptr %40, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !16
  %44 = icmp eq i8 %43, 92
  %45 = icmp ugt ptr %42, %12
  %46 = and i1 %45, %44
  br i1 %46, label %38, label %47, !llvm.loop !103

47:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %40, %38 ]
  %.lcssa1 = phi i32 [ %41, %38 ]
  %48 = load i32, ptr @linstart, align 4, !tbaa !11
  %49 = icmp eq i32 %48, 0
  %50 = and i32 %.lcssa1, 1
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = select i1 %5, ptr %4, ptr %12
  br label %2

55:                                               ; preds = %47, %32, %13
  %.lcssa4 = phi ptr [ %4, %47 ], [ %4, %32 ], [ %4, %13 ]
  %.lcssa3 = phi i1 [ %5, %47 ], [ %5, %32 ], [ %5, %13 ]
  %56 = phi ptr [ null, %13 ], [ %12, %47 ], [ %12, %32 ]
  %57 = select i1 %.lcssa3, ptr %.lcssa4, ptr %56
  ret ptr %57
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal void @un1getc(i32 noundef %0) #2 {
  %2 = icmp eq i32 %0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load i32, ptr @iline, align 4, !tbaa !11
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr @iline, align 4, !tbaa !11
  br label %6

6:                                                ; preds = %3, %1
  %7 = trunc i32 %0 to i8
  %8 = load ptr, ptr @backp, align 8, !tbaa !7
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr @backp, align 8, !tbaa !7
  store i8 %7, ptr %8, align 1, !tbaa !16
  %10 = load ptr, ptr @backp, align 8, !tbaa !7
  %11 = icmp ult ptr %10, getelementptr inbounds ([500 x i8], ptr @backup, i64 1, i64 0)
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.2.184) #23
  unreachable

13:                                               ; preds = %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get1char() #2 {
  %1 = load ptr, ptr @backp, align 8, !tbaa !7
  %2 = icmp ugt ptr %1, @backup
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 -1
  store ptr %4, ptr @backp, align 8, !tbaa !7
  %5 = load i8, ptr %4, align 1, !tbaa !16
  %6 = sext i8 %5 to i32
  br label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @tabin, align 8, !tbaa !7
  %9 = tail call i32 @getc(ptr noundef %8) #23
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %6, %3 ], [ %9, %7 ]
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = tail call i32 @swapin() #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.3.187) #23
  unreachable

17:                                               ; preds = %13
  %18 = load ptr, ptr @tabin, align 8, !tbaa !7
  %19 = tail call i32 @getc(ptr noundef %18) #23
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %19, %17 ], [ %11, %10 ]
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, ptr @iline, align 4, !tbaa !11
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @iline, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %23, %20
  ret i32 %21
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize uwtable
define internal void @savefill() #12 {
  %1 = load ptr, ptr @tabout, align 8, !tbaa !7
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.190, i32 noundef 35) #23
  %3 = load ptr, ptr @tabout, align 8, !tbaa !7
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1.191, i64 10, i64 1, ptr %3)
  %5 = load ptr, ptr @tabout, align 8, !tbaa !7
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2.192, i64 11, i64 1, ptr %5)
  %7 = load ptr, ptr @tabout, align 8, !tbaa !7
  %8 = tail call i64 @fwrite(ptr nonnull @.str.3.193, i64 11, i64 1, ptr %7)
  %9 = load ptr, ptr @tabout, align 8, !tbaa !7
  %10 = tail call i64 @fwrite(ptr nonnull @.str.4.194, i64 14, i64 1, ptr %9)
  %11 = load ptr, ptr @tabout, align 8, !tbaa !7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.5.195, i64 14, i64 1, ptr %11)
  %13 = load ptr, ptr @tabout, align 8, !tbaa !7
  %14 = tail call i64 @fwrite(ptr nonnull @.str.6.196, i64 16, i64 1, ptr %13)
  %15 = load ptr, ptr @tabout, align 8, !tbaa !7
  %16 = tail call i64 @fwrite(ptr nonnull @.str.7.197, i64 3, i64 1, ptr %15)
  %17 = load ptr, ptr @tabout, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.8.198, i64 4, i64 1, ptr %17)
  %19 = load ptr, ptr @tabout, align 8, !tbaa !7
  %20 = tail call i64 @fwrite(ptr nonnull @.str.9.199, i64 9, i64 1, ptr %19)
  %21 = load ptr, ptr @tabout, align 8, !tbaa !7
  %22 = tail call i64 @fwrite(ptr nonnull @.str.10.200, i64 18, i64 1, ptr %21)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @rstofill() #12 {
  %1 = load ptr, ptr @tabout, align 8, !tbaa !7
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11.203, i32 noundef 35) #23
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @endoff() #12 {
  br label %4

1:                                                ; preds = %14
  %2 = load i32, ptr @texct, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %17, label %28

4:                                                ; preds = %14, %0
  %5 = phi i64 [ 0, %0 ], [ %15, %14 ]
  %6 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @tabout, align 8, !tbaa !7
  %11 = trunc i64 %5 to i32
  %12 = add i32 %11, 97
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.12.206, i32 noundef %12) #23
  br label %14

14:                                               ; preds = %9, %4
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 100
  br i1 %16, label %1, label %4, !llvm.loop !104

17:                                               ; preds = %17, %1
  %18 = phi i64 [ %24, %17 ], [ 0, %1 ]
  %19 = load ptr, ptr @tabout, align 8, !tbaa !7
  %20 = getelementptr inbounds [0 x i8], ptr @texstr, i64 0, i64 %18
  %21 = load i8, ptr %20, align 1, !tbaa !16
  %22 = sext i8 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.13.207, i32 noundef %22) #23
  %24 = add nuw nsw i64 %18, 1
  %25 = load i32, ptr @texct, align 4, !tbaa !11
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %17, label %28, !llvm.loop !105

28:                                               ; preds = %17, %1
  %29 = load ptr, ptr @tabout, align 8, !tbaa !7
  %30 = load ptr, ptr @last, align 8, !tbaa !7
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.14.208, ptr noundef %30) #23
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @ifdivert() #12 {
  %1 = load ptr, ptr @tabout, align 8, !tbaa !7
  %2 = tail call i64 @fwrite(ptr nonnull @.str.15.211, i64 10, i64 1, ptr %1)
  %3 = load ptr, ptr @tabout, align 8, !tbaa !7
  %4 = tail call i64 @fwrite(ptr nonnull @.str.16.212, i64 32, i64 1, ptr %3)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @saveline() #12 {
  %1 = load ptr, ptr @tabout, align 8, !tbaa !7
  %2 = tail call i64 @fwrite(ptr nonnull @.str.17.215, i64 34, i64 1, ptr %1)
  %3 = load i32, ptr @iline, align 4, !tbaa !11
  store i32 %3, ptr @linstart, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @restline() #12 {
  %1 = load ptr, ptr @tabout, align 8, !tbaa !7
  %2 = load i32, ptr @iline, align 4, !tbaa !11
  %3 = load i32, ptr @linstart, align 4, !tbaa !11
  %4 = sub nsw i32 %2, %3
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18.218, i32 noundef %4) #23
  store i32 0, ptr @linstart, align 4, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @cleanfc() #12 {
  %1 = load ptr, ptr @tabout, align 8, !tbaa !7
  %2 = tail call i64 @fwrite(ptr nonnull @.str.19.221, i64 4, i64 1, ptr %1)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @gettext(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #2 {
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #25
  %7 = load i32, ptr @texname, align 4, !tbaa !11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.224) #22
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, ptr @textflg, align 4, !tbaa !11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr @tabout, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.1.225, i32 noundef 34) #23
  store i32 1, ptr @textflg, align 4, !tbaa !11
  br label %16

16:                                               ; preds = %13, %10
  %17 = load ptr, ptr @tabout, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.2.226, i64 4, i64 1, ptr %17)
  %19 = load ptr, ptr @tabout, align 8, !tbaa !7
  %20 = add nsw i32 %2, 80
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.3.227, i32 noundef %20) #23
  %22 = load ptr, ptr @tabout, align 8, !tbaa !7
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4.228, i64 4, i64 1, ptr %22)
  %24 = load ptr, ptr @tabout, align 8, !tbaa !7
  %25 = load i32, ptr @texname, align 4, !tbaa !11
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.5.229, i32 noundef %25) #23
  tail call void @rstofill() #22
  %27 = icmp eq ptr %3, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %16
  %29 = load i8, ptr %3, align 1, !tbaa !16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @tabout, align 8, !tbaa !7
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.6.230, i32 noundef 31, ptr noundef nonnull %3) #23
  br label %34

34:                                               ; preds = %31, %28, %16
  %35 = load ptr, ptr @tabout, align 8, !tbaa !7
  %36 = tail call i64 @fwrite(ptr nonnull @.str.7.231, i64 10, i64 1, ptr %35)
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !11
  %40 = sext i32 %39 to i64
  %41 = sext i32 %2 to i64
  %42 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @vsize, i64 0, i64 %40, i64 %41
  %43 = icmp eq ptr %4, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load i8, ptr %4, align 1, !tbaa !16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %34
  %48 = load i8, ptr %42, align 4, !tbaa !16
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %67, label %50

50:                                               ; preds = %47, %44
  %51 = load ptr, ptr @tabout, align 8, !tbaa !7
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.8.232, i32 noundef 32) #23
  %53 = load i8, ptr %42, align 4, !tbaa !16
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, ptr @.str.9.233, ptr %42
  br i1 %43, label %62, label %56

56:                                               ; preds = %50
  %57 = load i8, ptr %4, align 1, !tbaa !16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr @tabout, align 8, !tbaa !7
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.10.234, ptr noundef nonnull %4) #23
  br label %62

62:                                               ; preds = %59, %56, %50
  %63 = load ptr, ptr @tabout, align 8, !tbaa !7
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.11.235, ptr noundef nonnull %55) #23
  %65 = load ptr, ptr @tabout, align 8, !tbaa !7
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.12.236, i32 noundef 32, i32 noundef 32) #23
  br label %67

67:                                               ; preds = %62, %47
  %68 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %41
  %69 = load i8, ptr %68, align 2, !tbaa !16
  %70 = icmp eq i8 %69, 0
  %71 = load ptr, ptr @tabout, align 8, !tbaa !7
  br i1 %70, label %74, label %72

72:                                               ; preds = %67
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.13.237, ptr noundef nonnull %68) #23
  br label %79

74:                                               ; preds = %67
  %75 = tail call i32 @ctspan(i32 noundef %1, i32 noundef %2) #22
  %76 = load i32, ptr @ncol, align 4, !tbaa !11
  %77 = add nsw i32 %76, 1
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef nonnull @.str.14.238, i32 noundef 34, i32 noundef %75, i32 noundef %77) #23
  br label %79

79:                                               ; preds = %74, %72
  %80 = load ptr, ptr @tabout, align 8, !tbaa !7
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.15.239, i32 noundef %20, i32 noundef %20) #23
  %82 = tail call i32 @ctype(i32 noundef %1, i32 noundef %2) #22
  %83 = icmp eq i32 %82, 97
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load ptr, ptr @tabout, align 8, !tbaa !7
  %86 = tail call i64 @fwrite(ptr nonnull @.str.16.240, i64 8, i64 1, ptr %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load ptr, ptr @tabout, align 8, !tbaa !7
  %89 = tail call i64 @fwrite(ptr nonnull @.str.17.241, i64 6, i64 1, ptr %88)
  %90 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 2
  %91 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 1
  br label %92

92:                                               ; preds = %109, %87
  %93 = call ptr @gets1(ptr noundef nonnull %6) #22
  %94 = icmp eq ptr %93, null
  br i1 %94, label %112, label %95

95:                                               ; preds = %92
  %96 = load i8, ptr %6, align 16, !tbaa !16
  %97 = icmp eq i8 %96, 84
  %98 = load i8, ptr %91, align 1
  %99 = icmp eq i8 %98, 125
  %100 = select i1 %97, i1 %99, i1 false
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i8, ptr %90, align 2, !tbaa !16
  %103 = sext i8 %102 to i32
  %104 = load i32, ptr @tab, align 4, !tbaa !11
  %105 = icmp eq i32 %104, %103
  br i1 %105, label %112, label %106

106:                                              ; preds = %101, %95
  %107 = call i32 @match(ptr noundef nonnull @.str.18.242, ptr noundef nonnull %6) #22
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load ptr, ptr @tabout, align 8, !tbaa !7
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.19.243, ptr noundef nonnull %6) #23
  br label %92, !llvm.loop !106

112:                                              ; preds = %106, %101, %92
  br i1 %27, label %119, label %113

113:                                              ; preds = %112
  %114 = load i8, ptr %3, align 1, !tbaa !16
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr @tabout, align 8, !tbaa !7
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef nonnull @.str.20.244, i32 noundef 31) #23
  br label %119

119:                                              ; preds = %116, %113, %112
  br i1 %43, label %126, label %120

120:                                              ; preds = %119
  %121 = load i8, ptr %4, align 1, !tbaa !16
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr @tabout, align 8, !tbaa !7
  %125 = call i64 @fwrite(ptr nonnull @.str.21.245, i64 12, i64 1, ptr %124)
  br label %126

126:                                              ; preds = %123, %120, %119
  %127 = load ptr, ptr @tabout, align 8, !tbaa !7
  %128 = call i64 @fwrite(ptr nonnull @.str.4.228, i64 4, i64 1, ptr %127)
  %129 = load ptr, ptr @tabout, align 8, !tbaa !7
  %130 = call i64 @fwrite(ptr nonnull @.str.22.246, i64 4, i64 1, ptr %129)
  %131 = load ptr, ptr @tabout, align 8, !tbaa !7
  %132 = load i32, ptr @texname, align 4, !tbaa !11
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.23.247, i32 noundef %132) #23
  %134 = load ptr, ptr @tabout, align 8, !tbaa !7
  %135 = load i32, ptr @texname, align 4, !tbaa !11
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.24.248, i32 noundef %135) #23
  %137 = load ptr, ptr @tabout, align 8, !tbaa !7
  %138 = call i64 @fwrite(ptr nonnull @.str.25.249, i64 3, i64 1, ptr %137)
  %139 = load ptr, ptr @tabout, align 8, !tbaa !7
  %140 = call i64 @fwrite(ptr nonnull @.str.26.250, i64 6, i64 1, ptr %139)
  %141 = load i8, ptr %90, align 2, !tbaa !16
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %126
  %144 = getelementptr inbounds i8, ptr %6, i64 3
  call void @tcopy(ptr noundef %0, ptr noundef nonnull %144) #22
  br label %146

145:                                              ; preds = %126
  store i8 0, ptr %0, align 1, !tbaa !16
  br label %146

146:                                              ; preds = %145, %143
  %147 = load i32, ptr @texname, align 4, !tbaa !11
  %148 = load i32, ptr @texct, align 4, !tbaa !11
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr @texct, align 4, !tbaa !11
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x i8], ptr @texstr, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !16
  %153 = sext i8 %152 to i32
  store i32 %153, ptr @texname, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #25
  ret i32 %147
}

; Function Attrs: nounwind optsize uwtable
define internal void @untext() #2 {
  tail call void @rstofill() #22
  %1 = load ptr, ptr @tabout, align 8, !tbaa !7
  %2 = tail call i64 @fwrite(ptr nonnull @.str.27.253, i64 4, i64 1, ptr %1)
  %3 = load ptr, ptr @tabout, align 8, !tbaa !7
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.28.254, i32 noundef 34) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @interv(i32 noundef %0, i32 noundef %1) #2 {
  %3 = load i32, ptr @ncol, align 4, !tbaa !11
  %4 = icmp sle i32 %3, %1
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, ptr @dboxflg, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr @nlin, align 4, !tbaa !11
  %14 = icmp sgt i32 %13, %0
  %15 = select i1 %14, i32 3, i32 1
  br label %44

16:                                               ; preds = %7
  br i1 %4, label %44, label %17

17:                                               ; preds = %16, %2
  %18 = icmp sgt i32 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = add nsw i32 %0, -1
  %21 = tail call i32 @lefdata(i32 noundef %20, i32 noundef %1) #22
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %21, %19 ], [ 0, %17 ]
  %24 = add nsw i32 %0, 1
  %25 = load i32, ptr @nlin, align 4, !tbaa !11
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %23, 2
  br label %40

29:                                               ; preds = %22
  %30 = tail call i32 @allh(i32 noundef %0) #22
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %0, i32 %24
  %33 = tail call i32 @lefdata(i32 noundef %32, i32 noundef %1) #22
  %34 = freeze i32 %33
  %35 = icmp eq i32 %34, 2
  %36 = icmp eq i32 %23, 2
  %37 = and i1 %36, %35
  br i1 %37, label %44, label %38

38:                                               ; preds = %29
  %39 = select i1 %35, i32 2, i32 0
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi i1 [ %28, %27 ], [ %36, %38 ]
  %42 = phi i32 [ 0, %27 ], [ %39, %38 ]
  %43 = select i1 %41, i32 1, i32 %42
  br label %44

44:                                               ; preds = %40, %29, %16, %12, %10
  %45 = phi i32 [ 2, %10 ], [ %15, %12 ], [ 0, %16 ], [ 3, %29 ], [ %43, %40 ]
  ret i32 %45
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @interh(i32 noundef %0, i32 noundef %1) #2 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !11
  %6 = icmp eq i32 %5, 61
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dboxflg, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, ptr @nlin, align 4, !tbaa !11
  br label %24

12:                                               ; preds = %7
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr @nlin, align 4, !tbaa !11
  %16 = add nsw i32 %15, -1
  %17 = icmp sgt i32 %16, %0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14, %12, %2
  %19 = load i32, ptr @ncol, align 4, !tbaa !11
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %101, label %21

21:                                               ; preds = %18
  %22 = icmp eq i32 %1, 0
  %23 = select i1 %22, i32 2, i32 3
  br label %101

24:                                               ; preds = %14, %10
  %25 = phi i32 [ %11, %10 ], [ %15, %14 ]
  %26 = icmp sgt i32 %25, %0
  br i1 %26, label %27, label %101

27:                                               ; preds = %24
  %28 = icmp slt i32 %1, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = add nsw i32 %1, -1
  %31 = tail call i32 @thish(i32 noundef %0, i32 noundef %30) #22
  br label %32

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %31, %29 ], [ 0, %27 ]
  %34 = icmp slt i32 %33, 2
  %35 = icmp sgt i32 %0, 0
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %63

37:                                               ; preds = %37, %32
  %38 = phi i64 [ %39, %37 ], [ %3, %32 ]
  %39 = add nsw i64 %38, -1
  %40 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = icmp ne ptr %41, null
  %43 = icmp sgt i64 %38, 1
  %44 = and i1 %43, %42
  br i1 %44, label %37, label %45, !llvm.loop !107

45:                                               ; preds = %37
  %.lcssa3 = phi i64 [ %39, %37 ]
  %46 = trunc i64 %.lcssa3 to i32
  %47 = tail call i32 @allh(i32 noundef %46) #22
  %48 = icmp eq i32 %47, 0
  %49 = or i1 %28, %48
  %50 = select i1 %48, i32 %33, i32 0
  br i1 %49, label %63, label %51

51:                                               ; preds = %51, %45
  %52 = phi i64 [ %53, %51 ], [ %3, %45 ]
  %53 = add nsw i64 %52, -1
  %54 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = icmp ne ptr %55, null
  %57 = icmp sgt i64 %52, 1
  %58 = and i1 %57, %56
  br i1 %58, label %51, label %59, !llvm.loop !107

59:                                               ; preds = %51
  %.lcssa2 = phi i64 [ %53, %51 ]
  %60 = trunc i64 %.lcssa2 to i32
  %61 = add nsw i32 %1, -1
  %62 = tail call i32 @thish(i32 noundef %60, i32 noundef %61) #22
  br label %63

63:                                               ; preds = %59, %45, %32
  %64 = phi i32 [ %50, %45 ], [ %33, %32 ], [ %62, %59 ]
  %65 = tail call i32 @thish(i32 noundef %0, i32 noundef %1) #22
  %66 = icmp slt i32 %65, 2
  %67 = and i1 %35, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %68, %63
  %69 = phi i64 [ %70, %68 ], [ %3, %63 ]
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !7
  %73 = icmp ne ptr %72, null
  %74 = icmp sgt i64 %69, 1
  %75 = and i1 %74, %73
  br i1 %75, label %68, label %76, !llvm.loop !107

76:                                               ; preds = %68
  %.lcssa1 = phi i64 [ %70, %68 ]
  %77 = trunc i64 %.lcssa1 to i32
  %78 = tail call i32 @allh(i32 noundef %77) #22
  %79 = icmp eq i32 %78, 0
  %80 = or i1 %28, %79
  %81 = select i1 %79, i32 %65, i32 0
  br i1 %80, label %93, label %82

82:                                               ; preds = %82, %76
  %83 = phi i64 [ %84, %82 ], [ %3, %76 ]
  %84 = add nsw i64 %83, -1
  %85 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !7
  %87 = icmp ne ptr %86, null
  %88 = icmp sgt i64 %83, 1
  %89 = and i1 %88, %87
  br i1 %89, label %82, label %90, !llvm.loop !107

90:                                               ; preds = %82
  %.lcssa = phi i64 [ %84, %82 ]
  %91 = trunc i64 %.lcssa to i32
  %92 = tail call i32 @thish(i32 noundef %91, i32 noundef %1) #22
  br label %93

93:                                               ; preds = %90, %76, %63
  %94 = phi i32 [ %81, %76 ], [ %65, %63 ], [ %92, %90 ]
  %95 = icmp eq i32 %64, 61
  %96 = icmp eq i32 %94, 61
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = select i1 %96, i32 2, i32 0
  %100 = select i1 %95, i32 1, i32 %99
  br label %101

101:                                              ; preds = %98, %93, %24, %21, %18
  %102 = phi i32 [ 1, %18 ], [ %23, %21 ], [ 0, %24 ], [ 3, %93 ], [ %100, %98 ]
  ret i32 %102
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @maknew(ptr noundef %0) #2 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %11 ]
  %4 = phi ptr [ null, %1 ], [ %12, %11 ]
  %5 = load i8, ptr %3, align 1, !tbaa !16
  switch i8 %5, label %11 [
    i8 0, label %14
    i8 92, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %9 = icmp eq i8 %8, 38
  %10 = select i1 %9, ptr %3, ptr %4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %4, %2 ], [ %10, %6 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !108

14:                                               ; preds = %2
  %.lcssa2 = phi ptr [ %4, %2 ]
  %15 = icmp eq ptr %.lcssa2, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %40, %14
  %17 = phi i32 [ %41, %40 ], [ 0, %14 ]
  %18 = phi ptr [ %42, %40 ], [ %0, %14 ]
  %19 = load i8, ptr %18, align 1, !tbaa !16
  switch i8 %19, label %40 [
    i8 0, label %43
    i8 46, label %20
  ]

20:                                               ; preds = %16
  %21 = tail call i32 @ineqn(ptr noundef nonnull %18, ptr noundef %0) #23, !range !13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = icmp ugt ptr %18, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %18, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !16
  %28 = sext i8 %27 to i32
  %29 = tail call i32 @digit(i32 noundef %28) #22
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %23
  %32 = getelementptr inbounds i8, ptr %18, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !16
  %34 = sext i8 %33 to i32
  %35 = tail call i32 @digit(i32 noundef %34) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31, %25
  %38 = ptrtoint ptr %18 to i64
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %37, %31, %20, %16
  %41 = phi i32 [ %17, %20 ], [ %39, %37 ], [ %17, %31 ], [ %17, %16 ]
  %42 = getelementptr inbounds i8, ptr %18, i64 1
  br label %16, !llvm.loop !109

43:                                               ; preds = %16
  %.lcssa1 = phi i32 [ %17, %16 ]
  %.lcssa = phi ptr [ %18, %16 ]
  %44 = icmp eq i32 %.lcssa1, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %43
  %46 = icmp ugt ptr %.lcssa, %0
  br i1 %46, label %47, label %59

47:                                               ; preds = %57, %45
  %48 = phi ptr [ %49, %57 ], [ %.lcssa, %45 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 -1
  %50 = load i8, ptr %49, align 1, !tbaa !16
  %51 = sext i8 %50 to i32
  %52 = tail call i32 @digit(i32 noundef %51) #22
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = tail call i32 @ineqn(ptr noundef nonnull %48, ptr noundef %0) #23, !range !13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %47
  %58 = icmp ugt ptr %49, %0
  br i1 %58, label %47, label %87, !llvm.loop !110

59:                                               ; preds = %54, %45
  %60 = phi ptr [ %.lcssa, %45 ], [ %48, %54 ]
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %87, label %65

62:                                               ; preds = %43
  %63 = sext i32 %.lcssa1 to i64
  %64 = inttoptr i64 %63 to ptr
  br label %65

65:                                               ; preds = %62, %59, %14
  %66 = phi ptr [ %64, %62 ], [ %.lcssa2, %14 ], [ %60, %59 ]
  %67 = load ptr, ptr @exstore, align 8, !tbaa !7
  %68 = icmp eq ptr %67, null
  %69 = load ptr, ptr @exlim, align 8
  %70 = icmp ugt ptr %67, %69
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = tail call ptr (...) @chspace() #22
  store ptr %73, ptr @exstore, align 8, !tbaa !7
  %74 = getelementptr inbounds i8, ptr %73, i64 2000
  store ptr %74, ptr @exlim, align 8, !tbaa !7
  br label %75

75:                                               ; preds = %72, %65
  %76 = phi ptr [ %67, %65 ], [ %73, %72 ]
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi ptr [ %66, %75 ], [ %79, %77 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  %80 = load i8, ptr %78, align 1, !tbaa !16
  %81 = load ptr, ptr @exstore, align 8, !tbaa !7
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %82, ptr @exstore, align 8, !tbaa !7
  store i8 %80, ptr %81, align 1, !tbaa !16
  %83 = icmp eq i8 %80, 0
  br i1 %83, label %84, label %77, !llvm.loop !111

84:                                               ; preds = %77
  store i8 0, ptr %66, align 1, !tbaa !16
  %85 = ptrtoint ptr %76 to i64
  %86 = trunc i64 %85 to i32
  br label %87

87:                                               ; preds = %84, %59, %57
  %88 = phi i32 [ %86, %84 ], [ 0, %59 ], [ 0, %57 ]
  ret i32 %88
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @ineqn(ptr noundef readnone %0, ptr noundef readonly %1) #17 {
  %3 = load i8, ptr %1, align 1, !tbaa !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @delim1, align 4
  %7 = load i32, ptr @delim2, align 4
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi i8 [ %3, %5 ], [ %26, %24 ]
  %10 = phi i32 [ 0, %5 ], [ %25, %24 ]
  %11 = phi ptr [ %1, %5 ], [ %15, %24 ]
  %12 = sext i8 %9 to i32
  %13 = icmp eq ptr %11, %0
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = icmp eq i32 %10, 0
  %17 = icmp eq i32 %6, %12
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = icmp eq i32 %10, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = icmp ne i32 %7, %12
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %21, %19, %14
  %25 = phi i32 [ 0, %19 ], [ 1, %14 ], [ %23, %21 ]
  %26 = load i8, ptr %15, align 1, !tbaa !16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %8, !llvm.loop !112

28:                                               ; preds = %24, %8, %2
  %29 = phi i32 [ 0, %2 ], [ 0, %24 ], [ %10, %8 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = load i8, ptr %0, align 1, !tbaa !16
  %4 = load i8, ptr %1, align 1, !tbaa !16
  %5 = icmp eq i8 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %11, %2
  %7 = phi i8 [ %14, %11 ], [ %3, %2 ]
  %8 = phi ptr [ %13, %11 ], [ %1, %2 ]
  %9 = phi ptr [ %12, %11 ], [ %0, %2 ]
  %10 = icmp eq i8 %7, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  %14 = load i8, ptr %12, align 1, !tbaa !16
  %15 = load i8, ptr %13, align 1, !tbaa !16
  %16 = icmp eq i8 %14, %15
  br i1 %16, label %6, label %17, !llvm.loop !113

17:                                               ; preds = %11, %6, %2
  %18 = phi i32 [ 0, %2 ], [ 0, %11 ], [ 1, %6 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @prefix(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %9 ]
  %5 = phi ptr [ %1, %2 ], [ %10, %9 ]
  %6 = load i8, ptr %4, align 1, !tbaa !16
  %7 = load i8, ptr %5, align 1, !tbaa !16
  %8 = icmp eq i8 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %5, i64 1
  %11 = getelementptr inbounds i8, ptr %4, i64 1
  %12 = icmp eq i8 %6, 0
  br i1 %12, label %16, label %3, !llvm.loop !114

13:                                               ; preds = %3
  %.lcssa = phi i8 [ %6, %3 ]
  %14 = icmp eq i8 %.lcssa, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i32 [ %15, %13 ], [ 1, %9 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @letter(i32 noundef %0) #16 {
  %2 = and i32 %0, -33
  %3 = add i32 %2, -65
  %4 = icmp ult i32 %3, 26
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @numb(ptr nocapture noundef readonly %0) #17 {
  %2 = load i8, ptr %0, align 1, !tbaa !16
  %3 = add i8 %2, -48
  %4 = icmp ult i8 %3, 10
  br i1 %4, label %5, label %17

5:                                                ; preds = %5, %1
  %6 = phi i8 [ %14, %5 ], [ %2, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %8 = phi ptr [ %13, %5 ], [ %0, %1 ]
  %9 = zext i8 %6 to i32
  %10 = mul nsw i32 %7, 10
  %11 = add i32 %10, -48
  %12 = add i32 %11, %9
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !16
  %15 = add i8 %14, -48
  %16 = icmp ult i8 %15, 10
  br i1 %16, label %5, label %17, !llvm.loop !115

17:                                               ; preds = %5, %1
  %18 = phi i32 [ 0, %1 ], [ %12, %5 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @digit(i32 noundef %0) #16 {
  %2 = add i32 %0, -48
  %3 = icmp ult i32 %2, 10
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @max(i32 noundef %0, i32 noundef %1) #18 {
  %3 = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @tcopy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #19 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %8, %3 ]
  %5 = phi ptr [ %1, %2 ], [ %6, %3 ]
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = load i8, ptr %5, align 1, !tbaa !16
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %7, ptr %4, align 1, !tbaa !16
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %3, !llvm.loop !116

10:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @ctype(i32 noundef %0, i32 noundef %1) #20 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %3
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = sext i32 %13 to i64
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !11
  br label %18

18:                                               ; preds = %11, %7, %2
  %19 = phi i32 [ %17, %11 ], [ 0, %2 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @min(i32 noundef %0, i32 noundef %1) #18 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @fspan(i32 noundef %0, i32 noundef %1) #20 {
  %3 = add nsw i32 %1, 1
  %4 = load i32, ptr @ncol, align 4, !tbaa !11
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %7
  %17 = load i32, ptr %16, align 4, !tbaa !11
  %18 = sext i32 %17 to i64
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 115
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %15, %11, %6, %2
  %25 = phi i32 [ 0, %2 ], [ %23, %15 ], [ 0, %6 ], [ 0, %11 ]
  ret i32 %25
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @lspan(i32 noundef %0, i32 noundef %1) #21 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %3
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = sext i32 %13 to i64
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !11
  %18 = icmp eq i32 %17, 115
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = add nsw i32 %1, 1
  %21 = load i32, ptr @ncol, align 4, !tbaa !11
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = icmp eq i32 %26, 115
  br i1 %27, label %40, label %28

28:                                               ; preds = %23, %19
  %29 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %15
  %30 = load i32, ptr %29, align 4, !tbaa !11
  %31 = icmp eq i32 %30, 115
  br i1 %31, label %32, label %40

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %35, %32 ], [ 0, %28 ]
  %34 = phi i64 [ %36, %32 ], [ %15, %28 ]
  %35 = add nuw nsw i32 %33, 1
  %36 = add i64 %34, -1
  %37 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !11
  %39 = icmp eq i32 %38, 115
  br i1 %39, label %32, label %40

40:                                               ; preds = %32, %28, %23, %11, %7, %2
  %41 = phi i32 [ 0, %11 ], [ 0, %23 ], [ 0, %2 ], [ 0, %7 ], [ 0, %28 ], [ %35, %32 ]
  ret i32 %41
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @ctspan(i32 noundef %0, i32 noundef %1) #21 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %5 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %3
  %6 = load i32, ptr @ncol, align 4, !tbaa !11
  %7 = add nsw i32 %1, 1
  %8 = icmp slt i32 %7, %6
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  %13 = sext i32 %1 to i64
  %14 = add nsw i64 %13, 1
  %15 = sub i32 %6, %1
  br label %16

16:                                               ; preds = %28, %9
  %17 = phi i64 [ %14, %9 ], [ %30, %28 ]
  %18 = phi i32 [ 1, %9 ], [ %29, %28 ]
  br i1 %12, label %19, label %33

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4, !tbaa !11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4, !tbaa !11
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %24, i64 %17
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = icmp eq i32 %26, 115
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = add nuw nsw i32 %18, 1
  %30 = add nsw i64 %17, 1
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %6, %31
  br i1 %32, label %33, label %16, !llvm.loop !117

33:                                               ; preds = %28, %22, %19, %16, %2
  %34 = phi i32 [ 1, %2 ], [ %18, %19 ], [ 1, %16 ], [ %15, %28 ], [ %18, %22 ]
  ret i32 %34
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @tohcol(i32 noundef %0) #12 {
  %2 = icmp eq i32 %0, 0
  %3 = load ptr, ptr @tabout, align 8, !tbaa !7
  br i1 %2, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.283, i64 6, i64 1, ptr %3)
  br label %10

6:                                                ; preds = %1
  %7 = add nsw i32 %0, 40
  %8 = add nsw i32 %0, 79
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1.284, i32 noundef %7, i32 noundef %8) #23
  br label %10

10:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @allh(i32 noundef %0) #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i32, ptr @ncol, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %14, %6
  %10 = phi i32 [ %15, %14 ], [ 0, %6 ]
  %11 = phi i32 [ %16, %14 ], [ 0, %6 ]
  %12 = tail call i32 @thish(i32 noundef %0, i32 noundef %11) #23
  switch i32 %12, label %13 [
    i32 0, label %19
    i32 1, label %14
  ]

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ 1, %13 ], [ %10, %9 ]
  %16 = add nuw nsw i32 %11, 1
  %17 = load i32, ptr @ncol, align 4, !tbaa !11
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %9, label %19, !llvm.loop !118

19:                                               ; preds = %14, %9, %6, %1
  %20 = phi i32 [ 1, %1 ], [ 0, %6 ], [ %12, %9 ], [ %15, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @thish(i32 noundef %0, i32 noundef %1) #2 {
  %3 = or i32 %1, %0
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %55

5:                                                ; preds = %2
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %6
  %11 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %6
  %12 = load i32, ptr %10, align 4, !tbaa !11
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %25, %5
  %15 = phi i32 [ %1, %5 ], [ %26, %25 ]
  br i1 %9, label %16, label %23

16:                                               ; preds = %14
  br i1 %13, label %17, label %52

17:                                               ; preds = %16
  %18 = load i32, ptr %11, align 4, !tbaa !11
  %19 = sext i32 %18 to i64
  %20 = zext i32 %15 to i64
  %21 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %19, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !11
  switch i32 %22, label %29 [
    i32 95, label %52
    i32 45, label %52
    i32 61, label %55
    i32 94, label %54
    i32 115, label %25
    i32 0, label %54
  ]

23:                                               ; preds = %14
  %24 = tail call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %55

25:                                               ; preds = %17
  %26 = add nsw i32 %15, -1
  %27 = or i32 %26, %0
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %14, label %52

29:                                               ; preds = %17
  %.lcssa4 = phi i32 [ %15, %17 ]
  %.lcssa = phi i32 [ %22, %17 ]
  %30 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %6
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = zext i32 %.lcssa4 to i64
  %33 = icmp eq i32 %.lcssa, 97
  %34 = getelementptr inbounds %struct.optstr, ptr %31, i64 %32, i32 1
  %35 = getelementptr inbounds %struct.optstr, ptr %31, i64 %32
  %36 = select i1 %33, ptr %34, ptr %35
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %29
  %40 = ptrtoint ptr %37 to i64
  %41 = trunc i64 %40 to i32
  %42 = tail call i32 @point(i32 noundef %41) #22
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i8, ptr %37, align 1, !tbaa !16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44, %39
  %48 = tail call i32 @vspen(ptr noundef nonnull %37) #22
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = tail call i32 @barent(ptr noundef nonnull %37) #22
  br label %55

52:                                               ; preds = %25, %17, %17, %16
  %53 = phi i32 [ 45, %17 ], [ 45, %17 ], [ 0, %25 ], [ %12, %16 ]
  br label %55

54:                                               ; preds = %17, %17
  br label %55

55:                                               ; preds = %54, %52, %50, %47, %44, %29, %23, %17, %2
  %56 = phi i32 [ 1, %44 ], [ 1, %29 ], [ 1, %47 ], [ %51, %50 ], [ 0, %2 ], [ %24, %23 ], [ %53, %52 ], [ 1, %54 ], [ 61, %17 ]
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nounwind optsize uwtable
define internal void @makeline(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call i32 @thish(i32 noundef %0, i32 noundef %1) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %3
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.optstr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = icmp eq i8 %13, 92
  %15 = zext i1 %14 to i32
  %16 = icmp slt i32 %1, 1
  %17 = select i1 %16, i1 true, i1 %14
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = add nsw i32 %1, -1
  %20 = tail call i32 @thish(i32 noundef %0, i32 noundef %19) #22
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %48, label %23

22:                                               ; preds = %6
  br i1 %14, label %37, label %23

23:                                               ; preds = %22, %18
  %24 = load i32, ptr @ncol, align 4, !tbaa !11
  %25 = icmp sgt i32 %24, %1
  br i1 %25, label %26, label %45

26:                                               ; preds = %33, %23
  %27 = phi i32 [ %34, %33 ], [ %1, %23 ]
  %28 = tail call i32 @ctype(i32 noundef %0, i32 noundef %27) #22
  %29 = icmp eq i32 %28, 115
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @thish(i32 noundef %0, i32 noundef %27) #22
  %32 = icmp eq i32 %4, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %26
  %34 = add nsw i32 %27, 1
  %35 = load i32, ptr @ncol, align 4, !tbaa !11
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %26, label %45, !llvm.loop !119

37:                                               ; preds = %42, %22
  %38 = phi i32 [ %39, %42 ], [ %1, %22 ]
  %39 = add nsw i32 %38, 1
  %40 = load i32, ptr @ncol, align 4, !tbaa !11
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = tail call i32 @ctype(i32 noundef %0, i32 noundef %39) #22
  %44 = icmp eq i32 %43, 115
  br i1 %44, label %37, label %45, !llvm.loop !120

45:                                               ; preds = %42, %37, %33, %30, %23
  %46 = phi i32 [ %1, %23 ], [ %39, %37 ], [ %39, %42 ], [ %34, %33 ], [ %27, %30 ]
  %47 = add nsw i32 %46, -1
  tail call void @drawline(i32 noundef %0, i32 noundef %1, i32 noundef %47, i32 noundef %2, i32 noundef 0, i32 noundef %15) #23
  br label %48

48:                                               ; preds = %45, %18, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @drawline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  switch i32 %3, label %139 [
    i32 45, label %11
    i32 61, label %7
    i32 4, label %11
  ]

7:                                                ; preds = %6
  %8 = load i32, ptr @pr1403, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 2, i32 1
  br label %11

11:                                               ; preds = %7, %6, %6
  %12 = phi i32 [ %10, %7 ], [ 1, %6 ], [ 1, %6 ]
  %13 = sub nsw i32 %2, %1
  %14 = load i32, ptr @ncol, align 4, !tbaa !11
  %15 = icmp sge i32 %13, %14
  %16 = icmp ne i32 %4, 0
  %17 = or i1 %16, %15
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @allh(i32 noundef %0) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr @tabout, align 8, !tbaa !7
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4.293, i64 8, i64 1, ptr %22)
  br label %24

24:                                               ; preds = %21, %18, %11
  %25 = phi i1 [ false, %21 ], [ true, %18 ], [ true, %11 ]
  %26 = icmp eq i32 %5, 0
  %27 = add nsw i32 %1, 40
  %28 = icmp ugt i32 %12, 1
  %29 = add nsw i32 %2, 1
  %30 = add nsw i32 %2, 80
  %31 = add nsw i32 %2, 41
  br label %32

32:                                               ; preds = %124, %24
  %33 = phi ptr [ @.str.3.294, %24 ], [ %95, %124 ]
  %34 = phi i32 [ 0, %24 ], [ %39, %124 ]
  %35 = phi ptr [ @.str.3.294, %24 ], [ %94, %124 ]
  %36 = phi i32 [ 0, %24 ], [ %127, %124 ]
  %37 = shl nuw nsw i32 %36, 1
  %38 = sub nsw i32 %37, %12
  %39 = add nsw i32 %38, 1
  %40 = icmp eq i32 %39, %34
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = load ptr, ptr @tabout, align 8, !tbaa !7
  %43 = sub nsw i32 %39, %34
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.5.295, i32 noundef %43) #23
  br label %45

45:                                               ; preds = %41, %32
  br i1 %26, label %46, label %90

46:                                               ; preds = %45
  tail call void @tohcol(i32 noundef %1) #22
  %47 = tail call i32 @interv(i32 noundef %0, i32 noundef %1) #22
  br i1 %28, label %48, label %63

48:                                               ; preds = %46
  switch i32 %47, label %56 [
    i32 1, label %49
    i32 2, label %52
    i32 3, label %55
  ]

49:                                               ; preds = %48
  %50 = icmp eq i32 %36, 0
  %51 = select i1 %50, ptr @.str.6.296, ptr @.str.7.297
  br label %56

52:                                               ; preds = %48
  %53 = icmp eq i32 %36, 1
  %54 = select i1 %53, ptr @.str.6.296, ptr @.str.7.297
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %52, %49, %48
  %57 = phi ptr [ %35, %48 ], [ @.str.6.296, %55 ], [ %54, %52 ], [ %51, %49 ]
  %58 = load i8, ptr %57, align 1, !tbaa !16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr @tabout, align 8, !tbaa !7
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.8.298, ptr noundef nonnull %57) #23
  br label %77

63:                                               ; preds = %46
  %64 = add i32 %47, -1
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = sext i32 %64 to i64
  %68 = getelementptr inbounds [3 x ptr], ptr @switch.table.drawline, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi ptr [ %35, %63 ], [ %69, %66 ]
  %72 = load i8, ptr %71, align 1, !tbaa !16
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr @tabout, align 8, !tbaa !7
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.8.298, ptr noundef nonnull %71) #23
  br label %86

77:                                               ; preds = %60, %56
  %78 = tail call i32 @interv(i32 noundef %0, i32 noundef %29) #22
  switch i32 %78, label %93 [
    i32 1, label %79
    i32 2, label %82
    i32 3, label %85
  ]

79:                                               ; preds = %77
  %80 = icmp eq i32 %36, 0
  %81 = select i1 %80, ptr @.str.7.297, ptr @.str.9.299
  br label %93

82:                                               ; preds = %77
  %83 = icmp eq i32 %36, 1
  %84 = select i1 %83, ptr @.str.7.297, ptr @.str.9.299
  br label %93

85:                                               ; preds = %77
  br label %93

86:                                               ; preds = %74, %70
  %87 = tail call i32 @interv(i32 noundef %0, i32 noundef %29) #22
  switch i32 %87, label %93 [
    i32 1, label %88
    i32 2, label %88
    i32 3, label %89
  ]

88:                                               ; preds = %86, %86
  br label %93

89:                                               ; preds = %86
  br label %93

90:                                               ; preds = %45
  %91 = load ptr, ptr @tabout, align 8, !tbaa !7
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.10.300, i32 noundef %27) #23
  br label %93

93:                                               ; preds = %90, %89, %88, %86, %85, %82, %79, %77
  %94 = phi ptr [ %57, %77 ], [ %57, %85 ], [ %57, %82 ], [ %57, %79 ], [ %71, %86 ], [ %71, %89 ], [ %71, %88 ], [ %35, %90 ]
  %95 = phi ptr [ %33, %77 ], [ @.str.7.297, %85 ], [ %84, %82 ], [ %81, %79 ], [ %33, %86 ], [ @.str.7.297, %89 ], [ @.str.9.299, %88 ], [ %33, %90 ]
  %96 = load ptr, ptr @tabout, align 8, !tbaa !7
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.11.301, i32 noundef 33) #23
  %98 = load i32, ptr @linsize, align 4, !tbaa !11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load ptr, ptr @tabout, align 8, !tbaa !7
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.12.302, i32 noundef 33) #23
  br label %103

103:                                              ; preds = %100, %93
  br i1 %26, label %107, label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr @tabout, align 8, !tbaa !7
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.13.303, i32 noundef %30) #23
  br label %118

107:                                              ; preds = %103
  %108 = load i32, ptr @pr1403, align 4, !tbaa !11
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 ptrtoint (ptr @.str.14.304 to i32), i32 ptrtoint (ptr @.str.16.305 to i32)
  %111 = load i32, ptr @ncol, align 4, !tbaa !11
  %112 = icmp slt i32 %29, %111
  %113 = load ptr, ptr @tabout, align 8, !tbaa !7
  br i1 %112, label %116, label %114

114:                                              ; preds = %107
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.17.306, ptr noundef %95, i32 noundef %110) #23
  br label %118

116:                                              ; preds = %107
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.18.307, i32 noundef %30, i32 noundef %31, ptr noundef %95, i32 noundef %110) #23
  br label %118

118:                                              ; preds = %116, %114, %104
  %119 = load i32, ptr @linsize, align 4, !tbaa !11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr @tabout, align 8, !tbaa !7
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef nonnull @.str.19.308, i32 noundef 33) #23
  br label %124

124:                                              ; preds = %121, %118
  %125 = load ptr, ptr @tabout, align 8, !tbaa !7
  %126 = tail call i64 @fwrite(ptr nonnull @.str.20.309, i64 3, i64 1, ptr %125)
  %127 = add nuw nsw i32 %36, 1
  %128 = icmp eq i32 %127, %12
  br i1 %128, label %129, label %32, !llvm.loop !121

129:                                              ; preds = %124
  %.lcssa1 = phi i32 [ %38, %124 ]
  %.lcssa = phi i32 [ %39, %124 ]
  %130 = icmp eq i32 %.lcssa, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %129
  %132 = load ptr, ptr @tabout, align 8, !tbaa !7
  %133 = xor i32 %.lcssa1, -1
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.5.295, i32 noundef %133) #23
  br label %135

135:                                              ; preds = %131, %129
  br i1 %25, label %139, label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr @tabout, align 8, !tbaa !7
  %138 = tail call i64 @fwrite(ptr nonnull @.str.21.310, i64 8, i64 1, ptr %137)
  br label %139

139:                                              ; preds = %136, %135, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @fullwide(i32 noundef %0, i32 noundef %1) #2 {
  %3 = load i32, ptr @pr1403, align 4, !tbaa !11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @tabout, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.313, i32 noundef 36) #23
  br label %8

8:                                                ; preds = %5, %2
  %9 = load i32, ptr @ncol, align 4, !tbaa !11
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %89

11:                                               ; preds = %8
  %12 = icmp sgt i32 %0, 0
  %13 = add nsw i32 %0, -1
  %14 = zext i32 %13 to i64
  br label %15

15:                                               ; preds = %85, %11
  %16 = phi i32 [ %9, %11 ], [ %86, %85 ]
  %17 = phi i32 [ %9, %11 ], [ %87, %85 ]
  %18 = phi i32 [ 0, %11 ], [ %78, %85 ]
  br i1 %12, label %19, label %42

19:                                               ; preds = %35, %15
  %20 = phi i32 [ %39, %35 ], [ %18, %15 ]
  br label %21

21:                                               ; preds = %30, %19
  %22 = phi i64 [ %14, %19 ], [ %31, %30 ]
  %23 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %22
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21
  %31 = add nsw i64 %22, -1
  %32 = icmp sgt i64 %22, 0
  br i1 %32, label %21, label %35, !llvm.loop !122

33:                                               ; preds = %26
  %.lcssa = phi i64 [ %22, %26 ]
  %34 = trunc i64 %.lcssa to i32
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ -1, %30 ]
  %37 = tail call i32 @vspand(i32 noundef %36, i32 noundef %20, i32 noundef 1) #22
  %38 = icmp eq i32 %37, 0
  %39 = add nsw i32 %20, 1
  br i1 %38, label %40, label %19

40:                                               ; preds = %35
  %.lcssa2 = phi i32 [ %20, %35 ]
  %41 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %42

42:                                               ; preds = %40, %15
  %43 = phi i32 [ %16, %15 ], [ %41, %40 ]
  %44 = phi i32 [ %17, %15 ], [ %41, %40 ]
  %45 = phi i32 [ %18, %15 ], [ %.lcssa2, %40 ]
  %46 = icmp slt i32 %45, %44
  br i1 %46, label %47, label %75

47:                                               ; preds = %70, %42
  %48 = phi i32 [ %71, %70 ], [ %43, %42 ]
  %49 = phi i32 [ %72, %70 ], [ %44, %42 ]
  %50 = phi i32 [ %73, %70 ], [ %45, %42 ]
  br i1 %12, label %51, label %70

51:                                               ; preds = %60, %47
  %52 = phi i64 [ %61, %60 ], [ %14, %47 ]
  %53 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %52
  %58 = load ptr, ptr %57, align 8, !tbaa !7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56, %51
  %61 = add nsw i64 %52, -1
  %62 = icmp sgt i64 %52, 0
  br i1 %62, label %51, label %65, !llvm.loop !122

63:                                               ; preds = %56
  %.lcssa3 = phi i64 [ %52, %56 ]
  %64 = trunc i64 %.lcssa3 to i32
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %64, %63 ], [ -1, %60 ]
  %67 = tail call i32 @vspand(i32 noundef %66, i32 noundef %50, i32 noundef 1) #22
  %68 = icmp eq i32 %67, 0
  %69 = load i32, ptr @ncol, align 4, !tbaa !11
  br i1 %68, label %70, label %75

70:                                               ; preds = %65, %47
  %71 = phi i32 [ %48, %47 ], [ %69, %65 ]
  %72 = phi i32 [ %49, %47 ], [ %69, %65 ]
  %73 = add nsw i32 %50, 1
  %74 = icmp slt i32 %73, %72
  br i1 %74, label %47, label %75, !llvm.loop !123

75:                                               ; preds = %70, %65, %42
  %76 = phi i32 [ %43, %42 ], [ %69, %65 ], [ %71, %70 ]
  %77 = phi i32 [ %44, %42 ], [ %69, %65 ], [ %71, %70 ]
  %78 = phi i32 [ %45, %42 ], [ %50, %65 ], [ %73, %70 ]
  %79 = icmp slt i32 %45, %77
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = icmp slt i32 %78, %77
  %82 = sext i1 %81 to i32
  %83 = add nsw i32 %78, %82
  tail call void @drawline(i32 noundef %0, i32 noundef %45, i32 noundef %83, i32 noundef %1, i32 noundef 1, i32 noundef 0) #23
  %84 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i32 [ %84, %80 ], [ %76, %75 ]
  %87 = phi i32 [ %84, %80 ], [ %77, %75 ]
  %88 = icmp slt i32 %78, %87
  br i1 %88, label %15, label %89, !llvm.loop !124

89:                                               ; preds = %85, %8
  %90 = load ptr, ptr @tabout, align 8, !tbaa !7
  %91 = tail call i32 @fputc(i32 10, ptr %90)
  %92 = load i32, ptr @pr1403, align 4, !tbaa !11
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load ptr, ptr @tabout, align 8, !tbaa !7
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.2.314, i32 noundef 36) #23
  br label %97

97:                                               ; preds = %94, %89
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @prev(i32 noundef %0) #21 {
  %2 = add i32 %0, -1
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  br label %6

6:                                                ; preds = %15, %4
  %7 = phi i64 [ %5, %4 ], [ %16, %15 ]
  %8 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = add nsw i64 %7, -1
  %17 = icmp sgt i64 %7, 0
  br i1 %17, label %6, label %20, !llvm.loop !122

18:                                               ; preds = %11
  %.lcssa = phi i64 [ %7, %11 ]
  %19 = trunc i64 %.lcssa to i32
  br label %20

20:                                               ; preds = %18, %15, %1
  %21 = phi i32 [ %2, %1 ], [ %19, %18 ], [ -1, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind optsize uwtable
define internal void @getstop() #2 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(800) @linestop, i8 0, i64 800, i1 false), !tbaa !11
  %2 = load i32, ptr @nlin, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %37

4:                                                ; preds = %0
  %5 = load i32, ptr @ncol, align 4, !tbaa !11
  br label %6

6:                                                ; preds = %31, %4
  %7 = phi i32 [ %32, %31 ], [ %2, %4 ]
  %8 = phi i32 [ %33, %31 ], [ %5, %4 ]
  %9 = phi i32 [ %34, %31 ], [ 1, %4 ]
  %10 = phi i32 [ %35, %31 ], [ 0, %4 ]
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %24, %6
  %13 = phi i32 [ %25, %24 ], [ %9, %6 ]
  %14 = phi i32 [ %26, %24 ], [ 0, %6 ]
  %15 = call i32 @left(i32 noundef %10, i32 noundef %14, ptr noundef nonnull %1) #23
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = add nsw i32 %13, 1
  store i32 %23, ptr %19, align 4, !tbaa !11
  br label %24

24:                                               ; preds = %22, %17, %12
  %25 = phi i32 [ %23, %22 ], [ %13, %17 ], [ %13, %12 ]
  %26 = add nuw nsw i32 %14, 1
  %27 = load i32, ptr @ncol, align 4, !tbaa !11
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %12, label %29, !llvm.loop !125

29:                                               ; preds = %24
  %.lcssa1 = phi i32 [ %25, %24 ]
  %.lcssa = phi i32 [ %27, %24 ]
  %30 = load i32, ptr @nlin, align 4, !tbaa !11
  br label %31

31:                                               ; preds = %29, %6
  %32 = phi i32 [ %7, %6 ], [ %30, %29 ]
  %33 = phi i32 [ %8, %6 ], [ %.lcssa, %29 ]
  %34 = phi i32 [ %9, %6 ], [ %.lcssa1, %29 ]
  %35 = add nuw nsw i32 %10, 1
  %36 = icmp slt i32 %35, %32
  br i1 %36, label %6, label %37, !llvm.loop !126

37:                                               ; preds = %31, %0
  %38 = load i32, ptr @boxflg, align 4, !tbaa !11
  %39 = icmp ne i32 %38, 0
  %40 = load i32, ptr @allflg, align 4
  %41 = icmp ne i32 %40, 0
  %42 = select i1 %39, i1 true, i1 %41
  %43 = load i32, ptr @dboxflg, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 1, ptr @linestop, align 4, !tbaa !11
  br label %47

47:                                               ; preds = %46, %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @left(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  store i32 0, ptr %2, align 4, !tbaa !11
  %4 = tail call i32 @lefdata(i32 noundef %0, i32 noundef %1) #23, !range !127
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %103, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %0, 1
  %8 = load i32, ptr @nlin, align 4, !tbaa !11
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call i32 @next(i32 noundef %0) #23
  %12 = tail call i32 @lefdata(i32 noundef %11, i32 noundef %1) #23, !range !127
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %103, label %14

14:                                               ; preds = %10, %6
  %15 = icmp sgt i32 %0, -1
  br i1 %15, label %16, label %62

16:                                               ; preds = %38, %14
  %17 = phi i32 [ %18, %38 ], [ undef, %14 ]
  %18 = phi i32 [ %39, %38 ], [ %0, %14 ]
  %19 = tail call i32 @lefdata(i32 noundef %18, i32 noundef %1) #23, !range !127
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %21
  %24 = add nsw i32 %18, -1
  %25 = zext i32 %24 to i64
  br label %26

26:                                               ; preds = %35, %23
  %27 = phi i64 [ %25, %23 ], [ %36, %35 ]
  %28 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %27
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %26
  %36 = add nsw i64 %27, -1
  %37 = icmp sgt i64 %27, 0
  br i1 %37, label %26, label %41, !llvm.loop !122

38:                                               ; preds = %31
  %.lcssa1 = phi i64 [ %27, %31 ]
  %39 = trunc i64 %.lcssa1 to i32
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %16, label %41, !llvm.loop !128

41:                                               ; preds = %38, %35, %16
  %42 = phi i32 [ -1, %35 ], [ %39, %38 ], [ %18, %16 ]
  %43 = phi i32 [ %18, %35 ], [ %18, %38 ], [ %17, %16 ]
  %44 = add i32 %43, -1
  %45 = icmp sgt i32 %43, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = zext i32 %44 to i64
  br label %48

48:                                               ; preds = %57, %46
  %49 = phi i64 [ %47, %46 ], [ %58, %57 ]
  %50 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %48
  %58 = add nsw i64 %49, -1
  %59 = icmp sgt i64 %49, 0
  br i1 %59, label %48, label %68, !llvm.loop !122

60:                                               ; preds = %53
  %.lcssa = phi i64 [ %49, %53 ]
  %61 = trunc i64 %.lcssa to i32
  br label %62

62:                                               ; preds = %60, %41, %14
  %63 = phi i32 [ %43, %41 ], [ %43, %60 ], [ undef, %14 ]
  %64 = phi i32 [ %42, %41 ], [ %42, %60 ], [ %0, %14 ]
  %65 = phi i32 [ %44, %41 ], [ %61, %60 ], [ undef, %14 ]
  %66 = freeze i32 %65
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %57, %21
  %69 = phi i32 [ %64, %62 ], [ %42, %57 ], [ -1, %21 ]
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi i32 [ %69, %68 ], [ %64, %62 ]
  %72 = phi i32 [ 0, %68 ], [ %63, %62 ]
  store i32 %4, ptr %2, align 4, !tbaa !11
  %73 = add nsw i32 %71, 1
  %74 = icmp slt i32 %73, %72
  br i1 %74, label %75, label %103

75:                                               ; preds = %70
  %76 = sext i32 %73 to i64
  br label %80

77:                                               ; preds = %88
  br i1 %74, label %78, label %103

78:                                               ; preds = %77
  %79 = sext i32 %73 to i64
  br label %92

80:                                               ; preds = %88, %75
  %81 = phi i64 [ %76, %75 ], [ %89, %88 ]
  %82 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !7
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(4) @.str.22.325) #26
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %85, %80
  %89 = add nsw i64 %81, 1
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %72, %90
  br i1 %91, label %77, label %80, !llvm.loop !129

92:                                               ; preds = %92, %78
  %93 = phi i64 [ %79, %78 ], [ %100, %92 ]
  %94 = phi i32 [ %72, %78 ], [ %99, %92 ]
  %95 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %93
  %96 = load i32, ptr %95, align 4, !tbaa !11
  %97 = icmp eq i32 %96, 0
  %98 = trunc i64 %93 to i32
  %99 = select i1 %97, i32 %94, i32 %98
  %100 = add nsw i64 %93, 1
  %101 = sext i32 %99 to i64
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %92, label %103, !llvm.loop !130

103:                                              ; preds = %92, %85, %77, %70, %10, %3
  %104 = phi i32 [ -1, %3 ], [ -1, %10 ], [ %72, %77 ], [ %72, %70 ], [ %99, %92 ], [ %72, %85 ]
  ret i32 %104
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @lefdata(i32 noundef %0, i32 noundef %1) #2 {
  %3 = load i32, ptr @nlin, align 4, !tbaa !11
  %4 = icmp sgt i32 %3, %0
  %5 = add nsw i32 %3, -1
  %6 = select i1 %4, i32 %0, i32 %5
  %7 = tail call i32 @ctype(i32 noundef %6, i32 noundef %1) #22
  %8 = icmp eq i32 %7, 115
  br i1 %8, label %9, label %17

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %13, %9 ], [ %1, %2 ]
  %11 = tail call i32 @ctype(i32 noundef %6, i32 noundef %10) #22
  %12 = icmp eq i32 %11, 115
  %13 = add nsw i32 %10, -1
  br i1 %12, label %9, label %14, !llvm.loop !131

14:                                               ; preds = %9
  %.lcssa = phi i32 [ %10, %9 ]
  %15 = tail call i32 @thish(i32 noundef %6, i32 noundef %.lcssa) #22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %14, %2
  %18 = sext i32 %6 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = sext i32 %20 to i64
  %22 = sext i32 %1 to i64
  %23 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %21, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !11
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %17
  %27 = load i32, ptr @dboxflg, align 4, !tbaa !11
  %28 = icmp ne i32 %27, 0
  %29 = icmp eq i32 %1, 0
  %30 = and i1 %29, %28
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr @allflg, align 4, !tbaa !11
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, ptr @boxflg, align 4, !tbaa !11
  %36 = icmp ne i32 %35, 0
  %37 = and i1 %29, %36
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %34, %31, %26, %17, %14
  %40 = phi i32 [ 0, %14 ], [ %24, %17 ], [ 2, %26 ], [ 1, %31 ], [ %38, %34 ]
  ret i32 %40
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @next(i32 noundef %0) #21 {
  %2 = load i32, ptr @nlin, align 4, !tbaa !11
  %3 = add nsw i32 %0, 1
  %4 = icmp slt i32 %3, %2
  br i1 %4, label %5, label %23

5:                                                ; preds = %21, %1
  %6 = phi i32 [ %22, %21 ], [ %3, %1 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp ne ptr %13, null
  %15 = add nsw i32 %6, 1
  %16 = icmp slt i32 %15, %2
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %21, label %23

18:                                               ; preds = %5
  %19 = add nsw i32 %6, 1
  %20 = icmp slt i32 %19, %2
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %19, %18 ], [ %15, %11 ]
  br label %5, !llvm.loop !132

23:                                               ; preds = %18, %11, %1
  %24 = phi i32 [ %0, %1 ], [ %6, %11 ], [ %6, %18 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal void @drawvert(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = sext i32 %1 to i64
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ %8, %6 ], [ %5, %4 ]
  %8 = add nsw i64 %7, 1
  %9 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !133

12:                                               ; preds = %6
  %.lcssa3 = phi i64 [ %8, %6 ]
  %.lcssa2 = phi ptr [ %9, %6 ]
  %13 = trunc i64 %.lcssa3 to i32
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %193

15:                                               ; preds = %12
  %16 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %.lcssa3
  %17 = icmp eq i32 %3, 1
  %18 = icmp sgt i32 %0, 0
  %19 = icmp eq i32 %0, 0
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %20
  %22 = zext i32 %0 to i64
  br label %23

23:                                               ; preds = %190, %15
  %24 = phi i32 [ 118, %15 ], [ %104, %190 ]
  %25 = phi i32 [ 0, %15 ], [ %191, %190 ]
  %26 = phi i32 [ 0, %15 ], [ %31, %190 ]
  %27 = phi ptr [ null, %15 ], [ %102, %190 ]
  %28 = phi ptr [ null, %15 ], [ %54, %190 ]
  %29 = shl nuw nsw i32 %25, 1
  %30 = sub nsw i32 %29, %3
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %31, %26
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load ptr, ptr @tabout, align 8, !tbaa !7
  %35 = sub nsw i32 %31, %26
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.328, i32 noundef %35) #23
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i32, ptr @nlin, align 4, !tbaa !11
  %39 = icmp sgt i32 %38, %13
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i32, ptr %16, align 4, !tbaa !11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load ptr, ptr %.lcssa2, align 8, !tbaa !7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = tail call i32 @allh(i32 noundef %13) #22
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %43
  %50 = tail call i32 @midbar(i32 noundef %13, i32 noundef %2) #23, !range !134
  switch i32 %50, label %53 [
    i32 45, label %51
    i32 61, label %52
  ]

51:                                               ; preds = %49
  br label %53

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %51, %49, %46, %40, %37
  %54 = phi ptr [ %28, %49 ], [ @.str.1.329, %52 ], [ @.str.1.329, %51 ], [ %28, %37 ], [ %28, %46 ], [ %28, %40 ]
  %55 = phi i32 [ 0, %49 ], [ 1, %52 ], [ 0, %51 ], [ 0, %37 ], [ 2, %46 ], [ 2, %40 ]
  %56 = tail call i32 @interh(i32 noundef %13, i32 noundef %2) #22
  br i1 %17, label %68, label %57

57:                                               ; preds = %53
  switch i32 %56, label %73 [
    i32 3, label %58
    i32 2, label %60
    i32 1, label %64
  ]

58:                                               ; preds = %57
  %59 = add nsw i32 %55, -1
  br label %73

60:                                               ; preds = %57
  %61 = icmp eq i32 %25, 0
  %62 = select i1 %61, i32 1, i32 -1
  %63 = add nsw i32 %55, %62
  br label %73

64:                                               ; preds = %57
  %65 = icmp eq i32 %25, 1
  %66 = select i1 %65, i32 1, i32 -1
  %67 = add nsw i32 %55, %66
  br label %73

68:                                               ; preds = %53
  switch i32 %56, label %73 [
    i32 3, label %69
    i32 2, label %71
    i32 1, label %71
  ]

69:                                               ; preds = %68
  %70 = add nsw i32 %55, -1
  br label %73

71:                                               ; preds = %68, %68
  %72 = add nuw nsw i32 %55, 1
  br label %73

73:                                               ; preds = %71, %69, %68, %64, %60, %58, %57
  %74 = phi i32 [ %55, %68 ], [ %72, %71 ], [ %70, %69 ], [ %59, %58 ], [ %63, %60 ], [ %67, %64 ], [ %55, %57 ]
  br i1 %18, label %75, label %96

75:                                               ; preds = %78, %73
  %76 = phi i64 [ %79, %78 ], [ %22, %73 ]
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = add nsw i64 %76, -1
  %80 = and i64 %79, 4294967295
  %81 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %75, !llvm.loop !135

84:                                               ; preds = %78
  %.lcssa1 = phi i64 [ %79, %78 ]
  %.lcssa = phi i64 [ %80, %78 ]
  %85 = trunc i64 %.lcssa1 to i32
  %86 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %.lcssa
  %87 = load i32, ptr %86, align 4, !tbaa !11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = tail call i32 @allh(i32 noundef %85) #22
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = tail call i32 @midbar(i32 noundef %85, i32 noundef %2) #23, !range !134
  switch i32 %93, label %95 [
    i32 45, label %101
    i32 61, label %94
  ]

94:                                               ; preds = %92
  br label %101

95:                                               ; preds = %92
  br label %101

96:                                               ; preds = %73
  br i1 %19, label %97, label %101

97:                                               ; preds = %96
  %98 = tail call i32 @allh(i32 noundef 0) #22
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 %24, i32 109
  br label %101

101:                                              ; preds = %97, %96, %95, %94, %92, %89, %84, %75
  %102 = phi ptr [ %27, %95 ], [ @.str.2.330, %94 ], [ %27, %96 ], [ %27, %89 ], [ %27, %84 ], [ @.str.2.330, %92 ], [ %27, %97 ], [ %27, %75 ]
  %103 = phi i32 [ 0, %95 ], [ -1, %94 ], [ 0, %96 ], [ 0, %89 ], [ 0, %84 ], [ 0, %92 ], [ 0, %97 ], [ -4, %75 ]
  %104 = phi i32 [ 109, %95 ], [ %24, %94 ], [ %24, %96 ], [ %24, %89 ], [ %24, %84 ], [ %24, %92 ], [ %100, %97 ], [ %24, %75 ]
  %105 = tail call i32 @interh(i32 noundef %0, i32 noundef %2) #22
  br i1 %17, label %117, label %106

106:                                              ; preds = %101
  switch i32 %105, label %122 [
    i32 3, label %107
    i32 1, label %109
    i32 2, label %113
  ]

107:                                              ; preds = %106
  %108 = add nsw i32 %103, 1
  br label %122

109:                                              ; preds = %106
  %110 = icmp eq i32 %25, 0
  %111 = select i1 %110, i32 1, i32 -1
  %112 = add nsw i32 %103, %111
  br label %122

113:                                              ; preds = %106
  %114 = icmp eq i32 %25, 1
  %115 = select i1 %114, i32 1, i32 -1
  %116 = add nsw i32 %103, %115
  br label %122

117:                                              ; preds = %101
  switch i32 %105, label %122 [
    i32 3, label %118
    i32 1, label %120
    i32 2, label %120
  ]

118:                                              ; preds = %117
  %119 = add nsw i32 %103, 1
  br label %122

120:                                              ; preds = %117, %117
  %121 = add nsw i32 %103, -1
  br label %122

122:                                              ; preds = %120, %118, %117, %113, %109, %107, %106
  %123 = phi i32 [ %103, %106 ], [ %116, %113 ], [ %112, %109 ], [ %108, %107 ], [ %103, %117 ], [ %121, %120 ], [ %119, %118 ]
  %124 = icmp eq ptr %54, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load ptr, ptr @tabout, align 8, !tbaa !7
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str.3.331, ptr noundef nonnull %54) #23
  br label %128

128:                                              ; preds = %125, %122
  %129 = icmp eq i32 %74, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %128
  %131 = load ptr, ptr @tabout, align 8, !tbaa !7
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.4.332, i32 noundef %74) #23
  br label %133

133:                                              ; preds = %130, %128
  %134 = load ptr, ptr @tabout, align 8, !tbaa !7
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.5.333, i32 noundef 33) #23
  %136 = load i32, ptr @linsize, align 4, !tbaa !11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr @tabout, align 8, !tbaa !7
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.6.334, i32 noundef 33) #23
  br label %141

141:                                              ; preds = %138, %133
  %142 = load ptr, ptr @tabout, align 8, !tbaa !7
  %143 = tail call i64 @fwrite(ptr nonnull @.str.7.335, i64 11, i64 1, ptr %142)
  %144 = load ptr, ptr @tabout, align 8, !tbaa !7
  %145 = load i32, ptr %21, align 4, !tbaa !11
  %146 = add nsw i32 %145, 96
  %147 = icmp eq i32 %104, 118
  %148 = select i1 %147, ptr @.str.9.336, ptr @.str.10.337
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.8.338, i32 noundef %146, ptr noundef nonnull %148) #23
  %150 = icmp eq ptr %102, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %141
  %152 = load ptr, ptr @tabout, align 8, !tbaa !7
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.11.339, ptr noundef nonnull %102) #23
  br label %154

154:                                              ; preds = %151, %141
  br i1 %124, label %158, label %155

155:                                              ; preds = %154
  %156 = load ptr, ptr @tabout, align 8, !tbaa !7
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.11.339, ptr noundef nonnull %54) #23
  br label %158

158:                                              ; preds = %155, %154
  %159 = icmp eq i32 %123, %74
  br i1 %159, label %166, label %160

160:                                              ; preds = %158
  %161 = sub nsw i32 %123, %74
  %162 = load ptr, ptr @tabout, align 8, !tbaa !7
  %163 = icmp sgt i32 %161, -1
  %164 = select i1 %163, ptr @.str.13.340, ptr @.str.14.341
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.12.342, ptr noundef nonnull %164, i32 noundef %161) #23
  br label %166

166:                                              ; preds = %160, %158
  %167 = load ptr, ptr @tabout, align 8, !tbaa !7
  %168 = load i32, ptr %21, align 4, !tbaa !11
  %169 = add nsw i32 %168, 96
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef nonnull @.str.15.343, i32 noundef %169, ptr noundef nonnull %148) #23
  br i1 %150, label %174, label %171

171:                                              ; preds = %166
  %172 = load ptr, ptr @tabout, align 8, !tbaa !7
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.16.344, ptr noundef nonnull %102) #23
  br label %174

174:                                              ; preds = %171, %166
  %175 = icmp eq i32 %123, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %174
  %177 = load ptr, ptr @tabout, align 8, !tbaa !7
  %178 = sub nsw i32 0, %123
  %179 = icmp slt i32 %123, 0
  %180 = select i1 %179, ptr @.str.13.340, ptr @.str.14.341
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.12.342, ptr noundef nonnull %180, i32 noundef %178) #23
  br label %182

182:                                              ; preds = %176, %174
  %183 = load ptr, ptr @tabout, align 8, !tbaa !7
  %184 = tail call i32 @fputc(i32 39, ptr %183)
  %185 = load i32, ptr @linsize, align 4, !tbaa !11
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %182
  %188 = load ptr, ptr @tabout, align 8, !tbaa !7
  %189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %188, ptr noundef nonnull @.str.18.345, i32 noundef 33) #23
  br label %190

190:                                              ; preds = %187, %182
  %191 = add nuw nsw i32 %25, 1
  %192 = icmp eq i32 %191, %3
  br i1 %192, label %193, label %23, !llvm.loop !136

193:                                              ; preds = %190, %12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @midbar(i32 noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @midbcol(i32 noundef %0, i32 noundef %1) #23, !range !134
  %4 = icmp eq i32 %3, 0
  %5 = icmp sgt i32 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -1
  %9 = tail call i32 @midbcol(i32 noundef %0, i32 noundef %8) #23, !range !134
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %3, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @midbcol(i32 noundef %0, i32 noundef %1) #2 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %1, %2 ], [ %7, %3 ]
  %5 = tail call i32 @ctype(i32 noundef %0, i32 noundef %4) #22
  %6 = icmp eq i32 %5, 115
  %7 = add nsw i32 %4, -1
  br i1 %6, label %3, label %8, !llvm.loop !137

8:                                                ; preds = %3
  %.lcssa1 = phi i32 [ %4, %3 ]
  %.lcssa = phi i32 [ %5, %3 ]
  %9 = and i32 %.lcssa, -17
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = sext i32 %.lcssa1 to i64
  %16 = getelementptr inbounds %struct.optstr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = tail call i32 @barent(ptr noundef %17) #23, !range !138
  br label %19

19:                                               ; preds = %11, %8
  %20 = phi i32 [ %.lcssa, %8 ], [ %18, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @barent(ptr noundef %0) #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = ptrtoint ptr %0 to i64
  %5 = trunc i64 %4 to i32
  %6 = tail call i32 @point(i32 noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = load i8, ptr %0, align 1, !tbaa !16
  %10 = icmp eq i8 %9, 92
  %11 = zext i1 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !16
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load i8, ptr %12, align 1, !tbaa !16
  %18 = icmp eq i8 %17, 61
  %19 = select i1 %18, i32 61, i32 0
  %20 = icmp eq i8 %17, 95
  %21 = select i1 %20, i32 45, i32 %19
  br label %22

22:                                               ; preds = %16, %8, %3, %1
  %23 = phi i32 [ 1, %1 ], [ 1, %3 ], [ 0, %8 ], [ %21, %16 ]
  ret i32 %23
}

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind optsize }
attributes #23 = { optsize }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { nounwind }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { nounwind optsize willreturn memory(none) }
attributes #28 = { cold optsize }
attributes #29 = { nounwind optsize allocsize(0,1) }
attributes #30 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !15}
!18 = !{!19, !8, i64 0}
!19 = !{!"optstr", !8, i64 0, !8, i64 8}
!20 = !{!19, !8, i64 8}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !9, i64 0}
!41 = distinct !{!41, !15}
!42 = !{!43, !8, i64 0}
!43 = !{!"colstr", !8, i64 0, !8, i64 8}
!44 = !{!43, !8, i64 8}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, !15}
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
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = distinct !{!91, !15}
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
!103 = distinct !{!103, !15}
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
!127 = !{i32 0, i32 -2147483648}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15}
!133 = distinct !{!133, !15}
!134 = !{i32 116, i32 115}
!135 = distinct !{!135, !15}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15}
!138 = !{i32 0, i32 62}
