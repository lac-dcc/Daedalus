; ModuleID = 'unix-tbl.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optstr = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1.2 = private unnamed_addr constant [4 x i8] c".TS\00", align 1
@sargc = internal unnamed_addr global i32 0, align 4
@sargv = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"-ms\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-mm\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/usr/lib/tmac.m\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"-TX\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c".ds f. %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Can't open file\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@options = internal unnamed_addr global [21 x %struct.optstr] zeroinitializer, align 16
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
@oncol = internal unnamed_addr global i32 0, align 4
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
@nslin = internal unnamed_addr global i32 0, align 4
@.str.1.46 = private unnamed_addr constant [4 x i8] c".TC\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c".T&\00", align 1
@nclin = internal unnamed_addr global i32 0, align 4
@.str.3.48 = private unnamed_addr constant [3 x i8] c"T{\00", align 1
@.str.5.50 = private unnamed_addr constant [43 x i8] c"Vertical spanning in first row not allowed\00", align 1
@.str.6.51 = private unnamed_addr constant [3 x i8] c"\\^\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c".nr %d 0\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [16 x i8] c".%02d\0A.rm %02d\0A\00", align 1
@.str.2.56 = private unnamed_addr constant [19 x i8] c".nr %d 0\0A.nr %d 0\0A\00", align 1
@.str.3.57 = private unnamed_addr constant [32 x i8] c".if \\n(%c->\\n(%d .nr %d \\n(%c-\0A\00", align 1
@.str.6.59 = private unnamed_addr constant [30 x i8] c".if \\n(%d<\\n(%d .nr %d \\n(%d\0A\00", align 1
@.str.7.60 = private unnamed_addr constant [17 x i8] c".nr %d \\w%c%s%c\0A\00", align 1
@.str.8.61 = private unnamed_addr constant [35 x i8] c".if \\n(%d>=\\n(%d .nr %d \\n(%du+2n\0A\00", align 1
@.str.9.62 = private unnamed_addr constant [14 x i8] c".nr %d \\n(%d\0A\00", align 1
@.str.10.63 = private unnamed_addr constant [20 x i8] c".nr %d \\n(%d+\\n(%d\0A\00", align 1
@.str.12.65 = private unnamed_addr constant [41 x i8] c".if \\n(%d<\\n(%d .nr %d +(\\n(%d-\\n(%d)/2\0A\00", align 1
@.str.13.66 = private unnamed_addr constant [12 x i8] c".nr %d %sn\0A\00", align 1
@.str.14.67 = private unnamed_addr constant [7 x i8] c"-\\n(%d\00", align 1
@expflg = internal global i32 0, align 4
@.str.15.68 = private unnamed_addr constant [5 x i8] c"-%dn\00", align 1
@sep = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@.str.16.69 = private unnamed_addr constant [29 x i8] c".if \\n(%d>0 .nr %d \\n(%d/%d\0A\00", align 1
@.str.17.70 = private unnamed_addr constant [22 x i8] c".if \\n(%d<0 .nr %d 0\0A\00", align 1
@.str.18.71 = private unnamed_addr constant [17 x i8] c".nr %d +\\n(%d/2\0A\00", align 1
@.str.19.72 = private unnamed_addr constant [15 x i8] c".nr %d +\\n(%d\0A\00", align 1
@evenflg = internal unnamed_addr global i1 false, align 4
@evenup = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@.str.20.73 = private unnamed_addr constant [36 x i8] c".nr %d (100*\\n(%d/\\n(%d)*\\n(%d/100\0A\00", align 1
@.str.21.74 = private unnamed_addr constant [9 x i8] c".nr %d 0\00", align 1
@.str.22.75 = private unnamed_addr constant [7 x i8] c"+\\n(%d\00", align 1
@.str.23.76 = private unnamed_addr constant [20 x i8] c".nr %d \\n(.l-\\n(%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c".nr %d \\n(%d/%d\0A\00", align 1
@.str.25.77 = private unnamed_addr constant [11 x i8] c".nr %d 1n\0A\00", align 1
@left1flg = internal unnamed_addr global i1 false, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c".nr %d \\n(%d+(%d*\\n(%d)\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c".nr %d (\\n(%d+\\n(%d)/2\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c".nr TW \\n(%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c".nr TW +%d*\\n(%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [79 x i8] c".if t .if \\n(TW>\\n(.li .tm Table at line %d file %s is too wide - \\n(TW units\0A\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"\\w%c\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\\n(%c-\00", align 1
@ctrflg = internal global i32 0, align 4
@.str.80 = private unnamed_addr constant [14 x i8] c".nr #I \\n(.i\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [32 x i8] c".in +(\\n(.lu-\\n(TWu-\\n(.iu)/2u\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [11 x i8] c".fc %c %c\0A\00", align 1
@.str.3.83 = private unnamed_addr constant [12 x i8] c".nr #T 0-1\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [10 x i8] c".nr T. 1\0A\00", align 1
@.str.6.86 = private unnamed_addr constant [7 x i8] c".T# 1\0A\00", align 1
@.str.7.87 = private unnamed_addr constant [12 x i8] c".in \\n(#Iu\0A\00", align 1
@.str.8.109 = private unnamed_addr constant [5 x i8] c".ta \00", align 1
@.str.9.110 = private unnamed_addr constant [8 x i8] c"\\n(%du \00", align 1
@.str.11.108 = private unnamed_addr constant [13 x i8] c".ne %dv+%dp\0A\00", align 1
@.str.12.88 = private unnamed_addr constant [13 x i8] c".nr #%c 0-1\0A\00", align 1
@.str.13.89 = private unnamed_addr constant [12 x i8] c".nr #a 0-1\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [8 x i8] c".de T#\0A\00", align 1
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
@.str.32 = private unnamed_addr constant [5 x i8] c".ec\0A\00", align 1
@watchout = internal unnamed_addr global i1 false, align 4
@once = internal unnamed_addr global i1 false, align 4
@.str.113 = private unnamed_addr constant [20 x i8] c".ne \\n(%c|u+\\n(.Vu\0A\00", align 1
@.str.1.114 = private unnamed_addr constant [9 x i8] c".mk #%c\0A\00", align 1
@.str.2.115 = private unnamed_addr constant [18 x i8] c".nr #^ \\n(\\*(#du\0A\00", align 1
@.str.3.116 = private unnamed_addr constant [14 x i8] c".nr #- \\n(#^\0A\00", align 1
@font = internal global [100 x [20 x [2 x i8]]] zeroinitializer, align 16
@.str.4.117 = private unnamed_addr constant [63 x i8] c".if (\\n(%c|+\\n(^%c-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(^%c-\\n(#--1v)\0A\00", align 1
@.str.5.118 = private unnamed_addr constant [61 x i8] c".if (\\n(%c|+\\n(#^-1v)>\\n(#- .nr #- +(\\n(%c|+\\n(#^-\\n(#--1v)\0A\00", align 1
@.str.7.120 = private unnamed_addr constant [19 x i8] c".vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.8.121 = private unnamed_addr constant [15 x i8] c".nr %2d \\n(.f\0A\00", align 1
@.str.9.122 = private unnamed_addr constant [11 x i8] c".nr 35 1m\0A\00", align 1
@.str.10.123 = private unnamed_addr constant [3 x i8] c"\\&\00", align 1
@rightl = internal unnamed_addr global i32 0, align 4
@csize = internal global [100 x [20 x [4 x i8]]] zeroinitializer, align 16
@.str.12.125 = private unnamed_addr constant [23 x i8] c"\\v'-(\\n(\\*(#du-\\n(^%cu\00", align 1
@.str.13.126 = private unnamed_addr constant [23 x i8] c"-((\\n(#-u-\\n(^%cu)/2u)\00", align 1
@.str.15.127 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.17.128 = private unnamed_addr constant [44 x i8] c"%s: line %d: Data ignored on table line %d\0A\00", align 1
@.str.18.129 = private unnamed_addr constant [16 x i8] c"\\l'|\\n(%du\\&%s'\00", align 1
@ctop = internal unnamed_addr global [100 x [20 x i32]] zeroinitializer, align 16
@topat = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@.str.19.130 = private unnamed_addr constant [22 x i8] c"\\v'(\\n(\\*(#du-\\n(^%cu\00", align 1
@.str.20.131 = private unnamed_addr constant [10 x i8] c"\0A.sp-1\0A\\&\00", align 1
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
@leftover = internal unnamed_addr global i32 0, align 4
@cspace = internal unnamed_addr global ptr null, align 8
@cstore = internal unnamed_addr global ptr null, align 8
@.str.2.154 = private unnamed_addr constant [4 x i8] c".TE\00", align 1
@rused = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@lused = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@used = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@spcount = internal unnamed_addr global i32 0, align 4
@spvecs = internal unnamed_addr global [20 x ptr] zeroinitializer, align 16
@.str.162 = private unnamed_addr constant [29 x i8] c"Too many characters in table\00", align 1
@.str.1.163 = private unnamed_addr constant [24 x i8] c"no space for characters\00", align 1
@tpcount = internal unnamed_addr global i32 -1, align 4
@thisvec = internal unnamed_addr global ptr null, align 8
@tpvecs = internal unnamed_addr global [50 x ptr] zeroinitializer, align 16
@.str.2.166 = private unnamed_addr constant [21 x i8] c"no space for vectors\00", align 1
@F2 = internal unnamed_addr global i32 0, align 4
@F1 = internal unnamed_addr global i32 0, align 4
@.str.171 = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07!%&#/?,:;<=>@`^~_{}+-*ABCDEFGHIJKMNOPQRSTUVWXYZabcdefgjkoqrstwxyz\00", align 1
@.str.1.172 = private unnamed_addr constant [71 x i8] c"\02\03\05\06\07:_~^`@;,<=>#%&!/?{}+-*ABCDEFGHIJKMNOPQRSTUVWXZabcdefgjkoqrstuwxyz\00", align 1
@.str.2.173 = private unnamed_addr constant [47 x i8] c"couldn't find characters to use for delimiters\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.178 = private unnamed_addr constant [18 x i8] c"\0A%s: line %d: %s\0A\00", align 1
@ifile = internal unnamed_addr global ptr @.str, align 8
@.str.1.179 = private unnamed_addr constant [11 x i8] c"tbl quits\0A\00", align 1
@tabin = internal unnamed_addr global ptr null, align 8
@backup = internal global [500 x i8] zeroinitializer, align 16
@backp = internal unnamed_addr global ptr @backup, align 8
@.str.2.184 = private unnamed_addr constant [16 x i8] c"too much backup\00", align 1
@.str.3.187 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1
@.str.190 = private unnamed_addr constant [8 x i8] c".de %d\0A\00", align 1
@.str.1.191 = private unnamed_addr constant [11 x i8] c".ps \\n(.s\0A\00", align 1
@.str.2.192 = private unnamed_addr constant [12 x i8] c".vs \\n(.vu\0A\00", align 1
@.str.3.193 = private unnamed_addr constant [12 x i8] c".in \\n(.iu\0A\00", align 1
@.str.4.194 = private unnamed_addr constant [15 x i8] c".if \\n(.u .fi\0A\00", align 1
@.str.5.195 = private unnamed_addr constant [15 x i8] c".if \\n(.j .ad\0A\00", align 1
@.str.6.196 = private unnamed_addr constant [17 x i8] c".if \\n(.j=0 .na\0A\00", align 1
@.str.9.199 = private unnamed_addr constant [10 x i8] c".nr #~ 0\0A\00", align 1
@.str.10.200 = private unnamed_addr constant [19 x i8] c".if n .nr #~ 0.6n\0A\00", align 1
@.str.11.203 = private unnamed_addr constant [5 x i8] c".%d\0A\00", align 1
@.str.12.206 = private unnamed_addr constant [11 x i8] c".nr #%c 0\0A\00", align 1
@.str.13.207 = private unnamed_addr constant [9 x i8] c".rm %c+\0A\00", align 1
@last = internal unnamed_addr global ptr null, align 8
@.str.15.211 = private unnamed_addr constant [11 x i8] c".ds #d .d\0A\00", align 1
@.str.16.212 = private unnamed_addr constant [33 x i8] c".if \\(ts\\n(.z\\(ts\\(ts .ds #d nl\0A\00", align 1
@.str.17.215 = private unnamed_addr constant [35 x i8] c".if \\n+(b.=1 .nr d. \\n(.c-\\n(c.-1\0A\00", align 1
@iline = internal unnamed_addr global i32 1, align 4
@linstart = internal unnamed_addr global i32 0, align 4
@.str.18.218 = private unnamed_addr constant [36 x i8] c".if \\n-(b.=0 .nr c. \\n(.c-\\n(d.-%d\0A\00", align 1
@.str.19.221 = private unnamed_addr constant [5 x i8] c".fc\0A\00", align 1
@texname = internal unnamed_addr global i32 97, align 4
@.str.224 = private unnamed_addr constant [31 x i8] c"Too many text block diversions\00", align 1
@textflg = internal unnamed_addr global i1 false, align 4
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
@.str.19.243 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.20.244 = private unnamed_addr constant [11 x i8] c".ft \\n(%d\0A\00", align 1
@.str.21.245 = private unnamed_addr constant [13 x i8] c".br\0A.ps\0A.vs\0A\00", align 1
@.str.22.246 = private unnamed_addr constant [5 x i8] c".di\0A\00", align 1
@.str.23.247 = private unnamed_addr constant [15 x i8] c".nr %c| \\n(dn\0A\00", align 1
@.str.24.248 = private unnamed_addr constant [15 x i8] c".nr %c- \\n(dl\0A\00", align 1
@.str.25.249 = private unnamed_addr constant [4 x i8] c"..\0A\00", align 1
@.str.26.250 = private unnamed_addr constant [7 x i8] c".ec \\\0A\00", align 1
@texstr = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWYXZ0123456789\00", align 16
@texct = internal unnamed_addr global i32 0, align 4
@.str.27.253 = private unnamed_addr constant [5 x i8] c".nf\0A\00", align 1
@.str.28.254 = private unnamed_addr constant [12 x i8] c".ll \\n(%du\0A\00", align 1
@exstore = internal unnamed_addr global ptr null, align 8
@exlim = internal unnamed_addr global ptr null, align 8
@delim1 = internal global i32 0, align 4
@delim2 = internal unnamed_addr global i32 0, align 4
@style = internal unnamed_addr global [100 x [20 x i32]] zeroinitializer, align 16
@.str.283 = private unnamed_addr constant [7 x i8] c"\\h'|0'\00", align 1
@.str.1.284 = private unnamed_addr constant [25 x i8] c"\\h'(|\\n(%du+|\\n(%du)/2u'\00", align 1
@ncol = internal unnamed_addr global i32 0, align 4
@pr1403 = internal unnamed_addr global i1 false, align 4
@.str.313 = private unnamed_addr constant [32 x i8] c".nr %d \\n(.v\0A.vs \\n(.vu-\\n(.sp\0A\00", align 1
@.str.2.314 = private unnamed_addr constant [12 x i8] c".vs \\n(%du\0A\00", align 1
@.str.4.293 = private unnamed_addr constant [9 x i8] c"\\v'-.5m'\00", align 1
@.str.6.296 = private unnamed_addr constant [3 x i8] c"1p\00", align 1
@.str.7.297 = private unnamed_addr constant [4 x i8] c"-1p\00", align 1
@.str.8.298 = private unnamed_addr constant [7 x i8] c"\\h'%s'\00", align 1
@.str.9.299 = private unnamed_addr constant [4 x i8] c"+1p\00", align 1
@.str.10.300 = private unnamed_addr constant [12 x i8] c"\\h'|\\n(%du'\00", align 1
@.str.13.303 = private unnamed_addr constant [12 x i8] c"\\l'|\\n(%du'\00", align 1
@.str.14.304 = private unnamed_addr constant [5 x i8] c"\\(ul\00", align 1
@.str.16.305 = private unnamed_addr constant [5 x i8] c"\\(ru\00", align 1
@.str.17.306 = private unnamed_addr constant [16 x i8] c"\\l'|\\n(TWu%s%s'\00", align 1
@.str.18.307 = private unnamed_addr constant [29 x i8] c"\\l'(|\\n(%du+|\\n(%du)/2u%s%s'\00", align 1
@.str.20.309 = private unnamed_addr constant [4 x i8] c"\\s0\00", align 1
@.str.21.310 = private unnamed_addr constant [9 x i8] c"\\v'+.5m'\00", align 1
@boxflg = internal global i32 0, align 4
@allflg = internal global i32 0, align 4
@dboxflg = internal global i32 0, align 4
@.str.22.325 = private unnamed_addr constant [4 x i8] c".TH\00", align 1
@stynum = internal unnamed_addr global [201 x i32] zeroinitializer, align 16
@lefline = internal unnamed_addr global [100 x [20 x i32]] zeroinitializer, align 16
@switch.table.drawline = private unnamed_addr constant [3 x ptr] [ptr @.str.7.297, ptr @.str.7.297, ptr @.str.6.296], align 8
@instead = internal unnamed_addr global [200 x ptr] zeroinitializer, align 16
@tabout = internal unnamed_addr global ptr null, align 8
@.str.328 = private unnamed_addr constant [8 x i8] c"\\h'%dp'\00", align 1
@nlin = internal unnamed_addr global i32 0, align 4
@fullbot = internal unnamed_addr global [200 x i32] zeroinitializer, align 16
@.str.1.329 = private unnamed_addr constant [7 x i8] c"1v-.5m\00", align 1
@.str.2.330 = private unnamed_addr constant [4 x i8] c".5m\00", align 1
@.str.3.331 = private unnamed_addr constant [7 x i8] c"\\v'%s'\00", align 1
@.str.4.332 = private unnamed_addr constant [8 x i8] c"\\v'%dp'\00", align 1
@.str.5.333 = private unnamed_addr constant [8 x i8] c"\\s\\n(%d\00", align 1
@linsize = internal global i32 0, align 4
@.str.6.334 = private unnamed_addr constant [15 x i8] c"\\v'-\\n(%dp/6u'\00", align 1
@.str.7.335 = private unnamed_addr constant [12 x i8] c"\\h'-\\n(#~u'\00", align 1
@.str.8.338 = private unnamed_addr constant [15 x i8] c"\\L'|\\n(#%cu-%s\00", align 1
@linestop = internal unnamed_addr global [200 x i32] zeroinitializer, align 16
@.str.9.336 = private unnamed_addr constant [3 x i8] c"1v\00", align 1
@.str.10.337 = private unnamed_addr constant [7 x i8] c"\\n(35u\00", align 1
@.str.11.339 = private unnamed_addr constant [6 x i8] c"-(%s)\00", align 1
@.str.12.342 = private unnamed_addr constant [6 x i8] c"%s%dp\00", align 1
@.str.13.340 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14.341 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15.343 = private unnamed_addr constant [28 x i8] c"'\\s0\\v'\\n(\\*(#du-\\n(#%cu+%s\00", align 1
@.str.16.344 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.18.345 = private unnamed_addr constant [14 x i8] c"\\v'\\n(%dp/6u'\00", align 1
@table = internal unnamed_addr global [200 x ptr] zeroinitializer, align 16

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull @badsig) #20
  tail call fastcc void @init_options() #20
  tail call fastcc void @tbl(i32 noundef %0, ptr noundef %1) #21
  tail call void @exit(i32 noundef 0) #22
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @badsig() #0 {
  %1 = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20
  tail call void @exit(i32 noundef 0) #22
  unreachable
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @init_options() unnamed_addr #2 {
  store ptr @.str.10, ptr @options, align 16, !tbaa !7
  store ptr @expflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 0, i32 1), align 8, !tbaa !12
  store ptr @.str.1.11, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 1), align 16, !tbaa !7
  store ptr @expflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 1, i32 1), align 8, !tbaa !12
  store ptr @.str.2.12, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 2), align 16, !tbaa !7
  store ptr @ctrflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 2, i32 1), align 8, !tbaa !12
  store ptr @.str.3.13, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 3), align 16, !tbaa !7
  store ptr @ctrflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 3, i32 1), align 8, !tbaa !12
  store ptr @.str.4.14, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 4), align 16, !tbaa !7
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 4, i32 1), align 8, !tbaa !12
  store ptr @.str.5.15, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 5), align 16, !tbaa !7
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 5, i32 1), align 8, !tbaa !12
  store ptr @.str.6.16, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 6), align 16, !tbaa !7
  store ptr @allflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 6, i32 1), align 8, !tbaa !12
  store ptr @.str.7.17, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 7), align 16, !tbaa !7
  store ptr @allflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 7, i32 1), align 8, !tbaa !12
  store ptr @.str.8.18, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 8), align 16, !tbaa !7
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 8, i32 1), align 8, !tbaa !12
  store ptr @.str.9.19, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 9), align 16, !tbaa !7
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 9, i32 1), align 8, !tbaa !12
  store ptr @.str.10.20, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 10), align 16, !tbaa !7
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 10, i32 1), align 8, !tbaa !12
  store ptr @.str.11, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 11), align 16, !tbaa !7
  store ptr @boxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 11, i32 1), align 8, !tbaa !12
  store ptr @.str.12, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 12), align 16, !tbaa !7
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 12, i32 1), align 8, !tbaa !12
  store ptr @.str.13, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 13), align 16, !tbaa !7
  store ptr @dboxflg, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 13, i32 1), align 8, !tbaa !12
  store ptr @.str.14, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 14), align 16, !tbaa !7
  store ptr @tab, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 14, i32 1), align 8, !tbaa !12
  store ptr @.str.15, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 15), align 16, !tbaa !7
  store ptr @tab, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 15, i32 1), align 8, !tbaa !12
  store ptr @.str.16, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 16), align 16, !tbaa !7
  store ptr @linsize, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 16, i32 1), align 8, !tbaa !12
  store ptr @.str.17, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 17), align 16, !tbaa !7
  store ptr @linsize, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 17, i32 1), align 8, !tbaa !12
  store ptr @.str.18, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 18), align 16, !tbaa !7
  store ptr @delim1, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 18, i32 1), align 8, !tbaa !12
  store ptr @.str.19, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 19), align 16, !tbaa !7
  store ptr @delim1, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 19, i32 1), align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 20), i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @tbl(i32 noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = alloca i32, align 4
  %4 = alloca [20 x i32], align 16
  %5 = alloca [128 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca [200 x i8], align 16
  %8 = alloca [25 x i8], align 16
  %9 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %9) #23
  %10 = load ptr, ptr @stdin, align 8, !tbaa !13
  store ptr %10, ptr @tabin, align 8, !tbaa !13
  %11 = load ptr, ptr @stdout, align 8, !tbaa !13
  store ptr %11, ptr @tabout, align 8, !tbaa !13
  %12 = add nsw i32 %0, -1
  store i32 %12, ptr @sargc, align 4, !tbaa !14
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  store ptr %13, ptr @sargv, align 8, !tbaa !13
  %14 = icmp sgt i32 %0, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call fastcc i32 @swapin() #21, !range !16
  br label %17

17:                                               ; preds = %15, %2
  %18 = getelementptr inbounds [25 x i8], ptr %8, i64 0, i64 1
  br label %19

19:                                               ; preds = %1888, %17
  %20 = call fastcc ptr @gets1(ptr noundef nonnull %9) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %1889, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @tabout, align 8, !tbaa !13
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.19.243, ptr noundef nonnull %9) #21
  br label %25

25:                                               ; preds = %31, %22
  %26 = phi ptr [ @.str.1.2, %22 ], [ %33, %31 ]
  %27 = phi ptr [ %9, %22 ], [ %32, %31 ]
  %28 = load i8, ptr %26, align 1, !tbaa !17
  %29 = load i8, ptr %27, align 1, !tbaa !17
  %30 = icmp eq i8 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %27, i64 1
  %33 = getelementptr inbounds i8, ptr %26, i64 1
  %34 = icmp eq ptr %26, getelementptr inbounds ([4 x i8], ptr @.str.1.2, i64 0, i64 3)
  br i1 %34, label %37, label %25, !llvm.loop !18

35:                                               ; preds = %25
  %.lcssa = phi i8 [ %28, %25 ]
  %36 = icmp eq i8 %.lcssa, 0
  br i1 %36, label %37, label %1888

37:                                               ; preds = %35, %31
  %38 = load ptr, ptr @tabout, align 8, !tbaa !13
  %39 = call i64 @fwrite(ptr nonnull @.str.17.215, i64 34, i64 1, ptr %38)
  %40 = load i32, ptr @iline, align 4, !tbaa !14
  store i32 %40, ptr @linstart, align 4, !tbaa !14
  %41 = load ptr, ptr @tabout, align 8, !tbaa !13
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.190, i32 noundef 35) #21
  %43 = load ptr, ptr @tabout, align 8, !tbaa !13
  %44 = call i64 @fwrite(ptr nonnull @.str.1.191, i64 10, i64 1, ptr %43)
  %45 = load ptr, ptr @tabout, align 8, !tbaa !13
  %46 = call i64 @fwrite(ptr nonnull @.str.2.192, i64 11, i64 1, ptr %45)
  %47 = load ptr, ptr @tabout, align 8, !tbaa !13
  %48 = call i64 @fwrite(ptr nonnull @.str.3.193, i64 11, i64 1, ptr %47)
  %49 = load ptr, ptr @tabout, align 8, !tbaa !13
  %50 = call i64 @fwrite(ptr nonnull @.str.4.194, i64 14, i64 1, ptr %49)
  %51 = load ptr, ptr @tabout, align 8, !tbaa !13
  %52 = call i64 @fwrite(ptr nonnull @.str.5.195, i64 14, i64 1, ptr %51)
  %53 = load ptr, ptr @tabout, align 8, !tbaa !13
  %54 = call i64 @fwrite(ptr nonnull @.str.6.196, i64 16, i64 1, ptr %53)
  %55 = load ptr, ptr @tabout, align 8, !tbaa !13
  %56 = call i64 @fwrite(ptr nonnull @.str.25.249, i64 3, i64 1, ptr %55)
  %57 = load ptr, ptr @tabout, align 8, !tbaa !13
  %58 = call i64 @fwrite(ptr nonnull @.str.27.253, i64 4, i64 1, ptr %57)
  %59 = load ptr, ptr @tabout, align 8, !tbaa !13
  %60 = call i64 @fwrite(ptr nonnull @.str.9.199, i64 9, i64 1, ptr %59)
  %61 = load ptr, ptr @tabout, align 8, !tbaa !13
  %62 = call i64 @fwrite(ptr nonnull @.str.10.200, i64 18, i64 1, ptr %61)
  %63 = load ptr, ptr @tabout, align 8, !tbaa !13
  %64 = call i64 @fwrite(ptr nonnull @.str.15.211, i64 10, i64 1, ptr %63)
  %65 = load ptr, ptr @tabout, align 8, !tbaa !13
  %66 = call i64 @fwrite(ptr nonnull @.str.16.212, i64 32, i64 1, ptr %65)
  %67 = load ptr, ptr @tabout, align 8, !tbaa !13
  %68 = call i64 @fwrite(ptr nonnull @.str.19.221, i64 4, i64 1, ptr %67)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %8) #23
  %69 = load ptr, ptr @options, align 16, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %71, %37
  %72 = phi ptr [ %75, %71 ], [ @options, %37 ]
  %73 = getelementptr inbounds %struct.optstr, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  store i32 0, ptr %74, align 4, !tbaa !14
  %75 = getelementptr inbounds %struct.optstr, ptr %72, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %71, !llvm.loop !20

78:                                               ; preds = %71, %37
  store i32 0, ptr @texct, align 4, !tbaa !14
  store i32 97, ptr @texname, align 4, !tbaa !14
  store i32 9, ptr @tab, align 4, !tbaa !14
  %79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 33) #21
  %80 = call fastcc ptr @gets1(ptr noundef nonnull %7) #20
  %81 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 59) #24
  %82 = icmp eq ptr %81, null
  br i1 %82, label %181, label %83

83:                                               ; preds = %78
  %84 = load i8, ptr %7, align 16, !tbaa !17
  %85 = icmp eq i8 %84, 59
  br i1 %85, label %178, label %86

86:                                               ; preds = %173, %83
  %87 = phi i8 [ %176, %173 ], [ %84, %83 ]
  %88 = phi ptr [ %175, %173 ], [ %7, %83 ]
  %89 = and i8 %87, -33
  %90 = sext i8 %89 to i32
  %91 = add nsw i32 %90, -91
  %92 = icmp ult i32 %91, -26
  br i1 %92, label %173, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr getelementptr inbounds ([21 x %struct.optstr], ptr @options, i64 0, i64 0, i32 1), align 8, !tbaa !12
  %95 = icmp eq ptr %94, null
  br i1 %95, label %168, label %96

96:                                               ; preds = %163, %93
  %97 = phi ptr [ %164, %163 ], [ @options, %93 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !7
  br label %99

99:                                               ; preds = %105, %96
  %100 = phi ptr [ %98, %96 ], [ %107, %105 ]
  %101 = phi ptr [ %88, %96 ], [ %106, %105 ]
  %102 = load i8, ptr %100, align 1, !tbaa !17
  %103 = load i8, ptr %101, align 1, !tbaa !17
  %104 = icmp eq i8 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = getelementptr inbounds i8, ptr %101, i64 1
  %107 = getelementptr inbounds i8, ptr %100, i64 1
  %108 = icmp eq i8 %102, 0
  br i1 %108, label %111, label %99, !llvm.loop !18

109:                                              ; preds = %99
  %.lcssa2 = phi i8 [ %102, %99 ]
  %110 = icmp eq i8 %.lcssa2, 0
  br i1 %110, label %111, label %163

111:                                              ; preds = %109, %105
  %.lcssa5 = phi ptr [ %97, %109 ], [ %97, %105 ]
  %.lcssa4 = phi ptr [ %98, %109 ], [ %98, %105 ]
  %112 = getelementptr inbounds %struct.optstr, ptr %.lcssa5, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !12
  store i32 1, ptr %113, align 4, !tbaa !14
  %114 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa4) #24
  %115 = getelementptr inbounds i8, ptr %88, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !17
  %117 = and i8 %116, -33
  %118 = sext i8 %117 to i32
  %119 = add nsw i32 %118, -91
  %120 = icmp ult i32 %119, -26
  br i1 %120, label %122, label %121

121:                                              ; preds = %111
  call void @error(ptr noundef nonnull @.str.21) #20
  unreachable

122:                                              ; preds = %129, %111
  %123 = phi i8 [ %131, %129 ], [ %116, %111 ]
  %124 = phi ptr [ %130, %129 ], [ %115, %111 ]
  switch i8 %123, label %140 [
    i8 32, label %129
    i8 40, label %125
  ]

125:                                              ; preds = %122
  %.lcssa7 = phi ptr [ %124, %122 ]
  %126 = getelementptr inbounds i8, ptr %.lcssa7, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !17
  %128 = icmp eq i8 %127, 41
  br i1 %128, label %142, label %132

129:                                              ; preds = %122
  %130 = getelementptr inbounds i8, ptr %124, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !17
  br label %122, !llvm.loop !21

132:                                              ; preds = %132, %125
  %133 = phi i8 [ %138, %132 ], [ %127, %125 ]
  %134 = phi ptr [ %137, %132 ], [ %126, %125 ]
  %135 = phi ptr [ %136, %132 ], [ %8, %125 ]
  %136 = getelementptr inbounds i8, ptr %135, i64 1
  store i8 %133, ptr %135, align 1, !tbaa !17
  %137 = getelementptr inbounds i8, ptr %134, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !17
  %139 = icmp eq i8 %138, 41
  br i1 %139, label %142, label %132, !llvm.loop !22

140:                                              ; preds = %122
  %.lcssa6 = phi ptr [ %124, %122 ]
  %141 = getelementptr inbounds i8, ptr %.lcssa6, i64 -1
  br label %142

142:                                              ; preds = %140, %132, %125
  %143 = phi ptr [ %8, %140 ], [ %8, %125 ], [ %136, %132 ]
  %144 = phi ptr [ %141, %140 ], [ %126, %125 ], [ %137, %132 ]
  %145 = getelementptr inbounds i8, ptr %143, i64 1
  store i8 0, ptr %143, align 1, !tbaa !17
  store i8 0, ptr %145, align 1, !tbaa !17
  %146 = load ptr, ptr %112, align 8, !tbaa !12
  %147 = icmp eq ptr %146, @tab
  %148 = load i8, ptr %8, align 16
  %149 = icmp ne i8 %148, 0
  %150 = select i1 %147, i1 %149, i1 false
  br i1 %150, label %169, label %151

151:                                              ; preds = %142
  %152 = icmp eq ptr %146, @linsize
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  %154 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef 33, ptr noundef nonnull %8) #21
  %155 = load ptr, ptr %112, align 8, !tbaa !12
  br label %156

156:                                              ; preds = %153, %151
  %157 = phi ptr [ %155, %153 ], [ %146, %151 ]
  %158 = icmp eq ptr %157, @delim1
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load i8, ptr %8, align 16, !tbaa !17
  %161 = sext i8 %160 to i32
  store i32 %161, ptr @delim1, align 4, !tbaa !14
  %162 = load i8, ptr %18, align 1, !tbaa !17
  br label %169

163:                                              ; preds = %109
  %164 = getelementptr inbounds %struct.optstr, ptr %97, i64 1
  %165 = getelementptr inbounds %struct.optstr, ptr %97, i64 1, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !12
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %96, !llvm.loop !23

168:                                              ; preds = %163, %93
  call void @error(ptr noundef nonnull @.str.23) #20
  unreachable

169:                                              ; preds = %159, %142
  %170 = phi i8 [ %162, %159 ], [ %148, %142 ]
  %171 = phi ptr [ @delim2, %159 ], [ @tab, %142 ]
  %172 = sext i8 %170 to i32
  store i32 %172, ptr %171, align 4, !tbaa !14
  br label %173

173:                                              ; preds = %169, %156, %86
  %174 = phi ptr [ %88, %86 ], [ %144, %156 ], [ %144, %169 ]
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  %176 = load i8, ptr %175, align 1, !tbaa !17
  %177 = icmp eq i8 %176, 59
  br i1 %177, label %178, label %86, !llvm.loop !24

178:                                              ; preds = %173, %83
  %179 = phi ptr [ %7, %83 ], [ %175, %173 ]
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  br label %181

181:                                              ; preds = %178, %78
  %182 = phi ptr [ %180, %178 ], [ %7, %78 ]
  br label %183

183:                                              ; preds = %183, %181
  %184 = phi ptr [ %182, %181 ], [ %187, %183 ]
  %185 = load i8, ptr %184, align 1, !tbaa !17
  %186 = icmp eq i8 %185, 0
  %187 = getelementptr inbounds i8, ptr %184, i64 1
  br i1 %186, label %188, label %183, !llvm.loop !25

188:                                              ; preds = %183
  %.lcssa8 = phi ptr [ %184, %183 ]
  %189 = load i32, ptr @iline, align 4, !tbaa !14
  %190 = add nsw i32 %189, -1
  store i32 %190, ptr @iline, align 4, !tbaa !14
  %191 = load ptr, ptr @backp, align 8, !tbaa !13
  %192 = getelementptr inbounds i8, ptr %191, i64 1
  store ptr %192, ptr @backp, align 8, !tbaa !13
  store i8 10, ptr %191, align 1, !tbaa !17
  %193 = icmp ult ptr %192, getelementptr inbounds ([500 x i8], ptr @backup, i64 1, i64 0)
  br i1 %193, label %195, label %194

194:                                              ; preds = %188
  call void @error(ptr noundef nonnull @.str.2.184) #21
  unreachable

195:                                              ; preds = %188
  %196 = icmp ugt ptr %.lcssa8, %182
  br i1 %196, label %197, label %203

197:                                              ; preds = %197, %195
  %198 = phi ptr [ %199, %197 ], [ %.lcssa8, %195 ]
  %199 = getelementptr inbounds i8, ptr %198, i64 -1
  %200 = load i8, ptr %199, align 1, !tbaa !17
  %201 = sext i8 %200 to i32
  call fastcc void @un1getc(i32 noundef %201) #20
  %202 = icmp ugt ptr %199, %182
  br i1 %202, label %197, label %203, !llvm.loop !26

203:                                              ; preds = %197, %195
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @sep, i8 -1, i64 80, i1 false), !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @evenup, i8 0, i64 80, i1 false), !tbaa !14
  br label %204

204:                                              ; preds = %217, %203
  %205 = phi i64 [ 0, %203 ], [ %218, %217 ]
  %206 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %205
  store i8 0, ptr %206, align 2, !tbaa !17
  br label %207

207:                                              ; preds = %207, %204
  %208 = phi i64 [ 0, %204 ], [ %215, %207 ]
  %209 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %208, i64 %205
  store i8 0, ptr %209, align 4, !tbaa !17
  %210 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @vsize, i64 0, i64 %208, i64 %205
  store i8 0, ptr %210, align 4, !tbaa !17
  %211 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %208, i64 %205
  store i32 0, ptr %211, align 4, !tbaa !14
  %212 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %208, i64 %205
  store i8 0, ptr %212, align 2, !tbaa !17
  %213 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %208, i64 %205
  store i32 0, ptr %213, align 4, !tbaa !14
  %214 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %208, i64 %205
  store i32 108, ptr %214, align 4, !tbaa !14
  %215 = add nuw nsw i64 %208, 1
  %216 = icmp eq i64 %215, 100
  br i1 %216, label %217, label %207, !llvm.loop !27

217:                                              ; preds = %207
  %218 = add nuw nsw i64 %205, 1
  %219 = icmp eq i64 %218, 20
  br i1 %219, label %220, label %204, !llvm.loop !28

220:                                              ; preds = %217
  store i32 0, ptr @ncol, align 4, !tbaa !14
  store i32 0, ptr @nclin, align 4, !tbaa !14
  store i32 0, ptr @oncol, align 4, !tbaa !14
  store i32 0, ptr @rightl, align 4, !tbaa !14
  store i1 false, ptr @left1flg, align 4
  call fastcc void @readspec() #21
  %221 = load ptr, ptr @tabout, align 8, !tbaa !13
  %222 = call i64 @fwrite(ptr nonnull @.str.25, i64 3, i64 1, ptr %221)
  %223 = load i32, ptr @ncol, align 4, !tbaa !14
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %225, %220
  %226 = phi i32 [ %230, %225 ], [ 0, %220 ]
  %227 = load ptr, ptr @tabout, align 8, !tbaa !13
  %228 = add nuw nsw i32 %226, 80
  %229 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.1.26, i32 noundef %228) #21
  %230 = add nuw nsw i32 %226, 1
  %231 = load i32, ptr @ncol, align 4, !tbaa !14
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %225, label %233, !llvm.loop !29

233:                                              ; preds = %225, %220
  %234 = load ptr, ptr @tabout, align 8, !tbaa !13
  %235 = call i32 @fputc(i32 10, ptr %234)
  %236 = call fastcc ptr @chspace() #20
  store ptr %236, ptr @cspace, align 8, !tbaa !13
  store ptr %236, ptr @cstore, align 8, !tbaa !13
  store i1 false, ptr @textflg, align 4
  store i32 0, ptr @nslin, align 4, !tbaa !14
  br label %237

237:                                              ; preds = %605, %233
  %238 = phi ptr [ %236, %233 ], [ %607, %605 ]
  %239 = phi i32 [ 0, %233 ], [ %608, %605 ]
  store i32 %239, ptr @nlin, align 4, !tbaa !14
  %240 = call fastcc ptr @gets1(ptr noundef %238) #20
  %241 = icmp eq ptr %240, null
  br i1 %241, label %612, label %242

242:                                              ; preds = %237
  %243 = load i32, ptr @nslin, align 4, !tbaa !14
  %244 = load i32, ptr @nlin, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %245
  store i32 %243, ptr %246, align 4, !tbaa !14
  %247 = load ptr, ptr @cstore, align 8, !tbaa !13
  br label %248

248:                                              ; preds = %254, %242
  %249 = phi ptr [ @.str.2.154, %242 ], [ %256, %254 ]
  %250 = phi ptr [ %247, %242 ], [ %255, %254 ]
  %251 = load i8, ptr %249, align 1, !tbaa !17
  %252 = load i8, ptr %250, align 1, !tbaa !17
  %253 = icmp eq i8 %251, %252
  br i1 %253, label %254, label %258

254:                                              ; preds = %248
  %255 = getelementptr inbounds i8, ptr %250, i64 1
  %256 = getelementptr inbounds i8, ptr %249, i64 1
  %257 = icmp eq ptr %249, getelementptr inbounds ([4 x i8], ptr @.str.2.154, i64 0, i64 3)
  br i1 %257, label %609, label %248, !llvm.loop !18

258:                                              ; preds = %248
  %.lcssa9 = phi i8 [ %251, %248 ]
  %259 = icmp eq i8 %.lcssa9, 0
  br i1 %259, label %609, label %260

260:                                              ; preds = %266, %258
  %261 = phi ptr [ %268, %266 ], [ @.str.1.46, %258 ]
  %262 = phi ptr [ %267, %266 ], [ %247, %258 ]
  %263 = load i8, ptr %261, align 1, !tbaa !17
  %264 = load i8, ptr %262, align 1, !tbaa !17
  %265 = icmp eq i8 %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %260
  %267 = getelementptr inbounds i8, ptr %262, i64 1
  %268 = getelementptr inbounds i8, ptr %261, i64 1
  %269 = icmp eq ptr %261, getelementptr inbounds ([4 x i8], ptr @.str.1.46, i64 0, i64 3)
  br i1 %269, label %284, label %260, !llvm.loop !18

270:                                              ; preds = %260
  %.lcssa12 = phi i8 [ %263, %260 ]
  %271 = icmp eq i8 %.lcssa12, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %278, %270
  %273 = phi ptr [ %280, %278 ], [ @.str.2.47, %270 ]
  %274 = phi ptr [ %279, %278 ], [ %247, %270 ]
  %275 = load i8, ptr %273, align 1, !tbaa !17
  %276 = load i8, ptr %274, align 1, !tbaa !17
  %277 = icmp eq i8 %275, %276
  br i1 %277, label %278, label %282

278:                                              ; preds = %272
  %279 = getelementptr inbounds i8, ptr %274, i64 1
  %280 = getelementptr inbounds i8, ptr %273, i64 1
  %281 = icmp eq ptr %273, getelementptr inbounds ([4 x i8], ptr @.str.2.47, i64 0, i64 3)
  br i1 %281, label %284, label %272, !llvm.loop !18

282:                                              ; preds = %272
  %.lcssa14 = phi i8 [ %275, %272 ]
  %283 = icmp eq i8 %.lcssa14, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %282, %278, %270, %266
  call fastcc void @readspec() #20
  %285 = load i32, ptr @nslin, align 4, !tbaa !14
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr @nslin, align 4, !tbaa !14
  %287 = load i32, ptr @nlin, align 4
  br label %288

288:                                              ; preds = %284, %282
  %289 = phi i32 [ %286, %284 ], [ %243, %282 ]
  %290 = phi i32 [ %287, %284 ], [ %244, %282 ]
  %291 = icmp sgt i32 %290, 199
  br i1 %291, label %292, label %296

292:                                              ; preds = %288
  %.lcssa9.lcssa = phi i8 [ %.lcssa9, %288 ]
  %293 = load ptr, ptr @cstore, align 8, !tbaa !13
  %294 = ptrtoint ptr %293 to i64
  %295 = trunc i64 %294 to i32
  br label %609

296:                                              ; preds = %288
  %297 = sext i32 %290 to i64
  %298 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %297
  store i32 0, ptr %298, align 4, !tbaa !14
  %299 = load ptr, ptr @cstore, align 8, !tbaa !13
  %300 = load i8, ptr %299, align 1, !tbaa !17
  %301 = icmp eq i8 %300, 46
  br i1 %301, label %302, label %319

302:                                              ; preds = %296
  %303 = tail call ptr @__ctype_b_loc() #25
  %304 = load ptr, ptr %303, align 8, !tbaa !13
  %305 = getelementptr inbounds i8, ptr %299, i64 1
  %306 = load i8, ptr %305, align 1, !tbaa !17
  %307 = sext i8 %306 to i64
  %308 = getelementptr inbounds i16, ptr %304, i64 %307
  %309 = load i16, ptr %308, align 2, !tbaa !30
  %310 = and i16 %309, 2048
  %311 = icmp eq i16 %310, 0
  br i1 %311, label %312, label %319

312:                                              ; preds = %302
  %313 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %297
  store ptr %299, ptr %313, align 8, !tbaa !13
  br label %314

314:                                              ; preds = %314, %312
  %315 = phi ptr [ %316, %314 ], [ %299, %312 ]
  %316 = getelementptr inbounds i8, ptr %315, i64 1
  %317 = load i8, ptr %315, align 1, !tbaa !17
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %604, label %314, !llvm.loop !32

319:                                              ; preds = %302, %296
  %320 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %297
  store ptr null, ptr %320, align 8, !tbaa !13
  %321 = load i32, ptr @ncol, align 4, !tbaa !14
  %322 = icmp sgt i32 %321, 0
  %323 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %297
  br i1 %322, label %329, label %324

324:                                              ; preds = %319
  %325 = load i32, ptr %323, align 4, !tbaa !14
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %326, i64 0
  %328 = load i32, ptr %327, align 16, !tbaa !14
  br label %352

329:                                              ; preds = %319
  %330 = zext i32 %321 to i64
  %331 = load i32, ptr %323, align 4, !tbaa !14
  %332 = sext i32 %331 to i64
  br label %333

333:                                              ; preds = %337, %329
  %334 = phi i64 [ 0, %329 ], [ %338, %337 ]
  %335 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %332, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !14
  switch i32 %336, label %337 [
    i32 99, label %362
    i32 110, label %362
    i32 114, label %362
    i32 108, label %362
    i32 115, label %362
    i32 97, label %362
  ]

337:                                              ; preds = %333
  %338 = add nuw nsw i64 %334, 1
  %339 = icmp eq i64 %338, %330
  br i1 %339, label %340, label %333, !llvm.loop !33

340:                                              ; preds = %337
  %341 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %332, i64 0
  %342 = load i32, ptr %341, align 16, !tbaa !14
  %343 = icmp sgt i32 %321, 1
  br i1 %343, label %347, label %352

344:                                              ; preds = %347
  %345 = add nuw nsw i64 %348, 1
  %346 = icmp eq i64 %345, %330
  br i1 %346, label %352, label %347, !llvm.loop !34

347:                                              ; preds = %344, %340
  %348 = phi i64 [ %345, %344 ], [ 1, %340 ]
  %349 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %332, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !14
  %351 = icmp eq i32 %342, %350
  br i1 %351, label %344, label %356

352:                                              ; preds = %344, %340, %324
  %353 = phi i32 [ %342, %340 ], [ %328, %324 ], [ %342, %344 ]
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %352
  store i32 %353, ptr %298, align 4, !tbaa !14
  br label %356

356:                                              ; preds = %355, %352, %347
  %357 = add nsw i32 %290, 1
  store i32 %357, ptr @nlin, align 4, !tbaa !14
  %358 = add nsw i32 %289, 1
  store i32 %358, ptr @nslin, align 4, !tbaa !14
  %359 = sext i32 %357 to i64
  %360 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %359
  store ptr null, ptr %360, align 8, !tbaa !13
  %361 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %359
  store i32 0, ptr %361, align 4, !tbaa !14
  br label %362

362:                                              ; preds = %356, %333, %333, %333, %333, %333, %333
  %363 = phi i32 [ %358, %356 ], [ %289, %333 ], [ %289, %333 ], [ %289, %333 ], [ %289, %333 ], [ %289, %333 ], [ %289, %333 ]
  %364 = phi i32 [ %357, %356 ], [ %290, %333 ], [ %290, %333 ], [ %290, %333 ], [ %290, %333 ], [ %290, %333 ], [ %290, %333 ]
  %365 = shl i32 %321, 4
  %366 = add i32 %365, 32
  %367 = load i32, ptr @tpcount, align 4, !tbaa !14
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %378, label %369

369:                                              ; preds = %362
  %370 = load ptr, ptr @thisvec, align 8, !tbaa !13
  %371 = sext i32 %366 to i64
  %372 = getelementptr inbounds i8, ptr %370, i64 %371
  %373 = zext i32 %367 to i64
  %374 = getelementptr inbounds [50 x ptr], ptr @tpvecs, i64 0, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !13
  %376 = getelementptr inbounds i8, ptr %375, i64 2000
  %377 = icmp ugt ptr %372, %376
  br i1 %377, label %378, label %394

378:                                              ; preds = %369, %362
  %379 = add nsw i32 %367, 1
  store i32 %379, ptr @tpcount, align 4, !tbaa !14
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [50 x ptr], ptr @tpvecs, i64 0, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !13
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %386

384:                                              ; preds = %378
  %385 = call noalias dereferenceable_or_null(2000) ptr @calloc(i64 noundef 2000, i64 noundef 1) #26
  store ptr %385, ptr %381, align 8, !tbaa !13
  br label %386

386:                                              ; preds = %384, %378
  %387 = phi ptr [ %385, %384 ], [ %382, %378 ]
  store ptr %387, ptr @thisvec, align 8, !tbaa !13
  %388 = ptrtoint ptr %387 to i64
  %389 = and i64 %388, 4294967295
  %390 = icmp eq i64 %389, 4294967295
  br i1 %390, label %393, label %391

391:                                              ; preds = %386
  %392 = sext i32 %366 to i64
  br label %394

393:                                              ; preds = %386
  call void @error(ptr noundef nonnull @.str.2.166) #20
  unreachable

394:                                              ; preds = %391, %369
  %395 = phi i64 [ %392, %391 ], [ %371, %369 ]
  %396 = phi ptr [ %387, %391 ], [ %370, %369 ]
  %397 = getelementptr inbounds i8, ptr %396, i64 %395
  store ptr %397, ptr @thisvec, align 8, !tbaa !13
  %398 = icmp sgt i32 %366, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %394
  %400 = ptrtoint ptr %396 to i64
  %401 = add i64 %395, %400
  %402 = add i64 %400, 4
  %403 = call i64 @llvm.umax.i64(i64 %401, i64 %402)
  %404 = xor i64 %400, -1
  %405 = add i64 %403, %404
  %406 = and i64 %405, -4
  %407 = add i64 %406, 4
  call void @llvm.memset.p0.i64(ptr align 4 %396, i8 0, i64 %407, i1 false), !tbaa !14
  br label %408

408:                                              ; preds = %399, %394
  %409 = sext i32 %364 to i64
  %410 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %409
  store ptr %396, ptr %410, align 8, !tbaa !13
  %411 = getelementptr inbounds i8, ptr %299, i64 1
  %412 = load i8, ptr %411, align 1, !tbaa !17
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %414, label %421

414:                                              ; preds = %408
  %415 = load i8, ptr %299, align 1, !tbaa !17
  %416 = sext i8 %415 to i32
  switch i32 %416, label %421 [
    i32 95, label %417
    i32 61, label %419
  ]

417:                                              ; preds = %414
  %418 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %409
  store i32 45, ptr %418, align 4, !tbaa !14
  br label %605

419:                                              ; preds = %414
  %420 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %409
  store i32 61, ptr %420, align 4, !tbaa !14
  br label %605

421:                                              ; preds = %414, %408
  %422 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %409
  store i32 %363, ptr %422, align 4, !tbaa !14
  %423 = add nsw i32 %363, 1
  %424 = load i32, ptr @nclin, align 4, !tbaa !14
  %425 = add nsw i32 %424, -1
  %426 = call i32 @llvm.smin.i32(i32 %423, i32 %425)
  store i32 %426, ptr @nslin, align 4, !tbaa !14
  br label %427

427:                                              ; preds = %557, %421
  %428 = phi i32 [ %364, %421 ], [ %512, %557 ]
  %429 = phi i32 [ %364, %421 ], [ %558, %557 ]
  %430 = phi i32 [ 0, %421 ], [ %561, %557 ]
  %431 = load i32, ptr @ncol, align 4, !tbaa !14
  %432 = icmp slt i32 %430, %431
  br i1 %432, label %433, label %566

433:                                              ; preds = %427
  %434 = load ptr, ptr @cstore, align 8, !tbaa !13
  %435 = sext i32 %429 to i64
  %436 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !13
  %438 = sext i32 %430 to i64
  %439 = getelementptr inbounds %struct.optstr, ptr %437, i64 %438
  store ptr %434, ptr %439, align 8, !tbaa !35
  %440 = getelementptr inbounds %struct.optstr, ptr %437, i64 %438, i32 1
  store ptr null, ptr %440, align 8, !tbaa !37
  %441 = load i8, ptr %434, align 1, !tbaa !17
  %442 = icmp eq i8 %441, 84
  br i1 %442, label %443, label %454

443:                                              ; preds = %448, %433
  %444 = phi i8 [ %451, %448 ], [ 84, %433 ]
  %445 = phi ptr [ %450, %448 ], [ @.str.3.48, %433 ]
  %446 = phi ptr [ %449, %448 ], [ %434, %433 ]
  %447 = icmp eq i8 %444, 0
  br i1 %447, label %460, label %448

448:                                              ; preds = %443
  %449 = getelementptr inbounds i8, ptr %446, i64 1
  %450 = getelementptr inbounds i8, ptr %445, i64 1
  %451 = load i8, ptr %449, align 1, !tbaa !17
  %452 = load i8, ptr %450, align 1, !tbaa !17
  %453 = icmp eq i8 %451, %452
  br i1 %453, label %443, label %454, !llvm.loop !38

454:                                              ; preds = %448, %433
  %455 = load i32, ptr @tab, align 4
  %456 = sext i8 %441 to i32
  %457 = icmp ne i8 %441, 0
  %458 = icmp ne i32 %455, %456
  %459 = select i1 %457, i1 %458, i1 false
  br i1 %459, label %474, label %482

460:                                              ; preds = %443
  %461 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %435
  %462 = load i32, ptr %461, align 4, !tbaa !14
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %463, i64 %438
  %465 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %463, i64 %438
  %466 = call i32 @gettext(ptr noundef nonnull %434, i32 noundef %429, i32 noundef %430, ptr noundef nonnull %464, ptr noundef nonnull %465) #20, !range !39
  %467 = sext i32 %466 to i64
  %468 = inttoptr i64 %467 to ptr
  %469 = load i32, ptr @nlin, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %470
  %472 = load ptr, ptr %471, align 8, !tbaa !13
  %473 = getelementptr inbounds %struct.optstr, ptr %472, i64 %438
  store ptr %468, ptr %473, align 8, !tbaa !35
  br label %511

474:                                              ; preds = %474, %454
  %475 = phi ptr [ %476, %474 ], [ %434, %454 ]
  %476 = getelementptr inbounds i8, ptr %475, i64 1
  %477 = load i8, ptr %476, align 1, !tbaa !17
  %478 = sext i8 %477 to i32
  %479 = icmp ne i8 %477, 0
  %480 = icmp ne i32 %455, %478
  %481 = select i1 %479, i1 %480, i1 false
  br i1 %481, label %474, label %482, !llvm.loop !40

482:                                              ; preds = %474, %454
  %483 = phi ptr [ %434, %454 ], [ %476, %474 ]
  %484 = phi i32 [ %456, %454 ], [ %478, %474 ]
  %485 = getelementptr inbounds i8, ptr %483, i64 1
  store ptr %485, ptr @cstore, align 8, !tbaa !13
  store i8 0, ptr %483, align 1, !tbaa !17
  %486 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %435
  %487 = load ptr, ptr %486, align 8, !tbaa !13
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %511

489:                                              ; preds = %482
  %490 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %435
  %491 = load i32, ptr %490, align 4, !tbaa !14
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %511

493:                                              ; preds = %489
  %494 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %435
  %495 = load i32, ptr %494, align 4, !tbaa !14
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %496, i64 %438
  %498 = load i32, ptr %497, align 4, !tbaa !14
  switch i32 %498, label %511 [
    i32 110, label %499
    i32 97, label %509
  ]

499:                                              ; preds = %493
  %500 = load ptr, ptr %439, align 8, !tbaa !35
  %501 = call fastcc i32 @maknew(ptr noundef %500) #20
  %502 = sext i32 %501 to i64
  %503 = inttoptr i64 %502 to ptr
  %504 = load i32, ptr @nlin, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %505
  %507 = load ptr, ptr %506, align 8, !tbaa !13
  %508 = getelementptr inbounds %struct.optstr, ptr %507, i64 %438, i32 1
  store ptr %503, ptr %508, align 8, !tbaa !37
  br label %511

509:                                              ; preds = %493
  %510 = load ptr, ptr %439, align 8, !tbaa !35
  store ptr %510, ptr %440, align 8, !tbaa !37
  store ptr @.str.14.341, ptr %439, align 8, !tbaa !35
  br label %511

511:                                              ; preds = %509, %499, %493, %489, %482, %460
  %512 = phi i32 [ %428, %489 ], [ %428, %482 ], [ %428, %493 ], [ %428, %509 ], [ %504, %499 ], [ %469, %460 ]
  %513 = phi i64 [ %435, %489 ], [ %435, %482 ], [ %435, %493 ], [ %435, %509 ], [ %505, %499 ], [ %470, %460 ]
  %514 = phi i32 [ %429, %489 ], [ %429, %482 ], [ %429, %493 ], [ %429, %509 ], [ %504, %499 ], [ %469, %460 ]
  %515 = phi i32 [ %484, %489 ], [ %484, %482 ], [ %484, %493 ], [ %484, %509 ], [ %484, %499 ], [ 1, %460 ]
  %516 = add nsw i64 %438, 1
  %517 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %513
  %518 = load ptr, ptr %517, align 8, !tbaa !13
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %557

520:                                              ; preds = %511
  %521 = sext i32 %512 to i64
  %522 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %521
  %523 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %521
  %524 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %513
  %525 = load i32, ptr %524, align 4, !tbaa !14
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %557

527:                                              ; preds = %520
  %528 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %521
  %529 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %513
  %530 = load i32, ptr %529, align 4, !tbaa !14
  %531 = sext i32 %530 to i64
  %532 = shl i64 %516, 32
  %533 = ashr exact i64 %532, 32
  %534 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %531, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !14
  %536 = icmp eq i32 %535, 115
  br i1 %536, label %537, label %557

537:                                              ; preds = %527
  %538 = load ptr, ptr %522, align 8, !tbaa !13
  %539 = load ptr, ptr %523, align 8, !tbaa !13
  %540 = icmp eq ptr %539, null
  %541 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %521
  br label %553

542:                                              ; preds = %553
  %543 = load i32, ptr %528, align 4, !tbaa !14
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %557, !llvm.loop !41

545:                                              ; preds = %542
  %546 = load i32, ptr %541, align 4, !tbaa !14
  %547 = sext i32 %546 to i64
  %548 = shl i64 %556, 32
  %549 = ashr exact i64 %548, 32
  %550 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %547, i64 %549
  %551 = load i32, ptr %550, align 4, !tbaa !14
  %552 = icmp eq i32 %551, 115
  br i1 %552, label %553, label %557, !llvm.loop !41

553:                                              ; preds = %545, %537
  %554 = phi i64 [ %516, %537 ], [ %556, %545 ]
  %555 = getelementptr inbounds %struct.optstr, ptr %538, i64 %554
  store ptr @.str.14.341, ptr %555, align 8, !tbaa !35
  %556 = add i64 %554, 1
  br i1 %540, label %542, label %557, !llvm.loop !41

557:                                              ; preds = %553, %545, %542, %527, %520, %511
  %558 = phi i32 [ %514, %511 ], [ %512, %520 ], [ %512, %527 ], [ %512, %553 ], [ %512, %545 ], [ %512, %542 ]
  %559 = phi i64 [ %516, %511 ], [ %516, %520 ], [ %516, %527 ], [ %556, %553 ], [ %556, %545 ], [ %556, %542 ]
  %560 = phi i64 [ %438, %511 ], [ %438, %520 ], [ %438, %527 ], [ %554, %542 ], [ %554, %545 ], [ %516, %553 ]
  %561 = trunc i64 %559 to i32
  %562 = icmp eq i32 %515, 0
  br i1 %562, label %563, label %427, !llvm.loop !42

563:                                              ; preds = %557
  %.lcssa16 = phi i64 [ %560, %557 ]
  %.lcssa15 = phi i32 [ %512, %557 ]
  %564 = trunc i64 %.lcssa16 to i32
  %565 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %566

566:                                              ; preds = %563, %427
  %567 = phi i32 [ %.lcssa15, %563 ], [ %428, %427 ]
  %568 = phi i32 [ %565, %563 ], [ %431, %427 ]
  %569 = phi i32 [ %564, %563 ], [ %430, %427 ]
  %570 = icmp sgt i32 %569, %568
  br i1 %570, label %577, label %571

571:                                              ; preds = %566
  %572 = sext i32 %567 to i64
  %573 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %572
  %574 = sext i32 %569 to i64
  %575 = add i32 %568, 1
  %576 = load ptr, ptr %573, align 8, !tbaa !13
  br label %581

577:                                              ; preds = %581, %566
  %578 = load ptr, ptr @cstore, align 8, !tbaa !13
  %579 = load i8, ptr %578, align 1, !tbaa !17
  %580 = icmp eq i8 %579, 0
  br i1 %580, label %594, label %588

581:                                              ; preds = %581, %571
  %582 = phi i64 [ %574, %571 ], [ %583, %581 ]
  %583 = add nsw i64 %582, 1
  %584 = getelementptr inbounds %struct.optstr, ptr %576, i64 %583
  store ptr @.str.14.341, ptr %584, align 8, !tbaa !35
  %585 = getelementptr inbounds %struct.optstr, ptr %576, i64 %583, i32 1
  store ptr null, ptr %585, align 8, !tbaa !37
  %586 = trunc i64 %583 to i32
  %587 = icmp eq i32 %575, %586
  br i1 %587, label %577, label %581, !llvm.loop !43

588:                                              ; preds = %588, %577
  %589 = phi ptr [ %590, %588 ], [ %578, %577 ]
  %590 = getelementptr inbounds i8, ptr %589, i64 1
  %591 = load i8, ptr %590, align 1, !tbaa !17
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %593, label %588, !llvm.loop !44

593:                                              ; preds = %588
  %.lcssa17 = phi ptr [ %590, %588 ]
  store ptr %.lcssa17, ptr @cstore, align 8, !tbaa !13
  br label %594

594:                                              ; preds = %593, %577
  %595 = phi ptr [ %578, %577 ], [ %.lcssa17, %593 ]
  %596 = load ptr, ptr @cspace, align 8, !tbaa !13
  %597 = ptrtoint ptr %595 to i64
  %598 = ptrtoint ptr %596 to i64
  %599 = sub i64 %597, %598
  %600 = icmp sgt i64 %599, 2000
  br i1 %600, label %601, label %605

601:                                              ; preds = %594
  %602 = call fastcc ptr @chspace() #20
  store ptr %602, ptr @cspace, align 8, !tbaa !13
  store ptr %602, ptr @cstore, align 8, !tbaa !13
  %603 = load i32, ptr @nlin, align 4, !tbaa !14
  br label %605

604:                                              ; preds = %314
  %.lcssa18 = phi ptr [ %316, %314 ]
  store ptr %.lcssa18, ptr @cstore, align 8, !tbaa !13
  br label %605

605:                                              ; preds = %604, %601, %594, %419, %417
  %606 = phi i32 [ %567, %594 ], [ %603, %601 ], [ %364, %419 ], [ %364, %417 ], [ %290, %604 ]
  %607 = phi ptr [ %595, %594 ], [ %602, %601 ], [ %299, %419 ], [ %299, %417 ], [ %.lcssa18, %604 ]
  %608 = add nsw i32 %606, 1
  br label %237, !llvm.loop !45

609:                                              ; preds = %292, %258, %254
  %610 = phi ptr [ %293, %292 ], [ %247, %254 ], [ %247, %258 ]
  %611 = phi i32 [ %295, %292 ], [ 0, %254 ], [ 0, %258 ]
  store i32 %611, ptr @leftover, align 4, !tbaa !14
  br label %614

612:                                              ; preds = %237
  %613 = load ptr, ptr @cstore, align 8, !tbaa !13
  br label %614

614:                                              ; preds = %612, %609
  %615 = phi ptr [ %613, %612 ], [ %610, %609 ]
  store ptr %615, ptr @last, align 8, !tbaa !13
  %616 = load i32, ptr @ncol, align 4, !tbaa !14
  %617 = icmp sgt i32 %616, 0
  br i1 %617, label %618, label %691

618:                                              ; preds = %614
  %619 = load i32, ptr @nlin, align 4, !tbaa !14
  %620 = icmp sgt i32 %619, 1
  %621 = zext i32 %616 to i64
  br label %622

622:                                              ; preds = %688, %618
  %623 = phi i64 [ 0, %618 ], [ %689, %688 ]
  br i1 %620, label %624, label %688

624:                                              ; preds = %622
  %625 = trunc i64 %623 to i32
  br label %626

626:                                              ; preds = %684, %624
  %627 = phi i32 [ 1, %624 ], [ %686, %684 ]
  %628 = call fastcc i32 @vspand(i32 noundef %627, i32 noundef %625, i32 noundef 0) #21, !range !16
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %684, label %630

630:                                              ; preds = %626
  %631 = icmp sgt i32 %627, 0
  br i1 %631, label %632, label %650

632:                                              ; preds = %630
  %633 = add nsw i32 %627, -1
  %634 = zext i32 %633 to i64
  br label %635

635:                                              ; preds = %644, %632
  %636 = phi i64 [ %634, %632 ], [ %645, %644 ]
  %637 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !14
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %644

640:                                              ; preds = %635
  %641 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %636
  %642 = load ptr, ptr %641, align 8, !tbaa !13
  %643 = icmp eq ptr %642, null
  br i1 %643, label %647, label %644

644:                                              ; preds = %640, %635
  %645 = add nsw i64 %636, -1
  %646 = icmp sgt i64 %636, 0
  br i1 %646, label %635, label %650, !llvm.loop !46

647:                                              ; preds = %640
  %.lcssa19 = phi i64 [ %636, %640 ]
  %648 = trunc i64 %.lcssa19 to i32
  %649 = icmp slt i32 %648, 0
  br i1 %649, label %650, label %651

650:                                              ; preds = %647, %644, %630
  call void @error(ptr noundef nonnull @.str.5.50) #20
  unreachable

651:                                              ; preds = %647
  %652 = and i64 %.lcssa19, 4294967295
  %653 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %652
  %654 = load ptr, ptr %653, align 8, !tbaa !13
  %655 = getelementptr inbounds %struct.optstr, ptr %654, i64 %623
  %656 = load <2 x ptr>, ptr %655, align 8, !tbaa !13
  %657 = icmp slt i32 %627, %619
  br i1 %657, label %658, label %668

658:                                              ; preds = %662, %651
  %659 = phi i32 [ %663, %662 ], [ %627, %651 ]
  %660 = call fastcc i32 @vspand(i32 noundef %659, i32 noundef %625, i32 noundef 0) #21, !range !16
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %665, label %662

662:                                              ; preds = %658
  %663 = add nsw i32 %659, 1
  %664 = icmp eq i32 %663, %619
  br i1 %664, label %665, label %658, !llvm.loop !47

665:                                              ; preds = %662, %658
  %666 = phi i32 [ %619, %662 ], [ %659, %658 ]
  %667 = add nsw i32 %666, -1
  br label %668

668:                                              ; preds = %665, %651
  %669 = phi i32 [ %667, %665 ], [ %633, %651 ]
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %670
  %672 = load ptr, ptr %671, align 8, !tbaa !13
  %673 = getelementptr inbounds %struct.optstr, ptr %672, i64 %623
  store <2 x ptr> %656, ptr %673, align 8, !tbaa !13
  %674 = icmp sgt i32 %669, %648
  br i1 %674, label %675, label %684

675:                                              ; preds = %675, %668
  %676 = phi i32 [ %682, %675 ], [ %648, %668 ]
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !13
  %680 = getelementptr inbounds %struct.optstr, ptr %679, i64 %623, i32 1
  store ptr null, ptr %680, align 8, !tbaa !37
  %681 = getelementptr inbounds %struct.optstr, ptr %679, i64 %623
  store ptr @.str.6.51, ptr %681, align 8, !tbaa !35
  %682 = call fastcc i32 @next(i32 noundef %676) #20
  %683 = icmp slt i32 %682, %669
  br i1 %683, label %675, label %684, !llvm.loop !48

684:                                              ; preds = %675, %668, %626
  %685 = phi i32 [ %627, %626 ], [ %669, %668 ], [ %669, %675 ]
  %686 = add nsw i32 %685, 1
  %687 = icmp slt i32 %686, %619
  br i1 %687, label %626, label %688, !llvm.loop !49

688:                                              ; preds = %684, %622
  %689 = add nuw nsw i64 %623, 1
  %690 = icmp eq i64 %689, %621
  br i1 %690, label %691, label %622, !llvm.loop !50

691:                                              ; preds = %688, %614
  %692 = load i1, ptr @textflg, align 4
  br i1 %692, label %693, label %694

693:                                              ; preds = %691
  call fastcc void @untext() #20
  br label %694

694:                                              ; preds = %693, %691
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) @linestop, i8 0, i64 800, i1 false), !tbaa !14
  %695 = load i32, ptr @nlin, align 4, !tbaa !14
  %696 = icmp sgt i32 %695, 0
  br i1 %696, label %697, label %723

697:                                              ; preds = %694
  %698 = load i32, ptr @ncol, align 4, !tbaa !14
  %699 = icmp sgt i32 %698, 0
  br label %700

700:                                              ; preds = %719, %697
  %701 = phi i32 [ %720, %719 ], [ 1, %697 ]
  %702 = phi i32 [ %721, %719 ], [ 0, %697 ]
  br i1 %699, label %703, label %719

703:                                              ; preds = %715, %700
  %704 = phi i32 [ %716, %715 ], [ %701, %700 ]
  %705 = phi i32 [ %717, %715 ], [ 0, %700 ]
  %706 = call fastcc i32 @left(i32 noundef %702, i32 noundef %705, ptr noundef nonnull %6) #21
  %707 = icmp sgt i32 %706, -1
  br i1 %707, label %708, label %715

708:                                              ; preds = %703
  %709 = zext i32 %706 to i64
  %710 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %709
  %711 = load i32, ptr %710, align 4, !tbaa !14
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %715

713:                                              ; preds = %708
  %714 = add nsw i32 %704, 1
  store i32 %714, ptr %710, align 4, !tbaa !14
  br label %715

715:                                              ; preds = %713, %708, %703
  %716 = phi i32 [ %714, %713 ], [ %704, %708 ], [ %704, %703 ]
  %717 = add nuw nsw i32 %705, 1
  %718 = icmp eq i32 %717, %698
  br i1 %718, label %719, label %703, !llvm.loop !51

719:                                              ; preds = %715, %700
  %720 = phi i32 [ %701, %700 ], [ %716, %715 ]
  %721 = add nuw nsw i32 %702, 1
  %722 = icmp eq i32 %721, %695
  br i1 %722, label %723, label %700, !llvm.loop !52

723:                                              ; preds = %719, %694
  %724 = load i32, ptr @boxflg, align 4, !tbaa !14
  %725 = icmp ne i32 %724, 0
  %726 = load i32, ptr @allflg, align 4
  %727 = icmp ne i32 %726, 0
  %728 = select i1 %725, i1 true, i1 %727
  %729 = load i32, ptr @dboxflg, align 4
  %730 = icmp ne i32 %729, 0
  %731 = select i1 %728, i1 true, i1 %730
  br i1 %731, label %732, label %733

732:                                              ; preds = %723
  store i32 1, ptr @linestop, align 16, !tbaa !14
  br label %733

733:                                              ; preds = %732, %723
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  %734 = load i32, ptr @ncol, align 4
  %735 = icmp sgt i32 %734, 0
  br i1 %735, label %736, label %849

736:                                              ; preds = %733
  %737 = zext i32 %734 to i64
  %738 = sext i32 %695 to i64
  br label %739

739:                                              ; preds = %846, %736
  %740 = phi i64 [ 0, %736 ], [ %847, %846 ]
  %741 = getelementptr inbounds [0 x i32], ptr @rused, i64 0, i64 %740
  store i32 0, ptr %741, align 4, !tbaa !14
  %742 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %740
  store i32 0, ptr %742, align 4, !tbaa !14
  %743 = getelementptr inbounds [0 x i32], ptr @used, i64 0, i64 %740
  store i32 0, ptr %743, align 4, !tbaa !14
  br i1 %696, label %744, label %846

744:                                              ; preds = %739
  %745 = shl i64 %740, 32
  %746 = ashr exact i64 %745, 32
  br label %747

747:                                              ; preds = %842, %744
  %748 = phi i32 [ %843, %842 ], [ 0, %744 ]
  %749 = phi i64 [ %844, %842 ], [ 0, %744 ]
  %750 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %749
  %751 = load ptr, ptr %750, align 8, !tbaa !13
  %752 = icmp eq ptr %751, null
  br i1 %752, label %753, label %842

753:                                              ; preds = %747
  %754 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %749
  %755 = load i32, ptr %754, align 4, !tbaa !14
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %842

757:                                              ; preds = %753
  %758 = shl i64 %749, 32
  %759 = ashr exact i64 %758, 32
  %760 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %759
  %761 = load ptr, ptr %760, align 8, !tbaa !13
  %762 = icmp eq ptr %761, null
  br i1 %762, label %763, label %819

763:                                              ; preds = %757
  %764 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %759
  %765 = load i32, ptr %764, align 4, !tbaa !14
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %767, label %819

767:                                              ; preds = %763
  %768 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %759
  %769 = load i32, ptr %768, align 4, !tbaa !14
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %770, i64 %746
  %772 = load i32, ptr %771, align 4, !tbaa !14
  %773 = and i32 %772, -17
  %774 = icmp eq i32 %773, 45
  br i1 %774, label %842, label %775

775:                                              ; preds = %767
  switch i32 %772, label %819 [
    i32 110, label %776
    i32 97, label %776
  ]

776:                                              ; preds = %775, %775
  %777 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %749
  %778 = load ptr, ptr %777, align 8, !tbaa !13
  %779 = getelementptr inbounds %struct.optstr, ptr %778, i64 %740, i32 1
  %780 = load ptr, ptr %779, align 8, !tbaa !37
  %781 = icmp eq ptr %780, null
  br i1 %781, label %793, label %782

782:                                              ; preds = %776
  %783 = ptrtoint ptr %780 to i64
  %784 = and i64 %783, 4294967168
  %785 = icmp eq i64 %784, 0
  br i1 %785, label %786, label %787

786:                                              ; preds = %782
  store i32 1, ptr %741, align 4, !tbaa !14
  br label %810

787:                                              ; preds = %782
  %788 = load i8, ptr %780, align 1, !tbaa !17
  %789 = icmp ne i8 %788, 0
  %790 = zext i1 %789 to i32
  %791 = or i32 %748, %790
  store i32 %791, ptr %741, align 4, !tbaa !14
  %792 = icmp eq i8 %788, 0
  br i1 %792, label %793, label %810

793:                                              ; preds = %787, %776
  %794 = phi i32 [ %748, %776 ], [ %791, %787 ]
  %795 = getelementptr inbounds %struct.optstr, ptr %778, i64 %740
  %796 = load ptr, ptr %795, align 8, !tbaa !35
  %797 = icmp eq ptr %796, null
  br i1 %797, label %806, label %798

798:                                              ; preds = %793
  %799 = ptrtoint ptr %796 to i64
  %800 = and i64 %799, 4294967168
  %801 = icmp eq i64 %800, 0
  br i1 %801, label %806, label %802

802:                                              ; preds = %798
  %803 = load i8, ptr %796, align 1, !tbaa !17
  %804 = icmp ne i8 %803, 0
  %805 = zext i1 %804 to i32
  br label %806

806:                                              ; preds = %802, %798, %793
  %807 = phi i32 [ 0, %793 ], [ 1, %798 ], [ %805, %802 ]
  %808 = load i32, ptr %743, align 4, !tbaa !14
  %809 = or i32 %808, %807
  store i32 %809, ptr %743, align 4, !tbaa !14
  br i1 %781, label %842, label %810

810:                                              ; preds = %806, %787, %786
  %811 = phi i32 [ %791, %787 ], [ %794, %806 ], [ 1, %786 ]
  %812 = getelementptr inbounds %struct.optstr, ptr %778, i64 %740
  %813 = load ptr, ptr %812, align 8, !tbaa !35
  %814 = icmp eq ptr %813, null
  br i1 %814, label %836, label %815

815:                                              ; preds = %810
  %816 = ptrtoint ptr %813 to i64
  %817 = and i64 %816, 4294967168
  %818 = icmp eq i64 %817, 0
  br i1 %818, label %836, label %829

819:                                              ; preds = %775, %763, %757
  %820 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %749
  %821 = load ptr, ptr %820, align 8, !tbaa !13
  %822 = getelementptr inbounds %struct.optstr, ptr %821, i64 %740
  %823 = load ptr, ptr %822, align 8, !tbaa !35
  %824 = icmp eq ptr %823, null
  br i1 %824, label %836, label %825

825:                                              ; preds = %819
  %826 = ptrtoint ptr %823 to i64
  %827 = and i64 %826, 4294967168
  %828 = icmp eq i64 %827, 0
  br i1 %828, label %836, label %829

829:                                              ; preds = %825, %815
  %830 = phi i32 [ %811, %815 ], [ %748, %825 ]
  %831 = phi ptr [ %813, %815 ], [ %823, %825 ]
  %832 = phi ptr [ %742, %815 ], [ %743, %825 ]
  %833 = load i8, ptr %831, align 1, !tbaa !17
  %834 = icmp ne i8 %833, 0
  %835 = zext i1 %834 to i32
  br label %836

836:                                              ; preds = %829, %825, %819, %815, %810
  %837 = phi i32 [ %811, %810 ], [ %811, %815 ], [ %748, %819 ], [ %748, %825 ], [ %830, %829 ]
  %838 = phi ptr [ %742, %810 ], [ %742, %815 ], [ %743, %819 ], [ %743, %825 ], [ %832, %829 ]
  %839 = phi i32 [ 0, %810 ], [ 1, %815 ], [ 0, %819 ], [ 1, %825 ], [ %835, %829 ]
  %840 = load i32, ptr %838, align 4, !tbaa !14
  %841 = or i32 %840, %839
  store i32 %841, ptr %838, align 4, !tbaa !14
  br label %842

842:                                              ; preds = %836, %806, %767, %753, %747
  %843 = phi i32 [ %837, %836 ], [ %794, %806 ], [ %748, %767 ], [ %748, %753 ], [ %748, %747 ]
  %844 = add nuw nsw i64 %749, 1
  %845 = icmp eq i64 %844, %738
  br i1 %845, label %846, label %747, !llvm.loop !53

846:                                              ; preds = %842, %739
  %847 = add nuw nsw i64 %740, 1
  %848 = icmp eq i64 %847, %737
  br i1 %848, label %849, label %739, !llvm.loop !54

849:                                              ; preds = %846, %733
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %5, i8 0, i64 512, i1 false), !tbaa !14
  store i32 0, ptr @F2, align 4, !tbaa !14
  store i32 0, ptr @F1, align 4, !tbaa !14
  br i1 %696, label %850, label %925

850:                                              ; preds = %849
  %851 = zext i32 %695 to i64
  %852 = sext i32 %734 to i64
  br label %853

853:                                              ; preds = %922, %850
  %854 = phi i64 [ %923, %922 ], [ 0, %850 ]
  %855 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %854
  %856 = load ptr, ptr %855, align 8, !tbaa !13
  %857 = icmp eq ptr %856, null
  br i1 %857, label %858, label %922

858:                                              ; preds = %853
  %859 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %854
  %860 = load i32, ptr %859, align 4, !tbaa !14
  %861 = icmp eq i32 %860, 0
  %862 = and i1 %735, %861
  br i1 %862, label %863, label %922

863:                                              ; preds = %858
  %864 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %854
  %865 = shl i64 %854, 32
  %866 = ashr exact i64 %865, 32
  %867 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %866
  %868 = load ptr, ptr %867, align 8, !tbaa !13
  %869 = icmp eq ptr %868, null
  %870 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %866
  %871 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %866
  br label %872

872:                                              ; preds = %919, %863
  %873 = phi i64 [ 0, %863 ], [ %920, %919 ]
  br i1 %869, label %874, label %919

874:                                              ; preds = %872
  %875 = load i32, ptr %870, align 4, !tbaa !14
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %919

877:                                              ; preds = %874
  %878 = load i32, ptr %871, align 4, !tbaa !14
  %879 = sext i32 %878 to i64
  %880 = shl i64 %873, 32
  %881 = ashr exact i64 %880, 32
  %882 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %879, i64 %881
  %883 = load i32, ptr %882, align 4, !tbaa !14
  switch i32 %883, label %884 [
    i32 61, label %919
    i32 45, label %919
    i32 0, label %919
  ]

884:                                              ; preds = %877
  %885 = load ptr, ptr %864, align 8, !tbaa !13
  %886 = getelementptr inbounds %struct.optstr, ptr %885, i64 %873
  %887 = load ptr, ptr %886, align 8, !tbaa !35
  %888 = ptrtoint ptr %887 to i64
  %889 = and i64 %888, 4294967168
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %902, label %891

891:                                              ; preds = %884
  %892 = load i8, ptr %887, align 1, !tbaa !17
  %893 = icmp eq i8 %892, 0
  br i1 %893, label %902, label %894

894:                                              ; preds = %894, %891
  %895 = phi i8 [ %900, %894 ], [ %892, %891 ]
  %896 = phi ptr [ %897, %894 ], [ %887, %891 ]
  %897 = getelementptr inbounds i8, ptr %896, i64 1
  %898 = sext i8 %895 to i64
  %899 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %898
  store i32 1, ptr %899, align 4, !tbaa !14
  %900 = load i8, ptr %897, align 1, !tbaa !17
  %901 = icmp eq i8 %900, 0
  br i1 %901, label %902, label %894, !llvm.loop !55

902:                                              ; preds = %894, %891, %884
  %903 = getelementptr inbounds %struct.optstr, ptr %885, i64 %873, i32 1
  %904 = load ptr, ptr %903, align 8, !tbaa !37
  %905 = ptrtoint ptr %904 to i64
  %906 = and i64 %905, 4294967168
  %907 = icmp eq i64 %906, 0
  br i1 %907, label %919, label %908

908:                                              ; preds = %902
  %909 = load i8, ptr %904, align 1, !tbaa !17
  %910 = icmp eq i8 %909, 0
  br i1 %910, label %919, label %911

911:                                              ; preds = %911, %908
  %912 = phi i8 [ %917, %911 ], [ %909, %908 ]
  %913 = phi ptr [ %914, %911 ], [ %904, %908 ]
  %914 = getelementptr inbounds i8, ptr %913, i64 1
  %915 = sext i8 %912 to i64
  %916 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %915
  store i32 1, ptr %916, align 4, !tbaa !14
  %917 = load i8, ptr %914, align 1, !tbaa !17
  %918 = icmp eq i8 %917, 0
  br i1 %918, label %919, label %911, !llvm.loop !56

919:                                              ; preds = %911, %908, %902, %877, %877, %877, %874, %872
  %920 = add nuw nsw i64 %873, 1
  %921 = icmp eq i64 %920, %852
  br i1 %921, label %922, label %872, !llvm.loop !57

922:                                              ; preds = %919, %858, %853
  %923 = add nuw nsw i64 %854, 1
  %924 = icmp eq i64 %923, %851
  br i1 %924, label %925, label %853, !llvm.loop !58

925:                                              ; preds = %922, %849
  br label %930

926:                                              ; preds = %930
  %927 = getelementptr inbounds i8, ptr %932, i64 1
  %928 = load i8, ptr %927, align 1, !tbaa !17
  %929 = icmp eq ptr %927, getelementptr inbounds ([71 x i8], ptr @.str.171, i64 0, i64 70)
  br i1 %929, label %940, label %930, !llvm.loop !59

930:                                              ; preds = %926, %925
  %931 = phi i8 [ %928, %926 ], [ 2, %925 ]
  %932 = phi ptr [ %927, %926 ], [ @.str.171, %925 ]
  %933 = sext i8 %931 to i64
  %934 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %933
  %935 = load i32, ptr %934, align 4, !tbaa !14
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %926

937:                                              ; preds = %930
  %.lcssa22 = phi i8 [ %931, %930 ]
  %.lcssa20 = phi i64 [ %933, %930 ]
  %938 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %.lcssa20
  %939 = sext i8 %.lcssa22 to i32
  store i32 %939, ptr @F1, align 4, !tbaa !14
  store i32 1, ptr %938, align 4, !tbaa !14
  br label %940

940:                                              ; preds = %937, %926
  %941 = phi i32 [ %939, %937 ], [ 0, %926 ]
  br label %946

942:                                              ; preds = %946
  %943 = getelementptr inbounds i8, ptr %948, i64 1
  %944 = load i8, ptr %943, align 1, !tbaa !17
  %945 = icmp eq ptr %943, getelementptr inbounds ([71 x i8], ptr @.str.1.172, i64 0, i64 70)
  br i1 %945, label %958, label %946, !llvm.loop !60

946:                                              ; preds = %942, %940
  %947 = phi i8 [ %944, %942 ], [ 2, %940 ]
  %948 = phi ptr [ %943, %942 ], [ @.str.1.172, %940 ]
  %949 = sext i8 %947 to i64
  %950 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %949
  %951 = load i32, ptr %950, align 4, !tbaa !14
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %953, label %942

953:                                              ; preds = %946
  %.lcssa24 = phi i8 [ %947, %946 ]
  %954 = sext i8 %.lcssa24 to i32
  store i32 %954, ptr @F2, align 4, !tbaa !14
  %955 = icmp eq i32 %941, 0
  %956 = icmp eq i8 %.lcssa24, 0
  %957 = or i1 %955, %956
  br i1 %957, label %958, label %959

958:                                              ; preds = %953, %942
  call void @error(ptr noundef nonnull @.str.2.173) #20
  unreachable

959:                                              ; preds = %953
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #23
  br i1 %735, label %960, label %1391

960:                                              ; preds = %1386, %959
  %961 = phi i64 [ %1387, %1386 ], [ 0, %959 ]
  %962 = trunc i64 %961 to i32
  %963 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %961
  store i32 0, ptr %963, align 4, !tbaa !14
  %964 = load ptr, ptr @tabout, align 8, !tbaa !13
  %965 = add nuw nsw i64 %961, 80
  %966 = trunc i64 %965 to i32
  %967 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %964, ptr noundef nonnull @.str.54, i32 noundef %966) #21
  %968 = shl i64 %961, 32
  %969 = ashr exact i64 %968, 32
  br label %970

970:                                              ; preds = %1248, %960
  %971 = phi i32 [ 0, %960 ], [ %1249, %1248 ]
  %972 = phi i32 [ 0, %960 ], [ %1250, %1248 ]
  %973 = phi i1 [ false, %960 ], [ true, %1248 ]
  %974 = phi i1 [ true, %960 ], [ false, %1248 ]
  %975 = phi i32 [ 0, %960 ], [ 1, %1248 ]
  br i1 %973, label %976, label %979

976:                                              ; preds = %970
  %977 = load ptr, ptr @tabout, align 8, !tbaa !13
  %978 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %977, ptr noundef nonnull @.str.1.55, i32 noundef %966, i32 noundef %966) #21
  br label %979

979:                                              ; preds = %976, %970
  %980 = load i32, ptr @nlin, align 4, !tbaa !14
  %981 = icmp sgt i32 %980, 0
  br i1 %981, label %982, label %1248

982:                                              ; preds = %1241, %979
  %983 = phi i32 [ %1242, %1241 ], [ %971, %979 ]
  %984 = phi i32 [ %1243, %1241 ], [ %972, %979 ]
  %985 = phi i64 [ %1244, %1241 ], [ 0, %979 ]
  %986 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %985
  %987 = load ptr, ptr %986, align 8, !tbaa !13
  %988 = icmp eq ptr %987, null
  br i1 %988, label %989, label %1241

989:                                              ; preds = %982
  %990 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %985
  %991 = load i32, ptr %990, align 4, !tbaa !14
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %1241

993:                                              ; preds = %989
  %994 = trunc i64 %985 to i32
  %995 = add i32 %994, -1
  %996 = icmp sgt i32 %994, 0
  br i1 %996, label %997, label %1013

997:                                              ; preds = %993
  %998 = zext i32 %995 to i64
  br label %999

999:                                              ; preds = %1008, %997
  %1000 = phi i64 [ %998, %997 ], [ %1009, %1008 ]
  %1001 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1000
  %1002 = load i32, ptr %1001, align 4, !tbaa !14
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1004, label %1008

1004:                                             ; preds = %999
  %1005 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1000
  %1006 = load ptr, ptr %1005, align 8, !tbaa !13
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1011, label %1008

1008:                                             ; preds = %1004, %999
  %1009 = add nsw i64 %1000, -1
  %1010 = icmp sgt i64 %1000, 0
  br i1 %1010, label %999, label %1063, !llvm.loop !46

1011:                                             ; preds = %1004
  %.lcssa26 = phi i64 [ %1000, %1004 ]
  %1012 = trunc i64 %.lcssa26 to i32
  br label %1013

1013:                                             ; preds = %1011, %993
  %1014 = phi i32 [ %995, %993 ], [ %1012, %1011 ]
  %1015 = icmp sgt i32 %1014, -1
  br i1 %1015, label %1016, label %1063

1016:                                             ; preds = %1060, %1013
  %1017 = phi i32 [ %1061, %1060 ], [ %1014, %1013 ]
  %1018 = phi i32 [ %1017, %1060 ], [ %994, %1013 ]
  %1019 = zext i32 %1017 to i64
  %1020 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %1019
  %1021 = load ptr, ptr %1020, align 8, !tbaa !13
  %1022 = getelementptr inbounds %struct.optstr, ptr %1021, i64 %961
  %1023 = load ptr, ptr %1022, align 8, !tbaa !35
  %1024 = ptrtoint ptr %1023 to i64
  %1025 = and i64 %1024, 4294967168
  %1026 = icmp eq i64 %1025, 0
  br i1 %1026, label %1063, label %1027

1027:                                             ; preds = %1016
  %1028 = load i8, ptr %1023, align 1, !tbaa !17
  %1029 = icmp eq i8 %1028, 92
  br i1 %1029, label %1030, label %1063

1030:                                             ; preds = %1035, %1027
  %1031 = phi i8 [ %1038, %1035 ], [ 92, %1027 ]
  %1032 = phi ptr [ %1037, %1035 ], [ @.str.6.51, %1027 ]
  %1033 = phi ptr [ %1036, %1035 ], [ %1023, %1027 ]
  %1034 = icmp eq i8 %1031, 0
  br i1 %1034, label %1041, label %1035

1035:                                             ; preds = %1030
  %1036 = getelementptr inbounds i8, ptr %1033, i64 1
  %1037 = getelementptr inbounds i8, ptr %1032, i64 1
  %1038 = load i8, ptr %1036, align 1, !tbaa !17
  %1039 = load i8, ptr %1037, align 1, !tbaa !17
  %1040 = icmp eq i8 %1038, %1039
  br i1 %1040, label %1030, label %1063, !llvm.loop !38

1041:                                             ; preds = %1030
  %1042 = add i32 %1017, -1
  %1043 = icmp sgt i32 %1017, 0
  br i1 %1043, label %1044, label %1060

1044:                                             ; preds = %1041
  %1045 = zext i32 %1042 to i64
  br label %1046

1046:                                             ; preds = %1055, %1044
  %1047 = phi i64 [ %1045, %1044 ], [ %1056, %1055 ]
  %1048 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1047
  %1049 = load i32, ptr %1048, align 4, !tbaa !14
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1055

1051:                                             ; preds = %1046
  %1052 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1047
  %1053 = load ptr, ptr %1052, align 8, !tbaa !13
  %1054 = icmp eq ptr %1053, null
  br i1 %1054, label %1058, label %1055

1055:                                             ; preds = %1051, %1046
  %1056 = add nsw i64 %1047, -1
  %1057 = icmp sgt i64 %1047, 0
  br i1 %1057, label %1046, label %1063, !llvm.loop !46

1058:                                             ; preds = %1051
  %.lcssa27 = phi i64 [ %1047, %1051 ]
  %1059 = trunc i64 %.lcssa27 to i32
  br label %1060

1060:                                             ; preds = %1058, %1041
  %1061 = phi i32 [ %1042, %1041 ], [ %1059, %1058 ]
  %1062 = icmp sgt i32 %1061, -1
  br i1 %1062, label %1016, label %1063, !llvm.loop !61

1063:                                             ; preds = %1060, %1055, %1035, %1027, %1016, %1013, %1008
  %1064 = phi i32 [ %994, %1013 ], [ %1017, %1055 ], [ %1018, %1035 ], [ %1018, %1027 ], [ %1018, %1016 ], [ %1017, %1060 ], [ %994, %1008 ]
  %1065 = call fastcc i32 @fspan(i32 noundef %1064, i32 noundef %962) #20, !range !16
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1241

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %985
  %1069 = load ptr, ptr %1068, align 8, !tbaa !13
  %1070 = getelementptr inbounds %struct.optstr, ptr %1069, i64 %961
  %1071 = load ptr, ptr %1070, align 8, !tbaa !35
  %1072 = ptrtoint ptr %1071 to i64
  %1073 = trunc i64 %1072 to i32
  %1074 = icmp ult i32 %1073, 128
  br i1 %1074, label %1082, label %1075

1075:                                             ; preds = %1067
  %1076 = load i8, ptr %1071, align 1, !tbaa !17
  %1077 = icmp eq i8 %1076, 92
  br i1 %1077, label %1078, label %1082

1078:                                             ; preds = %1075
  %1079 = getelementptr inbounds i8, ptr %1071, i64 1
  %1080 = load i8, ptr %1079, align 1, !tbaa !17
  %1081 = icmp eq i8 %1080, 82
  br i1 %1081, label %1241, label %1082

1082:                                             ; preds = %1078, %1075, %1067
  %1083 = sext i32 %1064 to i64
  %1084 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1083
  %1085 = load ptr, ptr %1084, align 8, !tbaa !13
  %1086 = icmp eq ptr %1085, null
  br i1 %1086, label %1087, label %1241

1087:                                             ; preds = %1082
  %1088 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1083
  %1089 = load i32, ptr %1088, align 4, !tbaa !14
  %1090 = icmp eq i32 %1089, 0
  br i1 %1090, label %1091, label %1241

1091:                                             ; preds = %1087
  %1092 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %1083
  %1093 = load i32, ptr %1092, align 4, !tbaa !14
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %1094, i64 %969
  %1096 = load i32, ptr %1095, align 4, !tbaa !14
  switch i32 %1096, label %1241 [
    i32 97, label %1097
    i32 110, label %1110
    i32 114, label %1202
    i32 99, label %1202
    i32 108, label %1202
  ]

1097:                                             ; preds = %1091
  %1098 = add i32 %1073, -1
  %1099 = icmp ult i32 %1098, 127
  %1100 = and i1 %973, %1099
  br i1 %1100, label %1101, label %1110

1101:                                             ; preds = %1097
  %1102 = icmp eq i32 %984, 0
  br i1 %1102, label %1103, label %1106

1103:                                             ; preds = %1101
  %1104 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1104, ptr noundef nonnull @.str.2.56, i32 noundef 31, i32 noundef 32) #21
  br label %1106

1106:                                             ; preds = %1103, %1101
  store i32 1, ptr %963, align 4, !tbaa !14
  %1107 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1107, ptr noundef nonnull @.str.3.57, ptr noundef %1071, i32 noundef 32, i32 noundef 32, ptr noundef %1071) #21
  %1109 = load ptr, ptr %1068, align 8, !tbaa !13
  br label %1110

1110:                                             ; preds = %1106, %1097, %1091
  %1111 = phi ptr [ %1069, %1097 ], [ %1109, %1106 ], [ %1069, %1091 ]
  %1112 = phi i32 [ 1, %1097 ], [ 1, %1106 ], [ %983, %1091 ]
  %1113 = phi i32 [ %984, %1097 ], [ 1, %1106 ], [ %984, %1091 ]
  %1114 = getelementptr inbounds %struct.optstr, ptr %1111, i64 %961, i32 1
  %1115 = load ptr, ptr %1114, align 8, !tbaa !37
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1117, label %1120

1117:                                             ; preds = %1110
  %1118 = getelementptr inbounds %struct.optstr, ptr %1111, i64 %961
  %1119 = load ptr, ptr %1118, align 8, !tbaa !35
  br label %1202

1120:                                             ; preds = %1110
  %1121 = or i32 %1113, %975
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1123, label %1127

1123:                                             ; preds = %1120
  %1124 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1124, ptr noundef nonnull @.str.2.56, i32 noundef 31, i32 noundef 32) #21
  %1126 = load ptr, ptr %1068, align 8, !tbaa !13
  br label %1127

1127:                                             ; preds = %1123, %1120
  %1128 = phi ptr [ %1126, %1123 ], [ %1111, %1120 ]
  store i32 1, ptr %963, align 4, !tbaa !14
  %1129 = getelementptr inbounds %struct.optstr, ptr %1128, i64 %961
  %1130 = load ptr, ptr %1129, align 8, !tbaa !35
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1166, label %1132

1132:                                             ; preds = %1127
  %1133 = ptrtoint ptr %1130 to i64
  %1134 = and i64 %1133, 4294967168
  %1135 = icmp eq i64 %1134, 0
  br i1 %1135, label %1149, label %1136

1136:                                             ; preds = %1132
  %1137 = load i8, ptr %1130, align 1, !tbaa !17
  switch i8 %1137, label %1149 [
    i8 0, label %1166
    i8 92, label %1138
  ]

1138:                                             ; preds = %1143, %1136
  %1139 = phi i8 [ %1146, %1143 ], [ %1137, %1136 ]
  %1140 = phi ptr [ %1145, %1143 ], [ @.str.6.51, %1136 ]
  %1141 = phi ptr [ %1144, %1143 ], [ %1130, %1136 ]
  %1142 = icmp eq i8 %1139, 0
  br i1 %1142, label %1166, label %1143

1143:                                             ; preds = %1138
  %1144 = getelementptr inbounds i8, ptr %1141, i64 1
  %1145 = getelementptr inbounds i8, ptr %1140, i64 1
  %1146 = load i8, ptr %1144, align 1, !tbaa !17
  %1147 = load i8, ptr %1145, align 1, !tbaa !17
  %1148 = icmp eq i8 %1146, %1147
  br i1 %1148, label %1138, label %1149, !llvm.loop !38

1149:                                             ; preds = %1143, %1136, %1132
  %1150 = trunc i64 %1133 to i32
  %1151 = add i32 %1150, -1
  %1152 = icmp ult i32 %1151, 127
  %1153 = zext i1 %1152 to i32
  %1154 = icmp eq i32 %975, %1153
  br i1 %1154, label %1155, label %1241

1155:                                             ; preds = %1149
  %1156 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1156, ptr noundef nonnull @.str.30.137, i32 noundef 38) #21
  %1158 = load i32, ptr %1092, align 4, !tbaa !14
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %1159, i64 %961
  %1161 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %1159, i64 %961
  call fastcc void @wide(ptr noundef nonnull %1130, ptr noundef nonnull %1160, ptr noundef nonnull %1161) #21
  %1162 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1163 = call i32 @fputc(i32 10, ptr %1162)
  %1164 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1164, ptr noundef nonnull @.str.6.59, i32 noundef 31, i32 noundef 38, i32 noundef 31, i32 noundef 38) #21
  br label %1166

1166:                                             ; preds = %1155, %1138, %1136, %1127
  br i1 %974, label %1167, label %1241

1167:                                             ; preds = %1166
  %1168 = load ptr, ptr %1068, align 8, !tbaa !13
  %1169 = getelementptr inbounds %struct.optstr, ptr %1168, i64 %961, i32 1
  %1170 = load ptr, ptr %1169, align 8, !tbaa !37
  %1171 = ptrtoint ptr %1170 to i64
  %1172 = and i64 %1171, 4294967168
  %1173 = icmp eq i64 %1172, 0
  br i1 %1173, label %1241, label %1174

1174:                                             ; preds = %1167
  %1175 = load i8, ptr %1170, align 1, !tbaa !17
  switch i8 %1175, label %1187 [
    i8 0, label %1241
    i8 92, label %1176
  ]

1176:                                             ; preds = %1181, %1174
  %1177 = phi i8 [ %1184, %1181 ], [ %1175, %1174 ]
  %1178 = phi ptr [ %1183, %1181 ], [ @.str.6.51, %1174 ]
  %1179 = phi ptr [ %1182, %1181 ], [ %1170, %1174 ]
  %1180 = icmp eq i8 %1177, 0
  br i1 %1180, label %1241, label %1181

1181:                                             ; preds = %1176
  %1182 = getelementptr inbounds i8, ptr %1179, i64 1
  %1183 = getelementptr inbounds i8, ptr %1178, i64 1
  %1184 = load i8, ptr %1182, align 1, !tbaa !17
  %1185 = load i8, ptr %1183, align 1, !tbaa !17
  %1186 = icmp eq i8 %1184, %1185
  br i1 %1186, label %1176, label %1187, !llvm.loop !38

1187:                                             ; preds = %1181, %1174
  %1188 = icmp eq i8 %1175, 92
  %1189 = zext i1 %1188 to i64
  %1190 = getelementptr inbounds i8, ptr %1170, i64 %1189
  %1191 = getelementptr inbounds i8, ptr %1190, i64 1
  %1192 = load i8, ptr %1191, align 1, !tbaa !17
  %1193 = icmp eq i8 %1192, 0
  br i1 %1193, label %1194, label %1196

1194:                                             ; preds = %1187
  %1195 = load i8, ptr %1190, align 1, !tbaa !17
  switch i8 %1195, label %1196 [
    i8 95, label %1241
    i8 61, label %1241
  ]

1196:                                             ; preds = %1194, %1187
  %1197 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1198 = load i32, ptr @F1, align 4, !tbaa !14
  %1199 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1197, ptr noundef nonnull @.str.7.60, i32 noundef 38, i32 noundef %1198, ptr noundef nonnull %1170, i32 noundef %1198) #21
  %1200 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1200, ptr noundef nonnull @.str.6.59, i32 noundef 32, i32 noundef 38, i32 noundef 32, i32 noundef 38) #21
  br label %1241

1202:                                             ; preds = %1117, %1091, %1091, %1091
  %1203 = phi ptr [ %1119, %1117 ], [ %1071, %1091 ], [ %1071, %1091 ], [ %1071, %1091 ]
  %1204 = phi i32 [ %1112, %1117 ], [ %983, %1091 ], [ %983, %1091 ], [ %983, %1091 ]
  %1205 = phi i32 [ %1113, %1117 ], [ %984, %1091 ], [ %984, %1091 ], [ %984, %1091 ]
  %1206 = icmp eq ptr %1203, null
  br i1 %1206, label %1241, label %1207

1207:                                             ; preds = %1202
  %1208 = ptrtoint ptr %1203 to i64
  %1209 = and i64 %1208, 4294967168
  %1210 = icmp eq i64 %1209, 0
  br i1 %1210, label %1224, label %1211

1211:                                             ; preds = %1207
  %1212 = load i8, ptr %1203, align 1, !tbaa !17
  switch i8 %1212, label %1224 [
    i8 0, label %1241
    i8 92, label %1213
  ]

1213:                                             ; preds = %1218, %1211
  %1214 = phi i8 [ %1221, %1218 ], [ %1212, %1211 ]
  %1215 = phi ptr [ %1220, %1218 ], [ @.str.6.51, %1211 ]
  %1216 = phi ptr [ %1219, %1218 ], [ %1203, %1211 ]
  %1217 = icmp eq i8 %1214, 0
  br i1 %1217, label %1241, label %1218

1218:                                             ; preds = %1213
  %1219 = getelementptr inbounds i8, ptr %1216, i64 1
  %1220 = getelementptr inbounds i8, ptr %1215, i64 1
  %1221 = load i8, ptr %1219, align 1, !tbaa !17
  %1222 = load i8, ptr %1220, align 1, !tbaa !17
  %1223 = icmp eq i8 %1221, %1222
  br i1 %1223, label %1213, label %1224, !llvm.loop !38

1224:                                             ; preds = %1218, %1211, %1207
  %1225 = trunc i64 %1208 to i32
  %1226 = add i32 %1225, -1
  %1227 = icmp ult i32 %1226, 127
  %1228 = zext i1 %1227 to i32
  %1229 = icmp eq i32 %975, %1228
  br i1 %1229, label %1230, label %1241

1230:                                             ; preds = %1224
  %1231 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1232 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1231, ptr noundef nonnull @.str.30.137, i32 noundef 38) #21
  %1233 = load i32, ptr %1092, align 4, !tbaa !14
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %1234, i64 %961
  %1236 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %1234, i64 %961
  call fastcc void @wide(ptr noundef nonnull %1203, ptr noundef nonnull %1235, ptr noundef nonnull %1236) #21
  %1237 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1238 = call i32 @fputc(i32 10, ptr %1237)
  %1239 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1239, ptr noundef nonnull @.str.6.59, i32 noundef %966, i32 noundef 38, i32 noundef %966, i32 noundef 38) #21
  br label %1241

1241:                                             ; preds = %1230, %1224, %1213, %1211, %1202, %1196, %1194, %1194, %1176, %1174, %1167, %1166, %1149, %1091, %1087, %1082, %1078, %1063, %989, %982
  %1242 = phi i32 [ %983, %1091 ], [ %1204, %1230 ], [ %1204, %1211 ], [ %1204, %1224 ], [ %1112, %1166 ], [ %1112, %1174 ], [ %1112, %1196 ], [ %1112, %1149 ], [ %983, %1078 ], [ %983, %1063 ], [ %983, %982 ], [ %983, %989 ], [ %983, %1082 ], [ %983, %1087 ], [ %1112, %1167 ], [ %1112, %1194 ], [ %1204, %1202 ], [ %1112, %1194 ], [ %1204, %1213 ], [ %1112, %1176 ]
  %1243 = phi i32 [ %984, %1091 ], [ %1205, %1230 ], [ %1205, %1211 ], [ %1205, %1224 ], [ 1, %1166 ], [ 1, %1174 ], [ 1, %1196 ], [ 1, %1149 ], [ %984, %1078 ], [ %984, %1063 ], [ %984, %982 ], [ %984, %989 ], [ %984, %1082 ], [ %984, %1087 ], [ 1, %1167 ], [ 1, %1194 ], [ %1205, %1202 ], [ 1, %1194 ], [ %1205, %1213 ], [ 1, %1176 ]
  %1244 = add nuw nsw i64 %985, 1
  %1245 = load i32, ptr @nlin, align 4, !tbaa !14
  %1246 = sext i32 %1245 to i64
  %1247 = icmp slt i64 %1244, %1246
  br i1 %1247, label %982, label %1248, !llvm.loop !62

1248:                                             ; preds = %1241, %979
  %1249 = phi i32 [ %971, %979 ], [ %1242, %1241 ]
  %1250 = phi i32 [ %972, %979 ], [ %1243, %1241 ]
  br i1 %974, label %970, label %1251, !llvm.loop !63

1251:                                             ; preds = %1248
  %.lcssa29 = phi i32 [ %1249, %1248 ]
  %.lcssa28 = phi i32 [ %1250, %1248 ]
  %1252 = icmp eq i32 %.lcssa29, 0
  br i1 %1252, label %1256, label %1253

1253:                                             ; preds = %1251
  %1254 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1255 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1254, ptr noundef nonnull @.str.8.61, i32 noundef 32, i32 noundef %966, i32 noundef %966, i32 noundef 32) #21
  br label %1256

1256:                                             ; preds = %1253, %1251
  %1257 = icmp eq i32 %.lcssa28, 0
  br i1 %1257, label %1268, label %1258

1258:                                             ; preds = %1256
  %1259 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1260 = add i32 %962, 60
  %1261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1259, ptr noundef nonnull @.str.9.62, i32 noundef %1260, i32 noundef 31) #21
  %1262 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1263 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1262, ptr noundef nonnull @.str.10.63, i32 noundef 38, i32 noundef %1260, i32 noundef 32) #21
  %1264 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1265 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1264, ptr noundef nonnull @.str.42, i32 noundef 38, i32 noundef %966, i32 noundef %966, i32 noundef 38) #21
  %1266 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1267 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1266, ptr noundef nonnull @.str.12.65, i32 noundef 38, i32 noundef %966, i32 noundef %1260, i32 noundef %966, i32 noundef 38) #21
  br label %1268

1268:                                             ; preds = %1258, %1256
  %1269 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %961
  %1270 = load i8, ptr %1269, align 2, !tbaa !17
  %1271 = icmp eq i8 %1270, 0
  br i1 %1271, label %1277, label %1272

1272:                                             ; preds = %1268
  %1273 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1273, ptr noundef nonnull @.str.13.66, i32 noundef 38, ptr noundef nonnull %1269) #21
  %1275 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1276 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1275, ptr noundef nonnull @.str.6.59, i32 noundef %966, i32 noundef 38, i32 noundef %966, i32 noundef 38) #21
  br label %1277

1277:                                             ; preds = %1272, %1268
  %1278 = load i32, ptr @nlin, align 4, !tbaa !14
  %1279 = icmp sgt i32 %1278, 0
  br i1 %1279, label %1280, label %1386

1280:                                             ; preds = %1381, %1277
  %1281 = phi i64 [ %1382, %1381 ], [ 0, %1277 ]
  %1282 = trunc i64 %1281 to i32
  %1283 = call fastcc i32 @lspan(i32 noundef %1282, i32 noundef %962) #20
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1381, label %1285

1285:                                             ; preds = %1280
  %1286 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %1281
  %1287 = load ptr, ptr %1286, align 8, !tbaa !13
  %1288 = sub nsw i32 %962, %1283
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds %struct.optstr, ptr %1287, i64 %1289
  %1291 = load ptr, ptr %1290, align 8, !tbaa !35
  %1292 = ptrtoint ptr %1291 to i64
  %1293 = and i64 %1292, 4294967168
  %1294 = icmp eq i64 %1293, 0
  br i1 %1294, label %1381, label %1295

1295:                                             ; preds = %1285
  %1296 = load i8, ptr %1291, align 1, !tbaa !17
  %1297 = icmp eq i8 %1296, 0
  br i1 %1297, label %1381, label %1298

1298:                                             ; preds = %1295
  %1299 = icmp eq i8 %1296, 92
  %1300 = zext i1 %1299 to i64
  %1301 = getelementptr inbounds i8, ptr %1291, i64 %1300
  %1302 = getelementptr inbounds i8, ptr %1301, i64 1
  %1303 = load i8, ptr %1302, align 1, !tbaa !17
  %1304 = icmp eq i8 %1303, 0
  br i1 %1304, label %1305, label %1307

1305:                                             ; preds = %1298
  %1306 = load i8, ptr %1301, align 1, !tbaa !17
  switch i8 %1306, label %1307 [
    i8 95, label %1381
    i8 61, label %1381
  ]

1307:                                             ; preds = %1305, %1298
  br i1 %1299, label %1308, label %1319

1308:                                             ; preds = %1313, %1307
  %1309 = phi i8 [ %1316, %1313 ], [ 92, %1307 ]
  %1310 = phi ptr [ %1315, %1313 ], [ @.str.6.51, %1307 ]
  %1311 = phi ptr [ %1314, %1313 ], [ %1291, %1307 ]
  %1312 = icmp eq i8 %1309, 0
  br i1 %1312, label %1381, label %1313

1313:                                             ; preds = %1308
  %1314 = getelementptr inbounds i8, ptr %1311, i64 1
  %1315 = getelementptr inbounds i8, ptr %1310, i64 1
  %1316 = load i8, ptr %1314, align 1, !tbaa !17
  %1317 = load i8, ptr %1315, align 1, !tbaa !17
  %1318 = icmp eq i8 %1316, %1317
  br i1 %1318, label %1308, label %1319, !llvm.loop !38

1319:                                             ; preds = %1313, %1307
  %1320 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1320, ptr noundef nonnull @.str.30.137, i32 noundef 38) #21
  %1322 = load ptr, ptr %1286, align 8, !tbaa !13
  %1323 = getelementptr inbounds %struct.optstr, ptr %1322, i64 %1289
  %1324 = load ptr, ptr %1323, align 8, !tbaa !35
  %1325 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %1281
  %1326 = load i32, ptr %1325, align 4, !tbaa !14
  %1327 = sext i32 %1326 to i64
  %1328 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %1327, i64 %1289
  %1329 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %1327, i64 %1289
  call fastcc void @wide(ptr noundef %1324, ptr noundef nonnull %1328, ptr noundef nonnull %1329) #21
  %1330 = icmp sgt i32 %1283, -1
  br i1 %1330, label %1331, label %1352

1331:                                             ; preds = %1319
  %1332 = zext i32 %1283 to i64
  br label %1333

1333:                                             ; preds = %1349, %1331
  %1334 = phi i64 [ %1332, %1331 ], [ %1350, %1349 ]
  %1335 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1336 = sub nsw i64 %965, %1334
  %1337 = trunc i64 %1336 to i32
  %1338 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1335, ptr noundef nonnull @.str.14.67, i32 noundef %1337) #21
  %1339 = load i32, ptr @expflg, align 4, !tbaa !14
  %1340 = icmp eq i32 %1339, 0
  %1341 = icmp ne i64 %1334, 0
  %1342 = and i1 %1341, %1340
  br i1 %1342, label %1343, label %1349

1343:                                             ; preds = %1333
  %1344 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1345 = sub nsw i64 %961, %1334
  %1346 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %1345
  %1347 = load i32, ptr %1346, align 4, !tbaa !14
  %1348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1344, ptr noundef nonnull @.str.15.68, i32 noundef %1347) #21
  br label %1349

1349:                                             ; preds = %1343, %1333
  %1350 = add nsw i64 %1334, -1
  %1351 = icmp sgt i64 %1334, 0
  br i1 %1351, label %1333, label %1352, !llvm.loop !64

1352:                                             ; preds = %1349, %1319
  %1353 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1354 = call i32 @fputc(i32 10, ptr %1353)
  %1355 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1356 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1355, ptr noundef nonnull @.str.16.69, i32 noundef 38, i32 noundef 38, i32 noundef 38, i32 noundef %1283) #21
  %1357 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1358 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1357, ptr noundef nonnull @.str.17.70, i32 noundef 38, i32 noundef 38) #21
  %1359 = icmp slt i32 %1283, 1
  br i1 %1359, label %1381, label %1360

1360:                                             ; preds = %1352
  %1361 = add nuw i32 %1283, 1
  %1362 = zext i32 %1361 to i64
  br label %1363

1363:                                             ; preds = %1375, %1360
  %1364 = phi i64 [ 1, %1360 ], [ %1379, %1375 ]
  %1365 = trunc i64 %1364 to i32
  %1366 = add nsw i32 %1288, %1365
  %1367 = sext i32 %1366 to i64
  %1368 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %1367
  %1369 = load i32, ptr %1368, align 4, !tbaa !14
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1375, label %1371

1371:                                             ; preds = %1363
  %1372 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1373 = add nsw i32 %1366, 60
  %1374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1372, ptr noundef nonnull @.str.18.71, i32 noundef %1373, i32 noundef 38) #21
  br label %1375

1375:                                             ; preds = %1371, %1363
  %1376 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1377 = add nsw i32 %1366, 80
  %1378 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1376, ptr noundef nonnull @.str.19.72, i32 noundef %1377, i32 noundef 38) #21
  %1379 = add nuw nsw i64 %1364, 1
  %1380 = icmp eq i64 %1379, %1362
  br i1 %1380, label %1381, label %1363, !llvm.loop !65

1381:                                             ; preds = %1375, %1352, %1308, %1305, %1305, %1295, %1285, %1280
  %1382 = add nuw nsw i64 %1281, 1
  %1383 = load i32, ptr @nlin, align 4, !tbaa !14
  %1384 = sext i32 %1383 to i64
  %1385 = icmp slt i64 %1382, %1384
  br i1 %1385, label %1280, label %1386, !llvm.loop !66

1386:                                             ; preds = %1381, %1277
  %1387 = add nuw nsw i64 %961, 1
  %1388 = load i32, ptr @ncol, align 4, !tbaa !14
  %1389 = sext i32 %1388 to i64
  %1390 = icmp slt i64 %1387, %1389
  br i1 %1390, label %960, label %1391, !llvm.loop !67

1391:                                             ; preds = %1386, %959
  %1392 = load i1, ptr @textflg, align 4
  br i1 %1392, label %1393, label %1394

1393:                                             ; preds = %1391
  call fastcc void @untext() #20
  br label %1394

1394:                                             ; preds = %1393, %1391
  %1395 = load i1, ptr @evenflg, align 4
  br i1 %1395, label %1398, label %1396

1396:                                             ; preds = %1394
  %1397 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1450

1398:                                             ; preds = %1394
  %1399 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1400 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1399, ptr noundef nonnull @.str.54, i32 noundef 38) #21
  %1401 = load i32, ptr @ncol, align 4, !tbaa !14
  %1402 = icmp sgt i32 %1401, 0
  br i1 %1402, label %1405, label %1463

1403:                                             ; preds = %1417
  %.lcssa30 = phi i32 [ %1418, %1417 ]
  %1404 = icmp sgt i32 %.lcssa30, 0
  br i1 %1404, label %1422, label %1463

1405:                                             ; preds = %1417, %1398
  %1406 = phi i32 [ %1418, %1417 ], [ %1401, %1398 ]
  %1407 = phi i64 [ %1419, %1417 ], [ 0, %1398 ]
  %1408 = getelementptr inbounds [0 x i32], ptr @evenup, i64 0, i64 %1407
  %1409 = load i32, ptr %1408, align 4, !tbaa !14
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1417, label %1411

1411:                                             ; preds = %1405
  %1412 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1413 = trunc i64 %1407 to i32
  %1414 = add i32 %1413, 80
  %1415 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1412, ptr noundef nonnull @.str.42, i32 noundef %1414, i32 noundef 38, i32 noundef 38, i32 noundef %1414) #21
  %1416 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1417

1417:                                             ; preds = %1411, %1405
  %1418 = phi i32 [ %1406, %1405 ], [ %1416, %1411 ]
  %1419 = add nuw nsw i64 %1407, 1
  %1420 = sext i32 %1418 to i64
  %1421 = icmp slt i64 %1419, %1420
  br i1 %1421, label %1405, label %1403, !llvm.loop !68

1422:                                             ; preds = %1445, %1403
  %1423 = phi i32 [ %1446, %1445 ], [ %.lcssa30, %1403 ]
  %1424 = phi i64 [ %1447, %1445 ], [ 0, %1403 ]
  %1425 = trunc i64 %1424 to i32
  %1426 = getelementptr inbounds [0 x i32], ptr @evenup, i64 0, i64 %1424
  %1427 = load i32, ptr %1426, align 4, !tbaa !14
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1445, label %1429

1429:                                             ; preds = %1422
  %1430 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %1424
  %1431 = load i32, ptr %1430, align 4, !tbaa !14
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1433, label %1435

1433:                                             ; preds = %1429
  %1434 = add i32 %1425, 80
  br label %1440

1435:                                             ; preds = %1429
  %1436 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1437 = add i32 %1425, 80
  %1438 = add i32 %1425, 60
  %1439 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1436, ptr noundef nonnull @.str.20.73, i32 noundef %1438, i32 noundef %1438, i32 noundef %1437, i32 noundef 38) #21
  br label %1440

1440:                                             ; preds = %1435, %1433
  %1441 = phi i32 [ %1434, %1433 ], [ %1437, %1435 ]
  %1442 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1443 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1442, ptr noundef nonnull @.str.9.62, i32 noundef %1441, i32 noundef 38) #21
  %1444 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1445

1445:                                             ; preds = %1440, %1422
  %1446 = phi i32 [ %1423, %1422 ], [ %1444, %1440 ]
  %1447 = add nuw nsw i64 %1424, 1
  %1448 = sext i32 %1446 to i64
  %1449 = icmp slt i64 %1447, %1448
  br i1 %1449, label %1422, label %1450, !llvm.loop !69

1450:                                             ; preds = %1445, %1396
  %1451 = phi i32 [ %1397, %1396 ], [ %1446, %1445 ]
  %1452 = icmp sgt i32 %1451, 0
  br i1 %1452, label %1453, label %1463

1453:                                             ; preds = %1450
  %1454 = zext i32 %1451 to i64
  br label %1455

1455:                                             ; preds = %1455, %1453
  %1456 = phi i64 [ 0, %1453 ], [ %1461, %1455 ]
  %1457 = phi i32 [ 0, %1453 ], [ %1460, %1455 ]
  %1458 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %1456
  %1459 = load i32, ptr %1458, align 4, !tbaa !14
  %1460 = add nsw i32 %1459, %1457
  %1461 = add nuw nsw i64 %1456, 1
  %1462 = icmp eq i64 %1461, %1454
  br i1 %1462, label %1463, label %1455, !llvm.loop !70

1463:                                             ; preds = %1455, %1450, %1403, %1398
  %1464 = phi i32 [ 0, %1450 ], [ 0, %1403 ], [ 0, %1398 ], [ %1460, %1455 ]
  %1465 = load i32, ptr @expflg, align 4, !tbaa !14
  %1466 = icmp eq i32 %1465, 0
  %1467 = load ptr, ptr @tabout, align 8, !tbaa !13
  br i1 %1466, label %1508, label %1468

1468:                                             ; preds = %1463
  %1469 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1467, ptr noundef nonnull @.str.21.74, i32 noundef 38) #21
  %1470 = load i32, ptr @ncol, align 4, !tbaa !14
  %1471 = icmp sgt i32 %1470, 0
  br i1 %1471, label %1472, label %1480

1472:                                             ; preds = %1472, %1468
  %1473 = phi i32 [ %1477, %1472 ], [ 0, %1468 ]
  %1474 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1475 = add nuw nsw i32 %1473, 80
  %1476 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1474, ptr noundef nonnull @.str.22.75, i32 noundef %1475) #21
  %1477 = add nuw nsw i32 %1473, 1
  %1478 = load i32, ptr @ncol, align 4, !tbaa !14
  %1479 = icmp slt i32 %1477, %1478
  br i1 %1479, label %1472, label %1480, !llvm.loop !71

1480:                                             ; preds = %1472, %1468
  %1481 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1482 = call i32 @fputc(i32 10, ptr %1481)
  %1483 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1484 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1483, ptr noundef nonnull @.str.23.76, i32 noundef 38, i32 noundef 38) #21
  %1485 = load i32, ptr @boxflg, align 4, !tbaa !14
  %1486 = icmp ne i32 %1485, 0
  %1487 = load i32, ptr @dboxflg, align 4
  %1488 = icmp ne i32 %1487, 0
  %1489 = select i1 %1486, i1 true, i1 %1488
  %1490 = load i32, ptr @allflg, align 4
  %1491 = icmp ne i32 %1490, 0
  %1492 = select i1 %1489, i1 true, i1 %1491
  br i1 %1492, label %1493, label %1495

1493:                                             ; preds = %1480
  %1494 = add nsw i32 %1464, 1
  br label %1502

1495:                                             ; preds = %1480
  %1496 = load i32, ptr @ncol, align 4, !tbaa !14
  %1497 = add nsw i32 %1496, -1
  %1498 = sext i32 %1497 to i64
  %1499 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %1498
  %1500 = load i32, ptr %1499, align 4, !tbaa !14
  %1501 = sub nsw i32 %1464, %1500
  br label %1502

1502:                                             ; preds = %1495, %1493
  %1503 = phi i32 [ %1494, %1493 ], [ %1501, %1495 ]
  %1504 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1505 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1504, ptr noundef nonnull @.str.24, i32 noundef 38, i32 noundef 38, i32 noundef %1503) #21
  %1506 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1507 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1506, ptr noundef nonnull @.str.17.70, i32 noundef 38, i32 noundef 38) #21
  br label %1510

1508:                                             ; preds = %1463
  %1509 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1467, ptr noundef nonnull @.str.25.77, i32 noundef 38) #21
  br label %1510

1510:                                             ; preds = %1508, %1502
  %1511 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1512 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1511, ptr noundef nonnull @.str.54, i32 noundef 79) #21
  %1513 = load i32, ptr @ncol, align 4, !tbaa !14
  %1514 = icmp sgt i32 %1513, 0
  br i1 %1514, label %1515, label %1552

1515:                                             ; preds = %1510
  %1516 = load i32, ptr @boxflg, align 4, !tbaa !14
  %1517 = icmp ne i32 %1516, 0
  %1518 = load i32, ptr @allflg, align 4
  %1519 = icmp ne i32 %1518, 0
  %1520 = select i1 %1517, i1 true, i1 %1519
  %1521 = load i32, ptr @dboxflg, align 4
  %1522 = icmp ne i32 %1521, 0
  %1523 = select i1 %1520, i1 true, i1 %1522
  %1524 = load i1, ptr @left1flg, align 4
  %1525 = select i1 %1523, i1 true, i1 %1524
  %1526 = zext i1 %1525 to i32
  br label %1527

1527:                                             ; preds = %1545, %1515
  %1528 = phi i64 [ 0, %1515 ], [ %1548, %1545 ]
  %1529 = phi i32 [ %1526, %1515 ], [ %1547, %1545 ]
  %1530 = trunc i64 %1528 to i32
  %1531 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1532 = add nuw nsw i32 %1530, 40
  %1533 = add nuw nsw i32 %1530, 80
  %1534 = add i32 %1530, 79
  %1535 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1531, ptr noundef nonnull @.str.26, i32 noundef %1532, i32 noundef %1534, i32 noundef %1529, i32 noundef 38) #21
  %1536 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1537 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1536, ptr noundef nonnull @.str.19.72, i32 noundef %1533, i32 noundef %1532) #21
  %1538 = getelementptr inbounds [20 x i32], ptr %4, i64 0, i64 %1528
  %1539 = load i32, ptr %1538, align 4, !tbaa !14
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1545, label %1541

1541:                                             ; preds = %1527
  %1542 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1543 = add nuw nsw i32 %1530, 60
  %1544 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1542, ptr noundef nonnull @.str.19.72, i32 noundef %1543, i32 noundef %1532) #21
  br label %1545

1545:                                             ; preds = %1541, %1527
  %1546 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %1528
  %1547 = load i32, ptr %1546, align 4, !tbaa !14
  %1548 = add nuw nsw i64 %1528, 1
  %1549 = load i32, ptr @ncol, align 4, !tbaa !14
  %1550 = sext i32 %1549 to i64
  %1551 = icmp slt i64 %1548, %1550
  br i1 %1551, label %1527, label %1552, !llvm.loop !72

1552:                                             ; preds = %1545, %1510
  %1553 = phi i32 [ %1513, %1510 ], [ %1549, %1545 ]
  %1554 = load i32, ptr @rightl, align 4, !tbaa !14
  %1555 = icmp eq i32 %1554, 0
  br i1 %1555, label %1563, label %1556

1556:                                             ; preds = %1552
  %1557 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1558 = add nsw i32 %1553, 79
  %1559 = add nsw i32 %1553, 39
  %1560 = add nsw i32 %1553, 78
  %1561 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1557, ptr noundef nonnull @.str.27, i32 noundef %1558, i32 noundef %1559, i32 noundef %1560) #21
  %1562 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1563

1563:                                             ; preds = %1556, %1552
  %1564 = phi i32 [ %1562, %1556 ], [ %1553, %1552 ]
  %1565 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1566 = add nsw i32 %1564, 79
  %1567 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1565, ptr noundef nonnull @.str.28, i32 noundef %1566) #21
  %1568 = load i32, ptr @boxflg, align 4, !tbaa !14
  %1569 = icmp ne i32 %1568, 0
  %1570 = load i32, ptr @allflg, align 4
  %1571 = icmp ne i32 %1570, 0
  %1572 = select i1 %1569, i1 true, i1 %1571
  %1573 = load i32, ptr @dboxflg, align 4
  %1574 = icmp ne i32 %1573, 0
  %1575 = select i1 %1572, i1 true, i1 %1574
  br i1 %1575, label %1576, label %1584

1576:                                             ; preds = %1563
  %1577 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1578 = load i32, ptr @ncol, align 4, !tbaa !14
  %1579 = add nsw i32 %1578, -1
  %1580 = sext i32 %1579 to i64
  %1581 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %1580
  %1582 = load i32, ptr %1581, align 4, !tbaa !14
  %1583 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1577, ptr noundef nonnull @.str.29, i32 noundef %1582, i32 noundef 38) #21
  br label %1584

1584:                                             ; preds = %1576, %1563
  %1585 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1586 = load i32, ptr @iline, align 4, !tbaa !14
  %1587 = add nsw i32 %1586, -1
  %1588 = load ptr, ptr @ifile, align 8, !tbaa !13
  %1589 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1585, ptr noundef nonnull @.str.30, i32 noundef %1587, ptr noundef %1588) #21
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #23
  %1590 = load i32, ptr @boxflg, align 4, !tbaa !14
  %1591 = icmp ne i32 %1590, 0
  %1592 = load i32, ptr @allflg, align 4
  %1593 = icmp ne i32 %1592, 0
  %1594 = select i1 %1591, i1 true, i1 %1593
  %1595 = load i32, ptr @dboxflg, align 4
  %1596 = icmp ne i32 %1595, 0
  %1597 = select i1 %1594, i1 true, i1 %1596
  br i1 %1597, label %1598, label %1629

1598:                                             ; preds = %1584
  %1599 = load i32, ptr @nlin, align 4, !tbaa !14
  %1600 = icmp sgt i32 %1599, 0
  br i1 %1600, label %1601, label %1623

1601:                                             ; preds = %1598
  %1602 = zext i32 %1599 to i64
  br label %1603

1603:                                             ; preds = %1618, %1601
  %1604 = phi i64 [ 0, %1601 ], [ %1621, %1618 ]
  %1605 = phi i32 [ 0, %1601 ], [ %1620, %1618 ]
  %1606 = phi i32 [ 0, %1601 ], [ %1619, %1618 ]
  %1607 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1604
  %1608 = load i32, ptr %1607, align 4, !tbaa !14
  %1609 = icmp eq i32 %1608, 0
  br i1 %1609, label %1612, label %1610

1610:                                             ; preds = %1603
  %1611 = add nsw i32 %1605, 1
  br label %1618

1612:                                             ; preds = %1603
  %1613 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1604
  %1614 = load ptr, ptr %1613, align 8, !tbaa !13
  %1615 = icmp eq ptr %1614, null
  %1616 = zext i1 %1615 to i32
  %1617 = add nsw i32 %1606, %1616
  br label %1618

1618:                                             ; preds = %1612, %1610
  %1619 = phi i32 [ %1606, %1610 ], [ %1617, %1612 ]
  %1620 = phi i32 [ %1611, %1610 ], [ %1605, %1612 ]
  %1621 = add nuw nsw i64 %1604, 1
  %1622 = icmp eq i64 %1621, %1602
  br i1 %1622, label %1623, label %1603, !llvm.loop !73

1623:                                             ; preds = %1618, %1598
  %1624 = phi i32 [ 0, %1598 ], [ %1619, %1618 ]
  %1625 = phi i32 [ 0, %1598 ], [ %1620, %1618 ]
  %1626 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1627 = shl nsw i32 %1625, 1
  %1628 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1626, ptr noundef nonnull @.str.11.108, i32 noundef %1624, i32 noundef %1627) #21
  br label %1629

1629:                                             ; preds = %1623, %1584
  %1630 = load i32, ptr @ctrflg, align 4, !tbaa !14
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1637, label %1632

1632:                                             ; preds = %1629
  %1633 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1634 = call i64 @fwrite(ptr nonnull @.str.80, i64 13, i64 1, ptr %1633)
  %1635 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1636 = call i64 @fwrite(ptr nonnull @.str.1.81, i64 31, i64 1, ptr %1635)
  br label %1637

1637:                                             ; preds = %1632, %1629
  %1638 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1639 = load i32, ptr @F1, align 4, !tbaa !14
  %1640 = load i32, ptr @F2, align 4, !tbaa !14
  %1641 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1638, ptr noundef nonnull @.str.2.82, i32 noundef %1639, i32 noundef %1640) #21
  %1642 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1643 = call i64 @fwrite(ptr nonnull @.str.3.83, i64 11, i64 1, ptr %1642)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  br label %1644

1644:                                             ; preds = %1653, %1637
  %1645 = phi i64 [ 0, %1637 ], [ %1654, %1653 ]
  %1646 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %1645
  %1647 = load i32, ptr %1646, align 4, !tbaa !14
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1653, label %1649

1649:                                             ; preds = %1644
  %1650 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1651 = add nsw i32 %1647, 96
  %1652 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1650, ptr noundef nonnull @.str.12.88, i32 noundef %1651) #21
  br label %1653

1653:                                             ; preds = %1649, %1644
  %1654 = add nuw nsw i64 %1645, 1
  %1655 = icmp eq i64 %1654, 100
  br i1 %1655, label %1656, label %1644, !llvm.loop !74

1656:                                             ; preds = %1653
  %1657 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1658 = call i64 @fwrite(ptr nonnull @.str.13.89, i64 11, i64 1, ptr %1657)
  %1659 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1660 = call i64 @fwrite(ptr nonnull @.str.2.226, i64 4, i64 1, ptr %1659)
  %1661 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1662 = call i64 @fwrite(ptr nonnull @.str.15.91, i64 7, i64 1, ptr %1661)
  %1663 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1664 = call i64 @fwrite(ptr nonnull @.str.15.211, i64 10, i64 1, ptr %1663)
  %1665 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1666 = call i64 @fwrite(ptr nonnull @.str.16.212, i64 32, i64 1, ptr %1665)
  %1667 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1668 = call i64 @fwrite(ptr nonnull @.str.27.134, i64 7, i64 1, ptr %1667)
  %1669 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1670 = call i64 @fwrite(ptr nonnull @.str.19.95, i64 11, i64 1, ptr %1669)
  %1671 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1672 = call i64 @fwrite(ptr nonnull @.str.20.96, i64 6, i64 1, ptr %1671)
  br label %1673

1673:                                             ; preds = %1682, %1656
  %1674 = phi i64 [ 0, %1656 ], [ %1683, %1682 ]
  %1675 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %1674
  %1676 = load i32, ptr %1675, align 4, !tbaa !14
  %1677 = icmp eq i32 %1676, 0
  br i1 %1677, label %1682, label %1678

1678:                                             ; preds = %1673
  %1679 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1680 = add nsw i32 %1676, 96
  %1681 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1679, ptr noundef nonnull @.str.21.97, i32 noundef %1680) #21
  br label %1682

1682:                                             ; preds = %1678, %1673
  %1683 = add nuw nsw i64 %1674, 1
  %1684 = icmp eq i64 %1683, 100
  br i1 %1684, label %1685, label %1673, !llvm.loop !75

1685:                                             ; preds = %1682
  %1686 = load i32, ptr @boxflg, align 4, !tbaa !14
  %1687 = icmp ne i32 %1686, 0
  %1688 = load i32, ptr @allflg, align 4
  %1689 = icmp ne i32 %1688, 0
  %1690 = select i1 %1687, i1 true, i1 %1689
  %1691 = load i32, ptr @dboxflg, align 4
  %1692 = icmp ne i32 %1691, 0
  %1693 = select i1 %1690, i1 true, i1 %1692
  br i1 %1693, label %1694, label %1716

1694:                                             ; preds = %1685
  %1695 = load i32, ptr @nlin, align 4, !tbaa !14
  %1696 = add nsw i32 %1695, -1
  %1697 = sext i32 %1696 to i64
  %1698 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1697
  %1699 = load i32, ptr %1698, align 4, !tbaa !14
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1701, label %1716

1701:                                             ; preds = %1694
  %1702 = load i1, ptr @pr1403, align 4
  br i1 %1702, label %1706, label %1703

1703:                                             ; preds = %1701
  %1704 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1705 = call i64 @fwrite(ptr nonnull @.str.22.98, i64 28, i64 1, ptr %1704)
  br label %1706

1706:                                             ; preds = %1703, %1701
  %1707 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1708 = call i64 @fwrite(ptr nonnull @.str.23.99, i64 10, i64 1, ptr %1707)
  %1709 = load i32, ptr @nlin, align 4, !tbaa !14
  %1710 = load i32, ptr @ncol, align 4, !tbaa !14
  %1711 = load i32, ptr @dboxflg, align 4, !tbaa !14
  %1712 = icmp eq i32 %1711, 0
  %1713 = select i1 %1712, i32 45, i32 61
  call fastcc void @drawline(i32 noundef %1709, i32 noundef 0, i32 noundef %1710, i32 noundef %1713, i32 noundef 1, i32 noundef 0) #20
  %1714 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1715 = call i64 @fwrite(ptr nonnull @.str.24.100, i64 15, i64 1, ptr %1714)
  br label %1716

1716:                                             ; preds = %1706, %1694, %1685
  %1717 = load i32, ptr @ncol, align 4, !tbaa !14
  %1718 = icmp sgt i32 %1717, 0
  br i1 %1718, label %1719, label %1751

1719:                                             ; preds = %1716
  %1720 = load i32, ptr @nlin, align 4, !tbaa !14
  br label %1721

1721:                                             ; preds = %1746, %1719
  %1722 = phi i32 [ %1747, %1746 ], [ %1717, %1719 ]
  %1723 = phi i32 [ %1748, %1746 ], [ %1720, %1719 ]
  %1724 = phi i32 [ %1749, %1746 ], [ 0, %1719 ]
  %1725 = add nsw i32 %1723, -1
  %1726 = call fastcc i32 @left(i32 noundef %1725, i32 noundef %1724, ptr noundef nonnull %3) #20
  %1727 = icmp sgt i32 %1726, -1
  br i1 %1727, label %1728, label %1746

1728:                                             ; preds = %1721
  %1729 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1730 = zext i32 %1726 to i64
  %1731 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %1730
  %1732 = load i32, ptr %1731, align 4, !tbaa !14
  %1733 = add nsw i32 %1732, 96
  %1734 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1729, ptr noundef nonnull @.str.25.101, i32 noundef %1733) #21
  %1735 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1736 = load i32, ptr %1731, align 4, !tbaa !14
  %1737 = add nsw i32 %1736, 96
  %1738 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1735, ptr noundef nonnull @.str.26.102, i32 noundef %1737) #21
  call fastcc void @tohcol(i32 noundef %1724) #20
  %1739 = load i32, ptr @nlin, align 4, !tbaa !14
  %1740 = add nsw i32 %1739, -1
  %1741 = load i32, ptr %3, align 4, !tbaa !14
  call fastcc void @drawvert(i32 noundef %1726, i32 noundef %1740, i32 noundef %1724, i32 noundef %1741) #20
  %1742 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1743 = call i64 @fwrite(ptr nonnull @.str.27.103, i64 12, i64 1, ptr %1742)
  %1744 = load i32, ptr @nlin, align 4, !tbaa !14
  %1745 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1746

1746:                                             ; preds = %1728, %1721
  %1747 = phi i32 [ %1745, %1728 ], [ %1722, %1721 ]
  %1748 = phi i32 [ %1744, %1728 ], [ %1723, %1721 ]
  %1749 = add nuw nsw i32 %1724, 1
  %1750 = icmp slt i32 %1749, %1747
  br i1 %1750, label %1721, label %1751, !llvm.loop !76

1751:                                             ; preds = %1746, %1716
  %1752 = load i32, ptr @boxflg, align 4, !tbaa !14
  %1753 = icmp ne i32 %1752, 0
  %1754 = load i32, ptr @allflg, align 4
  %1755 = icmp ne i32 %1754, 0
  %1756 = select i1 %1753, i1 true, i1 %1755
  %1757 = load i32, ptr @dboxflg, align 4
  %1758 = icmp ne i32 %1757, 0
  %1759 = select i1 %1756, i1 true, i1 %1758
  br i1 %1759, label %1760, label %1773

1760:                                             ; preds = %1751
  %1761 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1762 = call i64 @fwrite(ptr nonnull @.str.28.104, i64 20, i64 1, ptr %1761)
  %1763 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1764 = call i64 @fwrite(ptr nonnull @.str.29.105, i64 24, i64 1, ptr %1763)
  %1765 = load i32, ptr @nlin, align 4, !tbaa !14
  %1766 = add nsw i32 %1765, -1
  %1767 = load i32, ptr @ncol, align 4, !tbaa !14
  %1768 = load i32, ptr @dboxflg, align 4, !tbaa !14
  %1769 = icmp eq i32 %1768, 0
  %1770 = select i1 %1769, i32 1, i32 2
  call fastcc void @drawvert(i32 noundef 0, i32 noundef %1766, i32 noundef %1767, i32 noundef %1770) #20
  %1771 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1772 = call i32 @fputc(i32 10, ptr %1771)
  br label %1773

1773:                                             ; preds = %1760, %1751
  %1774 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1775 = call i64 @fwrite(ptr nonnull @.str.30.106, i64 4, i64 1, ptr %1774)
  %1776 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1777 = call i64 @fwrite(ptr nonnull @.str.25.249, i64 3, i64 1, ptr %1776)
  %1778 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1779 = call i64 @fwrite(ptr nonnull @.str.32, i64 4, i64 1, ptr %1778)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  %1780 = load i32, ptr @nlin, align 4, !tbaa !14
  %1781 = icmp sgt i32 %1780, 0
  br i1 %1781, label %1782, label %1787

1782:                                             ; preds = %1782, %1773
  %1783 = phi i32 [ %1784, %1782 ], [ 0, %1773 ]
  call fastcc void @putline(i32 noundef %1783, i32 noundef %1783) #20
  %1784 = add nuw nsw i32 %1783, 1
  %1785 = load i32, ptr @nlin, align 4, !tbaa !14
  %1786 = icmp slt i32 %1784, %1785
  br i1 %1786, label %1782, label %1787, !llvm.loop !77

1787:                                             ; preds = %1782, %1773
  %1788 = phi i32 [ %1780, %1773 ], [ %1785, %1782 ]
  %1789 = load i32, ptr @leftover, align 4, !tbaa !14
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1837, label %1791

1791:                                             ; preds = %1796, %1787
  %1792 = phi i64 [ %1797, %1796 ], [ 0, %1787 ]
  %1793 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %1792
  %1794 = load ptr, ptr %1793, align 8, !tbaa !13
  %1795 = icmp eq ptr %1794, null
  br i1 %1795, label %1796, label %1800

1796:                                             ; preds = %1791
  %1797 = add nuw nsw i64 %1792, 1
  %1798 = icmp eq i64 %1797, 200
  br i1 %1798, label %1799, label %1791, !llvm.loop !78

1799:                                             ; preds = %1796
  store i32 200, ptr @useln, align 4, !tbaa !14
  call void @error(ptr noundef nonnull @.str.152) #20
  unreachable

1800:                                             ; preds = %1791
  %.lcssa31 = phi i64 [ %1792, %1791 ]
  %1801 = shl i64 %.lcssa31, 32
  %1802 = ashr exact i64 %1801, 32
  %1803 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %1802
  %1804 = load ptr, ptr %1803, align 8, !tbaa !13
  store ptr %1804, ptr @table, align 16, !tbaa !13
  %1805 = add i32 %1788, -1
  store i32 %1805, ptr @useln, align 4, !tbaa !14
  %1806 = icmp sgt i32 %1788, 0
  br i1 %1806, label %1807, label %1822

1807:                                             ; preds = %1800
  %1808 = zext i32 %1805 to i64
  br label %1809

1809:                                             ; preds = %1818, %1807
  %1810 = phi i64 [ %1808, %1807 ], [ %1819, %1818 ]
  %1811 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1810
  %1812 = load i32, ptr %1811, align 4, !tbaa !14
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1814, label %1818

1814:                                             ; preds = %1809
  %1815 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1810
  %1816 = load ptr, ptr %1815, align 8, !tbaa !13
  %1817 = icmp eq ptr %1816, null
  br i1 %1817, label %1823, label %1818

1818:                                             ; preds = %1814, %1809
  %1819 = add nsw i64 %1810, -1
  %1820 = trunc i64 %1819 to i32
  store i32 %1820, ptr @useln, align 4, !tbaa !14
  %1821 = icmp sgt i64 %1810, 0
  br i1 %1821, label %1809, label %1822, !llvm.loop !79

1822:                                             ; preds = %1818, %1800
  call void @error(ptr noundef nonnull @.str.1.153) #20
  unreachable

1823:                                             ; preds = %1814
  %1824 = sext i32 %1789 to i64
  %1825 = inttoptr i64 %1824 to ptr
  %1826 = call fastcc i32 @domore(ptr noundef nonnull %1825) #21, !range !16
  br label %1827

1827:                                             ; preds = %1831, %1823
  %1828 = load ptr, ptr @cspace, align 8, !tbaa !13
  store ptr %1828, ptr @cstore, align 8, !tbaa !13
  %1829 = call fastcc ptr @gets1(ptr noundef %1828) #20
  %1830 = icmp eq ptr %1829, null
  br i1 %1830, label %1835, label %1831

1831:                                             ; preds = %1827
  %1832 = load ptr, ptr @cstore, align 8, !tbaa !13
  %1833 = call fastcc i32 @domore(ptr noundef %1832) #21, !range !16
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %1835, label %1827, !llvm.loop !80

1835:                                             ; preds = %1831, %1827
  %1836 = load ptr, ptr @cstore, align 8, !tbaa !13
  store ptr %1836, ptr @last, align 8, !tbaa !13
  br label %1837

1837:                                             ; preds = %1835, %1787
  %1838 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1839 = call i64 @fwrite(ptr nonnull @.str.19.221, i64 4, i64 1, ptr %1838)
  %1840 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1841 = call i64 @fwrite(ptr nonnull @.str.5.85, i64 9, i64 1, ptr %1840)
  %1842 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1843 = call i64 @fwrite(ptr nonnull @.str.6.86, i64 6, i64 1, ptr %1842)
  %1844 = load i32, ptr @ctrflg, align 4, !tbaa !14
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1849, label %1846

1846:                                             ; preds = %1837
  %1847 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1848 = call i64 @fwrite(ptr nonnull @.str.7.87, i64 11, i64 1, ptr %1847)
  br label %1849

1849:                                             ; preds = %1846, %1837
  store i32 0, ptr @spcount, align 4, !tbaa !14
  store i32 -1, ptr @tpcount, align 4, !tbaa !14
  store ptr null, ptr @exstore, align 8, !tbaa !13
  %1850 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1851 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1850, ptr noundef nonnull @.str.11.203, i32 noundef 35) #21
  br label %1855

1852:                                             ; preds = %1865
  %1853 = load i32, ptr @texct, align 4, !tbaa !14
  %1854 = icmp sgt i32 %1853, 0
  br i1 %1854, label %1868, label %1879

1855:                                             ; preds = %1865, %1849
  %1856 = phi i64 [ 0, %1849 ], [ %1866, %1865 ]
  %1857 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %1856
  %1858 = load i32, ptr %1857, align 4, !tbaa !14
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1865, label %1860

1860:                                             ; preds = %1855
  %1861 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1862 = trunc i64 %1856 to i32
  %1863 = add i32 %1862, 97
  %1864 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1861, ptr noundef nonnull @.str.12.206, i32 noundef %1863) #21
  br label %1865

1865:                                             ; preds = %1860, %1855
  %1866 = add nuw nsw i64 %1856, 1
  %1867 = icmp eq i64 %1866, 100
  br i1 %1867, label %1852, label %1855, !llvm.loop !81

1868:                                             ; preds = %1868, %1852
  %1869 = phi i64 [ %1875, %1868 ], [ 0, %1852 ]
  %1870 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1871 = getelementptr inbounds [0 x i8], ptr @texstr, i64 0, i64 %1869
  %1872 = load i8, ptr %1871, align 1, !tbaa !17
  %1873 = sext i8 %1872 to i32
  %1874 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1870, ptr noundef nonnull @.str.13.207, i32 noundef %1873) #21
  %1875 = add nuw nsw i64 %1869, 1
  %1876 = load i32, ptr @texct, align 4, !tbaa !14
  %1877 = sext i32 %1876 to i64
  %1878 = icmp slt i64 %1875, %1877
  br i1 %1878, label %1868, label %1879, !llvm.loop !82

1879:                                             ; preds = %1868, %1852
  %1880 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1881 = load ptr, ptr @last, align 8, !tbaa !13
  %1882 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1880, ptr noundef nonnull @.str.19.243, ptr noundef %1881) #21
  %1883 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1884 = load i32, ptr @iline, align 4, !tbaa !14
  %1885 = load i32, ptr @linstart, align 4, !tbaa !14
  %1886 = sub nsw i32 %1884, %1885
  %1887 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1883, ptr noundef nonnull @.str.18.218, i32 noundef %1886) #21
  store i32 0, ptr @linstart, align 4, !tbaa !14
  br label %1888

1888:                                             ; preds = %1879, %35
  br label %19, !llvm.loop !83

1889:                                             ; preds = %19
  %1890 = load ptr, ptr @tabin, align 8, !tbaa !13
  %1891 = call i32 @fclose(ptr noundef %1890) #21
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %9) #23
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @swapin() unnamed_addr #3 {
  %1 = load i32, ptr @sargc, align 4, !tbaa !14
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %75

3:                                                ; preds = %0
  %4 = load ptr, ptr @sargv, align 8, !tbaa !13
  br label %5

5:                                                ; preds = %45, %3
  %6 = phi i32 [ %1, %3 ], [ %46, %45 ]
  %7 = phi ptr [ %4, %3 ], [ %47, %45 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = load i8, ptr %8, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 45
  br i1 %10, label %11, label %52

11:                                               ; preds = %16, %5
  %12 = phi i8 [ %19, %16 ], [ 45, %5 ]
  %13 = phi ptr [ %18, %16 ], [ %8, %5 ]
  %14 = phi ptr [ %17, %16 ], [ @.str.2, %5 ]
  %15 = icmp eq i8 %12, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  %18 = getelementptr inbounds i8, ptr %13, i64 1
  %19 = load i8, ptr %17, align 1, !tbaa !17
  %20 = load i8, ptr %18, align 1, !tbaa !17
  %21 = icmp eq i8 %19, %20
  br i1 %21, label %11, label %22, !llvm.loop !38

22:                                               ; preds = %27, %16
  %23 = phi i8 [ %30, %27 ], [ 45, %16 ]
  %24 = phi ptr [ %29, %27 ], [ %8, %16 ]
  %25 = phi ptr [ %28, %27 ], [ @.str.4, %16 ]
  %26 = icmp eq i8 %23, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = getelementptr inbounds i8, ptr %24, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !17
  %31 = load i8, ptr %29, align 1, !tbaa !17
  %32 = icmp eq i8 %30, %31
  br i1 %32, label %22, label %33, !llvm.loop !38

33:                                               ; preds = %38, %27
  %34 = phi i8 [ %41, %38 ], [ 45, %27 ]
  %35 = phi ptr [ %40, %38 ], [ %8, %27 ]
  %36 = phi ptr [ %39, %38 ], [ @.str.6, %27 ]
  %37 = icmp eq i8 %34, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = load i8, ptr %39, align 1, !tbaa !17
  %42 = load i8, ptr %40, align 1, !tbaa !17
  %43 = icmp eq i8 %41, %42
  br i1 %43, label %33, label %45, !llvm.loop !38

44:                                               ; preds = %33
  store i1 true, ptr @pr1403, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = add nsw i32 %6, -1
  store i32 %46, ptr @sargc, align 4, !tbaa !14
  %47 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %47, ptr @sargv, align 8, !tbaa !13
  %48 = icmp sgt i32 %6, 1
  br i1 %48, label %5, label %75, !llvm.loop !84

49:                                               ; preds = %22, %11
  %.lcssa3 = phi i32 [ %6, %22 ], [ %6, %11 ]
  %.lcssa1 = phi ptr [ %7, %22 ], [ %7, %11 ]
  %50 = phi ptr [ @.str.5, %22 ], [ @.str.3, %11 ]
  store ptr %50, ptr %.lcssa1, align 8, !tbaa !13
  %51 = icmp slt i32 %.lcssa3, 1
  br i1 %51, label %75, label %52

52:                                               ; preds = %49, %5
  %53 = phi ptr [ %50, %49 ], [ %8, %5 ]
  %54 = load ptr, ptr @tabin, align 8, !tbaa !13
  %55 = load ptr, ptr @stdin, align 8, !tbaa !13
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = tail call i32 @fclose(ptr noundef %54) #21
  %59 = load ptr, ptr @sargv, align 8, !tbaa !13
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi ptr [ %60, %57 ], [ %53, %52 ]
  store ptr %62, ptr @ifile, align 8, !tbaa !13
  %63 = tail call noalias ptr @fopen(ptr noundef %62, ptr noundef nonnull @.str.7) #21
  store ptr %63, ptr @tabin, align 8, !tbaa !13
  store i32 1, ptr @iline, align 4, !tbaa !14
  %64 = load ptr, ptr @tabout, align 8, !tbaa !13
  %65 = load ptr, ptr @ifile, align 8, !tbaa !13
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.8, ptr noundef %65) #21
  %67 = load ptr, ptr @tabin, align 8, !tbaa !13
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  tail call void @error(ptr noundef nonnull @.str.9) #20
  unreachable

70:                                               ; preds = %61
  %71 = load i32, ptr @sargc, align 4, !tbaa !14
  %72 = add nsw i32 %71, -1
  store i32 %72, ptr @sargc, align 4, !tbaa !14
  %73 = load ptr, ptr @sargv, align 8, !tbaa !13
  %74 = getelementptr inbounds ptr, ptr %73, i64 1
  store ptr %74, ptr @sargv, align 8, !tbaa !13
  br label %75

75:                                               ; preds = %70, %49, %45, %0
  %76 = phi i32 [ 1, %70 ], [ 0, %49 ], [ 0, %0 ], [ 0, %45 ]
  ret i32 %76
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @gets1(ptr noundef %0) unnamed_addr #3 {
  br label %2

2:                                                ; preds = %53, %1
  %3 = phi ptr [ %0, %1 ], [ %.lcssa2, %53 ]
  %4 = phi ptr [ poison, %1 ], [ %54, %53 ]
  %5 = phi i1 [ false, %1 ], [ true, %53 ]
  %6 = load i32, ptr @iline, align 4, !tbaa !14
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @iline, align 4, !tbaa !14
  %8 = load ptr, ptr @tabin, align 8, !tbaa !13
  %9 = tail call ptr @fgets(ptr noundef %3, i32 noundef 8192, ptr noundef %8) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %16, %2
  %12 = phi ptr [ %9, %2 ], [ %18, %16 ]
  br label %20

13:                                               ; preds = %16, %2
  %14 = tail call fastcc i32 @swapin() #20, !range !16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @tabin, align 8, !tbaa !13
  %18 = tail call ptr @fgets(ptr noundef %3, i32 noundef 8192, ptr noundef %17) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %13, label %11, !llvm.loop !85

20:                                               ; preds = %20, %11
  %21 = phi ptr [ %24, %20 ], [ %3, %11 ]
  %22 = load i8, ptr %21, align 1, !tbaa !17
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  br i1 %23, label %25, label %20, !llvm.loop !86

25:                                               ; preds = %20
  %.lcssa = phi ptr [ %21, %20 ]
  %26 = getelementptr inbounds i8, ptr %.lcssa, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !17
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %.lcssa, i64 -2
  store i8 0, ptr %26, align 1, !tbaa !17
  %31 = load i8, ptr %30, align 1, !tbaa !17
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i8 [ %31, %29 ], [ %27, %25 ]
  %34 = phi ptr [ %30, %29 ], [ %26, %25 ]
  %35 = icmp eq i8 %33, 92
  %36 = icmp ugt ptr %34, %12
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %38, %32
  %39 = phi i32 [ %41, %38 ], [ 0, %32 ]
  %40 = phi ptr [ %42, %38 ], [ %34, %32 ]
  %41 = add nuw nsw i32 %39, 1
  %42 = getelementptr inbounds i8, ptr %40, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !17
  %44 = icmp eq i8 %43, 92
  %45 = icmp ugt ptr %42, %12
  %46 = and i1 %45, %44
  br i1 %46, label %38, label %47, !llvm.loop !87

47:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %40, %38 ]
  %.lcssa1 = phi i32 [ %41, %38 ]
  %48 = load i32, ptr @linstart, align 4, !tbaa !14
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
  %56 = phi ptr [ null, %13 ], [ %12, %32 ], [ %12, %47 ]
  %57 = select i1 %.lcssa3, ptr %.lcssa4, ptr %56
  ret ptr %57
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local void @error(ptr noundef %0) #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !13
  %3 = load ptr, ptr @ifile, align 8, !tbaa !13
  %4 = load i32, ptr @iline, align 4, !tbaa !14
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.178, ptr noundef %3, i32 noundef %4, ptr noundef %0) #27
  %6 = load ptr, ptr @stderr, align 8, !tbaa !13
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1.179, i64 10, i64 1, ptr %6) #28
  tail call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @un1getc(i32 noundef %0) unnamed_addr #3 {
  %2 = icmp eq i32 %0, 10
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load i32, ptr @iline, align 4, !tbaa !14
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr @iline, align 4, !tbaa !14
  br label %6

6:                                                ; preds = %3, %1
  %7 = trunc i32 %0 to i8
  %8 = load ptr, ptr @backp, align 8, !tbaa !13
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr @backp, align 8, !tbaa !13
  store i8 %7, ptr %8, align 1, !tbaa !17
  %10 = icmp ult ptr %9, getelementptr inbounds ([500 x i8], ptr @backup, i64 1, i64 0)
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.2.184) #21
  unreachable

12:                                               ; preds = %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @readspec() unnamed_addr #3 {
  %1 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %1) #23
  br label %2

2:                                                ; preds = %338, %0
  %3 = phi i8 [ undef, %0 ], [ %339, %338 ]
  %4 = phi i32 [ 0, %0 ], [ %340, %338 ]
  %5 = phi i32 [ 0, %0 ], [ %341, %338 ]
  %6 = tail call fastcc i32 @get1char() #20
  switch i32 %6, label %8 [
    i32 0, label %343
    i32 32, label %338
    i32 10, label %12
    i32 44, label %14
    i32 46, label %14
    i32 67, label %71
    i32 83, label %71
    i32 82, label %71
    i32 78, label %71
    i32 76, label %71
    i32 65, label %71
    i32 95, label %73
    i32 61, label %75
    i32 45, label %75
    i32 94, label %75
    i32 99, label %75
    i32 115, label %75
    i32 110, label %75
    i32 114, label %75
    i32 108, label %75
    i32 97, label %75
    i32 98, label %109
    i32 105, label %109
    i32 66, label %111
    i32 73, label %111
    i32 116, label %123
    i32 84, label %123
    i32 100, label %131
    i32 68, label %131
    i32 102, label %139
    i32 70, label %139
    i32 80, label %191
    i32 112, label %191
    i32 86, label %228
    i32 118, label %228
    i32 119, label %261
    i32 87, label %261
    i32 101, label %292
    i32 69, label %292
    i32 48, label %7
    i32 49, label %7
    i32 50, label %7
    i32 51, label %7
    i32 52, label %7
    i32 53, label %7
    i32 54, label %7
    i32 55, label %7
    i32 56, label %7
    i32 57, label %7
    i32 124, label %330
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  br label %298

8:                                                ; preds = %2
  %9 = load i32, ptr @tab, align 4, !tbaa !14
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %338, label %11

11:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.3.27) #20
  unreachable

12:                                               ; preds = %2
  %13 = icmp eq i32 %5, 0
  br i1 %13, label %338, label %14

14:                                               ; preds = %12, %2, %2
  %15 = load i32, ptr @ncol, align 4, !tbaa !14
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 %4)
  store i32 %16, ptr @ncol, align 4, !tbaa !14
  %17 = load i32, ptr @nclin, align 4
  %18 = sext i32 %17 to i64
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = add nsw i32 %16, 1
  store i32 %24, ptr @ncol, align 4, !tbaa !14
  %25 = load i32, ptr @rightl, align 4, !tbaa !14
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @rightl, align 4, !tbaa !14
  br label %27

27:                                               ; preds = %23, %14
  %28 = phi i32 [ %24, %23 ], [ %16, %14 ]
  %29 = icmp eq i32 %5, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = add nsw i32 %17, 1
  store i32 %31, ptr @nclin, align 4, !tbaa !14
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i32 [ %31, %30 ], [ %17, %27 ]
  %34 = icmp sgt i32 %33, 99
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @error(ptr noundef nonnull @.str.4.28) #20
  unreachable

36:                                               ; preds = %32
  %37 = icmp eq i32 %28, 0
  %38 = icmp eq i32 %33, 0
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @error(ptr noundef nonnull @.str.5.29) #20
  unreachable

41:                                               ; preds = %36
  %42 = icmp eq i32 %6, 46
  br i1 %42, label %43, label %338

43:                                               ; preds = %45, %41
  %44 = tail call fastcc i32 @get1char() #20
  switch i32 %44, label %46 [
    i32 10, label %47
    i32 0, label %47
    i32 32, label %45
    i32 9, label %45
  ]

45:                                               ; preds = %43, %43
  br label %43, !llvm.loop !88

46:                                               ; preds = %43
  tail call void @error(ptr noundef nonnull @.str.6.30) #20
  unreachable

47:                                               ; preds = %43, %43
  %48 = load i32, ptr @ncol, align 4, !tbaa !14
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = zext i32 %48 to i64
  br label %52

52:                                               ; preds = %61, %50
  %53 = phi i64 [ 0, %50 ], [ %57, %61 ]
  %54 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !14
  %56 = icmp slt i32 %55, 0
  %57 = add nuw nsw i64 %53, 1
  br i1 %56, label %58, label %61

58:                                               ; preds = %52
  %59 = icmp ult i64 %57, %51
  %60 = select i1 %59, i32 3, i32 1
  store i32 %60, ptr %54, align 4, !tbaa !14
  br label %61

61:                                               ; preds = %58, %52
  %62 = icmp eq i64 %57, %51
  br i1 %62, label %63, label %52, !llvm.loop !89

63:                                               ; preds = %61, %47
  %64 = load i32, ptr @oncol, align 4, !tbaa !14
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 %48, ptr @oncol, align 4, !tbaa !14
  br label %344

67:                                               ; preds = %63
  %68 = add nsw i32 %64, 2
  %69 = icmp slt i32 %68, %48
  br i1 %69, label %70, label %344

70:                                               ; preds = %67
  tail call void @error(ptr noundef nonnull @.str.7.31) #20
  unreachable

71:                                               ; preds = %2, %2, %2, %2, %2, %2
  %72 = add nuw nsw i32 %6, 32
  br label %73

73:                                               ; preds = %71, %2
  %74 = phi i32 [ %72, %71 ], [ 45, %2 ]
  br label %75

75:                                               ; preds = %73, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %76 = phi i32 [ %74, %73 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ]
  %77 = load i32, ptr @nclin, align 4
  %78 = sext i32 %77 to i64
  %79 = sext i32 %4 to i64
  %80 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %78, i64 %79
  store i32 %76, ptr %80, align 4, !tbaa !14
  %81 = icmp eq i32 %76, 115
  %82 = icmp slt i32 %4, 1
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  tail call void @error(ptr noundef nonnull @.str.8.32) #20
  unreachable

85:                                               ; preds = %75
  br i1 %81, label %86, label %92

86:                                               ; preds = %85
  %87 = add nsw i32 %4, -1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %78, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !14
  switch i32 %90, label %105 [
    i32 97, label %97
    i32 110, label %91
  ]

91:                                               ; preds = %86
  br label %97

92:                                               ; preds = %85
  %93 = icmp eq i32 %76, 94
  %94 = icmp slt i32 %77, 1
  %95 = and i1 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  tail call void @error(ptr noundef nonnull @.str.11.35) #20
  unreachable

97:                                               ; preds = %91, %86
  %98 = phi ptr [ @.str.10.34, %91 ], [ @.str.9.33, %86 ]
  %99 = phi i32 [ 99, %91 ], [ 108, %86 ]
  %100 = load ptr, ptr @tabout, align 8, !tbaa !13
  %101 = tail call i64 @fwrite(ptr nonnull %98, i64 50, i64 1, ptr %100)
  %102 = load i32, ptr @nclin, align 4, !tbaa !14
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %103, i64 %88
  store i32 %99, ptr %104, align 4, !tbaa !14
  br label %105

105:                                              ; preds = %97, %92, %86
  %106 = add nsw i32 %4, 1
  %107 = icmp sgt i32 %4, 18
  br i1 %107, label %108, label %338

108:                                              ; preds = %105
  tail call void @error(ptr noundef nonnull @.str.12.36) #20
  unreachable

109:                                              ; preds = %2, %2
  %110 = add nsw i32 %6, -32
  br label %111

111:                                              ; preds = %109, %2, %2
  %112 = phi i32 [ %110, %109 ], [ %6, %2 ], [ %6, %2 ]
  %113 = icmp eq i32 %4, 0
  br i1 %113, label %338, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr @nclin, align 4, !tbaa !14
  %116 = sext i32 %115 to i64
  %117 = add nsw i32 %4, -1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %116, i64 %118
  %120 = icmp eq i32 %112, 73
  %121 = select i1 %120, i8 50, i8 51
  store i8 %121, ptr %119, align 2, !tbaa !17
  %122 = getelementptr inbounds i8, ptr %119, i64 1
  store i8 0, ptr %122, align 1, !tbaa !17
  br label %338

123:                                              ; preds = %2, %2
  %124 = icmp sgt i32 %4, 0
  br i1 %124, label %125, label %338

125:                                              ; preds = %123
  %126 = load i32, ptr @nclin, align 4, !tbaa !14
  %127 = sext i32 %126 to i64
  %128 = add nsw i32 %4, -1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %127, i64 %129
  store i32 1, ptr %130, align 4, !tbaa !14
  br label %338

131:                                              ; preds = %2, %2
  %132 = icmp sgt i32 %4, 0
  br i1 %132, label %133, label %338

133:                                              ; preds = %131
  %134 = load i32, ptr @nclin, align 4, !tbaa !14
  %135 = sext i32 %134 to i64
  %136 = add nsw i32 %4, -1
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %135, i64 %137
  store i32 -1, ptr %138, align 4, !tbaa !14
  br label %338

139:                                              ; preds = %2, %2
  %140 = icmp eq i32 %4, 0
  br i1 %140, label %338, label %141

141:                                              ; preds = %139
  %142 = load i32, ptr @nclin, align 4, !tbaa !14
  %143 = sext i32 %142 to i64
  %144 = add nsw i32 %4, -1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %143, i64 %145
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  store i8 0, ptr %147, align 1, !tbaa !17
  store i8 0, ptr %146, align 2, !tbaa !17
  br label %148

148:                                              ; preds = %179, %141
  %149 = phi i1 [ false, %179 ], [ true, %141 ]
  %150 = phi i64 [ 1, %179 ], [ 0, %141 ]
  %151 = phi i32 [ %159, %179 ], [ 0, %141 ]
  %152 = tail call fastcc i32 @get1char() #20
  %153 = icmp eq i32 %152, 40
  %154 = select i1 %149, i1 %153, i1 false
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = tail call fastcc i32 @get1char() #20
  br label %157

157:                                              ; preds = %155, %148
  %158 = phi i32 [ %156, %155 ], [ %152, %148 ]
  %159 = phi i32 [ 41, %155 ], [ %151, %148 ]
  %160 = icmp eq i32 %158, 0
  br i1 %160, label %185, label %161

161:                                              ; preds = %157
  %162 = icmp eq i32 %158, %159
  br i1 %162, label %338, label %163, !llvm.loop !90

163:                                              ; preds = %161
  %164 = icmp eq i32 %159, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %163
  %166 = icmp eq i32 %158, 32
  %167 = load i32, ptr @tab, align 4
  %168 = icmp eq i32 %158, %167
  %169 = select i1 %166, i1 true, i1 %168
  br i1 %169, label %338, label %170, !llvm.loop !90

170:                                              ; preds = %165, %163
  %171 = icmp eq i32 %158, 10
  br i1 %171, label %172, label %179

172:                                              ; preds = %170
  %.lcssa13 = phi i32 [ %159, %170 ]
  %173 = load i32, ptr @iline, align 4, !tbaa !14
  %174 = add nsw i32 %173, -1
  store i32 %174, ptr @iline, align 4, !tbaa !14
  %175 = load ptr, ptr @backp, align 8, !tbaa !13
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  store ptr %176, ptr @backp, align 8, !tbaa !13
  store i8 10, ptr %175, align 1, !tbaa !17
  %177 = icmp ult ptr %176, getelementptr inbounds ([500 x i8], ptr @backup, i64 1, i64 0)
  br i1 %177, label %185, label %178

178:                                              ; preds = %172
  tail call void @error(ptr noundef nonnull @.str.2.184) #21
  unreachable

179:                                              ; preds = %170
  %180 = trunc i32 %158 to i8
  %181 = getelementptr inbounds i8, ptr %146, i64 %150
  store i8 %180, ptr %181, align 1, !tbaa !17
  %182 = add i32 %158, -58
  %183 = icmp ult i32 %182, -10
  %184 = and i1 %149, %183
  br i1 %184, label %148, label %185, !llvm.loop !91

185:                                              ; preds = %179, %172, %157
  %.lcssa12 = phi i32 [ %159, %179 ], [ %.lcssa13, %172 ], [ %159, %157 ]
  %186 = icmp eq i32 %.lcssa12, 0
  br i1 %186, label %338, label %187

187:                                              ; preds = %185
  %188 = tail call fastcc i32 @get1char() #20
  %189 = icmp eq i32 %188, %.lcssa12
  br i1 %189, label %338, label %190

190:                                              ; preds = %187
  tail call void @error(ptr noundef nonnull @.str.13.37) #20
  unreachable

191:                                              ; preds = %2, %2
  %192 = icmp slt i32 %4, 1
  br i1 %192, label %338, label %193

193:                                              ; preds = %191
  %194 = load i32, ptr @nclin, align 4, !tbaa !14
  %195 = sext i32 %194 to i64
  %196 = add nsw i32 %4, -1
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %195, i64 %197
  %199 = ptrtoint ptr %198 to i64
  br label %200

200:                                              ; preds = %216, %193
  %201 = phi ptr [ %198, %193 ], [ %217, %216 ]
  %202 = tail call fastcc i32 @get1char() #20
  %203 = and i32 %202, -33
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %223, label %205

205:                                              ; preds = %200
  %206 = load i32, ptr @tab, align 4, !tbaa !14
  %207 = icmp eq i32 %202, %206
  %208 = icmp eq i32 %202, 10
  %209 = or i1 %208, %207
  br i1 %209, label %223, label %210

210:                                              ; preds = %205
  switch i32 %202, label %213 [
    i32 45, label %211
    i32 43, label %211
  ]

211:                                              ; preds = %210, %210
  %212 = icmp ugt ptr %201, %198
  br i1 %212, label %223, label %216

213:                                              ; preds = %210
  %214 = add i32 %202, -58
  %215 = icmp ult i32 %214, -10
  br i1 %215, label %223, label %216

216:                                              ; preds = %213, %211
  %217 = getelementptr inbounds i8, ptr %201, i64 1
  %218 = trunc i32 %202 to i8
  store i8 %218, ptr %201, align 1, !tbaa !17
  %219 = ptrtoint ptr %217 to i64
  %220 = sub i64 %219, %199
  %221 = icmp sgt i64 %220, 4
  br i1 %221, label %222, label %200, !llvm.loop !92

222:                                              ; preds = %216
  tail call void @error(ptr noundef nonnull @.str.14.38) #20
  unreachable

223:                                              ; preds = %213, %211, %205, %200
  %.lcssa10 = phi ptr [ %201, %213 ], [ %201, %211 ], [ %201, %205 ], [ %201, %200 ]
  %.lcssa8 = phi i32 [ %202, %213 ], [ %202, %211 ], [ %202, %205 ], [ %202, %200 ]
  store i8 0, ptr %.lcssa10, align 1, !tbaa !17
  %224 = tail call i32 @atoi(ptr nocapture noundef nonnull %198) #24
  %225 = icmp sgt i32 %224, 36
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  tail call void @error(ptr noundef nonnull @.str.15.39) #20
  unreachable

227:                                              ; preds = %223
  tail call fastcc void @un1getc(i32 noundef %.lcssa8) #20
  br label %338

228:                                              ; preds = %2, %2
  %229 = icmp slt i32 %4, 1
  br i1 %229, label %338, label %230

230:                                              ; preds = %228
  %231 = load i32, ptr @nclin, align 4, !tbaa !14
  %232 = sext i32 %231 to i64
  %233 = add nsw i32 %4, -1
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @vsize, i64 0, i64 %232, i64 %234
  %236 = ptrtoint ptr %235 to i64
  br label %237

237:                                              ; preds = %253, %230
  %238 = phi ptr [ %235, %230 ], [ %254, %253 ]
  %239 = tail call fastcc i32 @get1char() #20
  %240 = and i32 %239, -33
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %260, label %242

242:                                              ; preds = %237
  %243 = load i32, ptr @tab, align 4, !tbaa !14
  %244 = icmp eq i32 %239, %243
  %245 = icmp eq i32 %239, 10
  %246 = or i1 %245, %244
  br i1 %246, label %260, label %247

247:                                              ; preds = %242
  switch i32 %239, label %250 [
    i32 45, label %248
    i32 43, label %248
  ]

248:                                              ; preds = %247, %247
  %249 = icmp ugt ptr %238, %235
  br i1 %249, label %260, label %253

250:                                              ; preds = %247
  %251 = add i32 %239, -58
  %252 = icmp ult i32 %251, -10
  br i1 %252, label %260, label %253

253:                                              ; preds = %250, %248
  %254 = getelementptr inbounds i8, ptr %238, i64 1
  %255 = trunc i32 %239 to i8
  store i8 %255, ptr %238, align 1, !tbaa !17
  %256 = ptrtoint ptr %254 to i64
  %257 = sub i64 %256, %236
  %258 = icmp sgt i64 %257, 4
  br i1 %258, label %259, label %237, !llvm.loop !93

259:                                              ; preds = %253
  tail call void @error(ptr noundef nonnull @.str.16.40) #20
  unreachable

260:                                              ; preds = %250, %248, %242, %237
  %.lcssa6 = phi ptr [ %238, %250 ], [ %238, %248 ], [ %238, %242 ], [ %238, %237 ]
  %.lcssa4 = phi i32 [ %239, %250 ], [ %239, %248 ], [ %239, %242 ], [ %239, %237 ]
  store i8 0, ptr %.lcssa6, align 1, !tbaa !17
  tail call fastcc void @un1getc(i32 noundef %.lcssa4) #20
  br label %338

261:                                              ; preds = %2, %2
  %262 = add nsw i32 %4, -1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %263
  br label %265

265:                                              ; preds = %272, %261
  %266 = phi i1 [ true, %261 ], [ false, %272 ]
  %267 = phi i32 [ 0, %261 ], [ 41, %272 ]
  br label %268

268:                                              ; preds = %281, %265
  %269 = phi ptr [ %283, %281 ], [ %264, %265 ]
  %270 = tail call fastcc i32 @get1char() #20
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %268
  %273 = icmp eq ptr %269, %264
  %274 = icmp eq i32 %270, 40
  %275 = and i1 %273, %274
  br i1 %275, label %265, label %276, !llvm.loop !94

276:                                              ; preds = %272
  %277 = add i32 %270, -48
  %278 = icmp ult i32 %277, 10
  %279 = icmp ne i32 %270, %267
  %280 = select i1 %266, i1 %278, i1 %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = trunc i32 %270 to i8
  %283 = getelementptr inbounds i8, ptr %269, i64 1
  store i8 %282, ptr %269, align 1, !tbaa !17
  br label %268, !llvm.loop !94

284:                                              ; preds = %276, %268
  %.lcssa3 = phi i1 [ %266, %276 ], [ %266, %268 ]
  %.lcssa2 = phi ptr [ %269, %276 ], [ %269, %268 ]
  %.lcssa1 = phi i32 [ %270, %276 ], [ %270, %268 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !17
  %285 = ptrtoint ptr %.lcssa2 to i64
  %286 = ptrtoint ptr %264 to i64
  %287 = sub i64 %285, %286
  %288 = icmp sgt i64 %287, 10
  br i1 %288, label %289, label %290

289:                                              ; preds = %284
  tail call void @error(ptr noundef nonnull @.str.17.41) #20
  unreachable

290:                                              ; preds = %284
  br i1 %.lcssa3, label %291, label %338

291:                                              ; preds = %290
  tail call fastcc void @un1getc(i32 noundef %.lcssa1) #20
  br label %338

292:                                              ; preds = %2, %2
  %293 = icmp slt i32 %4, 1
  br i1 %293, label %338, label %294

294:                                              ; preds = %292
  %295 = add nsw i32 %4, -1
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [0 x i32], ptr @evenup, i64 0, i64 %296
  store i32 1, ptr %297, align 4, !tbaa !14
  store i1 true, ptr @evenflg, align 4
  br label %338

298:                                              ; preds = %298, %7
  %299 = phi ptr [ %300, %298 ], [ %1, %7 ]
  %300 = getelementptr inbounds i8, ptr %299, i64 1
  %301 = tail call fastcc i32 @get1char() #20
  %302 = trunc i32 %301 to i8
  store i8 %302, ptr %300, align 1, !tbaa !17
  %303 = shl i32 %301, 24
  %304 = ashr exact i32 %303, 24
  %305 = add nsw i32 %304, -58
  %306 = icmp ult i32 %305, -10
  br i1 %306, label %307, label %298, !llvm.loop !95

307:                                              ; preds = %298
  %.lcssa = phi i32 [ %301, %298 ]
  %308 = trunc i32 %6 to i8
  tail call fastcc void @un1getc(i32 noundef %.lcssa) #20
  %309 = add nsw i32 %4, -1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [0 x i32], ptr @sep, i64 0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !14
  %313 = add i8 %308, -48
  %314 = icmp ult i8 %313, 10
  br i1 %314, label %315, label %327

315:                                              ; preds = %315, %307
  %316 = phi i8 [ %324, %315 ], [ %308, %307 ]
  %317 = phi i32 [ %322, %315 ], [ 0, %307 ]
  %318 = phi ptr [ %323, %315 ], [ %1, %307 ]
  %319 = zext i8 %316 to i32
  %320 = mul nsw i32 %317, 10
  %321 = add nsw i32 %319, -48
  %322 = add i32 %321, %320
  %323 = getelementptr inbounds i8, ptr %318, i64 1
  %324 = load i8, ptr %323, align 1, !tbaa !17
  %325 = add i8 %324, -48
  %326 = icmp ult i8 %325, 10
  br i1 %326, label %315, label %327, !llvm.loop !96

327:                                              ; preds = %315, %307
  %328 = phi i32 [ 0, %307 ], [ %322, %315 ]
  %329 = tail call i32 @llvm.smax.i32(i32 %312, i32 %328)
  store i32 %329, ptr %311, align 4, !tbaa !14
  br label %338

330:                                              ; preds = %2
  %331 = load i32, ptr @nclin, align 4, !tbaa !14
  %332 = sext i32 %331 to i64
  %333 = sext i32 %4 to i64
  %334 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %332, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !14
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %334, align 4, !tbaa !14
  %337 = icmp eq i32 %4, 0
  br i1 %337, label %342, label %338

338:                                              ; preds = %342, %330, %327, %294, %292, %291, %290, %260, %228, %227, %191, %187, %185, %165, %161, %139, %133, %131, %125, %123, %114, %111, %105, %41, %12, %8, %2
  %339 = phi i8 [ %308, %327 ], [ %3, %292 ], [ %3, %294 ], [ %3, %228 ], [ %3, %260 ], [ %3, %191 ], [ %3, %227 ], [ %3, %139 ], [ %3, %111 ], [ %3, %114 ], [ %3, %12 ], [ %3, %41 ], [ %3, %2 ], [ %3, %8 ], [ %3, %105 ], [ %3, %125 ], [ %3, %123 ], [ %3, %133 ], [ %3, %131 ], [ %3, %187 ], [ %3, %185 ], [ %3, %291 ], [ %3, %290 ], [ %3, %342 ], [ %3, %330 ], [ %3, %161 ], [ %3, %165 ]
  %340 = phi i32 [ %4, %327 ], [ %4, %292 ], [ %4, %294 ], [ %4, %228 ], [ %4, %260 ], [ %4, %191 ], [ %4, %227 ], [ 0, %139 ], [ 0, %111 ], [ %4, %114 ], [ %4, %12 ], [ 0, %41 ], [ %4, %2 ], [ %4, %8 ], [ %106, %105 ], [ %4, %125 ], [ %4, %123 ], [ %4, %133 ], [ %4, %131 ], [ %4, %187 ], [ %4, %185 ], [ %4, %291 ], [ %4, %290 ], [ 0, %342 ], [ %4, %330 ], [ %4, %161 ], [ %4, %165 ]
  %341 = phi i32 [ %5, %327 ], [ %5, %292 ], [ %5, %294 ], [ %5, %228 ], [ %5, %260 ], [ %5, %191 ], [ %5, %227 ], [ %5, %139 ], [ %5, %111 ], [ %5, %114 ], [ 0, %12 ], [ 0, %41 ], [ %5, %2 ], [ %5, %8 ], [ 1, %105 ], [ %5, %125 ], [ %5, %123 ], [ %5, %133 ], [ %5, %131 ], [ %5, %187 ], [ %5, %185 ], [ %5, %291 ], [ %5, %290 ], [ %5, %342 ], [ %5, %330 ], [ %5, %161 ], [ %5, %165 ]
  br label %2, !llvm.loop !90

342:                                              ; preds = %330
  store i1 true, ptr @left1flg, align 4
  br label %338

343:                                              ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.18.42) #20
  unreachable

344:                                              ; preds = %67, %66
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %1) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @chspace() unnamed_addr #3 {
  %1 = load i32, ptr @spcount, align 4, !tbaa !14
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [20 x ptr], ptr @spvecs, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = add nsw i32 %1, 1
  store i32 %7, ptr @spcount, align 4, !tbaa !14
  br label %17

8:                                                ; preds = %0
  %9 = icmp sgt i32 %1, 19
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.162) #20
  unreachable

11:                                               ; preds = %8
  %12 = tail call noalias dereferenceable_or_null(2200) ptr @calloc(i64 noundef 2200, i64 noundef 1) #26
  %13 = add nsw i32 %1, 1
  store i32 %13, ptr @spcount, align 4, !tbaa !14
  store ptr %12, ptr %3, align 8, !tbaa !13
  %14 = ptrtoint ptr %12 to i64
  %15 = trunc i64 %14 to i32
  switch i32 %15, label %17 [
    i32 -1, label %16
    i32 0, label %16
  ]

16:                                               ; preds = %11, %11
  tail call void @error(ptr noundef nonnull @.str.1.163) #20
  unreachable

17:                                               ; preds = %11, %6
  %18 = phi ptr [ %4, %6 ], [ %12, %11 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @gettext(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #3 {
  %6 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #23
  %7 = load i32, ptr @texname, align 4, !tbaa !14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.224) #20
  unreachable

10:                                               ; preds = %5
  %11 = load i1, ptr @textflg, align 4
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr @tabout, align 8, !tbaa !13
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.1.225, i32 noundef 34) #21
  store i1 true, ptr @textflg, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = load ptr, ptr @tabout, align 8, !tbaa !13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.2.226, i64 4, i64 1, ptr %16)
  %18 = load ptr, ptr @tabout, align 8, !tbaa !13
  %19 = add nsw i32 %2, 80
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.3.227, i32 noundef %19) #21
  %21 = load ptr, ptr @tabout, align 8, !tbaa !13
  %22 = tail call i64 @fwrite(ptr nonnull @.str.4.228, i64 4, i64 1, ptr %21)
  %23 = load ptr, ptr @tabout, align 8, !tbaa !13
  %24 = load i32, ptr @texname, align 4, !tbaa !14
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.5.229, i32 noundef %24) #21
  %26 = load ptr, ptr @tabout, align 8, !tbaa !13
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.11.203, i32 noundef 35) #21
  %28 = icmp eq ptr %3, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %15
  %30 = load i8, ptr %3, align 1, !tbaa !17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr @tabout, align 8, !tbaa !13
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.6.230, i32 noundef 31, ptr noundef nonnull %3) #21
  br label %35

35:                                               ; preds = %32, %29, %15
  %36 = load ptr, ptr @tabout, align 8, !tbaa !13
  %37 = tail call i64 @fwrite(ptr nonnull @.str.7.231, i64 10, i64 1, ptr %36)
  %38 = sext i32 %1 to i64
  %39 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !14
  %41 = sext i32 %40 to i64
  %42 = sext i32 %2 to i64
  %43 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @vsize, i64 0, i64 %41, i64 %42
  %44 = icmp eq ptr %4, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i8, ptr %4, align 1, !tbaa !17
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %35
  %49 = load i8, ptr %43, align 4, !tbaa !17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %48, %45
  %52 = load ptr, ptr @tabout, align 8, !tbaa !13
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.8.232, i32 noundef 32) #21
  %54 = load i8, ptr %43, align 4, !tbaa !17
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, ptr @.str.9.233, ptr %43
  br i1 %44, label %63, label %57

57:                                               ; preds = %51
  %58 = load i8, ptr %4, align 1, !tbaa !17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @tabout, align 8, !tbaa !13
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.10.234, ptr noundef nonnull %4) #21
  br label %63

63:                                               ; preds = %60, %57, %51
  %64 = load ptr, ptr @tabout, align 8, !tbaa !13
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.11.235, ptr noundef nonnull %56) #21
  %66 = load ptr, ptr @tabout, align 8, !tbaa !13
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.12.236, i32 noundef 32, i32 noundef 32) #21
  br label %68

68:                                               ; preds = %63, %48
  %69 = getelementptr inbounds [20 x [10 x i8]], ptr @cll, i64 0, i64 %42
  %70 = load i8, ptr %69, align 2, !tbaa !17
  %71 = icmp eq i8 %70, 0
  %72 = load ptr, ptr @tabout, align 8, !tbaa !13
  br i1 %71, label %75, label %73

73:                                               ; preds = %68
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.13.237, ptr noundef nonnull %69) #21
  br label %80

75:                                               ; preds = %68
  %76 = tail call fastcc i32 @ctspan(i32 noundef %1, i32 noundef %2) #20
  %77 = load i32, ptr @ncol, align 4, !tbaa !14
  %78 = add nsw i32 %77, 1
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.14.238, i32 noundef 34, i32 noundef %76, i32 noundef %78) #21
  br label %80

80:                                               ; preds = %75, %73
  %81 = load ptr, ptr @tabout, align 8, !tbaa !13
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.15.239, i32 noundef %19, i32 noundef %19) #21
  %83 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %38
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %38
  %88 = load i32, ptr %87, align 4, !tbaa !14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, ptr %39, align 4, !tbaa !14
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %92, i64 %42
  %94 = load i32, ptr %93, align 4, !tbaa !14
  %95 = icmp eq i32 %94, 97
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load ptr, ptr @tabout, align 8, !tbaa !13
  %98 = tail call i64 @fwrite(ptr nonnull @.str.16.240, i64 8, i64 1, ptr %97)
  br label %99

99:                                               ; preds = %96, %90, %86, %80
  %100 = load ptr, ptr @tabout, align 8, !tbaa !13
  %101 = tail call i64 @fwrite(ptr nonnull @.str.17.241, i64 6, i64 1, ptr %100)
  %102 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 2
  %103 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 1
  %104 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 2
  br label %105

105:                                              ; preds = %124, %99
  %106 = call fastcc ptr @gets1(ptr noundef nonnull %6) #20
  %107 = icmp eq ptr %106, null
  br i1 %107, label %127, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr %6, align 16, !tbaa !17
  %110 = icmp eq i8 %109, 84
  %111 = load i8, ptr %103, align 1
  %112 = icmp eq i8 %111, 125
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i8, ptr %102, align 2, !tbaa !17
  %116 = sext i8 %115 to i32
  %117 = load i32, ptr @tab, align 4, !tbaa !14
  %118 = icmp eq i32 %117, %116
  br i1 %118, label %127, label %121

119:                                              ; preds = %108
  %120 = select i1 %110, i1 %112, i1 false
  br i1 %120, label %121, label %124

121:                                              ; preds = %119, %114
  %122 = load i8, ptr %104, align 2, !tbaa !17
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %124, !llvm.loop !38

124:                                              ; preds = %121, %119
  %125 = load ptr, ptr @tabout, align 8, !tbaa !13
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.19.243, ptr noundef nonnull %6) #21
  br label %105, !llvm.loop !97

127:                                              ; preds = %121, %114, %105
  br i1 %28, label %134, label %128

128:                                              ; preds = %127
  %129 = load i8, ptr %3, align 1, !tbaa !17
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr @tabout, align 8, !tbaa !13
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.20.244, i32 noundef 31) #21
  br label %134

134:                                              ; preds = %131, %128, %127
  br i1 %44, label %141, label %135

135:                                              ; preds = %134
  %136 = load i8, ptr %4, align 1, !tbaa !17
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @tabout, align 8, !tbaa !13
  %140 = call i64 @fwrite(ptr nonnull @.str.21.245, i64 12, i64 1, ptr %139)
  br label %141

141:                                              ; preds = %138, %135, %134
  %142 = load ptr, ptr @tabout, align 8, !tbaa !13
  %143 = call i64 @fwrite(ptr nonnull @.str.4.228, i64 4, i64 1, ptr %142)
  %144 = load ptr, ptr @tabout, align 8, !tbaa !13
  %145 = call i64 @fwrite(ptr nonnull @.str.22.246, i64 4, i64 1, ptr %144)
  %146 = load ptr, ptr @tabout, align 8, !tbaa !13
  %147 = load i32, ptr @texname, align 4, !tbaa !14
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef nonnull @.str.23.247, i32 noundef %147) #21
  %149 = load ptr, ptr @tabout, align 8, !tbaa !13
  %150 = load i32, ptr @texname, align 4, !tbaa !14
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef nonnull @.str.24.248, i32 noundef %150) #21
  %152 = load ptr, ptr @tabout, align 8, !tbaa !13
  %153 = call i64 @fwrite(ptr nonnull @.str.25.249, i64 3, i64 1, ptr %152)
  %154 = load ptr, ptr @tabout, align 8, !tbaa !13
  %155 = call i64 @fwrite(ptr nonnull @.str.26.250, i64 6, i64 1, ptr %154)
  %156 = load i8, ptr %102, align 2, !tbaa !17
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %141
  %159 = getelementptr inbounds i8, ptr %6, i64 3
  br label %160

160:                                              ; preds = %160, %158
  %161 = phi ptr [ %0, %158 ], [ %165, %160 ]
  %162 = phi ptr [ %159, %158 ], [ %163, %160 ]
  %163 = getelementptr inbounds i8, ptr %162, i64 1
  %164 = load i8, ptr %162, align 1, !tbaa !17
  %165 = getelementptr inbounds i8, ptr %161, i64 1
  store i8 %164, ptr %161, align 1, !tbaa !17
  %166 = icmp eq i8 %164, 0
  br i1 %166, label %168, label %160, !llvm.loop !98

167:                                              ; preds = %141
  store i8 0, ptr %0, align 1, !tbaa !17
  br label %168

168:                                              ; preds = %167, %160
  %169 = load i32, ptr @texname, align 4, !tbaa !14
  %170 = load i32, ptr @texct, align 4, !tbaa !14
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr @texct, align 4, !tbaa !14
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [0 x i8], ptr @texstr, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !17
  %175 = sext i8 %174 to i32
  store i32 %175, ptr @texname, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #23
  ret i32 %169
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @maknew(ptr noundef %0) unnamed_addr #3 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %11 ]
  %4 = phi ptr [ null, %1 ], [ %12, %11 ]
  %5 = load i8, ptr %3, align 1, !tbaa !17
  switch i8 %5, label %11 [
    i8 0, label %14
    i8 92, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !17
  %9 = icmp eq i8 %8, 38
  %10 = select i1 %9, ptr %3, ptr %4
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %4, %2 ], [ %10, %6 ]
  %13 = getelementptr inbounds i8, ptr %3, i64 1
  br label %2, !llvm.loop !99

14:                                               ; preds = %2
  %.lcssa2 = phi ptr [ %4, %2 ]
  %15 = icmp eq ptr %.lcssa2, null
  br i1 %15, label %16, label %65

16:                                               ; preds = %40, %14
  %17 = phi i32 [ %41, %40 ], [ 0, %14 ]
  %18 = phi ptr [ %42, %40 ], [ %0, %14 ]
  %19 = load i8, ptr %18, align 1, !tbaa !17
  switch i8 %19, label %40 [
    i8 0, label %43
    i8 46, label %20
  ]

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @ineqn(ptr noundef nonnull %18, ptr noundef %0) #21, !range !16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = icmp ugt ptr %18, %0
  br i1 %24, label %25, label %31

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %18, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !17
  %28 = sext i8 %27 to i32
  %29 = add nsw i32 %28, -58
  %30 = icmp ult i32 %29, -10
  br i1 %30, label %31, label %37

31:                                               ; preds = %25, %23
  %32 = getelementptr inbounds i8, ptr %18, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !17
  %34 = sext i8 %33 to i32
  %35 = add nsw i32 %34, -58
  %36 = icmp ult i32 %35, -10
  br i1 %36, label %40, label %37

37:                                               ; preds = %31, %25
  %38 = ptrtoint ptr %18 to i64
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %37, %31, %20, %16
  %41 = phi i32 [ %17, %20 ], [ %39, %37 ], [ %17, %31 ], [ %17, %16 ]
  %42 = getelementptr inbounds i8, ptr %18, i64 1
  br label %16, !llvm.loop !100

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
  %50 = load i8, ptr %49, align 1, !tbaa !17
  %51 = sext i8 %50 to i32
  %52 = add nsw i32 %51, -58
  %53 = icmp ult i32 %52, -10
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = tail call fastcc i32 @ineqn(ptr noundef nonnull %48, ptr noundef %0) #21, !range !16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %47
  %58 = icmp ugt ptr %49, %0
  br i1 %58, label %47, label %87, !llvm.loop !101

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
  %67 = load ptr, ptr @exstore, align 8, !tbaa !13
  %68 = icmp eq ptr %67, null
  %69 = load ptr, ptr @exlim, align 8
  %70 = icmp ugt ptr %67, %69
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = tail call fastcc ptr @chspace() #20
  store ptr %73, ptr @exstore, align 8, !tbaa !13
  %74 = getelementptr inbounds i8, ptr %73, i64 2000
  store ptr %74, ptr @exlim, align 8, !tbaa !13
  br label %75

75:                                               ; preds = %72, %65
  %76 = phi ptr [ %67, %65 ], [ %73, %72 ]
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi ptr [ %76, %75 ], [ %82, %77 ]
  %79 = phi ptr [ %66, %75 ], [ %80, %77 ]
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i8, ptr %79, align 1, !tbaa !17
  %82 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %82, ptr @exstore, align 8, !tbaa !13
  store i8 %81, ptr %78, align 1, !tbaa !17
  %83 = icmp eq i8 %81, 0
  br i1 %83, label %84, label %77, !llvm.loop !102

84:                                               ; preds = %77
  store i8 0, ptr %66, align 1, !tbaa !17
  %85 = ptrtoint ptr %76 to i64
  %86 = trunc i64 %85 to i32
  br label %87

87:                                               ; preds = %84, %59, %57
  %88 = phi i32 [ %86, %84 ], [ 0, %59 ], [ 0, %57 ]
  ret i32 %88
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @vspand(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #13 {
  %4 = icmp sgt i32 %0, -1
  %5 = load i32, ptr @nlin, align 4
  %6 = icmp sgt i32 %5, %0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %58

8:                                                ; preds = %3
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %58

13:                                               ; preds = %8
  %14 = icmp eq i32 %2, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %13
  %16 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %9
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %9
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = sext i32 %21 to i64
  %23 = sext i32 %1 to i64
  %24 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %22, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !14
  %26 = icmp eq i32 %25, 94
  br i1 %26, label %58, label %27

27:                                               ; preds = %19, %15, %13
  %28 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %9
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds %struct.optstr, ptr %29, i64 %30
  %32 = getelementptr inbounds %struct.optstr, ptr %29, i64 %30, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %9
  %37 = load i32, ptr %36, align 4, !tbaa !14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load ptr, ptr %31, align 8, !tbaa !35
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 4294967168
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %39
  %45 = load i8, ptr %40, align 1, !tbaa !17
  %46 = icmp eq i8 %45, 92
  br i1 %46, label %47, label %58

47:                                               ; preds = %52, %44
  %48 = phi i8 [ %55, %52 ], [ 92, %44 ]
  %49 = phi ptr [ %54, %52 ], [ @.str.6.51, %44 ]
  %50 = phi ptr [ %53, %52 ], [ %40, %44 ]
  %51 = icmp eq i8 %48, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  %54 = getelementptr inbounds i8, ptr %49, i64 1
  %55 = load i8, ptr %53, align 1, !tbaa !17
  %56 = load i8, ptr %54, align 1, !tbaa !17
  %57 = icmp eq i8 %55, %56
  br i1 %57, label %47, label %58, !llvm.loop !38

58:                                               ; preds = %52, %47, %44, %39, %35, %27, %19, %8, %3
  %59 = phi i32 [ 0, %3 ], [ 0, %8 ], [ 1, %19 ], [ 0, %27 ], [ 0, %35 ], [ 0, %39 ], [ 0, %44 ], [ 1, %47 ], [ 0, %52 ]
  ret i32 %59
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @next(i32 noundef %0) unnamed_addr #14 {
  %2 = load i32, ptr @nlin, align 4, !tbaa !14
  %3 = add nsw i32 %0, 1
  %4 = icmp slt i32 %3, %2
  br i1 %4, label %5, label %23

5:                                                ; preds = %21, %1
  %6 = phi i32 [ %22, %21 ], [ %3, %1 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %13 = load ptr, ptr %12, align 8, !tbaa !13
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
  br label %5, !llvm.loop !103

23:                                               ; preds = %18, %11, %1
  %24 = phi i32 [ %0, %1 ], [ %6, %11 ], [ %6, %18 ]
  ret i32 %24
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @untext() unnamed_addr #15 {
  %1 = load ptr, ptr @tabout, align 8, !tbaa !13
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11.203, i32 noundef 35) #21
  %3 = load ptr, ptr @tabout, align 8, !tbaa !13
  %4 = tail call i64 @fwrite(ptr nonnull @.str.27.253, i64 4, i64 1, ptr %3)
  %5 = load ptr, ptr @tabout, align 8, !tbaa !13
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.28.254, i32 noundef 34) #21
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @left(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 {
  store i32 0, ptr %2, align 4, !tbaa !14
  %4 = tail call fastcc i32 @lefdata(i32 noundef %0, i32 noundef %1) #21, !range !104
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %100, label %6

6:                                                ; preds = %3
  %7 = add nsw i32 %0, 1
  %8 = load i32, ptr @nlin, align 4, !tbaa !14
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @next(i32 noundef %0) #21
  %12 = tail call fastcc i32 @lefdata(i32 noundef %11, i32 noundef %1) #21, !range !104
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %100, label %14

14:                                               ; preds = %10, %6
  %15 = icmp sgt i32 %0, -1
  br i1 %15, label %16, label %62

16:                                               ; preds = %41, %14
  %17 = phi i32 [ %18, %41 ], [ undef, %14 ]
  %18 = phi i32 [ %42, %41 ], [ %0, %14 ]
  %19 = tail call fastcc i32 @lefdata(i32 noundef %18, i32 noundef %1) #21, !range !104
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %.lcssa4 = phi i32 [ %17, %16 ]
  %.lcssa2 = phi i32 [ %18, %16 ]
  %22 = add i32 %.lcssa4, -1
  %23 = zext i32 %22 to i64
  br label %44

24:                                               ; preds = %16
  %25 = icmp eq i32 %18, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %24
  %27 = add i32 %18, -1
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %38, %26
  %30 = phi i64 [ %28, %26 ], [ %39, %38 ]
  %31 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %29
  %39 = add nsw i64 %30, -1
  %40 = icmp sgt i64 %30, 0
  br i1 %40, label %29, label %44, !llvm.loop !46

41:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %30, %34 ]
  %42 = trunc i64 %.lcssa1 to i32
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %16, label %44, !llvm.loop !105

44:                                               ; preds = %41, %38, %21
  %45 = phi i64 [ %23, %21 ], [ %28, %38 ], [ %28, %41 ]
  %46 = phi i32 [ %.lcssa2, %21 ], [ -1, %38 ], [ %42, %41 ]
  %47 = phi i32 [ %.lcssa4, %21 ], [ %18, %38 ], [ %18, %41 ]
  br label %48

48:                                               ; preds = %57, %44
  %49 = phi i64 [ %45, %44 ], [ %58, %57 ]
  %50 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %48
  %58 = add nsw i64 %49, -1
  %59 = icmp sgt i64 %49, 0
  br i1 %59, label %48, label %68, !llvm.loop !46

60:                                               ; preds = %53
  %.lcssa = phi i64 [ %49, %53 ]
  %61 = trunc i64 %.lcssa to i32
  br label %62

62:                                               ; preds = %60, %14
  %63 = phi i32 [ %47, %60 ], [ undef, %14 ]
  %64 = phi i32 [ %46, %60 ], [ %0, %14 ]
  %65 = phi i32 [ %61, %60 ], [ undef, %14 ]
  %66 = freeze i32 %65
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %57, %24
  %69 = phi i32 [ %64, %62 ], [ %46, %57 ], [ -1, %24 ]
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi i32 [ %69, %68 ], [ %64, %62 ]
  %72 = phi i32 [ 0, %68 ], [ %63, %62 ]
  store i32 %4, ptr %2, align 4, !tbaa !14
  %73 = add nsw i32 %71, 1
  %74 = icmp slt i32 %73, %72
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = sext i32 %73 to i64
  br label %77

77:                                               ; preds = %85, %75
  %78 = phi i64 [ %76, %75 ], [ %86, %85 ]
  %79 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !13
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %80, ptr noundef nonnull dereferenceable(4) @.str.22.325) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %82, %77
  %86 = add nsw i64 %78, 1
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %72, %87
  br i1 %88, label %89, label %77, !llvm.loop !106

89:                                               ; preds = %89, %85
  %90 = phi i64 [ %97, %89 ], [ %76, %85 ]
  %91 = phi i32 [ %96, %89 ], [ %72, %85 ]
  %92 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %90
  %93 = load i32, ptr %92, align 4, !tbaa !14
  %94 = icmp eq i32 %93, 0
  %95 = trunc i64 %90 to i32
  %96 = select i1 %94, i32 %91, i32 %95
  %97 = add nsw i64 %90, 1
  %98 = sext i32 %96 to i64
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %89, label %100, !llvm.loop !107

100:                                              ; preds = %89, %82, %70, %10, %3
  %101 = phi i32 [ -1, %3 ], [ -1, %10 ], [ %72, %70 ], [ %96, %89 ], [ %72, %82 ]
  ret i32 %101
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @fspan(i32 noundef %0, i32 noundef %1) unnamed_addr #17 {
  %3 = add nsw i32 %1, 1
  %4 = load i32, ptr @ncol, align 4, !tbaa !14
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %7
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = sext i32 %17 to i64
  %19 = sext i32 %3 to i64
  %20 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = icmp eq i32 %21, 115
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %15, %11, %6, %2
  %25 = phi i32 [ 0, %2 ], [ %23, %15 ], [ 0, %6 ], [ 0, %11 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @wide(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #15 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 4294967168
  %6 = icmp eq i64 %5, 0
  %7 = load ptr, ptr @tabout, align 8, !tbaa !13
  br i1 %6, label %44, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @F1, align 4, !tbaa !14
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.31, i32 noundef %9) #21
  %11 = load i8, ptr %1, align 1, !tbaa !17
  %12 = icmp sgt i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load ptr, ptr @tabout, align 8, !tbaa !13
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !17
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, ptr @.str.46, ptr @.str.45.142
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull %18, ptr noundef nonnull %1) #21
  br label %20

20:                                               ; preds = %13, %8
  %21 = load i8, ptr %2, align 1, !tbaa !17
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @tabout, align 8, !tbaa !13
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.47, ptr noundef nonnull %2) #21
  br label %26

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr @tabout, align 8, !tbaa !13
  %28 = tail call i32 @fputs(ptr %0, ptr %27)
  %29 = load i8, ptr %1, align 1, !tbaa !17
  %30 = icmp sgt i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load ptr, ptr @tabout, align 8, !tbaa !13
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.40) #21
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i8, ptr %2, align 1, !tbaa !17
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @tabout, align 8, !tbaa !13
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.26.147) #21
  br label %40

40:                                               ; preds = %37, %34
  %41 = load ptr, ptr @tabout, align 8, !tbaa !13
  %42 = load i32, ptr @F1, align 4, !tbaa !14
  %43 = tail call i32 @fputc(i32 %42, ptr %41)
  br label %46

44:                                               ; preds = %3
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.36, ptr noundef %0) #21
  br label %46

46:                                               ; preds = %44, %40
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @lspan(i32 noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %37

7:                                                ; preds = %2
  %8 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %9 = load i32, ptr %8, align 4, !tbaa !14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %3
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = sext i32 %13 to i64
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = icmp eq i32 %17, 115
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = add nsw i32 %1, 1
  %21 = load i32, ptr @ncol, align 4, !tbaa !14
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = icmp eq i32 %26, 115
  br i1 %27, label %37, label %28

28:                                               ; preds = %23, %19
  br label %29

29:                                               ; preds = %29, %28
  %30 = phi i32 [ %32, %29 ], [ 0, %28 ]
  %31 = phi i64 [ %33, %29 ], [ %15, %28 ]
  %32 = add nuw nsw i32 %30, 1
  %33 = add i64 %31, -1
  %34 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %14, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !14
  %36 = icmp eq i32 %35, 115
  br i1 %36, label %29, label %37

37:                                               ; preds = %29, %23, %11, %7, %2
  %38 = phi i32 [ 0, %11 ], [ 0, %23 ], [ 0, %2 ], [ 0, %7 ], [ %32, %29 ]
  ret i32 %38
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @drawline(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #15 {
  switch i32 %3, label %137 [
    i32 45, label %10
    i32 61, label %7
    i32 4, label %10
  ]

7:                                                ; preds = %6
  %8 = load i1, ptr @pr1403, align 4
  %9 = select i1 %8, i32 1, i32 2
  br label %10

10:                                               ; preds = %7, %6, %6
  %11 = phi i32 [ %9, %7 ], [ 1, %6 ], [ 1, %6 ]
  %12 = sub nsw i32 %2, %1
  %13 = load i32, ptr @ncol, align 4, !tbaa !14
  %14 = icmp sge i32 %12, %13
  %15 = icmp ne i32 %4, 0
  %16 = or i1 %15, %14
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = tail call fastcc i32 @allh(i32 noundef %0) #20, !range !16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load ptr, ptr @tabout, align 8, !tbaa !13
  %22 = tail call i64 @fwrite(ptr nonnull @.str.4.293, i64 8, i64 1, ptr %21)
  br label %23

23:                                               ; preds = %20, %17, %10
  %24 = phi i1 [ false, %20 ], [ true, %17 ], [ true, %10 ]
  %25 = icmp eq i32 %5, 0
  %26 = add nsw i32 %1, 40
  %27 = icmp ugt i32 %11, 1
  %28 = add nsw i32 %2, 1
  %29 = add nsw i32 %2, 80
  %30 = add nsw i32 %2, 41
  br label %31

31:                                               ; preds = %122, %23
  %32 = phi ptr [ @.str.14.341, %23 ], [ %94, %122 ]
  %33 = phi i32 [ 0, %23 ], [ %38, %122 ]
  %34 = phi ptr [ @.str.14.341, %23 ], [ %93, %122 ]
  %35 = phi i32 [ 0, %23 ], [ %125, %122 ]
  %36 = shl nuw nsw i32 %35, 1
  %37 = sub nsw i32 %36, %11
  %38 = add nsw i32 %37, 1
  %39 = icmp eq i32 %38, %33
  br i1 %39, label %44, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr @tabout, align 8, !tbaa !13
  %42 = sub nsw i32 %38, %33
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.4.332, i32 noundef %42) #21
  br label %44

44:                                               ; preds = %40, %31
  br i1 %25, label %45, label %89

45:                                               ; preds = %44
  tail call fastcc void @tohcol(i32 noundef %1) #20
  %46 = tail call fastcc i32 @interv(i32 noundef %0, i32 noundef %1) #20, !range !108
  br i1 %27, label %47, label %62

47:                                               ; preds = %45
  switch i32 %46, label %55 [
    i32 1, label %48
    i32 2, label %51
    i32 3, label %54
  ]

48:                                               ; preds = %47
  %49 = icmp eq i32 %35, 0
  %50 = select i1 %49, ptr @.str.6.296, ptr @.str.7.297
  br label %55

51:                                               ; preds = %47
  %52 = icmp eq i32 %35, 1
  %53 = select i1 %52, ptr @.str.6.296, ptr @.str.7.297
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %51, %48, %47
  %56 = phi ptr [ %34, %47 ], [ @.str.6.296, %54 ], [ %53, %51 ], [ %50, %48 ]
  %57 = load i8, ptr %56, align 1, !tbaa !17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @tabout, align 8, !tbaa !13
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.8.298, ptr noundef nonnull %56) #21
  br label %76

62:                                               ; preds = %45
  %63 = add nsw i32 %46, -1
  %64 = icmp ult i32 %63, 3
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = zext i32 %63 to i64
  %67 = getelementptr inbounds [3 x ptr], ptr @switch.table.drawline, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi ptr [ %34, %62 ], [ %68, %65 ]
  %71 = load i8, ptr %70, align 1, !tbaa !17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @tabout, align 8, !tbaa !13
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.8.298, ptr noundef nonnull %70) #21
  br label %85

76:                                               ; preds = %59, %55
  %77 = tail call fastcc i32 @interv(i32 noundef %0, i32 noundef %28) #20, !range !108
  switch i32 %77, label %92 [
    i32 1, label %78
    i32 2, label %81
    i32 3, label %84
  ]

78:                                               ; preds = %76
  %79 = icmp eq i32 %35, 0
  %80 = select i1 %79, ptr @.str.7.297, ptr @.str.9.299
  br label %92

81:                                               ; preds = %76
  %82 = icmp eq i32 %35, 1
  %83 = select i1 %82, ptr @.str.7.297, ptr @.str.9.299
  br label %92

84:                                               ; preds = %76
  br label %92

85:                                               ; preds = %73, %69
  %86 = tail call fastcc i32 @interv(i32 noundef %0, i32 noundef %28) #20, !range !108
  switch i32 %86, label %92 [
    i32 1, label %87
    i32 2, label %87
    i32 3, label %88
  ]

87:                                               ; preds = %85, %85
  br label %92

88:                                               ; preds = %85
  br label %92

89:                                               ; preds = %44
  %90 = load ptr, ptr @tabout, align 8, !tbaa !13
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.10.300, i32 noundef %26) #21
  br label %92

92:                                               ; preds = %89, %88, %87, %85, %84, %81, %78, %76
  %93 = phi ptr [ %56, %76 ], [ %56, %84 ], [ %56, %81 ], [ %56, %78 ], [ %70, %85 ], [ %70, %88 ], [ %70, %87 ], [ %34, %89 ]
  %94 = phi ptr [ %32, %76 ], [ @.str.7.297, %84 ], [ %83, %81 ], [ %80, %78 ], [ %32, %85 ], [ @.str.7.297, %88 ], [ @.str.9.299, %87 ], [ %32, %89 ]
  %95 = load ptr, ptr @tabout, align 8, !tbaa !13
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.5.333, i32 noundef 33) #21
  %97 = load i32, ptr @linsize, align 4, !tbaa !14
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load ptr, ptr @tabout, align 8, !tbaa !13
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.6.334, i32 noundef 33) #21
  br label %102

102:                                              ; preds = %99, %92
  br i1 %25, label %106, label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr @tabout, align 8, !tbaa !13
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.13.303, i32 noundef %29) #21
  br label %116

106:                                              ; preds = %102
  %107 = load i1, ptr @pr1403, align 4
  %108 = select i1 %107, i32 ptrtoint (ptr @.str.16.305 to i32), i32 ptrtoint (ptr @.str.14.304 to i32)
  %109 = load i32, ptr @ncol, align 4, !tbaa !14
  %110 = icmp slt i32 %28, %109
  %111 = load ptr, ptr @tabout, align 8, !tbaa !13
  br i1 %110, label %114, label %112

112:                                              ; preds = %106
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.17.306, ptr noundef %94, i32 noundef %108) #21
  br label %116

114:                                              ; preds = %106
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.18.307, i32 noundef %29, i32 noundef %30, ptr noundef %94, i32 noundef %108) #21
  br label %116

116:                                              ; preds = %114, %112, %103
  %117 = load i32, ptr @linsize, align 4, !tbaa !14
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr @tabout, align 8, !tbaa !13
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.18.345, i32 noundef 33) #21
  br label %122

122:                                              ; preds = %119, %116
  %123 = load ptr, ptr @tabout, align 8, !tbaa !13
  %124 = tail call i64 @fwrite(ptr nonnull @.str.20.309, i64 3, i64 1, ptr %123)
  %125 = add nuw nsw i32 %35, 1
  %126 = icmp eq i32 %125, %11
  br i1 %126, label %127, label %31, !llvm.loop !109

127:                                              ; preds = %122
  %.lcssa1 = phi i32 [ %37, %122 ]
  %.lcssa = phi i32 [ %38, %122 ]
  %128 = icmp eq i32 %.lcssa, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %127
  %130 = load ptr, ptr @tabout, align 8, !tbaa !13
  %131 = xor i32 %.lcssa1, -1
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.4.332, i32 noundef %131) #21
  br label %133

133:                                              ; preds = %129, %127
  br i1 %24, label %137, label %134

134:                                              ; preds = %133
  %135 = load ptr, ptr @tabout, align 8, !tbaa !13
  %136 = tail call i64 @fwrite(ptr nonnull @.str.21.310, i64 8, i64 1, ptr %135)
  br label %137

137:                                              ; preds = %134, %133, %6
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @tohcol(i32 noundef %0) unnamed_addr #15 {
  %2 = icmp eq i32 %0, 0
  %3 = load ptr, ptr @tabout, align 8, !tbaa !13
  br i1 %2, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.283, i64 6, i64 1, ptr %3)
  br label %10

6:                                                ; preds = %1
  %7 = add nsw i32 %0, 40
  %8 = add nsw i32 %0, 79
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.1.284, i32 noundef %7, i32 noundef %8) #21
  br label %10

10:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @drawvert(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #15 {
  %5 = sext i32 %1 to i64
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ %8, %6 ], [ %5, %4 ]
  %8 = add nsw i64 %7, 1
  %9 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !110

12:                                               ; preds = %6
  %.lcssa3 = phi i64 [ %8, %6 ]
  %.lcssa2 = phi ptr [ %9, %6 ]
  %13 = trunc i64 %.lcssa3 to i32
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %192

15:                                               ; preds = %12
  %16 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %.lcssa3
  %17 = icmp eq i32 %3, 1
  %18 = icmp sgt i32 %0, 0
  %19 = icmp eq i32 %0, 0
  %20 = zext i32 %0 to i64
  %21 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %20
  br label %22

22:                                               ; preds = %189, %15
  %23 = phi i32 [ 118, %15 ], [ %103, %189 ]
  %24 = phi i32 [ 0, %15 ], [ %190, %189 ]
  %25 = phi i32 [ 0, %15 ], [ %30, %189 ]
  %26 = phi ptr [ null, %15 ], [ %101, %189 ]
  %27 = phi ptr [ null, %15 ], [ %53, %189 ]
  %28 = shl nuw nsw i32 %24, 1
  %29 = sub nsw i32 %28, %3
  %30 = add nsw i32 %29, 1
  %31 = icmp eq i32 %30, %25
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load ptr, ptr @tabout, align 8, !tbaa !13
  %34 = sub nsw i32 %30, %25
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.328, i32 noundef %34) #21
  br label %36

36:                                               ; preds = %32, %22
  %37 = load i32, ptr @nlin, align 4, !tbaa !14
  %38 = icmp sgt i32 %37, %13
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32, ptr %16, align 4, !tbaa !14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load ptr, ptr %.lcssa2, align 8, !tbaa !13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @allh(i32 noundef %13) #20, !range !16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %42
  %49 = tail call fastcc i32 @midbar(i32 noundef %13, i32 noundef %2) #21, !range !111
  switch i32 %49, label %52 [
    i32 45, label %50
    i32 61, label %51
  ]

50:                                               ; preds = %48
  br label %52

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51, %50, %48, %45, %39, %36
  %53 = phi ptr [ %27, %48 ], [ @.str.1.329, %51 ], [ @.str.1.329, %50 ], [ %27, %36 ], [ %27, %45 ], [ %27, %39 ]
  %54 = phi i32 [ 0, %48 ], [ 1, %51 ], [ 0, %50 ], [ 0, %36 ], [ 2, %45 ], [ 2, %39 ]
  %55 = tail call fastcc i32 @interh(i32 noundef %13, i32 noundef %2) #20, !range !108
  br i1 %17, label %67, label %56

56:                                               ; preds = %52
  switch i32 %55, label %72 [
    i32 3, label %57
    i32 2, label %59
    i32 1, label %63
  ]

57:                                               ; preds = %56
  %58 = add nsw i32 %54, -1
  br label %72

59:                                               ; preds = %56
  %60 = icmp eq i32 %24, 0
  %61 = select i1 %60, i32 1, i32 -1
  %62 = add nsw i32 %54, %61
  br label %72

63:                                               ; preds = %56
  %64 = icmp eq i32 %24, 1
  %65 = select i1 %64, i32 1, i32 -1
  %66 = add nsw i32 %54, %65
  br label %72

67:                                               ; preds = %52
  switch i32 %55, label %72 [
    i32 3, label %68
    i32 2, label %70
    i32 1, label %70
  ]

68:                                               ; preds = %67
  %69 = add nsw i32 %54, -1
  br label %72

70:                                               ; preds = %67, %67
  %71 = add nuw nsw i32 %54, 1
  br label %72

72:                                               ; preds = %70, %68, %67, %63, %59, %57, %56
  %73 = phi i32 [ %54, %67 ], [ %71, %70 ], [ %69, %68 ], [ %58, %57 ], [ %62, %59 ], [ %66, %63 ], [ %54, %56 ]
  br i1 %18, label %74, label %95

74:                                               ; preds = %77, %72
  %75 = phi i64 [ %78, %77 ], [ %20, %72 ]
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = add nsw i64 %75, -1
  %79 = and i64 %78, 4294967295
  %80 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %74, !llvm.loop !112

83:                                               ; preds = %77
  %.lcssa1 = phi i64 [ %78, %77 ]
  %.lcssa = phi i64 [ %79, %77 ]
  %84 = trunc i64 %.lcssa1 to i32
  %85 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %.lcssa
  %86 = load i32, ptr %85, align 4, !tbaa !14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = tail call fastcc i32 @allh(i32 noundef %84) #20, !range !16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = tail call fastcc i32 @midbar(i32 noundef %84, i32 noundef %2) #21, !range !111
  switch i32 %92, label %94 [
    i32 45, label %100
    i32 61, label %93
  ]

93:                                               ; preds = %91
  br label %100

94:                                               ; preds = %91
  br label %100

95:                                               ; preds = %72
  br i1 %19, label %96, label %100

96:                                               ; preds = %95
  %97 = tail call fastcc i32 @allh(i32 noundef 0) #20, !range !16
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, i32 %23, i32 109
  br label %100

100:                                              ; preds = %96, %95, %94, %93, %91, %88, %83, %74
  %101 = phi ptr [ %26, %94 ], [ @.str.2.330, %93 ], [ %26, %95 ], [ %26, %88 ], [ %26, %83 ], [ @.str.2.330, %91 ], [ %26, %96 ], [ %26, %74 ]
  %102 = phi i32 [ 0, %94 ], [ -1, %93 ], [ 0, %95 ], [ 0, %88 ], [ 0, %83 ], [ 0, %91 ], [ 0, %96 ], [ -4, %74 ]
  %103 = phi i32 [ 109, %94 ], [ %23, %93 ], [ %23, %95 ], [ %23, %88 ], [ %23, %83 ], [ %23, %91 ], [ %99, %96 ], [ %23, %74 ]
  %104 = tail call fastcc i32 @interh(i32 noundef %0, i32 noundef %2) #20, !range !108
  br i1 %17, label %116, label %105

105:                                              ; preds = %100
  switch i32 %104, label %121 [
    i32 3, label %106
    i32 1, label %108
    i32 2, label %112
  ]

106:                                              ; preds = %105
  %107 = add nsw i32 %102, 1
  br label %121

108:                                              ; preds = %105
  %109 = icmp eq i32 %24, 0
  %110 = select i1 %109, i32 1, i32 -1
  %111 = add nsw i32 %102, %110
  br label %121

112:                                              ; preds = %105
  %113 = icmp eq i32 %24, 1
  %114 = select i1 %113, i32 1, i32 -1
  %115 = add nsw i32 %102, %114
  br label %121

116:                                              ; preds = %100
  switch i32 %104, label %121 [
    i32 3, label %117
    i32 1, label %119
    i32 2, label %119
  ]

117:                                              ; preds = %116
  %118 = add nsw i32 %102, 1
  br label %121

119:                                              ; preds = %116, %116
  %120 = add nsw i32 %102, -1
  br label %121

121:                                              ; preds = %119, %117, %116, %112, %108, %106, %105
  %122 = phi i32 [ %102, %105 ], [ %115, %112 ], [ %111, %108 ], [ %107, %106 ], [ %102, %116 ], [ %120, %119 ], [ %118, %117 ]
  %123 = icmp eq ptr %53, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @tabout, align 8, !tbaa !13
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.3.331, ptr noundef nonnull %53) #21
  br label %127

127:                                              ; preds = %124, %121
  %128 = icmp eq i32 %73, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %127
  %130 = load ptr, ptr @tabout, align 8, !tbaa !13
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.4.332, i32 noundef %73) #21
  br label %132

132:                                              ; preds = %129, %127
  %133 = load ptr, ptr @tabout, align 8, !tbaa !13
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.5.333, i32 noundef 33) #21
  %135 = load i32, ptr @linsize, align 4, !tbaa !14
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr @tabout, align 8, !tbaa !13
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.6.334, i32 noundef 33) #21
  br label %140

140:                                              ; preds = %137, %132
  %141 = load ptr, ptr @tabout, align 8, !tbaa !13
  %142 = tail call i64 @fwrite(ptr nonnull @.str.7.335, i64 11, i64 1, ptr %141)
  %143 = load ptr, ptr @tabout, align 8, !tbaa !13
  %144 = load i32, ptr %21, align 4, !tbaa !14
  %145 = add nsw i32 %144, 96
  %146 = icmp eq i32 %103, 118
  %147 = select i1 %146, ptr @.str.9.336, ptr @.str.10.337
  %148 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.8.338, i32 noundef %145, ptr noundef nonnull %147) #21
  %149 = icmp eq ptr %101, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = load ptr, ptr @tabout, align 8, !tbaa !13
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef nonnull @.str.11.339, ptr noundef nonnull %101) #21
  br label %153

153:                                              ; preds = %150, %140
  br i1 %123, label %157, label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr @tabout, align 8, !tbaa !13
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.11.339, ptr noundef nonnull %53) #21
  br label %157

157:                                              ; preds = %154, %153
  %158 = icmp eq i32 %122, %73
  br i1 %158, label %165, label %159

159:                                              ; preds = %157
  %160 = sub nsw i32 %122, %73
  %161 = load ptr, ptr @tabout, align 8, !tbaa !13
  %162 = icmp sgt i32 %160, -1
  %163 = select i1 %162, ptr @.str.13.340, ptr @.str.14.341
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.12.342, ptr noundef nonnull %163, i32 noundef %160) #21
  br label %165

165:                                              ; preds = %159, %157
  %166 = load ptr, ptr @tabout, align 8, !tbaa !13
  %167 = load i32, ptr %21, align 4, !tbaa !14
  %168 = add nsw i32 %167, 96
  %169 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef nonnull @.str.15.343, i32 noundef %168, ptr noundef nonnull %147) #21
  br i1 %149, label %173, label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr @tabout, align 8, !tbaa !13
  %172 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef nonnull @.str.16.344, ptr noundef nonnull %101) #21
  br label %173

173:                                              ; preds = %170, %165
  %174 = icmp eq i32 %122, 0
  br i1 %174, label %181, label %175

175:                                              ; preds = %173
  %176 = load ptr, ptr @tabout, align 8, !tbaa !13
  %177 = sub nsw i32 0, %122
  %178 = icmp slt i32 %122, 0
  %179 = select i1 %178, ptr @.str.13.340, ptr @.str.14.341
  %180 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.12.342, ptr noundef nonnull %179, i32 noundef %177) #21
  br label %181

181:                                              ; preds = %175, %173
  %182 = load ptr, ptr @tabout, align 8, !tbaa !13
  %183 = tail call i32 @fputc(i32 39, ptr %182)
  %184 = load i32, ptr @linsize, align 4, !tbaa !14
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr @tabout, align 8, !tbaa !13
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.18.345, i32 noundef 33) #21
  br label %189

189:                                              ; preds = %186, %181
  %190 = add nuw nsw i32 %24, 1
  %191 = icmp eq i32 %190, %3
  br i1 %191, label %192, label %22, !llvm.loop !113

192:                                              ; preds = %189, %12
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @putline(i32 noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  store i1 false, ptr @watchout, align 4
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  store i1 false, ptr @once, align 4
  %7 = load i32, ptr @allflg, align 4, !tbaa !14
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr @boxflg, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = load i32, ptr @dboxflg, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = select i1 %13, i32 61, i32 45
  tail call fastcc void @fullwide(i32 noundef 0, i32 noundef %16) #20
  br label %17

17:                                               ; preds = %15, %6, %2
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %106

22:                                               ; preds = %17
  %23 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %18
  %24 = load i32, ptr %23, align 4, !tbaa !14
  %25 = icmp eq i32 %24, 0
  %26 = load i32, ptr @ncol, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %106

29:                                               ; preds = %22
  %30 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %18
  br label %31

31:                                               ; preds = %100, %29
  %32 = phi i64 [ 0, %29 ], [ %102, %100 ]
  %33 = phi i32 [ undef, %29 ], [ %101, %100 ]
  %34 = load ptr, ptr %30, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.optstr, ptr %34, i64 %32
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %100, label %38

38:                                               ; preds = %31
  %39 = ptrtoint ptr %36 to i64
  %40 = and i64 %39, 4294967168
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %97, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %36, align 1, !tbaa !17
  %44 = icmp eq i8 %43, 92
  br i1 %44, label %45, label %100

45:                                               ; preds = %50, %42
  %46 = phi i8 [ %53, %50 ], [ 92, %42 ]
  %47 = phi ptr [ %52, %50 ], [ @.str.6.51, %42 ]
  %48 = phi ptr [ %51, %50 ], [ %36, %42 ]
  %49 = icmp eq i8 %46, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %48, i64 1
  %52 = getelementptr inbounds i8, ptr %47, i64 1
  %53 = load i8, ptr %51, align 1, !tbaa !17
  %54 = load i8, ptr %52, align 1, !tbaa !17
  %55 = icmp eq i8 %53, %54
  br i1 %55, label %45, label %96, !llvm.loop !38

56:                                               ; preds = %45
  %57 = load i32, ptr @nlin, align 4, !tbaa !14
  %58 = icmp sgt i32 %57, %1
  br i1 %58, label %59, label %86

59:                                               ; preds = %83, %56
  %60 = phi i32 [ %84, %83 ], [ %1, %56 ]
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !13
  %64 = getelementptr inbounds %struct.optstr, ptr %63, i64 %32
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  %66 = ptrtoint ptr %65 to i64
  %67 = and i64 %66, 4294967168
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %86, label %69

69:                                               ; preds = %59
  %70 = load i8, ptr %65, align 1, !tbaa !17
  %71 = icmp eq i8 %70, 92
  br i1 %71, label %72, label %86

72:                                               ; preds = %77, %69
  %73 = phi i8 [ %80, %77 ], [ 92, %69 ]
  %74 = phi ptr [ %79, %77 ], [ @.str.6.51, %69 ]
  %75 = phi ptr [ %78, %77 ], [ %65, %69 ]
  %76 = icmp eq i8 %73, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds i8, ptr %75, i64 1
  %79 = getelementptr inbounds i8, ptr %74, i64 1
  %80 = load i8, ptr %78, align 1, !tbaa !17
  %81 = load i8, ptr %79, align 1, !tbaa !17
  %82 = icmp eq i8 %80, %81
  br i1 %82, label %72, label %86, !llvm.loop !38

83:                                               ; preds = %72
  %84 = tail call fastcc i32 @next(i32 noundef %60) #20
  %85 = icmp slt i32 %84, %57
  br i1 %85, label %59, label %86, !llvm.loop !114

86:                                               ; preds = %83, %77, %69, %59, %56
  %87 = phi i64 [ %39, %56 ], [ %66, %77 ], [ %66, %83 ], [ %66, %59 ], [ %66, %69 ]
  %88 = phi i32 [ %1, %56 ], [ %60, %77 ], [ %60, %69 ], [ %60, %59 ], [ %84, %83 ]
  %89 = phi ptr [ %36, %56 ], [ %65, %77 ], [ %65, %83 ], [ %65, %59 ], [ %65, %69 ]
  %90 = trunc i64 %87 to i32
  %91 = add i32 %90, -1
  %92 = icmp ult i32 %91, 127
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load ptr, ptr @tabout, align 8, !tbaa !13
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.113, ptr noundef %89) #21
  br label %100

96:                                               ; preds = %50
  br i1 %41, label %97, label %100

97:                                               ; preds = %96, %38
  %98 = load ptr, ptr @tabout, align 8, !tbaa !13
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.113, ptr noundef nonnull %36) #21
  store i1 true, ptr @watchout, align 4
  br label %100

100:                                              ; preds = %97, %96, %93, %86, %42, %31
  %101 = phi i32 [ %33, %31 ], [ %88, %93 ], [ %88, %86 ], [ %33, %96 ], [ %33, %97 ], [ %33, %42 ]
  %102 = add nuw nsw i64 %32, 1
  %103 = load i32, ptr @ncol, align 4, !tbaa !14
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %31, label %106, !llvm.loop !115

106:                                              ; preds = %100, %22, %17
  %107 = phi i32 [ undef, %22 ], [ undef, %17 ], [ %101, %100 ]
  %108 = getelementptr inbounds [0 x i32], ptr @linestop, i64 0, i64 %18
  %109 = load i32, ptr %108, align 4, !tbaa !14
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr @tabout, align 8, !tbaa !13
  %113 = add nsw i32 %109, 96
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.1.114, i32 noundef %113) #21
  br label %115

115:                                              ; preds = %111, %106
  %116 = add i32 %1, -1
  %117 = icmp sgt i32 %1, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = zext i32 %116 to i64
  br label %120

120:                                              ; preds = %129, %118
  %121 = phi i64 [ %119, %118 ], [ %130, %129 ]
  %122 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !14
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %121
  %127 = load ptr, ptr %126, align 8, !tbaa !13
  %128 = icmp eq ptr %127, null
  br i1 %128, label %132, label %129

129:                                              ; preds = %125, %120
  %130 = add nsw i64 %121, -1
  %131 = icmp sgt i64 %121, 0
  br i1 %131, label %120, label %134, !llvm.loop !46

132:                                              ; preds = %125
  %.lcssa14 = phi i64 [ %121, %125 ]
  %133 = trunc i64 %.lcssa14 to i32
  br label %134

134:                                              ; preds = %132, %129, %115
  %135 = phi i32 [ %116, %115 ], [ %133, %132 ], [ -1, %129 ]
  %136 = load ptr, ptr %19, align 8, !tbaa !13
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %136) #21
  br label %1324

140:                                              ; preds = %134
  %141 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %18
  %142 = load i32, ptr %141, align 4, !tbaa !14
  switch i32 %142, label %1324 [
    i32 0, label %143
    i32 61, label %153
    i32 45, label %153
  ]

143:                                              ; preds = %140
  %144 = load i32, ptr @ncol, align 4, !tbaa !14
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %294

146:                                              ; preds = %143
  %147 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %18
  %148 = icmp sgt i32 %135, -1
  %149 = zext i32 %135 to i64
  %150 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %149
  %151 = zext i32 %144 to i64
  %152 = load ptr, ptr %147, align 8, !tbaa !13
  br label %154

153:                                              ; preds = %140, %140
  tail call fastcc void @fullwide(i32 noundef %1, i32 noundef %142) #20
  br label %1324

154:                                              ; preds = %202, %146
  %155 = phi i64 [ 0, %146 ], [ %203, %202 ]
  %156 = phi i32 [ 0, %146 ], [ %204, %202 ]
  %157 = getelementptr inbounds %struct.optstr, ptr %152, i64 %155
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  %159 = ptrtoint ptr %158 to i64
  %160 = and i64 %159, 4294967168
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %154
  %163 = load i8, ptr %158, align 1, !tbaa !17
  %164 = icmp eq i8 %163, 92
  br i1 %164, label %165, label %176

165:                                              ; preds = %170, %162
  %166 = phi i8 [ %173, %170 ], [ 92, %162 ]
  %167 = phi ptr [ %172, %170 ], [ @.str.6.51, %162 ]
  %168 = phi ptr [ %171, %170 ], [ %158, %162 ]
  %169 = icmp eq i8 %166, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds i8, ptr %168, i64 1
  %172 = getelementptr inbounds i8, ptr %167, i64 1
  %173 = load i8, ptr %171, align 1, !tbaa !17
  %174 = load i8, ptr %172, align 1, !tbaa !17
  %175 = icmp eq i8 %173, %174
  br i1 %175, label %165, label %176, !llvm.loop !38

176:                                              ; preds = %170, %165, %162, %154
  %177 = phi i32 [ %156, %154 ], [ %156, %162 ], [ %156, %170 ], [ 1, %165 ]
  br i1 %148, label %178, label %199

178:                                              ; preds = %176
  %179 = load ptr, ptr %150, align 8, !tbaa !13
  %180 = getelementptr inbounds %struct.optstr, ptr %179, i64 %155
  %181 = load ptr, ptr %180, align 8, !tbaa !35
  %182 = ptrtoint ptr %181 to i64
  %183 = and i64 %182, 4294967168
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %199, label %185

185:                                              ; preds = %178
  %186 = load i8, ptr %181, align 1, !tbaa !17
  %187 = icmp eq i8 %186, 92
  br i1 %187, label %188, label %199

188:                                              ; preds = %193, %185
  %189 = phi i8 [ %196, %193 ], [ 92, %185 ]
  %190 = phi ptr [ %195, %193 ], [ @.str.6.51, %185 ]
  %191 = phi ptr [ %194, %193 ], [ %181, %185 ]
  %192 = icmp eq i8 %189, 0
  br i1 %192, label %205, label %193

193:                                              ; preds = %188
  %194 = getelementptr inbounds i8, ptr %191, i64 1
  %195 = getelementptr inbounds i8, ptr %190, i64 1
  %196 = load i8, ptr %194, align 1, !tbaa !17
  %197 = load i8, ptr %195, align 1, !tbaa !17
  %198 = icmp eq i8 %196, %197
  br i1 %198, label %188, label %199, !llvm.loop !38

199:                                              ; preds = %193, %185, %178, %176
  %200 = add nuw nsw i64 %155, 1
  %201 = icmp slt i64 %200, %151
  br i1 %201, label %202, label %208

202:                                              ; preds = %205, %199
  %203 = phi i64 [ %200, %199 ], [ %206, %205 ]
  %204 = phi i32 [ %177, %199 ], [ 1, %205 ]
  br label %154, !llvm.loop !116

205:                                              ; preds = %188
  %206 = add nuw nsw i64 %155, 1
  %207 = icmp slt i64 %206, %151
  br i1 %207, label %202, label %210

208:                                              ; preds = %199
  %.lcssa13 = phi i32 [ %177, %199 ]
  %209 = icmp eq i32 %.lcssa13, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %208, %205
  %211 = load ptr, ptr @tabout, align 8, !tbaa !13
  %212 = tail call i64 @fwrite(ptr nonnull @.str.2.115, i64 17, i64 1, ptr %211)
  %213 = load ptr, ptr @tabout, align 8, !tbaa !13
  %214 = tail call i64 @fwrite(ptr nonnull @.str.3.116, i64 13, i64 1, ptr %213)
  %215 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %216

216:                                              ; preds = %210, %208
  %217 = phi i32 [ %215, %210 ], [ %144, %208 ]
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %294

219:                                              ; preds = %216
  %220 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %18
  %221 = zext i32 %116 to i64
  br label %222

222:                                              ; preds = %288, %219
  %223 = phi i64 [ 0, %219 ], [ %290, %288 ]
  %224 = phi i32 [ 0, %219 ], [ %289, %288 ]
  %225 = load ptr, ptr %147, align 8, !tbaa !13
  %226 = getelementptr inbounds %struct.optstr, ptr %225, i64 %223
  %227 = load ptr, ptr %226, align 8, !tbaa !35
  %228 = icmp eq ptr %227, null
  br i1 %228, label %288, label %229

229:                                              ; preds = %222
  %230 = load i32, ptr %220, align 4, !tbaa !14
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %231, i64 %223
  %233 = ptrtoint ptr %232 to i64
  %234 = trunc i64 %233 to i32
  %235 = or i32 %224, %234
  %236 = ptrtoint ptr %227 to i64
  %237 = and i64 %236, 4294967168
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %288

239:                                              ; preds = %229
  br i1 %117, label %240, label %254

240:                                              ; preds = %249, %239
  %241 = phi i64 [ %250, %249 ], [ %221, %239 ]
  %242 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !14
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %241
  %247 = load ptr, ptr %246, align 8, !tbaa !13
  %248 = icmp eq ptr %247, null
  br i1 %248, label %252, label %249

249:                                              ; preds = %245, %240
  %250 = add nsw i64 %241, -1
  %251 = icmp sgt i64 %241, 0
  br i1 %251, label %240, label %285, !llvm.loop !46

252:                                              ; preds = %245
  %.lcssa11 = phi i64 [ %241, %245 ]
  %253 = trunc i64 %.lcssa11 to i32
  br label %254

254:                                              ; preds = %252, %239
  %255 = phi i32 [ %116, %239 ], [ %253, %252 ]
  %256 = icmp sgt i32 %255, -1
  br i1 %256, label %257, label %285

257:                                              ; preds = %254
  %258 = zext i32 %255 to i64
  %259 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !13
  %261 = getelementptr inbounds %struct.optstr, ptr %260, i64 %223
  %262 = load ptr, ptr %261, align 8, !tbaa !35
  %263 = ptrtoint ptr %262 to i64
  %264 = and i64 %263, 4294967168
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %285, label %266

266:                                              ; preds = %257
  %267 = load i8, ptr %262, align 1, !tbaa !17
  %268 = icmp eq i8 %267, 92
  br i1 %268, label %269, label %285

269:                                              ; preds = %274, %266
  %270 = phi i8 [ %277, %274 ], [ 92, %266 ]
  %271 = phi ptr [ %276, %274 ], [ @.str.6.51, %266 ]
  %272 = phi ptr [ %275, %274 ], [ %262, %266 ]
  %273 = icmp eq i8 %270, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %269
  %275 = getelementptr inbounds i8, ptr %272, i64 1
  %276 = getelementptr inbounds i8, ptr %271, i64 1
  %277 = load i8, ptr %275, align 1, !tbaa !17
  %278 = load i8, ptr %276, align 1, !tbaa !17
  %279 = icmp eq i8 %277, %278
  br i1 %279, label %269, label %285, !llvm.loop !38

280:                                              ; preds = %269
  %281 = load ptr, ptr @tabout, align 8, !tbaa !13
  %282 = trunc i64 %223 to i32
  %283 = add i32 %282, 97
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.4.117, ptr noundef nonnull %227, i32 noundef %283, ptr noundef nonnull %227, i32 noundef %283) #21
  br label %288

285:                                              ; preds = %274, %266, %257, %254, %249
  %286 = load ptr, ptr @tabout, align 8, !tbaa !13
  %287 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef nonnull @.str.5.118, ptr noundef nonnull %227, ptr noundef nonnull %227) #21
  br label %288

288:                                              ; preds = %285, %280, %229, %222
  %289 = phi i32 [ %224, %222 ], [ %235, %229 ], [ %235, %280 ], [ %235, %285 ]
  %290 = add nuw nsw i64 %223, 1
  %291 = load i32, ptr @ncol, align 4, !tbaa !14
  %292 = sext i32 %291 to i64
  %293 = icmp slt i64 %290, %292
  br i1 %293, label %222, label %294, !llvm.loop !117

294:                                              ; preds = %288, %216, %143
  %295 = phi i32 [ 0, %216 ], [ 0, %143 ], [ %289, %288 ]
  %296 = load i32, ptr @allflg, align 4, !tbaa !14
  %297 = icmp ne i32 %296, 0
  %298 = load i1, ptr @once, align 4
  %299 = select i1 %297, i1 %298, i1 false
  br i1 %299, label %300, label %301

300:                                              ; preds = %294
  tail call fastcc void @fullwide(i32 noundef %0, i32 noundef 45) #20
  br label %301

301:                                              ; preds = %300, %294
  store i1 true, ptr @once, align 4
  %302 = load ptr, ptr @tabout, align 8, !tbaa !13
  %303 = tail call i64 @fwrite(ptr nonnull @.str.8.109, i64 4, i64 1, ptr %302)
  %304 = load i32, ptr @ncol, align 4, !tbaa !14
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %441

306:                                              ; preds = %301
  %307 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %18
  %308 = add i32 %0, -1
  %309 = icmp sgt i32 %0, 0
  %310 = zext i32 %308 to i64
  br label %311

311:                                              ; preds = %436, %306
  %312 = phi i64 [ 0, %306 ], [ %437, %436 ]
  br i1 %309, label %313, label %327

313:                                              ; preds = %322, %311
  %314 = phi i64 [ %323, %322 ], [ %310, %311 ]
  %315 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !14
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %314
  %320 = load ptr, ptr %319, align 8, !tbaa !13
  %321 = icmp eq ptr %320, null
  br i1 %321, label %325, label %322

322:                                              ; preds = %318, %313
  %323 = add nsw i64 %314, -1
  %324 = icmp sgt i64 %314, 0
  br i1 %324, label %313, label %377, !llvm.loop !46

325:                                              ; preds = %318
  %.lcssa9 = phi i64 [ %314, %318 ]
  %326 = trunc i64 %.lcssa9 to i32
  br label %327

327:                                              ; preds = %325, %311
  %328 = phi i32 [ %308, %311 ], [ %326, %325 ]
  %329 = icmp sgt i32 %328, -1
  br i1 %329, label %330, label %377

330:                                              ; preds = %374, %327
  %331 = phi i32 [ %375, %374 ], [ %328, %327 ]
  %332 = phi i32 [ %331, %374 ], [ %0, %327 ]
  %333 = zext i32 %331 to i64
  %334 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !13
  %336 = getelementptr inbounds %struct.optstr, ptr %335, i64 %312
  %337 = load ptr, ptr %336, align 8, !tbaa !35
  %338 = ptrtoint ptr %337 to i64
  %339 = and i64 %338, 4294967168
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %377, label %341

341:                                              ; preds = %330
  %342 = load i8, ptr %337, align 1, !tbaa !17
  %343 = icmp eq i8 %342, 92
  br i1 %343, label %344, label %377

344:                                              ; preds = %349, %341
  %345 = phi i8 [ %352, %349 ], [ 92, %341 ]
  %346 = phi ptr [ %351, %349 ], [ @.str.6.51, %341 ]
  %347 = phi ptr [ %350, %349 ], [ %337, %341 ]
  %348 = icmp eq i8 %345, 0
  br i1 %348, label %355, label %349

349:                                              ; preds = %344
  %350 = getelementptr inbounds i8, ptr %347, i64 1
  %351 = getelementptr inbounds i8, ptr %346, i64 1
  %352 = load i8, ptr %350, align 1, !tbaa !17
  %353 = load i8, ptr %351, align 1, !tbaa !17
  %354 = icmp eq i8 %352, %353
  br i1 %354, label %344, label %377, !llvm.loop !38

355:                                              ; preds = %344
  %356 = add i32 %331, -1
  %357 = icmp sgt i32 %331, 0
  br i1 %357, label %358, label %374

358:                                              ; preds = %355
  %359 = zext i32 %356 to i64
  br label %360

360:                                              ; preds = %369, %358
  %361 = phi i64 [ %359, %358 ], [ %370, %369 ]
  %362 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %361
  %363 = load i32, ptr %362, align 4, !tbaa !14
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %369

365:                                              ; preds = %360
  %366 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %361
  %367 = load ptr, ptr %366, align 8, !tbaa !13
  %368 = icmp eq ptr %367, null
  br i1 %368, label %372, label %369

369:                                              ; preds = %365, %360
  %370 = add nsw i64 %361, -1
  %371 = icmp sgt i64 %361, 0
  br i1 %371, label %360, label %377, !llvm.loop !46

372:                                              ; preds = %365
  %.lcssa10 = phi i64 [ %361, %365 ]
  %373 = trunc i64 %.lcssa10 to i32
  br label %374

374:                                              ; preds = %372, %355
  %375 = phi i32 [ %356, %355 ], [ %373, %372 ]
  %376 = icmp sgt i32 %375, -1
  br i1 %376, label %330, label %377, !llvm.loop !118

377:                                              ; preds = %374, %369, %349, %341, %330, %327, %322
  %378 = phi i32 [ %0, %327 ], [ %331, %369 ], [ %332, %349 ], [ %331, %374 ], [ %332, %330 ], [ %332, %341 ], [ %0, %322 ]
  %379 = trunc i64 %312 to i32
  %380 = tail call fastcc i32 @fspan(i32 noundef %378, i32 noundef %379) #20, !range !16
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %436

382:                                              ; preds = %377
  %383 = sext i32 %378 to i64
  %384 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !13
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %436

387:                                              ; preds = %382
  %388 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %383
  %389 = load i32, ptr %388, align 4, !tbaa !14
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %436

391:                                              ; preds = %387
  %392 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %383
  %393 = load i32, ptr %392, align 4, !tbaa !14
  %394 = sext i32 %393 to i64
  %395 = shl i64 %312, 32
  %396 = ashr exact i64 %395, 32
  %397 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %394, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !14
  switch i32 %398, label %436 [
    i32 110, label %399
    i32 97, label %399
    i32 115, label %429
    i32 99, label %422
    i32 108, label %422
    i32 114, label %422
  ]

399:                                              ; preds = %391, %391
  %400 = load ptr, ptr %307, align 8, !tbaa !13
  %401 = getelementptr inbounds %struct.optstr, ptr %400, i64 %312, i32 1
  %402 = load ptr, ptr %401, align 8, !tbaa !37
  %403 = icmp eq ptr %402, null
  br i1 %403, label %412, label %404

404:                                              ; preds = %399
  %405 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %312
  %406 = load i32, ptr %405, align 4, !tbaa !14
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %404
  %409 = load ptr, ptr @tabout, align 8, !tbaa !13
  %410 = add i32 %379, 60
  %411 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %409, ptr noundef nonnull @.str.9.110, i32 noundef %410) #21
  br label %412

412:                                              ; preds = %408, %404, %399
  switch i32 %398, label %422 [
    i32 110, label %413
    i32 97, label %413
  ]

413:                                              ; preds = %412, %412
  %414 = load ptr, ptr %307, align 8, !tbaa !13
  %415 = getelementptr inbounds %struct.optstr, ptr %414, i64 %312, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !37
  %417 = icmp eq ptr %416, null
  br i1 %417, label %422, label %418

418:                                              ; preds = %413
  %419 = getelementptr inbounds [0 x i32], ptr @rused, i64 0, i64 %312
  %420 = load i32, ptr %419, align 4, !tbaa !14
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %436, label %432

422:                                              ; preds = %413, %412, %391, %391, %391
  %423 = getelementptr inbounds [0 x i32], ptr @used, i64 0, i64 %312
  %424 = load i32, ptr %423, align 4, !tbaa !14
  %425 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %312
  %426 = load i32, ptr %425, align 4, !tbaa !14
  %427 = sub i32 0, %426
  %428 = icmp eq i32 %424, %427
  br i1 %428, label %436, label %432

429:                                              ; preds = %391
  %430 = tail call fastcc i32 @lspan(i32 noundef %0, i32 noundef %379) #20
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %436, label %432

432:                                              ; preds = %429, %422, %418
  %433 = load ptr, ptr @tabout, align 8, !tbaa !13
  %434 = add i32 %379, 80
  %435 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %433, ptr noundef nonnull @.str.9.110, i32 noundef %434) #21
  br label %436

436:                                              ; preds = %432, %429, %422, %418, %391, %387, %382, %377
  %437 = add nuw nsw i64 %312, 1
  %438 = load i32, ptr @ncol, align 4, !tbaa !14
  %439 = sext i32 %438 to i64
  %440 = icmp slt i64 %437, %439
  br i1 %440, label %311, label %441, !llvm.loop !119

441:                                              ; preds = %436, %301
  %442 = load ptr, ptr @tabout, align 8, !tbaa !13
  %443 = tail call i32 @fputc(i32 10, ptr %442)
  %444 = tail call fastcc i32 @allh(i32 noundef %0) #20, !range !16
  %445 = icmp eq i32 %444, 0
  %446 = load i1, ptr @pr1403, align 4
  %447 = select i1 %445, i1 true, i1 %446
  br i1 %447, label %453, label %448

448:                                              ; preds = %441
  %449 = load ptr, ptr @tabout, align 8, !tbaa !13
  %450 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %449, ptr noundef nonnull @.str.8.232, i32 noundef 36) #21
  %451 = load ptr, ptr @tabout, align 8, !tbaa !13
  %452 = tail call i64 @fwrite(ptr nonnull @.str.7.120, i64 18, i64 1, ptr %451)
  br label %453

453:                                              ; preds = %448, %441
  %454 = icmp eq i32 %295, 0
  br i1 %454, label %458, label %455

455:                                              ; preds = %453
  %456 = load ptr, ptr @tabout, align 8, !tbaa !13
  %457 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %456, ptr noundef nonnull @.str.8.121, i32 noundef 31) #21
  br label %458

458:                                              ; preds = %455, %453
  %459 = load ptr, ptr @tabout, align 8, !tbaa !13
  %460 = tail call i64 @fwrite(ptr nonnull @.str.9.122, i64 10, i64 1, ptr %459)
  %461 = load ptr, ptr @tabout, align 8, !tbaa !13
  %462 = tail call i64 @fwrite(ptr nonnull @.str.10.123, i64 2, i64 1, ptr %461)
  %463 = load i32, ptr @ncol, align 4, !tbaa !14
  %464 = icmp sgt i32 %463, 0
  br i1 %464, label %465, label %989

465:                                              ; preds = %458
  %466 = add nsw i32 %0, 1
  %467 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %18
  %468 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %18
  %469 = zext i32 %116 to i64
  br label %470

470:                                              ; preds = %979, %465
  %471 = phi i64 [ 0, %465 ], [ %985, %979 ]
  %472 = phi i32 [ 0, %465 ], [ %984, %979 ]
  %473 = phi i32 [ 0, %465 ], [ %983, %979 ]
  %474 = phi i32 [ undef, %465 ], [ %982, %979 ]
  %475 = phi i32 [ %107, %465 ], [ %981, %979 ]
  %476 = phi i32 [ 0, %465 ], [ %980, %979 ]
  %477 = trunc i64 %471 to i32
  %478 = load i1, ptr @watchout, align 4
  %479 = load i32, ptr @nlin, align 4
  %480 = icmp sge i32 %466, %479
  %481 = select i1 %478, i1 true, i1 %480
  br i1 %481, label %488, label %482

482:                                              ; preds = %470
  %483 = call fastcc i32 @left(i32 noundef %0, i32 noundef %477, ptr noundef nonnull %4) #20
  %484 = icmp sgt i32 %483, -1
  br i1 %484, label %485, label %488

485:                                              ; preds = %482
  tail call fastcc void @tohcol(i32 noundef %477) #20
  %486 = load i32, ptr %4, align 4, !tbaa !14
  tail call fastcc void @drawvert(i32 noundef %483, i32 noundef %0, i32 noundef %477, i32 noundef %486) #20
  %487 = add nsw i32 %472, 2
  br label %488

488:                                              ; preds = %485, %482, %470
  %489 = phi i32 [ %487, %485 ], [ %472, %482 ], [ %472, %470 ]
  %490 = load i32, ptr @rightl, align 4, !tbaa !14
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %497, label %492

492:                                              ; preds = %488
  %493 = add nuw nsw i64 %471, 1
  %494 = load i32, ptr @ncol, align 4, !tbaa !14
  %495 = zext i32 %494 to i64
  %496 = icmp eq i64 %493, %495
  br i1 %496, label %979, label %497

497:                                              ; preds = %492, %488
  br i1 %117, label %498, label %512

498:                                              ; preds = %507, %497
  %499 = phi i64 [ %508, %507 ], [ %469, %497 ]
  %500 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !14
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %498
  %504 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %499
  %505 = load ptr, ptr %504, align 8, !tbaa !13
  %506 = icmp eq ptr %505, null
  br i1 %506, label %510, label %507

507:                                              ; preds = %503, %498
  %508 = add nsw i64 %499, -1
  %509 = icmp sgt i64 %499, 0
  br i1 %509, label %498, label %562, !llvm.loop !46

510:                                              ; preds = %503
  %.lcssa4 = phi i64 [ %499, %503 ]
  %511 = trunc i64 %.lcssa4 to i32
  br label %512

512:                                              ; preds = %510, %497
  %513 = phi i32 [ %116, %497 ], [ %511, %510 ]
  %514 = icmp sgt i32 %513, -1
  br i1 %514, label %515, label %562

515:                                              ; preds = %559, %512
  %516 = phi i32 [ %517, %559 ], [ %0, %512 ]
  %517 = phi i32 [ %560, %559 ], [ %513, %512 ]
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !13
  %521 = getelementptr inbounds %struct.optstr, ptr %520, i64 %471
  %522 = load ptr, ptr %521, align 8, !tbaa !35
  %523 = ptrtoint ptr %522 to i64
  %524 = and i64 %523, 4294967168
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %562, label %526

526:                                              ; preds = %515
  %527 = load i8, ptr %522, align 1, !tbaa !17
  %528 = icmp eq i8 %527, 92
  br i1 %528, label %529, label %562

529:                                              ; preds = %534, %526
  %530 = phi i8 [ %537, %534 ], [ 92, %526 ]
  %531 = phi ptr [ %536, %534 ], [ @.str.6.51, %526 ]
  %532 = phi ptr [ %535, %534 ], [ %522, %526 ]
  %533 = icmp eq i8 %530, 0
  br i1 %533, label %540, label %534

534:                                              ; preds = %529
  %535 = getelementptr inbounds i8, ptr %532, i64 1
  %536 = getelementptr inbounds i8, ptr %531, i64 1
  %537 = load i8, ptr %535, align 1, !tbaa !17
  %538 = load i8, ptr %536, align 1, !tbaa !17
  %539 = icmp eq i8 %537, %538
  br i1 %539, label %529, label %562, !llvm.loop !38

540:                                              ; preds = %529
  %541 = add i32 %517, -1
  %542 = icmp sgt i32 %517, 0
  br i1 %542, label %543, label %559

543:                                              ; preds = %540
  %544 = zext i32 %541 to i64
  br label %545

545:                                              ; preds = %554, %543
  %546 = phi i64 [ %544, %543 ], [ %555, %554 ]
  %547 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %546
  %548 = load i32, ptr %547, align 4, !tbaa !14
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %554

550:                                              ; preds = %545
  %551 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %546
  %552 = load ptr, ptr %551, align 8, !tbaa !13
  %553 = icmp eq ptr %552, null
  br i1 %553, label %557, label %554

554:                                              ; preds = %550, %545
  %555 = add nsw i64 %546, -1
  %556 = icmp sgt i64 %546, 0
  br i1 %556, label %545, label %562, !llvm.loop !46

557:                                              ; preds = %550
  %.lcssa5 = phi i64 [ %546, %550 ]
  %558 = trunc i64 %.lcssa5 to i32
  br label %559

559:                                              ; preds = %557, %540
  %560 = phi i32 [ %541, %540 ], [ %558, %557 ]
  %561 = icmp sgt i32 %560, -1
  br i1 %561, label %515, label %562, !llvm.loop !120

562:                                              ; preds = %559, %554, %534, %526, %515, %512, %507
  %563 = phi i32 [ %0, %512 ], [ %517, %554 ], [ %516, %534 ], [ %516, %526 ], [ %516, %515 ], [ %517, %559 ], [ %0, %507 ]
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %564
  %566 = load ptr, ptr %565, align 8, !tbaa !13
  %567 = icmp eq ptr %566, null
  br i1 %567, label %568, label %572

568:                                              ; preds = %562
  %569 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %564
  %570 = load i32, ptr %569, align 4, !tbaa !14
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %574, label %572

572:                                              ; preds = %568, %562
  %573 = add i32 %477, 40
  br label %600

574:                                              ; preds = %568
  %575 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %564
  %576 = load i32, ptr %575, align 4, !tbaa !14
  %577 = sext i32 %576 to i64
  %578 = shl i64 %471, 32
  %579 = ashr exact i64 %578, 32
  %580 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %577, i64 %579
  %581 = load i32, ptr %580, align 4, !tbaa !14
  %582 = freeze i32 %581
  %583 = icmp eq i32 %582, 115
  br i1 %583, label %608, label %584

584:                                              ; preds = %574
  %585 = icmp eq i32 %582, 97
  %586 = add i32 %477, 60
  %587 = add i32 %477, 40
  %588 = select i1 %585, i32 %586, i32 %587
  %589 = icmp eq i32 %582, 110
  br i1 %589, label %590, label %600

590:                                              ; preds = %584
  %591 = load ptr, ptr %467, align 8, !tbaa !13
  %592 = getelementptr inbounds %struct.optstr, ptr %591, i64 %471, i32 1
  %593 = load ptr, ptr %592, align 8, !tbaa !37
  %594 = icmp eq ptr %593, null
  br i1 %594, label %600, label %595

595:                                              ; preds = %590
  %596 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %471
  %597 = load i32, ptr %596, align 4, !tbaa !14
  %598 = icmp eq i32 %597, 0
  %599 = select i1 %598, i32 %586, i32 %588
  br label %600

600:                                              ; preds = %595, %590, %584, %572
  %601 = phi i32 [ %588, %590 ], [ %588, %584 ], [ %599, %595 ], [ %573, %572 ]
  %602 = load ptr, ptr @tabout, align 8, !tbaa !13
  %603 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %602, ptr noundef nonnull @.str.10.300, i32 noundef %601) #21
  %604 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %564
  %605 = load i32, ptr %604, align 4, !tbaa !14
  %606 = load ptr, ptr %565, align 8, !tbaa !13
  %607 = sext i32 %605 to i64
  br label %608

608:                                              ; preds = %600, %574
  %609 = phi i64 [ %607, %600 ], [ %577, %574 ]
  %610 = phi ptr [ %606, %600 ], [ null, %574 ]
  %611 = load ptr, ptr %467, align 8, !tbaa !13
  %612 = getelementptr inbounds %struct.optstr, ptr %611, i64 %471
  %613 = load ptr, ptr %612, align 8, !tbaa !35
  %614 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %609, i64 %471
  %615 = getelementptr inbounds [100 x [20 x [4 x i8]]], ptr @csize, i64 0, i64 %609, i64 %471
  %616 = load i8, ptr %615, align 4, !tbaa !17
  %617 = icmp eq i8 %616, 0
  %618 = select i1 %617, ptr null, ptr %615
  %619 = icmp eq ptr %610, null
  br i1 %619, label %620, label %979

620:                                              ; preds = %608
  %621 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %564
  %622 = load i32, ptr %621, align 4, !tbaa !14
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %979

624:                                              ; preds = %620
  %625 = shl i64 %471, 32
  %626 = ashr exact i64 %625, 32
  %627 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %609, i64 %626
  %628 = load i32, ptr %627, align 4, !tbaa !14
  switch i32 %628, label %979 [
    i32 110, label %629
    i32 97, label %629
    i32 99, label %736
    i32 114, label %706
    i32 108, label %707
    i32 45, label %708
    i32 61, label %708
  ]

629:                                              ; preds = %624, %624
  %630 = getelementptr inbounds %struct.optstr, ptr %611, i64 %471, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !37
  %632 = icmp ne ptr %631, null
  br i1 %632, label %633, label %724

633:                                              ; preds = %629
  %634 = getelementptr inbounds [0 x i32], ptr @lused, i64 0, i64 %471
  %635 = load i32, ptr %634, align 4, !tbaa !14
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %724, label %637

637:                                              ; preds = %633
  br i1 %117, label %638, label %652

638:                                              ; preds = %647, %637
  %639 = phi i64 [ %648, %647 ], [ %469, %637 ]
  %640 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %639
  %641 = load i32, ptr %640, align 4, !tbaa !14
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %638
  %644 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %639
  %645 = load ptr, ptr %644, align 8, !tbaa !13
  %646 = icmp eq ptr %645, null
  br i1 %646, label %650, label %647

647:                                              ; preds = %643, %638
  %648 = add nsw i64 %639, -1
  %649 = icmp sgt i64 %639, 0
  br i1 %649, label %638, label %692, !llvm.loop !46

650:                                              ; preds = %643
  %.lcssa6 = phi i64 [ %639, %643 ]
  %651 = trunc i64 %.lcssa6 to i32
  br label %652

652:                                              ; preds = %650, %637
  %653 = phi i32 [ %116, %637 ], [ %651, %650 ]
  %654 = icmp sgt i32 %653, -1
  br i1 %654, label %655, label %692

655:                                              ; preds = %652
  %656 = zext i32 %653 to i64
  %657 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %656
  %658 = load ptr, ptr %657, align 8, !tbaa !13
  %659 = getelementptr inbounds %struct.optstr, ptr %658, i64 %471
  %660 = load ptr, ptr %659, align 8, !tbaa !35
  %661 = ptrtoint ptr %660 to i64
  %662 = and i64 %661, 4294967168
  %663 = icmp eq i64 %662, 0
  br i1 %663, label %692, label %664

664:                                              ; preds = %655
  %665 = load i8, ptr %660, align 1, !tbaa !17
  %666 = icmp eq i8 %665, 92
  br i1 %666, label %667, label %692

667:                                              ; preds = %672, %664
  %668 = phi i8 [ %675, %672 ], [ 92, %664 ]
  %669 = phi ptr [ %674, %672 ], [ @.str.6.51, %664 ]
  %670 = phi ptr [ %673, %672 ], [ %660, %664 ]
  %671 = icmp eq i8 %668, 0
  br i1 %671, label %678, label %672

672:                                              ; preds = %667
  %673 = getelementptr inbounds i8, ptr %670, i64 1
  %674 = getelementptr inbounds i8, ptr %669, i64 1
  %675 = load i8, ptr %673, align 1, !tbaa !17
  %676 = load i8, ptr %674, align 1, !tbaa !17
  %677 = icmp eq i8 %675, %676
  br i1 %677, label %667, label %692, !llvm.loop !38

678:                                              ; preds = %667
  %679 = icmp eq i32 %473, 0
  br i1 %679, label %680, label %692

680:                                              ; preds = %678
  %681 = load ptr, ptr @tabout, align 8, !tbaa !13
  %682 = add i32 %477, 97
  %683 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %681, ptr noundef nonnull @.str.12.125, i32 noundef %682) #21
  %684 = icmp eq i32 %474, 0
  br i1 %684, label %688, label %685

685:                                              ; preds = %680
  %686 = load ptr, ptr @tabout, align 8, !tbaa !13
  %687 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %686, ptr noundef nonnull @.str.13.126, i32 noundef %682) #21
  br label %688

688:                                              ; preds = %685, %680
  %689 = add nsw i32 %489, 1
  %690 = load ptr, ptr @tabout, align 8, !tbaa !13
  %691 = tail call i32 @fputc(i32 39, ptr %690)
  br label %692

692:                                              ; preds = %688, %678, %672, %664, %655, %652, %647
  %693 = phi i32 [ %653, %688 ], [ %653, %678 ], [ %653, %652 ], [ %653, %655 ], [ %653, %664 ], [ %653, %672 ], [ -1, %647 ]
  %694 = phi i32 [ 1, %688 ], [ %473, %678 ], [ %473, %652 ], [ %473, %655 ], [ %473, %664 ], [ %473, %672 ], [ %473, %647 ]
  %695 = phi i32 [ %689, %688 ], [ %489, %678 ], [ %489, %652 ], [ %489, %655 ], [ %489, %664 ], [ %489, %672 ], [ %489, %647 ]
  %696 = load ptr, ptr @tabout, align 8, !tbaa !13
  %697 = load i32, ptr @F1, align 4, !tbaa !14
  %698 = load i32, ptr @F2, align 4, !tbaa !14
  %699 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %696, ptr noundef nonnull @.str.15.127, i32 noundef %697, i32 noundef %698) #21
  tail call fastcc void @puttext(ptr noundef %613, ptr noundef nonnull %614, ptr noundef %618) #21
  %700 = load ptr, ptr @tabout, align 8, !tbaa !13
  %701 = load i32, ptr @F1, align 4, !tbaa !14
  %702 = tail call i32 @fputc(i32 %701, ptr %700)
  %703 = load ptr, ptr %467, align 8, !tbaa !13
  %704 = getelementptr inbounds %struct.optstr, ptr %703, i64 %471, i32 1
  %705 = load ptr, ptr %704, align 8, !tbaa !37
  br label %724

706:                                              ; preds = %624
  br label %736

707:                                              ; preds = %624
  br label %736

708:                                              ; preds = %624, %624
  %709 = icmp eq ptr %613, null
  br i1 %709, label %723, label %710

710:                                              ; preds = %708
  %711 = ptrtoint ptr %613 to i64
  %712 = and i64 %711, 4294967168
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %717, label %714

714:                                              ; preds = %710
  %715 = load i8, ptr %613, align 1, !tbaa !17
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %723, label %717

717:                                              ; preds = %714, %710
  %718 = load ptr, ptr @stderr, align 8, !tbaa !13
  %719 = load ptr, ptr @ifile, align 8, !tbaa !13
  %720 = load i32, ptr @iline, align 4, !tbaa !14
  %721 = add nsw i32 %720, -1
  %722 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %718, ptr noundef nonnull @.str.17.128, ptr noundef %719, i32 noundef %721, i32 noundef %466) #27
  br label %723

723:                                              ; preds = %717, %714, %708
  tail call fastcc void @makeline(i32 noundef %0, i32 noundef %477, i32 noundef %628) #20
  br label %979

724:                                              ; preds = %692, %633, %629
  %725 = phi ptr [ null, %629 ], [ %705, %692 ], [ %631, %633 ]
  %726 = phi i32 [ %475, %629 ], [ %693, %692 ], [ %475, %633 ]
  %727 = phi i32 [ %473, %629 ], [ %694, %692 ], [ %473, %633 ]
  %728 = phi i32 [ %489, %629 ], [ %695, %692 ], [ %489, %633 ]
  %729 = phi ptr [ %613, %629 ], [ %705, %692 ], [ %631, %633 ]
  switch i32 %628, label %736 [
    i32 110, label %730
    i32 97, label %730
  ]

730:                                              ; preds = %724, %724
  %731 = icmp eq ptr %725, null
  br i1 %731, label %736, label %732

732:                                              ; preds = %730
  %733 = getelementptr inbounds [0 x i32], ptr @rused, i64 0, i64 %471
  %734 = load i32, ptr %733, align 4, !tbaa !14
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %883, label %746

736:                                              ; preds = %730, %724, %707, %706, %624
  %737 = phi ptr [ %729, %724 ], [ %729, %730 ], [ %613, %624 ], [ %613, %707 ], [ %613, %706 ]
  %738 = phi i32 [ %728, %724 ], [ %728, %730 ], [ %489, %624 ], [ %489, %707 ], [ %489, %706 ]
  %739 = phi i32 [ %727, %724 ], [ %727, %730 ], [ %473, %624 ], [ %473, %707 ], [ %473, %706 ]
  %740 = phi i32 [ %726, %724 ], [ %726, %730 ], [ %475, %624 ], [ %475, %707 ], [ %475, %706 ]
  %741 = phi i1 [ false, %724 ], [ false, %730 ], [ false, %624 ], [ false, %707 ], [ true, %706 ]
  %742 = phi i1 [ %632, %724 ], [ %632, %730 ], [ false, %624 ], [ true, %707 ], [ false, %706 ]
  %743 = getelementptr inbounds [0 x i32], ptr @used, i64 0, i64 %471
  %744 = load i32, ptr %743, align 4, !tbaa !14
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %883, label %746

746:                                              ; preds = %736, %732
  %747 = phi ptr [ %737, %736 ], [ %729, %732 ]
  %748 = phi i32 [ %738, %736 ], [ %728, %732 ]
  %749 = phi i32 [ %739, %736 ], [ %727, %732 ]
  %750 = phi i32 [ %740, %736 ], [ %726, %732 ]
  %751 = phi i1 [ %741, %736 ], [ false, %732 ]
  %752 = phi i1 [ %742, %736 ], [ %632, %732 ]
  %753 = ptrtoint ptr %747 to i64
  %754 = and i64 %753, 4294967168
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %780, label %756

756:                                              ; preds = %746
  %757 = load i8, ptr %747, align 1, !tbaa !17
  %758 = icmp eq i8 %757, 92
  %759 = zext i1 %758 to i64
  %760 = getelementptr inbounds i8, ptr %747, i64 %759
  %761 = getelementptr inbounds i8, ptr %760, i64 1
  %762 = load i8, ptr %761, align 1, !tbaa !17
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %764, label %771

764:                                              ; preds = %756
  %765 = load i8, ptr %760, align 1, !tbaa !17
  switch i8 %765, label %771 [
    i8 95, label %766
    i8 61, label %766
  ]

766:                                              ; preds = %764, %764
  %767 = icmp eq i8 %765, 95
  %768 = icmp eq i8 %765, 61
  %769 = select i1 %768, i32 61, i32 0
  %770 = select i1 %767, i32 45, i32 %769
  tail call fastcc void @makeline(i32 noundef %0, i32 noundef %477, i32 noundef %770) #20
  br label %979

771:                                              ; preds = %764, %756
  br i1 %758, label %772, label %780

772:                                              ; preds = %771
  %773 = getelementptr inbounds i8, ptr %747, i64 1
  %774 = load i8, ptr %773, align 1, !tbaa !17
  %775 = icmp eq i8 %774, 82
  br i1 %775, label %776, label %780

776:                                              ; preds = %772
  %777 = getelementptr inbounds i8, ptr %747, i64 2
  %778 = add i32 %477, 80
  %779 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18.129, i32 noundef %778, ptr noundef nonnull %777) #21
  br label %979

780:                                              ; preds = %772, %771, %746
  br i1 %117, label %781, label %801

781:                                              ; preds = %790, %780
  %782 = phi i64 [ %791, %790 ], [ %469, %780 ]
  %783 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %782
  %784 = load i32, ptr %783, align 4, !tbaa !14
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %790

786:                                              ; preds = %781
  %787 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %782
  %788 = load ptr, ptr %787, align 8, !tbaa !13
  %789 = icmp eq ptr %788, null
  br i1 %789, label %799, label %790

790:                                              ; preds = %786, %781
  %791 = add nsw i64 %782, -1
  %792 = icmp sgt i64 %782, 0
  br i1 %792, label %781, label %793, !llvm.loop !46

793:                                              ; preds = %790
  %794 = load i32, ptr %468, align 4, !tbaa !14
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %795, i64 %471
  %797 = load i32, ptr %796, align 4, !tbaa !14
  %798 = icmp eq i32 %797, 0
  br label %845

799:                                              ; preds = %786
  %.lcssa7 = phi i64 [ %782, %786 ]
  %800 = trunc i64 %.lcssa7 to i32
  br label %801

801:                                              ; preds = %799, %780
  %802 = phi i32 [ %116, %780 ], [ %800, %799 ]
  %803 = load i32, ptr %468, align 4, !tbaa !14
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %804, i64 %471
  %806 = load i32, ptr %805, align 4, !tbaa !14
  %807 = icmp eq i32 %806, 0
  %808 = icmp sgt i32 %802, -1
  br i1 %808, label %809, label %845

809:                                              ; preds = %801
  %810 = zext i32 %802 to i64
  %811 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %810
  %812 = load ptr, ptr %811, align 8, !tbaa !13
  %813 = getelementptr inbounds %struct.optstr, ptr %812, i64 %471
  %814 = load ptr, ptr %813, align 8, !tbaa !35
  %815 = ptrtoint ptr %814 to i64
  %816 = and i64 %815, 4294967168
  %817 = icmp eq i64 %816, 0
  br i1 %817, label %845, label %818

818:                                              ; preds = %809
  %819 = load i8, ptr %814, align 1, !tbaa !17
  %820 = icmp eq i8 %819, 92
  br i1 %820, label %821, label %845

821:                                              ; preds = %826, %818
  %822 = phi i8 [ %829, %826 ], [ 92, %818 ]
  %823 = phi ptr [ %828, %826 ], [ @.str.6.51, %818 ]
  %824 = phi ptr [ %827, %826 ], [ %814, %818 ]
  %825 = icmp eq i8 %822, 0
  br i1 %825, label %832, label %826

826:                                              ; preds = %821
  %827 = getelementptr inbounds i8, ptr %824, i64 1
  %828 = getelementptr inbounds i8, ptr %823, i64 1
  %829 = load i8, ptr %827, align 1, !tbaa !17
  %830 = load i8, ptr %828, align 1, !tbaa !17
  %831 = icmp eq i8 %829, %830
  br i1 %831, label %821, label %845, !llvm.loop !38

832:                                              ; preds = %821
  %833 = icmp eq i32 %749, 0
  br i1 %833, label %834, label %845

834:                                              ; preds = %832
  %835 = load ptr, ptr @tabout, align 8, !tbaa !13
  %836 = add i32 %477, 97
  %837 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %835, ptr noundef nonnull @.str.12.125, i32 noundef %836) #21
  br i1 %807, label %838, label %841

838:                                              ; preds = %834
  %839 = load ptr, ptr @tabout, align 8, !tbaa !13
  %840 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %839, ptr noundef nonnull @.str.13.126, i32 noundef %836) #21
  br label %841

841:                                              ; preds = %838, %834
  %842 = add nsw i32 %748, 1
  %843 = load ptr, ptr @tabout, align 8, !tbaa !13
  %844 = tail call i32 @fputc(i32 39, ptr %843)
  br label %845

845:                                              ; preds = %841, %832, %826, %818, %809, %801, %793
  %846 = phi i1 [ %807, %841 ], [ %807, %832 ], [ %807, %801 ], [ %798, %793 ], [ %807, %809 ], [ %807, %818 ], [ %807, %826 ]
  %847 = phi i32 [ %802, %841 ], [ %802, %832 ], [ %802, %801 ], [ -1, %793 ], [ %802, %809 ], [ %802, %818 ], [ %802, %826 ]
  %848 = phi i32 [ %842, %841 ], [ %748, %832 ], [ %748, %801 ], [ %748, %793 ], [ %748, %809 ], [ %748, %818 ], [ %748, %826 ]
  %849 = zext i1 %846 to i32
  %850 = load ptr, ptr @tabout, align 8, !tbaa !13
  %851 = load i32, ptr @F1, align 4, !tbaa !14
  %852 = tail call i32 @fputc(i32 %851, ptr %850)
  br i1 %752, label %857, label %853

853:                                              ; preds = %845
  %854 = load ptr, ptr @tabout, align 8, !tbaa !13
  %855 = load i32, ptr @F2, align 4, !tbaa !14
  %856 = tail call i32 @fputc(i32 %855, ptr %854)
  br label %857

857:                                              ; preds = %853, %845
  br i1 %755, label %872, label %858

858:                                              ; preds = %857
  %859 = load i8, ptr %747, align 1, !tbaa !17
  %860 = icmp eq i8 %859, 92
  br i1 %860, label %861, label %872

861:                                              ; preds = %866, %858
  %862 = phi i8 [ %869, %866 ], [ 92, %858 ]
  %863 = phi ptr [ %868, %866 ], [ @.str.6.51, %858 ]
  %864 = phi ptr [ %867, %866 ], [ %747, %858 ]
  %865 = icmp eq i8 %862, 0
  br i1 %865, label %873, label %866

866:                                              ; preds = %861
  %867 = getelementptr inbounds i8, ptr %864, i64 1
  %868 = getelementptr inbounds i8, ptr %863, i64 1
  %869 = load i8, ptr %867, align 1, !tbaa !17
  %870 = load i8, ptr %868, align 1, !tbaa !17
  %871 = icmp eq i8 %869, %870
  br i1 %871, label %861, label %872, !llvm.loop !38

872:                                              ; preds = %866, %858, %857
  tail call fastcc void @puttext(ptr noundef %747, ptr noundef nonnull %614, ptr noundef %618) #21
  br label %873

873:                                              ; preds = %872, %861
  %874 = phi i32 [ %476, %872 ], [ 1, %861 ]
  br i1 %751, label %879, label %875

875:                                              ; preds = %873
  %876 = load ptr, ptr @tabout, align 8, !tbaa !13
  %877 = load i32, ptr @F2, align 4, !tbaa !14
  %878 = tail call i32 @fputc(i32 %877, ptr %876)
  br label %879

879:                                              ; preds = %875, %873
  %880 = load ptr, ptr @tabout, align 8, !tbaa !13
  %881 = load i32, ptr @F1, align 4, !tbaa !14
  %882 = tail call i32 @fputc(i32 %881, ptr %880)
  br label %883

883:                                              ; preds = %879, %736, %732
  %884 = phi i32 [ %749, %879 ], [ %727, %732 ], [ %739, %736 ]
  %885 = phi i32 [ %874, %879 ], [ %476, %732 ], [ %476, %736 ]
  %886 = phi i32 [ %847, %879 ], [ %726, %732 ], [ %740, %736 ]
  %887 = phi i32 [ %849, %879 ], [ %474, %732 ], [ %474, %736 ]
  %888 = phi i32 [ %848, %879 ], [ %728, %732 ], [ %738, %736 ]
  %889 = icmp sgt i32 %886, -1
  br i1 %889, label %890, label %968

890:                                              ; preds = %883
  %891 = zext i32 %886 to i64
  %892 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %891
  %893 = load ptr, ptr %892, align 8, !tbaa !13
  %894 = getelementptr inbounds %struct.optstr, ptr %893, i64 %471
  %895 = load ptr, ptr %894, align 8, !tbaa !35
  %896 = ptrtoint ptr %895 to i64
  %897 = and i64 %896, 4294967168
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %968, label %899

899:                                              ; preds = %890
  %900 = load i8, ptr %895, align 1, !tbaa !17
  %901 = icmp eq i8 %900, 92
  br i1 %901, label %902, label %968

902:                                              ; preds = %907, %899
  %903 = phi i8 [ %910, %907 ], [ 92, %899 ]
  %904 = phi ptr [ %909, %907 ], [ @.str.6.51, %899 ]
  %905 = phi ptr [ %908, %907 ], [ %895, %899 ]
  %906 = icmp eq i8 %903, 0
  br i1 %906, label %913, label %907

907:                                              ; preds = %902
  %908 = getelementptr inbounds i8, ptr %905, i64 1
  %909 = getelementptr inbounds i8, ptr %904, i64 1
  %910 = load i8, ptr %908, align 1, !tbaa !17
  %911 = load i8, ptr %909, align 1, !tbaa !17
  %912 = icmp eq i8 %910, %911
  br i1 %912, label %902, label %968, !llvm.loop !38

913:                                              ; preds = %902
  %914 = add nuw nsw i64 %471, 1
  %915 = load i32, ptr @ncol, align 4, !tbaa !14
  %916 = sext i32 %915 to i64
  %917 = icmp slt i64 %914, %916
  br i1 %917, label %918, label %956

918:                                              ; preds = %913
  %919 = getelementptr inbounds %struct.optstr, ptr %893, i64 %914
  %920 = load ptr, ptr %919, align 8, !tbaa !35
  %921 = ptrtoint ptr %920 to i64
  %922 = and i64 %921, 4294967168
  %923 = icmp eq i64 %922, 0
  br i1 %923, label %956, label %924

924:                                              ; preds = %918
  %925 = load i8, ptr %920, align 1, !tbaa !17
  %926 = icmp eq i8 %925, 92
  br i1 %926, label %927, label %956

927:                                              ; preds = %932, %924
  %928 = phi i8 [ %935, %932 ], [ 92, %924 ]
  %929 = phi ptr [ %934, %932 ], [ @.str.6.51, %924 ]
  %930 = phi ptr [ %933, %932 ], [ %920, %924 ]
  %931 = icmp eq i8 %928, 0
  br i1 %931, label %938, label %932

932:                                              ; preds = %927
  %933 = getelementptr inbounds i8, ptr %930, i64 1
  %934 = getelementptr inbounds i8, ptr %929, i64 1
  %935 = load i8, ptr %933, align 1, !tbaa !17
  %936 = load i8, ptr %934, align 1, !tbaa !17
  %937 = icmp eq i8 %935, %936
  br i1 %937, label %927, label %956, !llvm.loop !38

938:                                              ; preds = %927
  %939 = getelementptr inbounds [20 x i32], ptr @topat, i64 0, i64 %471
  %940 = load i32, ptr %939, align 4, !tbaa !14
  %941 = getelementptr inbounds [20 x i32], ptr @topat, i64 0, i64 %914
  %942 = load i32, ptr %941, align 4, !tbaa !14
  %943 = icmp eq i32 %940, %942
  br i1 %943, label %944, label %956

944:                                              ; preds = %938
  %945 = load i32, ptr %468, align 4, !tbaa !14
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %946, i64 %914
  %948 = load i32, ptr %947, align 4, !tbaa !14
  %949 = icmp eq i32 %948, 0
  %950 = zext i1 %949 to i32
  %951 = icmp eq i32 %887, %950
  br i1 %951, label %952, label %956

952:                                              ; preds = %944
  %953 = trunc i64 %914 to i32
  %954 = call fastcc i32 @left(i32 noundef %0, i32 noundef %953, ptr noundef nonnull %4) #20
  %955 = icmp slt i32 %954, 0
  br i1 %955, label %968, label %956

956:                                              ; preds = %952, %944, %938, %932, %924, %918, %913
  %957 = load ptr, ptr @tabout, align 8, !tbaa !13
  %958 = add i32 %477, 97
  %959 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %957, ptr noundef nonnull @.str.19.130, i32 noundef %958) #21
  %960 = icmp eq i32 %887, 0
  br i1 %960, label %964, label %961

961:                                              ; preds = %956
  %962 = load ptr, ptr @tabout, align 8, !tbaa !13
  %963 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %962, ptr noundef nonnull @.str.13.126, i32 noundef %958) #21
  br label %964

964:                                              ; preds = %961, %956
  %965 = add nsw i32 %888, 1
  %966 = load ptr, ptr @tabout, align 8, !tbaa !13
  %967 = tail call i32 @fputc(i32 39, ptr %966)
  br label %968

968:                                              ; preds = %964, %952, %907, %899, %890, %883
  %969 = phi i32 [ 0, %964 ], [ 1, %952 ], [ %884, %883 ], [ 0, %890 ], [ 0, %899 ], [ 0, %907 ]
  %970 = phi i32 [ %965, %964 ], [ %888, %952 ], [ %888, %883 ], [ %888, %890 ], [ %888, %899 ], [ %888, %907 ]
  %971 = icmp sgt i32 %970, 7
  %972 = load i32, ptr @ncol, align 4
  %973 = sext i32 %972 to i64
  %974 = icmp slt i64 %471, %973
  %975 = select i1 %971, i1 %974, i1 false
  br i1 %975, label %976, label %979

976:                                              ; preds = %968
  %977 = load ptr, ptr @tabout, align 8, !tbaa !13
  %978 = tail call i64 @fwrite(ptr nonnull @.str.20.131, i64 9, i64 1, ptr %977)
  br label %979

979:                                              ; preds = %976, %968, %776, %766, %723, %624, %620, %608, %492
  %980 = phi i32 [ %476, %492 ], [ %476, %624 ], [ %476, %723 ], [ %476, %766 ], [ %476, %776 ], [ %885, %976 ], [ %885, %968 ], [ %476, %608 ], [ %476, %620 ]
  %981 = phi i32 [ %475, %492 ], [ %475, %624 ], [ %475, %723 ], [ %750, %766 ], [ %750, %776 ], [ %886, %976 ], [ %886, %968 ], [ %475, %608 ], [ %475, %620 ]
  %982 = phi i32 [ %474, %492 ], [ %474, %624 ], [ %474, %723 ], [ %474, %766 ], [ %474, %776 ], [ %887, %976 ], [ %887, %968 ], [ %474, %608 ], [ %474, %620 ]
  %983 = phi i32 [ %473, %492 ], [ %473, %624 ], [ %473, %723 ], [ %749, %766 ], [ %749, %776 ], [ %969, %976 ], [ %969, %968 ], [ %473, %608 ], [ %473, %620 ]
  %984 = phi i32 [ %489, %492 ], [ %489, %624 ], [ %489, %723 ], [ %748, %766 ], [ %748, %776 ], [ 0, %976 ], [ %970, %968 ], [ %489, %608 ], [ %489, %620 ]
  %985 = add nuw nsw i64 %471, 1
  %986 = load i32, ptr @ncol, align 4, !tbaa !14
  %987 = sext i32 %986 to i64
  %988 = icmp slt i64 %985, %987
  br i1 %988, label %470, label %989, !llvm.loop !121

989:                                              ; preds = %979, %458
  %990 = phi i32 [ 0, %458 ], [ %980, %979 ]
  %991 = load ptr, ptr @tabout, align 8, !tbaa !13
  %992 = tail call i32 @fputc(i32 10, ptr %991)
  %993 = tail call fastcc i32 @allh(i32 noundef %0) #20, !range !16
  %994 = icmp eq i32 %993, 0
  %995 = load i1, ptr @pr1403, align 4
  %996 = select i1 %994, i1 true, i1 %995
  br i1 %996, label %1000, label %997

997:                                              ; preds = %989
  %998 = load ptr, ptr @tabout, align 8, !tbaa !13
  %999 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %998, ptr noundef nonnull @.str.2.314, i32 noundef 36) #21
  br label %1000

1000:                                             ; preds = %997, %989
  %1001 = load i1, ptr @watchout, align 4
  br i1 %1001, label %1002, label %1238

1002:                                             ; preds = %1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %1003 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1004 = tail call i64 @fwrite(ptr nonnull @.str.27.134, i64 7, i64 1, ptr %1003)
  %1005 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1006 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1005, ptr noundef nonnull @.str.28.135, i32 noundef 31) #21
  %1007 = load i32, ptr @ncol, align 4, !tbaa !14
  %1008 = icmp sgt i32 %1007, 0
  br i1 %1008, label %1009, label %1199

1009:                                             ; preds = %1002
  %1010 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %18
  %1011 = icmp sgt i32 %0, -1
  %1012 = sext i32 %0 to i64
  %1013 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %1012
  %1014 = icmp sgt i32 %0, 0
  %1015 = add i32 %0, -1
  %1016 = zext i32 %1015 to i64
  br label %1017

1017:                                             ; preds = %1193, %1009
  %1018 = phi i32 [ %1007, %1009 ], [ %1194, %1193 ]
  %1019 = phi i64 [ 0, %1009 ], [ %1196, %1193 ]
  %1020 = phi i32 [ undef, %1009 ], [ %1195, %1193 ]
  %1021 = load ptr, ptr %1010, align 8, !tbaa !13
  %1022 = getelementptr inbounds %struct.optstr, ptr %1021, i64 %1019
  %1023 = load ptr, ptr %1022, align 8, !tbaa !35
  %1024 = ptrtoint ptr %1023 to i64
  %1025 = trunc i64 %1024 to i32
  %1026 = add i32 %1025, -128
  %1027 = icmp ult i32 %1026, -127
  br i1 %1027, label %1193, label %1028

1028:                                             ; preds = %1017
  %1029 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1030 = tail call i64 @fwrite(ptr nonnull @.str.29.136, i64 15, i64 1, ptr %1029)
  %1031 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1032 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1031, ptr noundef nonnull @.str.30.137, i32 noundef 37) #21
  br i1 %1011, label %1033, label %1083

1033:                                             ; preds = %1028
  %1034 = tail call ptr @__ctype_b_loc() #25
  %1035 = load ptr, ptr %1034, align 8, !tbaa !13
  %1036 = shl i64 %1019, 32
  %1037 = ashr exact i64 %1036, 32
  br label %1038

1038:                                             ; preds = %1080, %1033
  %1039 = phi i32 [ %0, %1033 ], [ %1081, %1080 ]
  %1040 = zext i32 %1039 to i64
  %1041 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1040
  %1042 = load ptr, ptr %1041, align 8, !tbaa !13
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1044, label %1054

1044:                                             ; preds = %1038
  %1045 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1040
  %1046 = load i32, ptr %1045, align 4, !tbaa !14
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1048, label %1054

1048:                                             ; preds = %1044
  %1049 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %1040
  %1050 = load i32, ptr %1049, align 4, !tbaa !14
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %1051, i64 %1037
  %1053 = load i32, ptr %1052, align 4, !tbaa !14
  br label %1054

1054:                                             ; preds = %1048, %1044, %1038
  %1055 = phi i32 [ %1053, %1048 ], [ 0, %1038 ], [ 0, %1044 ]
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds i16, ptr %1035, i64 %1056
  %1058 = load i16, ptr %1057, align 2, !tbaa !30
  %1059 = and i16 %1058, 1024
  %1060 = icmp eq i16 %1059, 0
  br i1 %1060, label %1061, label %1083

1061:                                             ; preds = %1054
  %1062 = add i32 %1039, -1
  %1063 = icmp sgt i32 %1039, 0
  br i1 %1063, label %1064, label %1080

1064:                                             ; preds = %1061
  %1065 = zext i32 %1062 to i64
  br label %1066

1066:                                             ; preds = %1075, %1064
  %1067 = phi i64 [ %1065, %1064 ], [ %1076, %1075 ]
  %1068 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1067
  %1069 = load i32, ptr %1068, align 4, !tbaa !14
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1071, label %1075

1071:                                             ; preds = %1066
  %1072 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1067
  %1073 = load ptr, ptr %1072, align 8, !tbaa !13
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1078, label %1075

1075:                                             ; preds = %1071, %1066
  %1076 = add nsw i64 %1067, -1
  %1077 = icmp sgt i64 %1067, 0
  br i1 %1077, label %1066, label %1083, !llvm.loop !46

1078:                                             ; preds = %1071
  %.lcssa2 = phi i64 [ %1067, %1071 ]
  %1079 = trunc i64 %.lcssa2 to i32
  br label %1080

1080:                                             ; preds = %1078, %1061
  %1081 = phi i32 [ %1062, %1061 ], [ %1079, %1078 ]
  %1082 = icmp sgt i32 %1081, -1
  br i1 %1082, label %1038, label %1083, !llvm.loop !122

1083:                                             ; preds = %1080, %1075, %1054, %1028
  %1084 = phi i32 [ %1020, %1028 ], [ %1055, %1075 ], [ %1055, %1054 ], [ %1055, %1080 ]
  switch i32 %1084, label %1108 [
    i32 110, label %1085
    i32 99, label %1085
    i32 108, label %1093
    i32 97, label %1098
    i32 114, label %1103
  ]

1085:                                             ; preds = %1083, %1083
  %1086 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1087 = trunc i64 %1019 to i32
  %1088 = tail call fastcc i32 @ctspan(i32 noundef %1, i32 noundef %1087) #20
  %1089 = add i32 %1087, 79
  %1090 = add i32 %1089, %1088
  %1091 = add i32 %1087, 40
  %1092 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1086, ptr noundef nonnull @.str.31.138, i32 noundef %1091, i32 noundef %1090, i32 noundef %1025) #21
  br label %1108

1093:                                             ; preds = %1083
  %1094 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1095 = trunc i64 %1019 to i32
  %1096 = add i32 %1095, 40
  %1097 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1094, ptr noundef nonnull @.str.32.139, i32 noundef %1096) #21
  br label %1108

1098:                                             ; preds = %1083
  %1099 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1100 = trunc i64 %1019 to i32
  %1101 = add i32 %1100, 60
  %1102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1099, ptr noundef nonnull @.str.32.139, i32 noundef %1101) #21
  br label %1108

1103:                                             ; preds = %1083
  %1104 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1105 = trunc i64 %1019 to i32
  %1106 = add i32 %1105, 80
  %1107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1104, ptr noundef nonnull @.str.33.140, i32 noundef %1106, i32 noundef %1025) #21
  br label %1108

1108:                                             ; preds = %1103, %1098, %1093, %1085, %1083
  %1109 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1109, ptr noundef nonnull @.str.34.141, i32 noundef 37) #21
  %1111 = load i32, ptr %1013, align 4, !tbaa !14
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds [100 x [20 x [2 x i8]]], ptr @font, i64 0, i64 %1112, i64 %1019
  %1114 = load i8, ptr %1113, align 2, !tbaa !17
  %1115 = icmp eq i8 %1114, 0
  br i1 %1115, label %1123, label %1116

1116:                                             ; preds = %1108
  %1117 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1118 = getelementptr inbounds i8, ptr %1113, i64 1
  %1119 = load i8, ptr %1118, align 1, !tbaa !17
  %1120 = icmp eq i8 %1119, 0
  %1121 = select i1 %1120, ptr @.str.46, ptr @.str.45.142
  %1122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1117, ptr noundef nonnull %1121, ptr noundef nonnull %1113) #21
  br label %1123

1123:                                             ; preds = %1116, %1108
  br i1 %1014, label %1124, label %1177

1124:                                             ; preds = %1133, %1123
  %1125 = phi i64 [ %1134, %1133 ], [ %1016, %1123 ]
  %1126 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1125
  %1127 = load i32, ptr %1126, align 4, !tbaa !14
  %1128 = icmp eq i32 %1127, 0
  br i1 %1128, label %1129, label %1133

1129:                                             ; preds = %1124
  %1130 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1125
  %1131 = load ptr, ptr %1130, align 8, !tbaa !13
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1136, label %1133

1133:                                             ; preds = %1129, %1124
  %1134 = add nsw i64 %1125, -1
  %1135 = icmp sgt i64 %1125, 0
  br i1 %1135, label %1124, label %1177, !llvm.loop !46

1136:                                             ; preds = %1129
  %.lcssa3 = phi i64 [ %1125, %1129 ]
  %1137 = and i64 %.lcssa3, 2147483648
  %1138 = icmp eq i64 %1137, 0
  br i1 %1138, label %1139, label %1177

1139:                                             ; preds = %1136
  %1140 = and i64 %.lcssa3, 4294967295
  %1141 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %1140
  %1142 = load ptr, ptr %1141, align 8, !tbaa !13
  %1143 = getelementptr inbounds %struct.optstr, ptr %1142, i64 %1019
  %1144 = load ptr, ptr %1143, align 8, !tbaa !35
  %1145 = ptrtoint ptr %1144 to i64
  %1146 = and i64 %1145, 4294967168
  %1147 = icmp eq i64 %1146, 0
  br i1 %1147, label %1177, label %1148

1148:                                             ; preds = %1139
  %1149 = load i8, ptr %1144, align 1, !tbaa !17
  %1150 = icmp eq i8 %1149, 92
  br i1 %1150, label %1151, label %1177

1151:                                             ; preds = %1156, %1148
  %1152 = phi i8 [ %1159, %1156 ], [ 92, %1148 ]
  %1153 = phi ptr [ %1158, %1156 ], [ @.str.6.51, %1148 ]
  %1154 = phi ptr [ %1157, %1156 ], [ %1144, %1148 ]
  %1155 = icmp eq i8 %1152, 0
  br i1 %1155, label %1162, label %1156

1156:                                             ; preds = %1151
  %1157 = getelementptr inbounds i8, ptr %1154, i64 1
  %1158 = getelementptr inbounds i8, ptr %1153, i64 1
  %1159 = load i8, ptr %1157, align 1, !tbaa !17
  %1160 = load i8, ptr %1158, align 1, !tbaa !17
  %1161 = icmp eq i8 %1159, %1160
  br i1 %1161, label %1151, label %1177, !llvm.loop !38

1162:                                             ; preds = %1151
  %1163 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1164 = trunc i64 %1019 to i32
  %1165 = add i32 %1164, 97
  %1166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1163, ptr noundef nonnull @.str.35, i32 noundef %1165) #21
  %1167 = load i32, ptr %1013, align 4, !tbaa !14
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds [100 x [20 x i32]], ptr @ctop, i64 0, i64 %1168, i64 %1019
  %1170 = load i32, ptr %1169, align 4, !tbaa !14
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1172, label %1177

1172:                                             ; preds = %1162
  %1173 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1173, ptr noundef nonnull @.str.36.143, i32 noundef 38, i32 noundef %1165, i32 noundef %1025) #21
  %1175 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1175, ptr noundef nonnull @.str.37, i32 noundef 38, i32 noundef 38) #21
  br label %1177

1177:                                             ; preds = %1172, %1162, %1156, %1148, %1139, %1136, %1133, %1123
  %1178 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1178, ptr noundef nonnull @.str.38, i32 noundef %1025) #21
  %1180 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1180, ptr noundef nonnull @.str.39, i32 noundef 37) #21
  %1182 = load i8, ptr %1113, align 2, !tbaa !17
  %1183 = icmp sgt i8 %1182, 0
  br i1 %1183, label %1184, label %1187

1184:                                             ; preds = %1177
  %1185 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1186 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1185, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.40) #21
  br label %1187

1187:                                             ; preds = %1184, %1177
  %1188 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1188, ptr noundef nonnull @.str.41, i32 noundef 32) #21
  %1190 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1190, ptr noundef nonnull @.str.42, i32 noundef 32, i32 noundef 31, i32 noundef 31, i32 noundef 32) #21
  %1192 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1193

1193:                                             ; preds = %1187, %1017
  %1194 = phi i32 [ %1018, %1017 ], [ %1192, %1187 ]
  %1195 = phi i32 [ %1020, %1017 ], [ %1084, %1187 ]
  %1196 = add nuw nsw i64 %1019, 1
  %1197 = sext i32 %1194 to i64
  %1198 = icmp slt i64 %1196, %1197
  br i1 %1198, label %1017, label %1199, !llvm.loop !123

1199:                                             ; preds = %1193, %1002
  %1200 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1201 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1200, ptr noundef nonnull @.str.43, i32 noundef 31) #21
  %1202 = load i32, ptr @ncol, align 4, !tbaa !14
  %1203 = icmp sgt i32 %1202, 0
  br i1 %1203, label %1204, label %1237

1204:                                             ; preds = %1199
  %1205 = add nsw i32 %0, 1
  %1206 = load i32, ptr @nlin, align 4, !tbaa !14
  br label %1207

1207:                                             ; preds = %1226, %1204
  %1208 = phi i32 [ %1202, %1204 ], [ %1227, %1226 ]
  %1209 = phi i32 [ %1206, %1204 ], [ %1228, %1226 ]
  %1210 = phi i32 [ 0, %1204 ], [ %1230, %1226 ]
  %1211 = phi i32 [ 0, %1204 ], [ %1229, %1226 ]
  %1212 = icmp slt i32 %1205, %1209
  br i1 %1212, label %1213, label %1226

1213:                                             ; preds = %1207
  %1214 = call fastcc i32 @left(i32 noundef %0, i32 noundef %1210, ptr noundef nonnull %3) #20
  %1215 = icmp sgt i32 %1214, -1
  br i1 %1215, label %1216, label %1226

1216:                                             ; preds = %1213
  %1217 = icmp eq i32 %1211, 0
  br i1 %1217, label %1218, label %1221

1218:                                             ; preds = %1216
  %1219 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1220 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 7, i64 1, ptr %1219)
  br label %1221

1221:                                             ; preds = %1218, %1216
  tail call fastcc void @tohcol(i32 noundef %1210) #20
  %1222 = add nsw i32 %1211, 2
  %1223 = load i32, ptr %3, align 4, !tbaa !14
  tail call fastcc void @drawvert(i32 noundef %1214, i32 noundef %0, i32 noundef %1210, i32 noundef %1223) #20
  %1224 = load i32, ptr @nlin, align 4, !tbaa !14
  %1225 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1226

1226:                                             ; preds = %1221, %1213, %1207
  %1227 = phi i32 [ %1225, %1221 ], [ %1208, %1213 ], [ %1208, %1207 ]
  %1228 = phi i32 [ %1224, %1221 ], [ %1209, %1213 ], [ %1209, %1207 ]
  %1229 = phi i32 [ %1222, %1221 ], [ %1211, %1213 ], [ %1211, %1207 ]
  %1230 = add nuw nsw i32 %1210, 1
  %1231 = icmp slt i32 %1230, %1227
  br i1 %1231, label %1207, label %1232, !llvm.loop !124

1232:                                             ; preds = %1226
  %.lcssa1 = phi i32 [ %1229, %1226 ]
  %1233 = icmp eq i32 %.lcssa1, 0
  br i1 %1233, label %1237, label %1234

1234:                                             ; preds = %1232
  %1235 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1236 = tail call i32 @fputc(i32 10, ptr %1235)
  br label %1237

1237:                                             ; preds = %1234, %1232, %1199
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  br label %1238

1238:                                             ; preds = %1237, %1000
  %1239 = icmp ne i32 %990, 0
  %1240 = load i32, ptr @ncol, align 4
  %1241 = icmp sgt i32 %1240, 0
  %1242 = select i1 %1239, i1 %1241, i1 false
  br i1 %1242, label %1243, label %1324

1243:                                             ; preds = %1238
  %1244 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %18
  %1245 = icmp eq i32 %1, 0
  %1246 = zext i32 %116 to i64
  br label %1247

1247:                                             ; preds = %1319, %1243
  %1248 = phi i32 [ %1240, %1243 ], [ %1320, %1319 ]
  %1249 = phi i64 [ 0, %1243 ], [ %1321, %1319 ]
  %1250 = load ptr, ptr %1244, align 8, !tbaa !13
  %1251 = getelementptr inbounds %struct.optstr, ptr %1250, i64 %1249
  %1252 = load ptr, ptr %1251, align 8, !tbaa !35
  %1253 = ptrtoint ptr %1252 to i64
  %1254 = and i64 %1253, 4294967168
  %1255 = icmp eq i64 %1254, 0
  br i1 %1255, label %1319, label %1256

1256:                                             ; preds = %1247
  %1257 = load i8, ptr %1252, align 1, !tbaa !17
  %1258 = icmp eq i8 %1257, 92
  br i1 %1258, label %1259, label %1319

1259:                                             ; preds = %1264, %1256
  %1260 = phi i8 [ %1267, %1264 ], [ 92, %1256 ]
  %1261 = phi ptr [ %1266, %1264 ], [ @.str.6.51, %1256 ]
  %1262 = phi ptr [ %1265, %1264 ], [ %1252, %1256 ]
  %1263 = icmp eq i8 %1260, 0
  br i1 %1263, label %1270, label %1264

1264:                                             ; preds = %1259
  %1265 = getelementptr inbounds i8, ptr %1262, i64 1
  %1266 = getelementptr inbounds i8, ptr %1261, i64 1
  %1267 = load i8, ptr %1265, align 1, !tbaa !17
  %1268 = load i8, ptr %1266, align 1, !tbaa !17
  %1269 = icmp eq i8 %1267, %1268
  br i1 %1269, label %1259, label %1319, !llvm.loop !38

1270:                                             ; preds = %1259
  br i1 %1245, label %1312, label %1271

1271:                                             ; preds = %1270
  br i1 %117, label %1272, label %1286

1272:                                             ; preds = %1281, %1271
  %1273 = phi i64 [ %1282, %1281 ], [ %1246, %1271 ]
  %1274 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %1273
  %1275 = load i32, ptr %1274, align 4, !tbaa !14
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1277, label %1281

1277:                                             ; preds = %1272
  %1278 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %1273
  %1279 = load ptr, ptr %1278, align 8, !tbaa !13
  %1280 = icmp eq ptr %1279, null
  br i1 %1280, label %1284, label %1281

1281:                                             ; preds = %1277, %1272
  %1282 = add nsw i64 %1273, -1
  %1283 = icmp sgt i64 %1273, 0
  br i1 %1283, label %1272, label %1312, !llvm.loop !46

1284:                                             ; preds = %1277
  %.lcssa = phi i64 [ %1273, %1277 ]
  %1285 = trunc i64 %.lcssa to i32
  br label %1286

1286:                                             ; preds = %1284, %1271
  %1287 = phi i32 [ %116, %1271 ], [ %1285, %1284 ]
  %1288 = icmp slt i32 %1287, 0
  br i1 %1288, label %1312, label %1289

1289:                                             ; preds = %1286
  %1290 = zext i32 %1287 to i64
  %1291 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %1290
  %1292 = load ptr, ptr %1291, align 8, !tbaa !13
  %1293 = getelementptr inbounds %struct.optstr, ptr %1292, i64 %1249
  %1294 = load ptr, ptr %1293, align 8, !tbaa !35
  %1295 = ptrtoint ptr %1294 to i64
  %1296 = and i64 %1295, 4294967168
  %1297 = icmp eq i64 %1296, 0
  br i1 %1297, label %1312, label %1298

1298:                                             ; preds = %1289
  %1299 = load i8, ptr %1294, align 1, !tbaa !17
  %1300 = icmp eq i8 %1299, 92
  br i1 %1300, label %1301, label %1312

1301:                                             ; preds = %1306, %1298
  %1302 = phi i8 [ %1309, %1306 ], [ 92, %1298 ]
  %1303 = phi ptr [ %1308, %1306 ], [ @.str.6.51, %1298 ]
  %1304 = phi ptr [ %1307, %1306 ], [ %1294, %1298 ]
  %1305 = icmp eq i8 %1302, 0
  br i1 %1305, label %1319, label %1306

1306:                                             ; preds = %1301
  %1307 = getelementptr inbounds i8, ptr %1304, i64 1
  %1308 = getelementptr inbounds i8, ptr %1303, i64 1
  %1309 = load i8, ptr %1307, align 1, !tbaa !17
  %1310 = load i8, ptr %1308, align 1, !tbaa !17
  %1311 = icmp eq i8 %1309, %1310
  br i1 %1311, label %1301, label %1312, !llvm.loop !38

1312:                                             ; preds = %1306, %1298, %1289, %1286, %1281, %1270
  %1313 = load ptr, ptr @tabout, align 8, !tbaa !13
  %1314 = trunc i64 %1249 to i32
  %1315 = add i32 %1314, 97
  %1316 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1313, ptr noundef nonnull @.str.23.133, i32 noundef %1315) #21
  %1317 = getelementptr inbounds [20 x i32], ptr @topat, i64 0, i64 %1249
  store i32 %1, ptr %1317, align 4, !tbaa !14
  %1318 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %1319

1319:                                             ; preds = %1312, %1301, %1264, %1256, %1247
  %1320 = phi i32 [ %1248, %1256 ], [ %1248, %1247 ], [ %1318, %1312 ], [ %1248, %1301 ], [ %1248, %1264 ]
  %1321 = add nuw nsw i64 %1249, 1
  %1322 = sext i32 %1320 to i64
  %1323 = icmp slt i64 %1321, %1322
  br i1 %1323, label %1247, label %1324, !llvm.loop !125

1324:                                             ; preds = %1319, %1238, %153, %140, %138
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @domore(ptr noundef %0) unnamed_addr #3 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi ptr [ @.str.2.154, %1 ], [ %10, %8 ]
  %4 = phi ptr [ %0, %1 ], [ %9, %8 ]
  %5 = load i8, ptr %3, align 1, !tbaa !17
  %6 = load i8, ptr %4, align 1, !tbaa !17
  %7 = icmp eq i8 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  %11 = icmp eq ptr %3, getelementptr inbounds ([4 x i8], ptr @.str.2.154, i64 0, i64 3)
  br i1 %11, label %146, label %2, !llvm.loop !18

12:                                               ; preds = %2
  %.lcssa5 = phi i8 [ %5, %2 ]
  %13 = icmp eq i8 %.lcssa5, 0
  br i1 %13, label %146, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr %0, align 1, !tbaa !17
  %16 = icmp eq i8 %15, 46
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %0, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !17
  br label %32

20:                                               ; preds = %14
  %21 = tail call ptr @__ctype_b_loc() #25
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = getelementptr inbounds i8, ptr %0, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !17
  %25 = sext i8 %24 to i64
  %26 = getelementptr inbounds i16, ptr %22, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !30
  %28 = and i16 %27, 2048
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %0) #21
  br label %146

32:                                               ; preds = %20, %17
  %33 = phi i8 [ %19, %17 ], [ %24, %20 ]
  store ptr null, ptr @instead, align 16, !tbaa !13
  store i32 0, ptr @fullbot, align 16, !tbaa !14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %37, %32
  %36 = load i32, ptr @ncol, align 4, !tbaa !14
  br label %43

37:                                               ; preds = %32
  %38 = sext i8 %15 to i32
  switch i32 %38, label %35 [
    i32 95, label %39
    i32 61, label %41
  ]

39:                                               ; preds = %37
  store i32 45, ptr @fullbot, align 16, !tbaa !14
  %40 = load i32, ptr @useln, align 4, !tbaa !14
  tail call fastcc void @putline(i32 noundef %40, i32 noundef 0) #20
  br label %146

41:                                               ; preds = %37
  store i32 61, ptr @fullbot, align 16, !tbaa !14
  %42 = load i32, ptr @useln, align 4, !tbaa !14
  tail call fastcc void @putline(i32 noundef %42, i32 noundef 0) #20
  br label %146

43:                                               ; preds = %121, %35
  %44 = phi i32 [ %122, %121 ], [ %36, %35 ]
  %45 = phi ptr [ %.lcssa, %121 ], [ %0, %35 ]
  %46 = phi i32 [ %125, %121 ], [ 0, %35 ]
  %47 = icmp slt i32 %46, %44
  br i1 %47, label %48, label %129

48:                                               ; preds = %43
  %49 = load ptr, ptr @table, align 16
  %50 = sext i32 %46 to i64
  %51 = getelementptr inbounds %struct.optstr, ptr %49, i64 %50
  store ptr %45, ptr %51, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.optstr, ptr %49, i64 %50, i32 1
  store ptr null, ptr %52, align 8, !tbaa !37
  %53 = load i32, ptr @tab, align 4
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi ptr [ %45, %48 ], [ %61, %54 ]
  %56 = load i8, ptr %55, align 1, !tbaa !17
  %57 = sext i8 %56 to i32
  %58 = icmp ne i8 %56, 0
  %59 = icmp ne i32 %53, %57
  %60 = select i1 %58, i1 %59, i1 false
  %61 = getelementptr inbounds i8, ptr %55, i64 1
  br i1 %60, label %54, label %62, !llvm.loop !126

62:                                               ; preds = %54
  %.lcssa2 = phi ptr [ %55, %54 ]
  %.lcssa1 = phi i8 [ %56, %54 ]
  %.lcssa = phi ptr [ %61, %54 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !17
  %63 = load i32, ptr @useln, align 4, !tbaa !14
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = add nsw i64 %50, 1
  br label %121

70:                                               ; preds = %62
  %71 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %64
  %72 = load i32, ptr %71, align 4, !tbaa !14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %64
  %76 = load i32, ptr %75, align 4, !tbaa !14
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %77, i64 %50
  %79 = load i32, ptr %78, align 4, !tbaa !14
  switch i32 %79, label %82 [
    i32 110, label %84
    i32 97, label %80
  ]

80:                                               ; preds = %74
  %81 = load ptr, ptr %51, align 8, !tbaa !35
  store ptr %81, ptr %52, align 8, !tbaa !37
  store ptr @.str.14.341, ptr %51, align 8, !tbaa !35
  br label %82

82:                                               ; preds = %80, %74, %70
  %83 = add nsw i64 %50, 1
  br label %98

84:                                               ; preds = %74
  %85 = load ptr, ptr %51, align 8, !tbaa !35
  %86 = tail call fastcc i32 @maknew(ptr noundef %85) #20
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to ptr
  %89 = load ptr, ptr @table, align 16
  %90 = getelementptr inbounds %struct.optstr, ptr %89, i64 %50, i32 1
  store ptr %88, ptr %90, align 8, !tbaa !37
  %91 = load i32, ptr @ncol, align 4, !tbaa !14
  %92 = load i32, ptr @useln, align 4, !tbaa !14
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !13
  %96 = icmp eq ptr %95, null
  %97 = add nsw i64 %50, 1
  br i1 %96, label %98, label %121

98:                                               ; preds = %84, %82
  %99 = phi i64 [ %83, %82 ], [ %97, %84 ]
  %100 = phi i32 [ %44, %82 ], [ %91, %84 ]
  %101 = phi ptr [ %49, %82 ], [ %89, %84 ]
  %102 = phi i64 [ %64, %82 ], [ %93, %84 ]
  %103 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !14
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %102
  br i1 %105, label %107, label %121

107:                                              ; preds = %98
  %108 = load i32, ptr %106, align 4, !tbaa !14
  %109 = sext i32 %108 to i64
  br label %110

110:                                              ; preds = %118, %107
  %111 = phi i64 [ %112, %118 ], [ %50, %107 ]
  %112 = phi i64 [ %120, %118 ], [ %99, %107 ]
  %113 = shl i64 %112, 32
  %114 = ashr exact i64 %113, 32
  %115 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %109, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !14
  %117 = icmp eq i32 %116, 115
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.optstr, ptr %101, i64 %112
  store ptr @.str.14.341, ptr %119, align 8, !tbaa !35
  %120 = add i64 %112, 1
  br i1 %105, label %110, label %121

121:                                              ; preds = %118, %110, %98, %84, %68
  %122 = phi i32 [ %91, %84 ], [ %44, %68 ], [ %100, %98 ], [ %100, %110 ], [ %100, %118 ]
  %123 = phi i64 [ %97, %84 ], [ %69, %68 ], [ %99, %98 ], [ %99, %118 ], [ %112, %110 ]
  %124 = phi i64 [ %50, %84 ], [ %50, %68 ], [ %50, %98 ], [ %50, %118 ], [ %111, %110 ]
  %125 = trunc i64 %123 to i32
  %126 = icmp eq i8 %.lcssa1, 0
  br i1 %126, label %127, label %43, !llvm.loop !127

127:                                              ; preds = %121
  %.lcssa4 = phi i32 [ %122, %121 ]
  %.lcssa3 = phi i64 [ %124, %121 ]
  %128 = trunc i64 %.lcssa3 to i32
  br label %129

129:                                              ; preds = %127, %43
  %130 = phi i32 [ %.lcssa4, %127 ], [ %44, %43 ]
  %131 = phi i32 [ %128, %127 ], [ %46, %43 ]
  %132 = add nsw i32 %131, 1
  %133 = icmp slt i32 %132, %130
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = sext i32 %131 to i64
  %136 = add nsw i64 %135, 1
  %137 = load ptr, ptr @table, align 16, !tbaa !13
  br label %138

138:                                              ; preds = %138, %134
  %139 = phi i64 [ %136, %134 ], [ %141, %138 ]
  %140 = getelementptr inbounds %struct.optstr, ptr %137, i64 %139
  store ptr @.str.14.341, ptr %140, align 8, !tbaa !35
  %141 = add nsw i64 %139, 1
  %142 = trunc i64 %141 to i32
  %143 = icmp eq i32 %130, %142
  br i1 %143, label %144, label %138, !llvm.loop !128

144:                                              ; preds = %138, %129
  %145 = load i32, ptr @useln, align 4, !tbaa !14
  tail call fastcc void @putline(i32 noundef %145, i32 noundef 0) #20
  br label %146

146:                                              ; preds = %144, %41, %39, %30, %12, %8
  %147 = phi i32 [ 1, %144 ], [ 1, %41 ], [ 1, %39 ], [ 1, %30 ], [ 0, %12 ], [ 0, %8 ]
  ret i32 %147
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @fullwide(i32 noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load i1, ptr @pr1403, align 4
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @tabout, align 8, !tbaa !13
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.313, i32 noundef 36) #21
  br label %7

7:                                                ; preds = %4, %2
  %8 = load i32, ptr @ncol, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %90

10:                                               ; preds = %7
  %11 = icmp sgt i32 %0, 0
  %12 = add nsw i32 %0, -1
  %13 = zext i32 %12 to i64
  br label %14

14:                                               ; preds = %84, %10
  %15 = phi i32 [ %8, %10 ], [ %85, %84 ]
  %16 = phi i32 [ %8, %10 ], [ %86, %84 ]
  %17 = phi i32 [ %8, %10 ], [ %87, %84 ]
  %18 = phi i32 [ %8, %10 ], [ %88, %84 ]
  %19 = phi i32 [ 0, %10 ], [ %77, %84 ]
  br i1 %11, label %20, label %41

20:                                               ; preds = %36, %14
  %21 = phi i32 [ %40, %36 ], [ %19, %14 ]
  br label %22

22:                                               ; preds = %31, %20
  %23 = phi i64 [ %13, %20 ], [ %32, %31 ]
  %24 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %22
  %32 = add nsw i64 %23, -1
  %33 = icmp sgt i64 %23, 0
  br i1 %33, label %22, label %36, !llvm.loop !46

34:                                               ; preds = %27
  %.lcssa = phi i64 [ %23, %27 ]
  %35 = trunc i64 %.lcssa to i32
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i32 [ %35, %34 ], [ -1, %31 ]
  %38 = tail call fastcc i32 @vspand(i32 noundef %37, i32 noundef %21, i32 noundef 1) #20, !range !16
  %39 = icmp eq i32 %38, 0
  %40 = add nsw i32 %21, 1
  br i1 %39, label %41, label %20

41:                                               ; preds = %36, %14
  %42 = phi i32 [ %17, %14 ], [ %16, %36 ]
  %43 = phi i32 [ %18, %14 ], [ %16, %36 ]
  %44 = phi i32 [ %19, %14 ], [ %21, %36 ]
  %45 = icmp slt i32 %44, %43
  br i1 %45, label %46, label %73

46:                                               ; preds = %68, %41
  %47 = phi i32 [ %69, %68 ], [ %42, %41 ]
  %48 = phi i32 [ %70, %68 ], [ %43, %41 ]
  %49 = phi i32 [ %71, %68 ], [ %44, %41 ]
  br i1 %11, label %50, label %68

50:                                               ; preds = %59, %46
  %51 = phi i64 [ %60, %59 ], [ %13, %46 ]
  %52 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !14
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %51
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55, %50
  %60 = add nsw i64 %51, -1
  %61 = icmp sgt i64 %51, 0
  br i1 %61, label %50, label %64, !llvm.loop !46

62:                                               ; preds = %55
  %.lcssa2 = phi i64 [ %51, %55 ]
  %63 = trunc i64 %.lcssa2 to i32
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %63, %62 ], [ -1, %59 ]
  %66 = tail call fastcc i32 @vspand(i32 noundef %65, i32 noundef %49, i32 noundef 1) #20, !range !16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64, %46
  %69 = phi i32 [ %47, %46 ], [ %15, %64 ]
  %70 = phi i32 [ %48, %46 ], [ %15, %64 ]
  %71 = add nsw i32 %49, 1
  %72 = icmp slt i32 %71, %70
  br i1 %72, label %46, label %73, !llvm.loop !129

73:                                               ; preds = %68, %64, %41
  %74 = phi i32 [ %16, %41 ], [ %15, %64 ], [ %15, %68 ]
  %75 = phi i32 [ %42, %41 ], [ %69, %68 ], [ %15, %64 ]
  %76 = phi i32 [ %43, %41 ], [ %69, %68 ], [ %15, %64 ]
  %77 = phi i32 [ %44, %41 ], [ %71, %68 ], [ %49, %64 ]
  %78 = icmp slt i32 %44, %76
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = icmp slt i32 %77, %76
  %81 = sext i1 %80 to i32
  %82 = add nsw i32 %77, %81
  tail call fastcc void @drawline(i32 noundef %0, i32 noundef %44, i32 noundef %82, i32 noundef %1, i32 noundef 1, i32 noundef 0) #21
  %83 = load i32, ptr @ncol, align 4
  br label %84

84:                                               ; preds = %79, %73
  %85 = phi i32 [ %83, %79 ], [ %15, %73 ]
  %86 = phi i32 [ %83, %79 ], [ %74, %73 ]
  %87 = phi i32 [ %83, %79 ], [ %75, %73 ]
  %88 = phi i32 [ %83, %79 ], [ %76, %73 ]
  %89 = icmp slt i32 %77, %88
  br i1 %89, label %14, label %90, !llvm.loop !130

90:                                               ; preds = %84, %7
  %91 = load ptr, ptr @tabout, align 8, !tbaa !13
  %92 = tail call i32 @fputc(i32 10, ptr %91)
  %93 = load i1, ptr @pr1403, align 4
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @tabout, align 8, !tbaa !13
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.2.314, i32 noundef 36) #21
  br label %97

97:                                               ; preds = %94, %90
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @allh(i32 noundef %0) unnamed_addr #18 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i32, ptr @ncol, align 4, !tbaa !14
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %14, %6
  %10 = phi i32 [ %15, %14 ], [ 0, %6 ]
  %11 = phi i32 [ %16, %14 ], [ 0, %6 ]
  %12 = tail call fastcc i32 @thish(i32 noundef %0, i32 noundef %11) #21
  switch i32 %12, label %13 [
    i32 0, label %18
    i32 1, label %14
  ]

13:                                               ; preds = %9
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ 1, %13 ], [ %10, %9 ]
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %18, label %9, !llvm.loop !131

18:                                               ; preds = %14, %9, %6, %1
  %19 = phi i32 [ 1, %1 ], [ 0, %6 ], [ %15, %14 ], [ %12, %9 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @puttext(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #15 {
  %4 = ptrtoint ptr %0 to i64
  %5 = and i64 %4, 4294967168
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %7
  %10 = load i8, ptr %1, align 1, !tbaa !17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @tabout, align 8, !tbaa !13
  %14 = getelementptr inbounds i8, ptr %1, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !17
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.46, ptr @.str.45.142
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull %17, ptr noundef nonnull %1) #21
  br label %19

19:                                               ; preds = %12, %9, %7
  %20 = icmp eq ptr %2, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = load i8, ptr %2, align 1, !tbaa !17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @tabout, align 8, !tbaa !13
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.47, ptr noundef nonnull %2) #21
  br label %27

27:                                               ; preds = %24, %21, %19
  %28 = load ptr, ptr @tabout, align 8, !tbaa !13
  %29 = tail call i32 @fputs(ptr %0, ptr %28)
  %30 = load i8, ptr %1, align 1, !tbaa !17
  %31 = icmp sgt i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr @tabout, align 8, !tbaa !13
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.25.146, i32 noundef 31) #21
  br label %35

35:                                               ; preds = %32, %27
  br i1 %20, label %39, label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr @tabout, align 8, !tbaa !13
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.26.147) #21
  br label %39

39:                                               ; preds = %36, %35, %3
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @makeline(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = tail call fastcc i32 @thish(i32 noundef %0, i32 noundef %1) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %84, label %6

6:                                                ; preds = %3
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.optstr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = load i8, ptr %12, align 1, !tbaa !17
  %14 = icmp eq i8 %13, 92
  %15 = zext i1 %14 to i32
  %16 = icmp slt i32 %1, 1
  %17 = select i1 %16, i1 true, i1 %14
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = add nsw i32 %1, -1
  %20 = tail call fastcc i32 @thish(i32 noundef %0, i32 noundef %19) #20
  %21 = icmp eq i32 %20, %4
  br i1 %21, label %84, label %31

22:                                               ; preds = %6
  br i1 %14, label %23, label %31

23:                                               ; preds = %22
  %24 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %25 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %26 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %7
  %27 = load i32, ptr @ncol, align 4, !tbaa !14
  %28 = sext i32 %27 to i64
  %29 = add i32 %1, 1
  %30 = tail call i32 @llvm.smax.i32(i32 %27, i32 %29)
  br label %59

31:                                               ; preds = %22, %18
  %32 = load i32, ptr @ncol, align 4, !tbaa !14
  %33 = icmp sgt i32 %32, %1
  br i1 %33, label %34, label %81

34:                                               ; preds = %31
  %35 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %39 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %7
  br label %40

40:                                               ; preds = %55, %34
  %41 = phi i64 [ %10, %34 ], [ %56, %55 ]
  br i1 %37, label %42, label %51

42:                                               ; preds = %40
  %43 = load i32, ptr %38, align 4, !tbaa !14
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, ptr %39, align 4, !tbaa !14
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %47, i64 %41
  %49 = load i32, ptr %48, align 4, !tbaa !14
  %50 = icmp eq i32 %49, 115
  br i1 %50, label %55, label %51

51:                                               ; preds = %45, %42, %40
  %52 = trunc i64 %41 to i32
  %53 = tail call fastcc i32 @thish(i32 noundef %0, i32 noundef %52) #20
  %54 = icmp eq i32 %4, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51, %45
  %56 = add nsw i64 %41, 1
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %32, %57
  br i1 %58, label %81, label %40, !llvm.loop !132

59:                                               ; preds = %69, %23
  %60 = phi i64 [ %10, %23 ], [ %61, %69 ]
  %61 = add nsw i64 %60, 1
  %62 = icmp slt i64 %61, %28
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load ptr, ptr %24, align 8, !tbaa !13
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, ptr %25, align 4, !tbaa !14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, ptr %26, align 4, !tbaa !14
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %71, i64 %61
  %73 = load i32, ptr %72, align 4, !tbaa !14
  %74 = icmp eq i32 %73, 115
  br i1 %74, label %59, label %75, !llvm.loop !133

75:                                               ; preds = %69
  %.lcssa2 = phi i64 [ %61, %69 ]
  %76 = trunc i64 %.lcssa2 to i32
  br label %81

77:                                               ; preds = %63
  %.lcssa = phi i64 [ %61, %63 ]
  %78 = trunc i64 %.lcssa to i32
  br label %81

79:                                               ; preds = %66
  %.lcssa1 = phi i64 [ %61, %66 ]
  %80 = trunc i64 %.lcssa1 to i32
  br label %81

81:                                               ; preds = %79, %77, %75, %59, %55, %51, %31
  %82 = phi i32 [ %1, %31 ], [ %76, %75 ], [ %78, %77 ], [ %80, %79 ], [ %30, %59 ], [ %52, %51 ], [ %32, %55 ]
  %83 = add nsw i32 %82, -1
  tail call fastcc void @drawline(i32 noundef %0, i32 noundef %1, i32 noundef %83, i32 noundef %2, i32 noundef 0, i32 noundef %15) #21
  br label %84

84:                                               ; preds = %81, %18, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @ctspan(i32 noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %5 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %3
  %6 = load i32, ptr @ncol, align 4, !tbaa !14
  %7 = add nsw i32 %1, 1
  %8 = icmp slt i32 %7, %6
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  %13 = sub i32 %6, %1
  br i1 %12, label %14, label %31

14:                                               ; preds = %9
  %15 = sext i32 %1 to i64
  %16 = load i32, ptr %4, align 4, !tbaa !14
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %28, %14
  %19 = phi i64 [ %15, %14 ], [ %21, %28 ]
  %20 = phi i32 [ 1, %14 ], [ %29, %28 ]
  %21 = add nsw i64 %19, 1
  br i1 %17, label %22, label %31

22:                                               ; preds = %18
  %23 = load i32, ptr %5, align 4, !tbaa !14
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %24, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = icmp eq i32 %26, 115
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = add nuw i32 %20, 1
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %31, label %18, !llvm.loop !134

31:                                               ; preds = %28, %22, %18, %9, %2
  %32 = phi i32 [ 1, %2 ], [ 1, %9 ], [ %20, %22 ], [ %13, %28 ], [ 1, %18 ]
  ret i32 %32
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @thish(i32 noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = or i32 %1, %0
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %69

5:                                                ; preds = %2
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %6
  %11 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %6
  %12 = load i32, ptr %10, align 4, !tbaa !14
  br i1 %9, label %13, label %23

13:                                               ; preds = %5
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %13
  %16 = load i32, ptr %11, align 4, !tbaa !14
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %25, %15
  %19 = phi i32 [ %1, %15 ], [ %26, %25 ]
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %17, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !14
  switch i32 %22, label %29 [
    i32 95, label %67
    i32 45, label %67
    i32 61, label %66
    i32 94, label %69
    i32 115, label %25
    i32 0, label %69
  ]

23:                                               ; preds = %5
  %24 = tail call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %69

25:                                               ; preds = %18
  %26 = add nsw i32 %19, -1
  %27 = or i32 %26, %0
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %18, label %67

29:                                               ; preds = %18
  %.lcssa3 = phi i64 [ %20, %18 ]
  %.lcssa = phi i32 [ %22, %18 ]
  %30 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %6
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = icmp eq i32 %.lcssa, 97
  %33 = getelementptr inbounds %struct.optstr, ptr %31, i64 %.lcssa3, i32 1
  %34 = getelementptr inbounds %struct.optstr, ptr %31, i64 %.lcssa3
  %35 = select i1 %32, ptr %33, ptr %34
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = ptrtoint ptr %36 to i64
  %38 = and i64 %37, 4294967168
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %29
  %41 = load i8, ptr %36, align 1, !tbaa !17
  switch i8 %41, label %53 [
    i8 0, label %69
    i8 92, label %42
  ]

42:                                               ; preds = %47, %40
  %43 = phi i8 [ %50, %47 ], [ %41, %40 ]
  %44 = phi ptr [ %49, %47 ], [ @.str.6.51, %40 ]
  %45 = phi ptr [ %48, %47 ], [ %36, %40 ]
  %46 = icmp eq i8 %43, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = getelementptr inbounds i8, ptr %44, i64 1
  %50 = load i8, ptr %48, align 1, !tbaa !17
  %51 = load i8, ptr %49, align 1, !tbaa !17
  %52 = icmp eq i8 %50, %51
  br i1 %52, label %42, label %53, !llvm.loop !38

53:                                               ; preds = %47, %40
  %54 = icmp eq i8 %41, 92
  %55 = zext i1 %54 to i64
  %56 = getelementptr inbounds i8, ptr %36, i64 %55
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i8, ptr %56, align 1, !tbaa !17
  %62 = icmp eq i8 %61, 61
  %63 = select i1 %62, i32 61, i32 0
  %64 = icmp eq i8 %61, 95
  %65 = select i1 %64, i32 45, i32 %63
  br label %69

66:                                               ; preds = %18
  br label %69

67:                                               ; preds = %25, %18, %18
  %68 = phi i32 [ 45, %18 ], [ 45, %18 ], [ 0, %25 ]
  br label %69

69:                                               ; preds = %67, %66, %60, %53, %42, %40, %29, %23, %18, %18, %13, %2
  %70 = phi i32 [ 1, %40 ], [ 1, %29 ], [ 0, %2 ], [ %24, %23 ], [ 0, %53 ], [ %65, %60 ], [ %12, %13 ], [ 61, %66 ], [ %68, %67 ], [ 1, %18 ], [ 1, %18 ], [ 1, %42 ]
  ret i32 %70
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @midbar(i32 noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = tail call fastcc i32 @midbcol(i32 noundef %0, i32 noundef %1) #21, !range !111
  %4 = icmp eq i32 %3, 0
  %5 = icmp sgt i32 %1, 0
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = add nsw i32 %1, -1
  %9 = tail call fastcc i32 @midbcol(i32 noundef %0, i32 noundef %8) #21, !range !111
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %9, %7 ], [ %3, %2 ]
  ret i32 %11
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @interh(i32 noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !14
  %6 = icmp eq i32 %5, 61
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dboxflg, align 4, !tbaa !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, ptr @nlin, align 4, !tbaa !14
  br label %24

12:                                               ; preds = %7
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr @nlin, align 4, !tbaa !14
  %16 = add nsw i32 %15, -1
  %17 = icmp sgt i32 %16, %0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14, %12, %2
  %19 = load i32, ptr @ncol, align 4, !tbaa !14
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
  %31 = tail call fastcc i32 @thish(i32 noundef %0, i32 noundef %30) #20
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
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = icmp ne ptr %41, null
  %43 = icmp sgt i64 %38, 1
  %44 = and i1 %43, %42
  br i1 %44, label %37, label %45, !llvm.loop !135

45:                                               ; preds = %37
  %.lcssa3 = phi i64 [ %39, %37 ]
  %46 = trunc i64 %.lcssa3 to i32
  %47 = tail call fastcc i32 @allh(i32 noundef %46) #20, !range !16
  %48 = icmp eq i32 %47, 0
  %49 = or i1 %28, %48
  %50 = select i1 %48, i32 %33, i32 0
  br i1 %49, label %63, label %51

51:                                               ; preds = %51, %45
  %52 = phi i64 [ %53, %51 ], [ %3, %45 ]
  %53 = add nsw i64 %52, -1
  %54 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = icmp ne ptr %55, null
  %57 = icmp sgt i64 %52, 1
  %58 = and i1 %57, %56
  br i1 %58, label %51, label %59, !llvm.loop !135

59:                                               ; preds = %51
  %.lcssa2 = phi i64 [ %53, %51 ]
  %60 = trunc i64 %.lcssa2 to i32
  %61 = add nsw i32 %1, -1
  %62 = tail call fastcc i32 @thish(i32 noundef %60, i32 noundef %61) #20
  br label %63

63:                                               ; preds = %59, %45, %32
  %64 = phi i32 [ %50, %45 ], [ %33, %32 ], [ %62, %59 ]
  %65 = tail call fastcc i32 @thish(i32 noundef %0, i32 noundef %1) #20
  %66 = icmp slt i32 %65, 2
  %67 = and i1 %35, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %68, %63
  %69 = phi i64 [ %70, %68 ], [ %3, %63 ]
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !13
  %73 = icmp ne ptr %72, null
  %74 = icmp sgt i64 %69, 1
  %75 = and i1 %74, %73
  br i1 %75, label %68, label %76, !llvm.loop !135

76:                                               ; preds = %68
  %.lcssa1 = phi i64 [ %70, %68 ]
  %77 = trunc i64 %.lcssa1 to i32
  %78 = tail call fastcc i32 @allh(i32 noundef %77) #20, !range !16
  %79 = icmp eq i32 %78, 0
  %80 = or i1 %28, %79
  %81 = select i1 %79, i32 %65, i32 0
  br i1 %80, label %93, label %82

82:                                               ; preds = %82, %76
  %83 = phi i64 [ %84, %82 ], [ %3, %76 ]
  %84 = add nsw i64 %83, -1
  %85 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !13
  %87 = icmp ne ptr %86, null
  %88 = icmp sgt i64 %83, 1
  %89 = and i1 %88, %87
  br i1 %89, label %82, label %90, !llvm.loop !135

90:                                               ; preds = %82
  %.lcssa = phi i64 [ %84, %82 ]
  %91 = trunc i64 %.lcssa to i32
  %92 = tail call fastcc i32 @thish(i32 noundef %91, i32 noundef %1) #20
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

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @midbcol(i32 noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %3
  %8 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %3
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %15, %2
  %11 = phi i64 [ %21, %15 ], [ %9, %2 ]
  br i1 %6, label %12, label %25

12:                                               ; preds = %10
  %13 = load i32, ptr %7, align 4, !tbaa !14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load i32, ptr %8, align 4, !tbaa !14
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %17, i64 %11
  %19 = load i32, ptr %18, align 4, !tbaa !14
  %20 = icmp eq i32 %19, 115
  %21 = add i64 %11, -1
  br i1 %20, label %10, label %22, !llvm.loop !136

22:                                               ; preds = %15
  %.lcssa2 = phi i32 [ %19, %15 ]
  %.lcssa1 = phi i64 [ %11, %15 ]
  %23 = and i32 %.lcssa2, -17
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %49, label %25

25:                                               ; preds = %22, %12, %10
  %.lcssa = phi i64 [ %.lcssa1, %22 ], [ %11, %12 ], [ %11, %10 ]
  %26 = getelementptr inbounds [0 x ptr], ptr @table, i64 0, i64 %3
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = shl i64 %.lcssa, 32
  %29 = ashr exact i64 %28, 32
  %30 = getelementptr inbounds %struct.optstr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = ptrtoint ptr %31 to i64
  %33 = and i64 %32, 4294967168
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %25
  %36 = load i8, ptr %31, align 1, !tbaa !17
  %37 = icmp eq i8 %36, 92
  %38 = zext i1 %37 to i64
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i8, ptr %39, align 1, !tbaa !17
  %45 = icmp eq i8 %44, 61
  %46 = select i1 %45, i32 61, i32 0
  %47 = icmp eq i8 %44, 95
  %48 = select i1 %47, i32 45, i32 %46
  br label %49

49:                                               ; preds = %43, %35, %25, %22
  %50 = phi i32 [ %.lcssa2, %22 ], [ 1, %25 ], [ 0, %35 ], [ %48, %43 ]
  ret i32 %50
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @interv(i32 noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = load i32, ptr @ncol, align 4, !tbaa !14
  %4 = icmp sle i32 %3, %1
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %5, %4
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, ptr @dboxflg, align 4, !tbaa !14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = icmp eq i32 %0, 0
  br i1 %11, label %44, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr @nlin, align 4, !tbaa !14
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
  %21 = tail call fastcc i32 @lefdata(i32 noundef %20, i32 noundef %1) #20, !range !104
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %21, %19 ], [ 0, %17 ]
  %24 = add nsw i32 %0, 1
  %25 = load i32, ptr @nlin, align 4, !tbaa !14
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = icmp eq i32 %23, 2
  br label %40

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @allh(i32 noundef %0) #20, !range !16
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 %0, i32 %24
  %33 = tail call fastcc i32 @lefdata(i32 noundef %32, i32 noundef %1) #20, !range !104
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

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @lefdata(i32 noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = load i32, ptr @nlin, align 4, !tbaa !14
  %4 = icmp sgt i32 %3, %0
  %5 = add nsw i32 %3, -1
  %6 = select i1 %4, i32 %0, i32 %5
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @instead, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds [0 x i32], ptr @fullbot, i64 0, i64 %7
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %7
  %17 = load i32, ptr %16, align 4, !tbaa !14
  %18 = sext i32 %17 to i64
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !14
  %22 = icmp eq i32 %21, 115
  br i1 %22, label %23, label %33

23:                                               ; preds = %23, %15
  %24 = phi i64 [ %28, %23 ], [ %19, %15 ]
  %25 = getelementptr inbounds [100 x [20 x i32]], ptr @style, i64 0, i64 %18, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = icmp eq i32 %26, 115
  %28 = add i64 %24, -1
  br i1 %27, label %23, label %29, !llvm.loop !137

29:                                               ; preds = %23
  %.lcssa = phi i64 [ %24, %23 ]
  %30 = trunc i64 %.lcssa to i32
  %31 = tail call fastcc i32 @thish(i32 noundef %6, i32 noundef %30) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33

33:                                               ; preds = %29, %15, %11, %2
  %34 = getelementptr inbounds [0 x i32], ptr @stynum, i64 0, i64 %7
  %35 = load i32, ptr %34, align 4, !tbaa !14
  %36 = sext i32 %35 to i64
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds [100 x [20 x i32]], ptr @lefline, i64 0, i64 %36, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !14
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %33
  %42 = load i32, ptr @dboxflg, align 4, !tbaa !14
  %43 = icmp ne i32 %42, 0
  %44 = icmp eq i32 %1, 0
  %45 = and i1 %44, %43
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, ptr @allflg, align 4, !tbaa !14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr @boxflg, align 4, !tbaa !14
  %51 = icmp ne i32 %50, 0
  %52 = and i1 %44, %51
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %49, %46, %41, %33, %29
  %55 = phi i32 [ 0, %29 ], [ %39, %33 ], [ 2, %41 ], [ 1, %46 ], [ %53, %49 ]
  ret i32 %55
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ineqn(ptr noundef readnone %0, ptr noundef readonly %1) unnamed_addr #13 {
  %3 = load i8, ptr %1, align 1, !tbaa !17
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
  %26 = load i8, ptr %15, align 1, !tbaa !17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %8, !llvm.loop !138

28:                                               ; preds = %24, %8, %2
  %29 = phi i32 [ 0, %2 ], [ %10, %8 ], [ 0, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get1char() unnamed_addr #3 {
  %1 = load ptr, ptr @backp, align 8, !tbaa !13
  %2 = icmp ugt ptr %1, @backup
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = getelementptr inbounds i8, ptr %1, i64 -1
  store ptr %4, ptr @backp, align 8, !tbaa !13
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %6 = sext i8 %5 to i32
  br label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @tabin, align 8, !tbaa !13
  %9 = tail call i32 @getc(ptr noundef %8) #21
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ %6, %3 ], [ %9, %7 ]
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = tail call fastcc i32 @swapin() #20, !range !16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @error(ptr noundef nonnull @.str.3.187) #21
  unreachable

17:                                               ; preds = %13
  %18 = load ptr, ptr @tabin, align 8, !tbaa !13
  %19 = tail call i32 @getc(ptr noundef %18) #21
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi i32 [ %19, %17 ], [ %11, %10 ]
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, ptr @iline, align 4, !tbaa !14
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @iline, align 4, !tbaa !14
  br label %26

26:                                               ; preds = %23, %20
  ret i32 %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize willreturn memory(read) }
attributes #25 = { nounwind optsize willreturn memory(none) }
attributes #26 = { nounwind optsize allocsize(0,1) }
attributes #27 = { cold optsize }
attributes #28 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 0}
!8 = !{!"optstr", !9, i64 0, !9, i64 8}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!8, !9, i64 8}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !10, i64 0}
!16 = !{i32 0, i32 2}
!17 = !{!10, !10, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = !{!31, !31, i64 0}
!31 = !{!"short", !10, i64 0}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = !{!36, !9, i64 0}
!36 = !{!"colstr", !9, i64 0, !9, i64 8}
!37 = !{!36, !9, i64 8}
!38 = distinct !{!38, !19}
!39 = !{i32 -128, i32 128}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !19}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19}
!86 = distinct !{!86, !19}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19}
!89 = distinct !{!89, !19}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19}
!93 = distinct !{!93, !19}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = !{i32 0, i32 -2147483648}
!105 = distinct !{!105, !19}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = !{i32 0, i32 4}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19}
!111 = !{i32 116, i32 115}
!112 = distinct !{!112, !19}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, !19}
!138 = distinct !{!138, !19}
