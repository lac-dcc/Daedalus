; ModuleID = 'office-ispell.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { ptr }
%struct.success = type { ptr, ptr, ptr }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }
%struct.dent = type { ptr, ptr, [1 x i64] }
%struct.winsize = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [58 x i8] c"Whenever a word is found that is not in the dictionary,\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"it is printed on the first line of the screen.  If the dictionary\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"contains any similar words, they are listed with a number\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"next to each one.  You have the option of replacing the word\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"completely, or choosing one of the suggested words.\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\0D\0ACommands are:\0D\0A\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"R       Replace the misspelled word completely.\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Space   Accept the word this time only.\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"A       Accept the word for the rest of this session.\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"I       Accept the word, and put it in your private dictionary.\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"U       Accept and add lowercase version to private dictionary.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"0-n     Replace with one of the suggested words.\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"L       Look up words in system dictionary.\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [92 x i8] c"X       Write the rest of this file, ignoring misspellings,\0D\0A        and start next file.\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [84 x i8] c"Q       Quit immediately.  Asks for confirmation.\0D\0A        Leaves file unchanged.\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"!       Shell escape.\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"^L      Redraw screen.\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"^Z      Suspend program.\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"?       Show this help screen.\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"-- Type space to continue --\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"              File: %s\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"[READONLY]\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"??: %s\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"0%d: %s\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%2d: %s\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"Are you sure you want to throw away your changes? \00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Replace with: \00", align 1
@.str.35 = private unnamed_addr constant [76 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/correct.c\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Lookup string ('*' is wildcard): \00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@lookharder.look = internal unnamed_addr global i1 false, align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"%s ^%s$ %s\00", align 1
@str = private unnamed_addr constant [4 x i8] c"\0D\0A\0D\00", align 1
@str.88 = private unnamed_addr constant [79 x i8] c"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\0D\00", align 1
@str.89 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@TeX_comment = internal unnamed_addr global i1 false, align 4
@save_math_mode = internal unnamed_addr global i32 0, align 4
@save_LaTeX_Mode = internal unnamed_addr global i8 0, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"if t\00", align 1
@.str.1.6 = private unnamed_addr constant [5 x i8] c"if n\00", align 1
@.str.2.7 = private unnamed_addr constant [4 x i8] c"ds \00", align 1
@.str.3.8 = private unnamed_addr constant [4 x i8] c"de \00", align 1
@.str.4.9 = private unnamed_addr constant [4 x i8] c"nr \00", align 1
@.str.6.27 = private unnamed_addr constant [74 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/defmt.c\00", align 1
@.str.7.28 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8.29 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.9.30 = private unnamed_addr constant [6 x i8] c"+ %s\0A\00", align 1
@.str.10.31 = private unnamed_addr constant [3 x i8] c"-\0A\00", align 1
@.str.11.32 = private unnamed_addr constant [12 x i8] c"%c %s %d %d\00", align 1
@.str.12.33 = private unnamed_addr constant [6 x i8] c"%c %s\00", align 1
@.str.14.34 = private unnamed_addr constant [9 x i8] c"# %s %d\0A\00", align 1
@.str.16.16 = private unnamed_addr constant [38 x i8] c"****ERROR in parsing TeX math mode!\0D\0A\00", align 1
@.str.17.17 = private unnamed_addr constant [5 x i8] c"\\end\00", align 1
@.str.18.37 = private unnamed_addr constant [9 x i8] c"equation\00", align 1
@.str.19.38 = private unnamed_addr constant [9 x i8] c"eqnarray\00", align 1
@.str.20.39 = private unnamed_addr constant [12 x i8] c"displaymath\00", align 1
@.str.21.40 = private unnamed_addr constant [8 x i8] c"picture\00", align 1
@.str.22.41 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.23.42 = private unnamed_addr constant [8 x i8] c"tabular\00", align 1
@.str.24.35 = private unnamed_addr constant [9 x i8] c"minipage\00", align 1
@.str.25.43 = private unnamed_addr constant [9 x i8] c"tabular*\00", align 1
@.str.26.36 = private unnamed_addr constant [37 x i8] c"***ERROR in LR to math-mode switch.\0A\00", align 1
@.str.27.15 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.28.10 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"makebox\00", align 1
@.str.30.11 = private unnamed_addr constant [5 x i8] c"fbox\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"framebox\00", align 1
@.str.32.12 = private unnamed_addr constant [7 x i8] c"parbox\00", align 1
@.str.33.13 = private unnamed_addr constant [9 x i8] c"raisebox\00", align 1
@.str.34.14 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.35.18 = private unnamed_addr constant [7 x i8] c"vspace\00", align 1
@.str.36.19 = private unnamed_addr constant [7 x i8] c"hspace\00", align 1
@.str.37.20 = private unnamed_addr constant [5 x i8] c"cite\00", align 1
@.str.38.21 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.39.22 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.41.23 = private unnamed_addr constant [7 x i8] c"nocite\00", align 1
@.str.42.24 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.43.25 = private unnamed_addr constant [12 x i8] c"includeonly\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"documentstyle\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"documentclass\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"usepackage\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"pagestyle\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"pagenumbering\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"bibliography\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"bibitem\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"hyphenation\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"pageref\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"setcounter\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"addtocounter\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"setlength\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"addtolength\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"settowidth\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"verb\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"flagmarker \\%c\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [19 x i8] c"flagmarker \\%3.3o\0A\00", align 1
@.str.2.62 = private unnamed_addr constant [15 x i8] c"flagmarker %c\0A\00", align 1
@.str.5.66 = private unnamed_addr constant [14 x i8] c"  flag %s%c: \00", align 1
@.str.6.65 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7.64 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8.68 = private unnamed_addr constant [4 x i8] c"\09> \00", align 1
@.str.9.69 = private unnamed_addr constant [5 x i8] c"-%s,\00", align 1
@.str.11.70 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12.67 = private unnamed_addr constant [3 x i8] c"[^\00", align 1
@.str.13.71 = private unnamed_addr constant [6 x i8] c"%c-%c\00", align 1
@str.63 = private unnamed_addr constant [9 x i8] c"suffixes\00", align 1
@str.14 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@orig_word = internal unnamed_addr global ptr null, align 8
@minimenusize = internal unnamed_addr global i1 false, align 4
@eflag = internal unnamed_addr global i32 0, align 4
@dumpflag = internal unnamed_addr global i32 0, align 4
@fflag = internal unnamed_addr global i32 0, align 4
@sflag = internal unnamed_addr global i32 0, align 4
@vflag = internal unnamed_addr global i1 false, align 4
@xflag = internal unnamed_addr global i1 false, align 4
@deftflag = internal global i32 -1, align 4
@tflag = internal global i32 0, align 4
@prefstringchar = internal unnamed_addr global i32 -1, align 4
@terse = internal unnamed_addr global i1 false, align 4
@minword = internal unnamed_addr global i32 1, align 4
@sortit = internal unnamed_addr global i1 false, align 4
@tryhardflag = internal unnamed_addr global i32 -1, align 4
@currentfile = internal unnamed_addr global ptr null, align 8
@math_mode = internal unnamed_addr global i32 0, align 4
@LaTeX_Mode = internal unnamed_addr global i8 80, align 1
@main.libdictname = internal global [13 x i8] zeroinitializer, align 1
@main.outbuf = internal global [8192 x i8] zeroinitializer, align 16
@Cmd = internal unnamed_addr global ptr null, align 8
@Trynum = internal unnamed_addr global i32 0, align 4
@.str.77 = private unnamed_addr constant [11 x i8] c"DICTIONARY\00", align 1
@.str.2.79 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3.80 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@LibDict = internal unnamed_addr global ptr null, align 8
@.str.4.81 = private unnamed_addr constant [13 x i8] c"english.hash\00", align 1
@Version_ID = internal unnamed_addr constant [40 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.143, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.143, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr null], align 16
@.str.5.82 = private unnamed_addr constant [5 x i8] c"(#) \00", align 1
@.str.9.84 = private unnamed_addr constant [16 x i8] c"\09BAKEXT = \22%s\22\0A\00", align 1
@.str.10.85 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.11.86 = private unnamed_addr constant [16 x i8] c"\09BINDIR = \22%s\22\0A\00", align 1
@.str.12.87 = private unnamed_addr constant [15 x i8] c"/usr/local/bin\00", align 1
@.str.15.88 = private unnamed_addr constant [12 x i8] c"\09CC = \22%s\22\0A\00", align 1
@.str.16.89 = private unnamed_addr constant [3 x i8] c"cc\00", align 1
@.str.17.90 = private unnamed_addr constant [16 x i8] c"\09CFLAGS = \22%s\22\0A\00", align 1
@.str.18.91 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str.21.92 = private unnamed_addr constant [18 x i8] c"\09CONTEXTPCT = %d\0A\00", align 1
@.str.22.93 = private unnamed_addr constant [21 x i8] c"\09COUNTSUFFIX = \22%s\22\0A\00", align 1
@.str.23.94 = private unnamed_addr constant [5 x i8] c".cnt\00", align 1
@.str.24.95 = private unnamed_addr constant [17 x i8] c"\09DEFHASH = \22%s\22\0A\00", align 1
@.str.25.96 = private unnamed_addr constant [19 x i8] c"\09DEFINCSTR = \22%s\22\0A\00", align 1
@.str.27.98 = private unnamed_addr constant [17 x i8] c"\09DEFLANG = \22%s\22\0A\00", align 1
@.str.28.99 = private unnamed_addr constant [12 x i8] c"english.aff\00", align 1
@.str.29.100 = private unnamed_addr constant [23 x i8] c"\09DEFNOBACKUPFLAG = %d\0A\00", align 1
@.str.30.101 = private unnamed_addr constant [17 x i8] c"\09DEFPAFF = \22%s\22\0A\00", align 1
@.str.32.103 = private unnamed_addr constant [18 x i8] c"\09DEFPDICT = \22%s\22\0A\00", align 1
@.str.34.105 = private unnamed_addr constant [18 x i8] c"\09DEFTEXFLAG = %d\0A\00", align 1
@.str.35.106 = private unnamed_addr constant [18 x i8] c"\09EGREPCMD = \22%s\22\0A\00", align 1
@.str.36.107 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@.str.37.108 = private unnamed_addr constant [18 x i8] c"\09ELISPDIR = \22%s\22\0A\00", align 1
@.str.38.109 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/emacs/site-lisp\00", align 1
@.str.39.110 = private unnamed_addr constant [15 x i8] c"\09EMACS = \22%s\22\0A\00", align 1
@.str.40.111 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.44.112 = private unnamed_addr constant [20 x i8] c"\09HASHSUFFIX = \22%s\22\0A\00", align 1
@.str.45.113 = private unnamed_addr constant [14 x i8] c"\09HOME = \22%s\22\0A\00", align 1
@.str.48.115 = private unnamed_addr constant [19 x i8] c"\09INCSTRVAR = \22%s\22\0A\00", align 1
@.str.50.117 = private unnamed_addr constant [20 x i8] c"\09INPUTWORDLEN = %d\0A\00", align 1
@.str.51.118 = private unnamed_addr constant [19 x i8] c"\09LANGUAGES = \22%s\22\0A\00", align 1
@.str.52.119 = private unnamed_addr constant [81 x i8] c"{american,MASTERDICTS=american.med+,HASHFILES=americanmed+.hash,EXTRADICT=words}\00", align 1
@.str.53.120 = private unnamed_addr constant [16 x i8] c"\09LIBDIR = \22%s\22\0A\00", align 1
@.str.54.121 = private unnamed_addr constant [15 x i8] c"\09LIBES = \22%s\22\0A\00", align 1
@.str.56.123 = private unnamed_addr constant [14 x i8] c"\09LINT = \22%s\22\0A\00", align 1
@.str.57.124 = private unnamed_addr constant [5 x i8] c"lint\00", align 1
@.str.58.125 = private unnamed_addr constant [19 x i8] c"\09LINTFLAGS = \22%s\22\0A\00", align 1
@.str.59.126 = private unnamed_addr constant [14 x i8] c"\09LOOK = \22%s\22\0A\00", align 1
@.str.60.127 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"\09MAKE_SORTTMP = \22%s\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"-T ${TMPDIR-/tmp}\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"\09MALLOC_INCREMENT = %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"\09MAN1DIR = \22%s\22\0A\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man1\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"\09MAN1EXT = \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c".1\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"\09MAN4DIR = \22%s\22\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"/usr/local/man/man4\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"\09MAN4EXT = \22%s\22\0A\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c".4\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"\09MASKBITS = %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"\09MASKTYPE = %s\0A\00", align 1
@.str.74.128 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"\09MASKTYPE_WIDTH = %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"\09MASTERHASH = \22%s\22\0A\00", align 1
@.str.77.129 = private unnamed_addr constant [18 x i8] c"americanmed+.hash\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"\09MAXAFFIXLEN = %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"\09MAXCONTEXT = %d\0A\00", align 1
@.str.80.130 = private unnamed_addr constant [23 x i8] c"\09MAXINCLUDEFILES = %d\0A\00", align 1
@.str.81.131 = private unnamed_addr constant [17 x i8] c"\09MAXNAMLEN = %d\0A\00", align 1
@.str.82.132 = private unnamed_addr constant [18 x i8] c"\09MAXPATHLEN = %d\0A\00", align 1
@.str.83.133 = private unnamed_addr constant [14 x i8] c"\09MAXPCT = %d\0A\00", align 1
@.str.84.134 = private unnamed_addr constant [17 x i8] c"\09MAXSEARCH = %d\0A\00", align 1
@.str.85.135 = private unnamed_addr constant [24 x i8] c"\09MAXSTRINGCHARLEN = %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [22 x i8] c"\09MAXSTRINGCHARS = %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"\09MAX_CAPS = %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"\09MAX_HITS = %d\0A\00", align 1
@.str.89 = private unnamed_addr constant [23 x i8] c"\09MAX_SCREEN_SIZE = %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"\09MINCONTEXT = %d\0A\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"\09MINWORD = %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [27 x i8] c"\09MSDOS_BINARY_OPEN = 0x%x\0A\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"\09MSGLANG = %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"english\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"\09NRSPECIAL = \22%s\22\0A\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"().\\*\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"\09OLDPAFF = \22%s\22\0A\00", align 1
@.str.102 = private unnamed_addr constant [18 x i8] c"\09OLDPDICT = \22%s\22\0A\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"\09PDICTVAR = \22%s\22\0A\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"\09REGLIB = \22%s\22\0A\00", align 1
@.str.109 = private unnamed_addr constant [19 x i8] c"\09SIGNAL_TYPE = %s\0A\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"\09SORTPERSONAL = %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"\09STATSUFFIX = \22%s\22\0A\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c".stat\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"\09TEMPNAME = \22%s\22\0A\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"/tmp/ispellXXXXXX\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"\09TERMLIB = \22%s\22\0A\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"\09TEXINFODIR = \22%s\22\0A\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"/usr/local/info\00", align 1
@.str.119 = private unnamed_addr constant [20 x i8] c"\09TEXSPECIAL = \22%s\22\0A\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"()[]{}<>\\$*.%\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"\09WORDS = \22%s\22\0A\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"\09YACC = \22%s\22\0A\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@askfilename = internal unnamed_addr global ptr null, align 8
@.str.129 = private unnamed_addr constant [40 x i8] c"ispell:  specified file does not exist\0A\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"ispell:  specified files do not exist\0A\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"ispell:  unrecognized formatter type '%s'\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@infile = internal unnamed_addr global ptr null, align 8
@outfile = internal unnamed_addr global ptr null, align 8
@contextbufs = internal global [10 x [8192 x i8]] zeroinitializer, align 16
@contextoffset = internal unnamed_addr global i32 0, align 4
@currentchar = internal unnamed_addr global ptr null, align 8
@ctoken = internal global [120 x i8] zeroinitializer, align 16
@itoken = internal global [120 x i8] zeroinitializer, align 16
@changes = internal unnamed_addr global i1 false, align 4
@readonly = internal unnamed_addr global i32 0, align 4
@quit = internal unnamed_addr global i1 false, align 4
@possibilities = internal global [100 x [120 x i8]] zeroinitializer, align 16
@pcount = internal unnamed_addr global i32 0, align 4
@maxposslen = internal unnamed_addr global i32 0, align 4
@easypossibilities = internal unnamed_addr global i32 0, align 4
@Try = internal unnamed_addr global [228 x i8] zeroinitializer, align 16
@.str.132 = private unnamed_addr constant [137 x i8] c"Usage: %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -x | -b | -S | -B | -C | -P | -m | -Lcontext | -M | -N | -Ttype | -V] file .....\0A\00", align 1
@.str.133 = private unnamed_addr constant [67 x i8] c"       %s [-dfile | -pfile | -wchars | -Wn | -t | -n | -Ttype] -l\0A\00", align 1
@.str.134 = private unnamed_addr constant [98 x i8] c"       %s [-dfile | -pfile | -ffile | -Wn | -t | -n | -s | -B | -C | -P | -m | -Ttype] {-a | -A}\0A\00", align 1
@.str.135 = private unnamed_addr constant [39 x i8] c"       %s [-dfile] [-wchars | -Wn] -c\0A\00", align 1
@.str.136 = private unnamed_addr constant [38 x i8] c"       %s [-dfile] [-wchars] -e[1-4]\0A\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"       %s [-dfile] [-wchars] -D\0A\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"       %s -v\0A\00", align 1
@.str.139 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"@(#) Copyright (c), 1983, by Pace Willisson\00", align 1
@.str.141 = private unnamed_addr constant [64 x i8] c"@(#) International version Copyright (c) 1987, 1988, 1990-1995,\00", align 1
@.str.142 = private unnamed_addr constant [65 x i8] c"@(#) by Geoff Kuenning, Granada Hills, CA.  All rights reserved.\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"@(#)\00", align 1
@.str.144 = private unnamed_addr constant [72 x i8] c"@(#) Redistribution and use in source and binary forms, with or without\00", align 1
@.str.145 = private unnamed_addr constant [72 x i8] c"@(#) modification, are permitted provided that the following conditions\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"@(#) are met:\00", align 1
@.str.147 = private unnamed_addr constant [71 x i8] c"@(#) 1. Redistributions of source code must retain the above copyright\00", align 1
@.str.148 = private unnamed_addr constant [70 x i8] c"@(#)    notice, this list of conditions and the following disclaimer.\00", align 1
@.str.149 = private unnamed_addr constant [64 x i8] c"@(#) 2. Redistributions in binary form must reproduce the above\00", align 1
@.str.150 = private unnamed_addr constant [68 x i8] c"@(#)    copyright notice, this list of conditions and the following\00", align 1
@.str.151 = private unnamed_addr constant [72 x i8] c"@(#)    disclaimer in the documentation and/or other materials provided\00", align 1
@.str.152 = private unnamed_addr constant [31 x i8] c"@(#)    with the distribution.\00", align 1
@.str.153 = private unnamed_addr constant [71 x i8] c"@(#) 3. All modifications to the source code must be clearly marked as\00", align 1
@.str.154 = private unnamed_addr constant [68 x i8] c"@(#)    such.  Binary redistributions based on modified source code\00", align 1
@.str.155 = private unnamed_addr constant [73 x i8] c"@(#)    must be clearly marked as modified versions in the documentation\00", align 1
@.str.156 = private unnamed_addr constant [63 x i8] c"@(#)    and/or other materials provided with the distribution.\00", align 1
@.str.157 = private unnamed_addr constant [69 x i8] c"@(#) 4. All advertising materials mentioning features or use of this\00", align 1
@.str.158 = private unnamed_addr constant [60 x i8] c"@(#)    software must display the following acknowledgment:\00", align 1
@.str.159 = private unnamed_addr constant [73 x i8] c"@(#)      This product includes software developed by Geoff Kuenning and\00", align 1
@.str.160 = private unnamed_addr constant [37 x i8] c"@(#)      other unpaid contributors.\00", align 1
@.str.161 = private unnamed_addr constant [73 x i8] c"@(#) 5. The name of Geoff Kuenning may not be used to endorse or promote\00", align 1
@.str.162 = private unnamed_addr constant [67 x i8] c"@(#)    products derived from this software without specific prior\00", align 1
@.str.163 = private unnamed_addr constant [28 x i8] c"@(#)    written permission.\00", align 1
@.str.164 = private unnamed_addr constant [71 x i8] c"@(#) THIS SOFTWARE IS PROVIDED BY GEOFF KUENNING AND CONTRIBUTORS ``AS\00", align 1
@.str.165 = private unnamed_addr constant [68 x i8] c"@(#) IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\00", align 1
@.str.166 = private unnamed_addr constant [71 x i8] c"@(#) LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS\00", align 1
@.str.167 = private unnamed_addr constant [71 x i8] c"@(#) FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL GEOFF\00", align 1
@.str.168 = private unnamed_addr constant [66 x i8] c"@(#) KUENNING OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,\00", align 1
@.str.169 = private unnamed_addr constant [62 x i8] c"@(#) INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES\00", align 1
@.str.170 = private unnamed_addr constant [72 x i8] c"@(#) (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR\00", align 1
@.str.171 = private unnamed_addr constant [72 x i8] c"@(#) SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)\00", align 1
@.str.172 = private unnamed_addr constant [73 x i8] c"@(#) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,\00", align 1
@.str.173 = private unnamed_addr constant [67 x i8] c"@(#) STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)\00", align 1
@.str.174 = private unnamed_addr constant [73 x i8] c"@(#) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED\00", align 1
@.str.175 = private unnamed_addr constant [40 x i8] c"@(#) OF THE POSSIBILITY OF SUCH DAMAGE.\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c".tex\00", align 1
@.str.179 = private unnamed_addr constant [30 x i8] c"Warning:  Can't write to %s\0D\0A\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"temporary file\00", align 1
@.str.183 = private unnamed_addr constant [34 x i8] c"temporary file disappeared (%s)\0D\0A\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.188 = private unnamed_addr constant [75 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/ispell.c\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@str.83 = private unnamed_addr constant [21 x i8] c"Compiled-in options:\00", align 1
@str.190 = private unnamed_addr constant [12 x i8] c"\09!USG (BSD)\00", align 1
@str.191 = private unnamed_addr constant [16 x i8] c"\09!BOTTOMCONTEXT\00", align 1
@str.192 = private unnamed_addr constant [8 x i8] c"\09CBREAK\00", align 1
@str.193 = private unnamed_addr constant [18 x i8] c"\09!COMMANDFORSPACE\00", align 1
@str.194 = private unnamed_addr constant [17 x i8] c"\09!CONTEXTROUNDUP\00", align 1
@str.195 = private unnamed_addr constant [16 x i8] c"\09!EQUAL_COLUMNS\00", align 1
@str.196 = private unnamed_addr constant [26 x i8] c"\09!GENERATE_LIBRARY_PROTOS\00", align 1
@str.197 = private unnamed_addr constant [13 x i8] c"\09!HAS_RENAME\00", align 1
@str.198 = private unnamed_addr constant [12 x i8] c"\09!IGNOREBIB\00", align 1
@str.199 = private unnamed_addr constant [10 x i8] c"\09MINIMENU\00", align 1
@str.200 = private unnamed_addr constant [28 x i8] c"\09!NO_CAPITALIZATION_SUPPORT\00", align 1
@str.201 = private unnamed_addr constant [25 x i8] c"\09!NO_STDLIB_H (STDLIB_H)\00", align 1
@str.202 = private unnamed_addr constant [8 x i8] c"\09NO8BIT\00", align 1
@str.203 = private unnamed_addr constant [25 x i8] c"\09PDICTHOME = (undefined)\00", align 1
@str.204 = private unnamed_addr constant [24 x i8] c"\09!PIECEMEAL_HASH_WRITES\00", align 1
@str.205 = private unnamed_addr constant [15 x i8] c"\09!REGEX_LOOKUP\00", align 1
@str.206 = private unnamed_addr constant [14 x i8] c"\09!TRUNCATEBAK\00", align 1
@str.207 = private unnamed_addr constant [8 x i8] c"\09!USESH\00", align 1
@inited = internal unnamed_addr global i1 false, align 4
@hashname = internal global [4096 x i8] zeroinitializer, align 16
@.str.2.233 = private unnamed_addr constant [21 x i8] c"Null hash table %s\0D\0A\00", align 1
@.str.3.234 = private unnamed_addr constant [54 x i8] c"Truncated hash table %s:  got %d bytes, expected %d\0D\0A\00", align 1
@.str.4.235 = private unnamed_addr constant [63 x i8] c"Illegal format hash table %s - expected magic 0x%x, got 0x%x\0D\0A\00", align 1
@.str.5.236 = private unnamed_addr constant [64 x i8] c"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\0D\0A\00", align 1
@.str.6.237 = private unnamed_addr constant [76 x i8] c"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\0D\0A\00", align 1
@nodictflag = internal unnamed_addr global i32 0, align 4
@.str.7.238 = private unnamed_addr constant [41 x i8] c"Couldn't allocate space for hash table\0D\0A\00", align 1
@.str.8.239 = private unnamed_addr constant [28 x i8] c"Illegal format hash table\0D\0A\00", align 1
@.str.9.240 = private unnamed_addr constant [46 x i8] c"Couldn't allocate space for language tables\0D\0A\00", align 1
@.str.11.244 = private unnamed_addr constant [75 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c\00", align 1
@.str.1.250 = private unnamed_addr constant [77 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c\00", align 1
@.str.2.251 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str.3.254 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str.4.255 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = internal unnamed_addr global i32 0, align 4
@laststringch = internal unnamed_addr global i32 0, align 4
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = internal unnamed_addr global ptr null, align 8
@.str.5.270 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal unnamed_addr global i1 false, align 4
@co = internal unnamed_addr global i32 0, align 4
@li = internal unnamed_addr global i32 0, align 4
@.str.283 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.1.284 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@contextsize = internal unnamed_addr global i32 0, align 4
@.str.2.285 = private unnamed_addr constant [43 x i8] c"Screen too small:  need at least %d lines\0A\00", align 1
@.str.3.286 = private unnamed_addr constant [42 x i8] c"Can't deal with non-interactive use yet.\0A\00", align 1
@osbuf = internal global %struct.termios zeroinitializer, align 4
@sbuf = internal global %struct.termios zeroinitializer, align 8
@uerasechar = internal unnamed_addr global i32 0, align 4
@ukillchar = internal unnamed_addr global i32 0, align 4
@oldint = internal unnamed_addr global ptr null, align 8
@oldterm = internal unnamed_addr global ptr null, align 8
@oldttin = internal unnamed_addr global ptr null, align 8
@oldttou = internal unnamed_addr global ptr null, align 8
@oldtstp = internal unnamed_addr global ptr null, align 8
@tempfile = internal global [4096 x i8] zeroinitializer, align 16
@.str.5.294 = private unnamed_addr constant [30 x i8] c"\0A-- Type space to continue --\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str.293 = private unnamed_addr constant [27 x i8] c"Couldn't fork, try later.\0D\00", align 1
@pflagindex = internal global [228 x %struct.flagptr] zeroinitializer, align 16
@numhits = internal unnamed_addr global i32 0, align 4
@cflag = internal unnamed_addr global i32 0, align 4
@pflaglist = internal unnamed_addr global ptr null, align 8
@numpflags = internal unnamed_addr global i32 0, align 4
@sflaglist = internal unnamed_addr global ptr null, align 8
@numsflags = internal unnamed_addr global i32 0, align 4
@compoundflag = internal unnamed_addr global i32 -1, align 4
@hits = internal unnamed_addr global [10 x %struct.success] zeroinitializer, align 16
@sflagindex = internal global [228 x %struct.flagptr] zeroinitializer, align 16
@.str.299 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.1.300 = private unnamed_addr constant [6 x i8] c" %s%s\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
@.str.1.306 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@personaldict = internal global [4096 x i8] zeroinitializer, align 16
@.str.2.309 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@dictf = internal unnamed_addr global ptr null, align 8
@.str.3.307 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.4.308 = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@.str.5.310 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.6.311 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.8.313 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9.314 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.10.315 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lflag = internal unnamed_addr global i32 0, align 4
@aflag = internal unnamed_addr global i32 0, align 4
@.str.11.316 = private unnamed_addr constant [50 x i8] c"Warning: Cannot update personal dictionary (%s)\0D\0A\00", align 1
@cantexpand = internal unnamed_addr global i1 false, align 4
@pershsize = internal unnamed_addr global i1 false, align 4
@pershtab = internal unnamed_addr global ptr null, align 8
@.str.12.319 = private unnamed_addr constant [43 x i8] c"Ran out of space for personal dictionary\0D\0A\00", align 1
@.str.13.320 = private unnamed_addr constant [48 x i8] c"Continuing anyway (with reduced performance).\0D\0A\00", align 1
@newwords = internal unnamed_addr global i32 0, align 4
@.str.14.328 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15.329 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@hashtbl = internal unnamed_addr global ptr null, align 8
@hashsize = internal unnamed_addr global i32 0, align 4
@hashstrings = internal unnamed_addr global ptr null, align 8
@hashheader = internal global %struct.hashheader zeroinitializer, align 4
@.str.16.323 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17.321 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.18.322 = private unnamed_addr constant [73 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tree.c\00", align 1
@xgets.Include_File = internal unnamed_addr global ptr @.str.338, align 8
@.str.338 = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@xgets.Include_Len = internal unnamed_addr global i32 0, align 4
@xgets.F = internal global [6 x ptr] zeroinitializer, align 16
@xgets.current_F = internal unnamed_addr global ptr @xgets.F, align 8
@.str.1.336 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@incfileflag = internal unnamed_addr global i1 false, align 4
@.str.2.337 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct.stat, align 8
  %6 = alloca [4 x i8], align 4
  %7 = load ptr, ptr %1, align 8, !tbaa !7
  store ptr %7, ptr @Cmd, align 8, !tbaa !7
  store i32 0, ptr @Trynum, align 4, !tbaa !11
  %8 = tail call ptr @getenv(ptr noundef nonnull @.str.77) #32
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @index(ptr noundef nonnull %8, i32 noundef 47) #33
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %8) #32
  br label %17

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.8.313, ptr noundef nonnull @.str.2.79, ptr noundef nonnull %8) #32
  br label %17

17:                                               ; preds = %15, %13
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @main.libdictname, ptr noundef nonnull dereferenceable(1) %8) #32
  %19 = tail call ptr @rindex(ptr noundef nonnull %8, i32 noundef 46) #33
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(6) @.str.3.80) #33
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %17
  %25 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %26 = getelementptr inbounds i8, ptr @hashname, i64 %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %26, ptr noundef nonnull align 1 dereferenceable(6) @.str.3.80, i64 6, i1 false)
  br label %27

27:                                               ; preds = %24, %21
  %28 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 47) #33
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds i8, ptr %28, i64 1
  %31 = select i1 %29, ptr @main.libdictname, ptr %30
  store ptr %31, ptr @LibDict, align 8, !tbaa !7
  %32 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #33
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  store i8 0, ptr %32, align 1, !tbaa !13
  br label %37

35:                                               ; preds = %2
  %36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.8.313, ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.4.81) #32
  br label %37

37:                                               ; preds = %35, %34, %27
  %38 = getelementptr inbounds ptr, ptr %1, i64 1
  %39 = add nsw i32 %0, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %422, label %41

41:                                               ; preds = %413, %37
  %42 = phi i32 [ %420, %413 ], [ %39, %37 ]
  %43 = phi ptr [ %419, %413 ], [ %38, %37 ]
  %44 = phi i32 [ %418, %413 ], [ %0, %37 ]
  %45 = phi ptr [ %417, %413 ], [ null, %37 ]
  %46 = phi ptr [ %416, %413 ], [ null, %37 ]
  %47 = phi ptr [ %415, %413 ], [ null, %37 ]
  %48 = phi ptr [ %414, %413 ], [ %1, %37 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !7
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = icmp ne i8 %50, 45
  br i1 %51, label %422, label %52

52:                                               ; preds = %41
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %49) #33
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds i8, ptr %49, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = sext i8 %56 to i32
  switch i32 %57, label %412 [
    i32 118, label %58
    i32 110, label %164
    i32 116, label %170
    i32 84, label %176
    i32 65, label %187
    i32 97, label %191
    i32 68, label %197
    i32 101, label %205
    i32 99, label %226
    i32 98, label %236
    i32 120, label %240
    i32 102, label %244
    i32 76, label %264
    i32 108, label %280
    i32 115, label %286
    i32 83, label %292
    i32 66, label %296
    i32 67, label %300
    i32 80, label %304
    i32 109, label %308
    i32 78, label %312
    i32 77, label %316
    i32 112, label %320
    i32 100, label %338
    i32 86, label %383
    i32 119, label %387
    i32 87, label %398
  ]

58:                                               ; preds = %52
  %.lcssa30 = phi i32 [ %54, %52 ]
  %.lcssa1 = phi ptr [ %43, %52 ]
  %59 = icmp sgt i32 %.lcssa30, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  tail call fastcc void @usage() #34
  unreachable

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %70, %61 ], [ @.str.139, %58 ]
  %63 = phi ptr [ %64, %61 ], [ @Version_ID, %58 ]
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(5) @.str.5.82, i64 noundef 5) #33
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i64 5, i64 0
  %68 = getelementptr inbounds i8, ptr %62, i64 %67
  %69 = tail call i32 @puts(ptr nonnull dereferenceable(1) %68)
  %70 = load ptr, ptr %64, align 8, !tbaa !7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %61, !llvm.loop !14

72:                                               ; preds = %61
  %73 = load ptr, ptr %.lcssa1, align 8, !tbaa !7
  %74 = getelementptr inbounds i8, ptr %73, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !13
  %76 = icmp eq i8 %75, 118
  br i1 %76, label %77, label %163

77:                                               ; preds = %72
  %78 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.83)
  %79 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.190)
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.84, ptr noundef nonnull @.str.10.85) #34
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.86, ptr noundef nonnull @.str.12.87) #34
  %82 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.191)
  %83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.192)
  %84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15.88, ptr noundef nonnull @.str.16.89) #34
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17.90, ptr noundef nonnull @.str.18.91) #34
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.193)
  %87 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.194)
  %88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21.92, i32 noundef 10) #34
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22.93, ptr noundef nonnull @.str.23.94) #34
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24.95, ptr noundef nonnull @.str.4.81) #34
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25.96, ptr noundef nonnull @.str.338) #34
  %92 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27.98, ptr noundef nonnull @.str.28.99) #34
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29.100, i32 noundef 0) #34
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30.101, ptr noundef nonnull @.str.3.307) #34
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32.103, ptr noundef nonnull @.str.2.309) #34
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34.105, i32 noundef 0) #34
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35.106, ptr noundef nonnull @.str.36.107) #34
  %98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37.108, ptr noundef nonnull @.str.38.109) #34
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39.110, ptr noundef nonnull @.str.40.111) #34
  %100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.195)
  %101 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.196)
  %102 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.197)
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.112, ptr noundef nonnull @.str.3.80) #34
  %104 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45.113, ptr noundef nonnull @.str.1.306) #34
  %105 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.198)
  %106 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48.115, ptr noundef nonnull @.str.1.336) #34
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50.117, i32 noundef 100) #34
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51.118, ptr noundef nonnull @.str.52.119) #34
  %109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53.120, ptr noundef nonnull @.str.2.79) #34
  %110 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54.121, ptr noundef nonnull @.str.10.315) #34
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56.123, ptr noundef nonnull @.str.57.124) #34
  %112 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58.125, ptr noundef nonnull @.str.10.315) #34
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59.126, ptr noundef nonnull @.str.60.127) #34
  %114 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, ptr noundef nonnull @.str.62) #34
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef 4088) #34
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef nonnull @.str.65) #34
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef nonnull @.str.67) #34
  %118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, ptr noundef nonnull @.str.69) #34
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, ptr noundef nonnull @.str.71) #34
  %120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef 32) #34
  %121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef nonnull @.str.74.128) #34
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef 32) #34
  %123 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, ptr noundef nonnull @.str.77.129) #34
  %124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef 20) #34
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef 10) #34
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80.130, i32 noundef 5) #34
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81.131, i32 noundef 255) #34
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82.132, i32 noundef 4096) #34
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83.133, i32 noundef 70) #34
  %130 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84.134, i32 noundef 4) #34
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85.135, i32 noundef 10) #34
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef 100) #34
  %133 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef 10) #34
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i32 noundef 10) #34
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef 0) #34
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef 2) #34
  %137 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.199)
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, i32 noundef 1) #34
  %139 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef 0) #34
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.94, ptr noundef nonnull @.str.95) #34
  %141 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.200)
  %142 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.201)
  %143 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.202)
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, ptr noundef nonnull @.str.100) #34
  %145 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull @.str.3.307) #34
  %146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull @.str.2.309) #34
  %147 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.203)
  %148 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, ptr noundef nonnull @.str.305) #34
  %149 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.204)
  %150 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.205)
  %151 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef nonnull @.str.10.315) #34
  %152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull @.str.110) #34
  %153 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.111, i32 noundef 1000) #34
  %154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, ptr noundef nonnull @.str.113) #34
  %155 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, ptr noundef nonnull @.str.115) #34
  %156 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, ptr noundef nonnull @.str.10.315) #34
  %157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull @.str.118) #34
  %158 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.119, ptr noundef nonnull @.str.120) #34
  %159 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.206)
  %160 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.207)
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.124) #34
  %162 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.126) #34
  br label %163

163:                                              ; preds = %77, %72
  tail call void @exit(i32 noundef 0) #35
  unreachable

164:                                              ; preds = %52
  %165 = icmp sgt i32 %54, 2
  br i1 %165, label %166, label %167

166:                                              ; preds = %164
  tail call fastcc void @usage() #34
  unreachable

167:                                              ; preds = %164
  store i32 0, ptr @tflag, align 4, !tbaa !11
  store i32 0, ptr @deftflag, align 4, !tbaa !11
  %168 = icmp eq ptr %45, null
  %169 = select i1 %168, ptr @.str.127, ptr %45
  br label %413

170:                                              ; preds = %52
  %171 = icmp sgt i32 %54, 2
  br i1 %171, label %172, label %173

172:                                              ; preds = %170
  tail call fastcc void @usage() #34
  unreachable

173:                                              ; preds = %170
  store i32 1, ptr @tflag, align 4, !tbaa !11
  store i32 1, ptr @deftflag, align 4, !tbaa !11
  %174 = icmp eq ptr %45, null
  %175 = select i1 %174, ptr @.str.5.270, ptr %45
  br label %413

176:                                              ; preds = %52
  %177 = getelementptr inbounds i8, ptr %49, i64 2
  %178 = load i8, ptr %177, align 1, !tbaa !13
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %413

180:                                              ; preds = %176
  %181 = add nsw i32 %44, -2
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  tail call fastcc void @usage() #34
  unreachable

184:                                              ; preds = %180
  %185 = getelementptr inbounds ptr, ptr %48, i64 2
  %186 = load ptr, ptr %185, align 8, !tbaa !7
  br label %413

187:                                              ; preds = %52
  %188 = icmp sgt i32 %54, 2
  br i1 %188, label %189, label %190

189:                                              ; preds = %187
  tail call fastcc void @usage() #34
  unreachable

190:                                              ; preds = %187
  store i1 true, ptr @incfileflag, align 4
  store i32 1, ptr @aflag, align 4, !tbaa !11
  br label %413

191:                                              ; preds = %52
  %192 = icmp sgt i32 %54, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %191
  tail call fastcc void @usage() #34
  unreachable

194:                                              ; preds = %191
  %195 = load i32, ptr @aflag, align 4, !tbaa !11
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr @aflag, align 4, !tbaa !11
  br label %413

197:                                              ; preds = %52
  %198 = icmp sgt i32 %54, 2
  br i1 %198, label %199, label %200

199:                                              ; preds = %197
  tail call fastcc void @usage() #34
  unreachable

200:                                              ; preds = %197
  %201 = load i32, ptr @dumpflag, align 4, !tbaa !11
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr @dumpflag, align 4, !tbaa !11
  %203 = load i32, ptr @nodictflag, align 4, !tbaa !11
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr @nodictflag, align 4, !tbaa !11
  br label %413

205:                                              ; preds = %52
  %206 = icmp sgt i32 %54, 3
  br i1 %206, label %207, label %208

207:                                              ; preds = %205
  tail call fastcc void @usage() #34
  unreachable

208:                                              ; preds = %205
  store i32 1, ptr @eflag, align 4, !tbaa !11
  %209 = getelementptr inbounds i8, ptr %49, i64 2
  %210 = load i8, ptr %209, align 1, !tbaa !13
  %211 = sext i8 %210 to i32
  %212 = icmp eq i8 %210, 101
  br i1 %212, label %221, label %213

213:                                              ; preds = %208
  %214 = add i8 %210, -49
  %215 = icmp ult i8 %214, 4
  br i1 %215, label %216, label %218

216:                                              ; preds = %213
  %217 = add nsw i32 %211, -48
  br label %221

218:                                              ; preds = %213
  %219 = icmp eq i8 %210, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %218
  tail call fastcc void @usage() #34
  unreachable

221:                                              ; preds = %216, %208
  %222 = phi i32 [ %217, %216 ], [ 2, %208 ]
  store i32 %222, ptr @eflag, align 4, !tbaa !11
  br label %223

223:                                              ; preds = %221, %218
  %224 = load i32, ptr @nodictflag, align 4, !tbaa !11
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr @nodictflag, align 4, !tbaa !11
  br label %413

226:                                              ; preds = %52
  %227 = icmp sgt i32 %54, 2
  br i1 %227, label %228, label %229

228:                                              ; preds = %226
  tail call fastcc void @usage() #34
  unreachable

229:                                              ; preds = %226
  %230 = load i32, ptr @cflag, align 4, !tbaa !11
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr @cflag, align 4, !tbaa !11
  %232 = load i32, ptr @lflag, align 4, !tbaa !11
  %233 = add nsw i32 %232, 1
  store i32 %233, ptr @lflag, align 4, !tbaa !11
  %234 = load i32, ptr @nodictflag, align 4, !tbaa !11
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr @nodictflag, align 4, !tbaa !11
  br label %413

236:                                              ; preds = %52
  %237 = icmp sgt i32 %54, 2
  br i1 %237, label %238, label %239

238:                                              ; preds = %236
  tail call fastcc void @usage() #34
  unreachable

239:                                              ; preds = %236
  store i1 false, ptr @xflag, align 4
  br label %413

240:                                              ; preds = %52
  %241 = icmp sgt i32 %54, 2
  br i1 %241, label %242, label %243

242:                                              ; preds = %240
  tail call fastcc void @usage() #34
  unreachable

243:                                              ; preds = %240
  store i1 true, ptr @xflag, align 4
  br label %413

244:                                              ; preds = %52
  %245 = load i32, ptr @fflag, align 4, !tbaa !11
  %246 = add nsw i32 %245, 1
  store i32 %246, ptr @fflag, align 4, !tbaa !11
  %247 = getelementptr inbounds i8, ptr %49, i64 2
  %248 = load i8, ptr %247, align 1, !tbaa !13
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  %251 = add nsw i32 %44, -2
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  tail call fastcc void @usage() #34
  unreachable

254:                                              ; preds = %250
  %255 = getelementptr inbounds ptr, ptr %48, i64 2
  %256 = load ptr, ptr %255, align 8, !tbaa !7
  br label %257

257:                                              ; preds = %254, %244
  %258 = phi ptr [ %255, %254 ], [ %43, %244 ]
  %259 = phi ptr [ %256, %254 ], [ %247, %244 ]
  %260 = phi i32 [ %251, %254 ], [ %42, %244 ]
  store ptr %259, ptr @askfilename, align 8, !tbaa !7
  %261 = load i8, ptr %259, align 1, !tbaa !13
  %262 = icmp eq i8 %261, 0
  %263 = select i1 %262, ptr null, ptr %259
  store ptr %263, ptr @askfilename, align 8
  br label %413

264:                                              ; preds = %52
  %265 = getelementptr inbounds i8, ptr %49, i64 2
  %266 = load i8, ptr %265, align 1, !tbaa !13
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = add nsw i32 %44, -2
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  tail call fastcc void @usage() #34
  unreachable

272:                                              ; preds = %268
  %273 = getelementptr inbounds ptr, ptr %48, i64 2
  %274 = load ptr, ptr %273, align 8, !tbaa !7
  br label %275

275:                                              ; preds = %272, %264
  %276 = phi ptr [ %273, %272 ], [ %43, %264 ]
  %277 = phi ptr [ %274, %272 ], [ %265, %264 ]
  %278 = phi i32 [ %269, %272 ], [ %42, %264 ]
  %279 = tail call i32 @atoi(ptr nocapture noundef %277) #33
  store i32 %279, ptr @contextsize, align 4, !tbaa !11
  br label %413

280:                                              ; preds = %52
  %281 = icmp sgt i32 %54, 2
  br i1 %281, label %282, label %283

282:                                              ; preds = %280
  tail call fastcc void @usage() #34
  unreachable

283:                                              ; preds = %280
  %284 = load i32, ptr @lflag, align 4, !tbaa !11
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr @lflag, align 4, !tbaa !11
  br label %413

286:                                              ; preds = %52
  %287 = icmp sgt i32 %54, 2
  br i1 %287, label %288, label %289

288:                                              ; preds = %286
  tail call fastcc void @usage() #34
  unreachable

289:                                              ; preds = %286
  %290 = load i32, ptr @sflag, align 4, !tbaa !11
  %291 = add nsw i32 %290, 1
  store i32 %291, ptr @sflag, align 4, !tbaa !11
  br label %413

292:                                              ; preds = %52
  %293 = icmp sgt i32 %54, 2
  br i1 %293, label %294, label %295

294:                                              ; preds = %292
  tail call fastcc void @usage() #34
  unreachable

295:                                              ; preds = %292
  store i1 true, ptr @sortit, align 4
  br label %413

296:                                              ; preds = %52
  %297 = icmp sgt i32 %54, 2
  br i1 %297, label %298, label %299

298:                                              ; preds = %296
  tail call fastcc void @usage() #34
  unreachable

299:                                              ; preds = %296
  store i32 0, ptr @compoundflag, align 4, !tbaa !11
  br label %413

300:                                              ; preds = %52
  %301 = icmp sgt i32 %54, 2
  br i1 %301, label %302, label %303

302:                                              ; preds = %300
  tail call fastcc void @usage() #34
  unreachable

303:                                              ; preds = %300
  store i32 1, ptr @compoundflag, align 4, !tbaa !11
  br label %413

304:                                              ; preds = %52
  %305 = icmp sgt i32 %54, 2
  br i1 %305, label %306, label %307

306:                                              ; preds = %304
  tail call fastcc void @usage() #34
  unreachable

307:                                              ; preds = %304
  store i32 0, ptr @tryhardflag, align 4, !tbaa !11
  br label %413

308:                                              ; preds = %52
  %309 = icmp sgt i32 %54, 2
  br i1 %309, label %310, label %311

310:                                              ; preds = %308
  tail call fastcc void @usage() #34
  unreachable

311:                                              ; preds = %308
  store i32 1, ptr @tryhardflag, align 4, !tbaa !11
  br label %413

312:                                              ; preds = %52
  %313 = icmp sgt i32 %54, 2
  br i1 %313, label %314, label %315

314:                                              ; preds = %312
  tail call fastcc void @usage() #34
  unreachable

315:                                              ; preds = %312
  store i1 true, ptr @minimenusize, align 4
  br label %413

316:                                              ; preds = %52
  %317 = icmp sgt i32 %54, 2
  br i1 %317, label %318, label %319

318:                                              ; preds = %316
  tail call fastcc void @usage() #34
  unreachable

319:                                              ; preds = %316
  store i1 false, ptr @minimenusize, align 4
  br label %413

320:                                              ; preds = %52
  %321 = getelementptr inbounds i8, ptr %49, i64 2
  %322 = load i8, ptr %321, align 1, !tbaa !13
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %334

324:                                              ; preds = %320
  %325 = add nsw i32 %44, -2
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %324
  tail call fastcc void @usage() #34
  unreachable

328:                                              ; preds = %324
  %329 = getelementptr inbounds ptr, ptr %48, i64 2
  %330 = load ptr, ptr %329, align 8, !tbaa !7
  %331 = load i8, ptr %330, align 1, !tbaa !13
  %332 = icmp eq i8 %331, 0
  %333 = select i1 %332, ptr null, ptr %330
  br label %334

334:                                              ; preds = %328, %320
  %335 = phi ptr [ %329, %328 ], [ %43, %320 ]
  %336 = phi ptr [ %333, %328 ], [ %321, %320 ]
  %337 = phi i32 [ %325, %328 ], [ %42, %320 ]
  store ptr null, ptr @LibDict, align 8, !tbaa !7
  br label %413

338:                                              ; preds = %52
  %339 = getelementptr inbounds i8, ptr %49, i64 2
  %340 = load i8, ptr %339, align 1, !tbaa !13
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %338
  %343 = add nsw i32 %44, -2
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  tail call fastcc void @usage() #34
  unreachable

346:                                              ; preds = %342
  %347 = getelementptr inbounds ptr, ptr %48, i64 2
  %348 = load ptr, ptr %347, align 8, !tbaa !7
  br label %349

349:                                              ; preds = %346, %338
  %350 = phi ptr [ %347, %346 ], [ %43, %338 ]
  %351 = phi ptr [ %348, %346 ], [ %339, %338 ]
  %352 = phi i32 [ %343, %346 ], [ %42, %338 ]
  %353 = tail call ptr @index(ptr noundef %351, i32 noundef 47) #33
  %354 = icmp eq ptr %353, null
  br i1 %354, label %357, label %355

355:                                              ; preds = %349
  %356 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %351) #32
  br label %359

357:                                              ; preds = %349
  %358 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.8.313, ptr noundef nonnull @.str.2.79, ptr noundef %351) #32
  br label %359

359:                                              ; preds = %357, %355
  %360 = icmp eq ptr %47, null
  br i1 %360, label %361, label %365

361:                                              ; preds = %359
  %362 = load i8, ptr %351, align 1, !tbaa !13
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %361
  store ptr %351, ptr @LibDict, align 8, !tbaa !7
  br label %365

365:                                              ; preds = %364, %361, %359
  %366 = tail call ptr @rindex(ptr noundef %351, i32 noundef 46) #33
  %367 = icmp eq ptr %366, null
  br i1 %367, label %372, label %368

368:                                              ; preds = %365
  %369 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %366, ptr noundef nonnull dereferenceable(6) @.str.3.80) #33
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %368
  store i8 0, ptr %366, align 1, !tbaa !13
  br label %375

372:                                              ; preds = %368, %365
  %373 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %374 = getelementptr inbounds i8, ptr @hashname, i64 %373
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %374, ptr noundef nonnull align 1 dereferenceable(6) @.str.3.80, i64 6, i1 false)
  br label %375

375:                                              ; preds = %372, %371
  %376 = load ptr, ptr @LibDict, align 8, !tbaa !7
  %377 = icmp eq ptr %376, null
  br i1 %377, label %413, label %378

378:                                              ; preds = %375
  %379 = tail call ptr @rindex(ptr noundef nonnull %376, i32 noundef 47) #33
  %380 = icmp eq ptr %379, null
  br i1 %380, label %413, label %381

381:                                              ; preds = %378
  %382 = getelementptr inbounds i8, ptr %379, i64 1
  store ptr %382, ptr @LibDict, align 8, !tbaa !7
  br label %413

383:                                              ; preds = %52
  %384 = icmp sgt i32 %54, 2
  br i1 %384, label %385, label %386

385:                                              ; preds = %383
  tail call fastcc void @usage() #34
  unreachable

386:                                              ; preds = %383
  store i1 true, ptr @vflag, align 4
  br label %413

387:                                              ; preds = %52
  %388 = getelementptr inbounds i8, ptr %49, i64 2
  %389 = load i8, ptr %388, align 1, !tbaa !13
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %413

391:                                              ; preds = %387
  %392 = add nsw i32 %44, -2
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  tail call fastcc void @usage() #34
  unreachable

395:                                              ; preds = %391
  %396 = getelementptr inbounds ptr, ptr %48, i64 2
  %397 = load ptr, ptr %396, align 8, !tbaa !7
  br label %413

398:                                              ; preds = %52
  %399 = getelementptr inbounds i8, ptr %49, i64 2
  %400 = load i8, ptr %399, align 1, !tbaa !13
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %402, label %410

402:                                              ; preds = %398
  %403 = add nsw i32 %44, -2
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  tail call fastcc void @usage() #34
  unreachable

406:                                              ; preds = %402
  %407 = getelementptr inbounds ptr, ptr %48, i64 2
  %408 = load ptr, ptr %407, align 8, !tbaa !7
  %409 = tail call i32 @atoi(ptr nocapture noundef %408) #33
  store i32 %409, ptr @minword, align 4, !tbaa !11
  br label %413

410:                                              ; preds = %398
  %411 = tail call i32 @atoi(ptr nocapture noundef nonnull %399) #33
  store i32 %411, ptr @minword, align 4, !tbaa !11
  br label %413

412:                                              ; preds = %52
  tail call fastcc void @usage() #34
  unreachable

413:                                              ; preds = %410, %406, %395, %387, %386, %381, %378, %375, %334, %319, %315, %311, %307, %303, %299, %295, %289, %283, %275, %257, %243, %239, %229, %223, %200, %194, %190, %184, %176, %173, %167
  %414 = phi ptr [ %407, %406 ], [ %43, %410 ], [ %396, %395 ], [ %43, %387 ], [ %43, %386 ], [ %350, %381 ], [ %350, %378 ], [ %350, %375 ], [ %335, %334 ], [ %43, %319 ], [ %43, %315 ], [ %43, %311 ], [ %43, %307 ], [ %43, %303 ], [ %43, %299 ], [ %43, %295 ], [ %43, %289 ], [ %43, %283 ], [ %276, %275 ], [ %258, %257 ], [ %43, %243 ], [ %43, %239 ], [ %43, %229 ], [ %43, %223 ], [ %43, %200 ], [ %43, %194 ], [ %43, %190 ], [ %43, %173 ], [ %43, %167 ], [ %185, %184 ], [ %43, %176 ]
  %415 = phi ptr [ %47, %406 ], [ %47, %410 ], [ %47, %395 ], [ %47, %387 ], [ %47, %386 ], [ %47, %381 ], [ %47, %378 ], [ %47, %375 ], [ %336, %334 ], [ %47, %319 ], [ %47, %315 ], [ %47, %311 ], [ %47, %307 ], [ %47, %303 ], [ %47, %299 ], [ %47, %295 ], [ %47, %289 ], [ %47, %283 ], [ %47, %275 ], [ %47, %257 ], [ %47, %243 ], [ %47, %239 ], [ %47, %229 ], [ %47, %223 ], [ %47, %200 ], [ %47, %194 ], [ %47, %190 ], [ %47, %173 ], [ %47, %167 ], [ %47, %184 ], [ %47, %176 ]
  %416 = phi ptr [ %46, %406 ], [ %46, %410 ], [ %397, %395 ], [ %388, %387 ], [ %46, %386 ], [ %46, %381 ], [ %46, %378 ], [ %46, %375 ], [ %46, %334 ], [ %46, %319 ], [ %46, %315 ], [ %46, %311 ], [ %46, %307 ], [ %46, %303 ], [ %46, %299 ], [ %46, %295 ], [ %46, %289 ], [ %46, %283 ], [ %46, %275 ], [ %46, %257 ], [ %46, %243 ], [ %46, %239 ], [ %46, %229 ], [ %46, %223 ], [ %46, %200 ], [ %46, %194 ], [ %46, %190 ], [ %46, %173 ], [ %46, %167 ], [ %46, %184 ], [ %46, %176 ]
  %417 = phi ptr [ %45, %406 ], [ %45, %410 ], [ %45, %395 ], [ %45, %387 ], [ %45, %386 ], [ %45, %381 ], [ %45, %378 ], [ %45, %375 ], [ %45, %334 ], [ %45, %319 ], [ %45, %315 ], [ %45, %311 ], [ %45, %307 ], [ %45, %303 ], [ %45, %299 ], [ %45, %295 ], [ %45, %289 ], [ %45, %283 ], [ %45, %275 ], [ %45, %257 ], [ %45, %243 ], [ %45, %239 ], [ %45, %229 ], [ %45, %223 ], [ %45, %200 ], [ %45, %194 ], [ %45, %190 ], [ %175, %173 ], [ %169, %167 ], [ %186, %184 ], [ %177, %176 ]
  %418 = phi i32 [ %403, %406 ], [ %42, %410 ], [ %392, %395 ], [ %42, %387 ], [ %42, %386 ], [ %352, %381 ], [ %352, %378 ], [ %352, %375 ], [ %337, %334 ], [ %42, %319 ], [ %42, %315 ], [ %42, %311 ], [ %42, %307 ], [ %42, %303 ], [ %42, %299 ], [ %42, %295 ], [ %42, %289 ], [ %42, %283 ], [ %278, %275 ], [ %260, %257 ], [ %42, %243 ], [ %42, %239 ], [ %42, %229 ], [ %42, %223 ], [ %42, %200 ], [ %42, %194 ], [ %42, %190 ], [ %42, %173 ], [ %42, %167 ], [ %181, %184 ], [ %42, %176 ]
  %419 = getelementptr inbounds ptr, ptr %414, i64 1
  %420 = add nsw i32 %418, -1
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %41, !llvm.loop !16

422:                                              ; preds = %413, %41, %37
  %423 = phi ptr [ null, %37 ], [ %47, %41 ], [ %415, %413 ]
  %424 = phi ptr [ null, %37 ], [ %46, %41 ], [ %416, %413 ]
  %425 = phi ptr [ null, %37 ], [ %45, %41 ], [ %417, %413 ]
  %426 = phi ptr [ %38, %37 ], [ %43, %41 ], [ %419, %413 ]
  %427 = phi i32 [ 0, %37 ], [ %42, %41 ], [ 0, %413 ]
  %428 = phi i1 [ false, %37 ], [ %51, %41 ], [ %51, %413 ]
  %429 = load i32, ptr @lflag, align 4
  %430 = icmp ne i32 %429, 0
  %431 = select i1 %428, i1 true, i1 %430
  %432 = load i32, ptr @aflag, align 4
  %433 = icmp ne i32 %432, 0
  %434 = select i1 %431, i1 true, i1 %433
  %435 = load i32, ptr @eflag, align 4
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %434, i1 true, i1 %436
  %438 = load i32, ptr @dumpflag, align 4
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %437, i1 true, i1 %439
  br i1 %440, label %441, label %445

441:                                              ; preds = %422
  %442 = icmp sgt i32 %427, 0
  br i1 %442, label %443, label %463

443:                                              ; preds = %441
  %444 = zext i32 %427 to i64
  br label %450

445:                                              ; preds = %422
  tail call fastcc void @usage() #34
  unreachable

446:                                              ; preds = %450
  %447 = add nuw nsw i64 %451, 1
  %448 = icmp ult i64 %447, %444
  %449 = icmp eq i64 %447, %444
  br i1 %449, label %457, label %450, !llvm.loop !17

450:                                              ; preds = %446, %443
  %451 = phi i64 [ 0, %443 ], [ %447, %446 ]
  %452 = phi i1 [ true, %443 ], [ %448, %446 ]
  %453 = getelementptr inbounds ptr, ptr %426, i64 %451
  %454 = load ptr, ptr %453, align 8, !tbaa !7
  %455 = tail call i32 @access(ptr noundef %454, i32 noundef 4) #32
  %456 = icmp sgt i32 %455, -1
  br i1 %456, label %457, label %446

457:                                              ; preds = %450, %446
  %458 = phi i1 [ %448, %446 ], [ %452, %450 ]
  %459 = load i32, ptr @lflag, align 4
  %460 = load i32, ptr @aflag, align 4
  %461 = load i32, ptr @eflag, align 4
  %462 = load i32, ptr @dumpflag, align 4
  br label %463

463:                                              ; preds = %457, %441
  %464 = phi i32 [ %438, %441 ], [ %462, %457 ]
  %465 = phi i32 [ %435, %441 ], [ %461, %457 ]
  %466 = phi i32 [ %432, %441 ], [ %460, %457 ]
  %467 = phi i32 [ %429, %441 ], [ %459, %457 ]
  %468 = phi i1 [ false, %441 ], [ %458, %457 ]
  %469 = icmp ne i32 %467, 0
  %470 = select i1 %468, i1 true, i1 %469
  %471 = icmp ne i32 %466, 0
  %472 = select i1 %470, i1 true, i1 %471
  %473 = icmp ne i32 %465, 0
  %474 = select i1 %472, i1 true, i1 %473
  %475 = icmp ne i32 %464, 0
  %476 = select i1 %474, i1 true, i1 %475
  br i1 %476, label %482, label %477

477:                                              ; preds = %463
  %478 = load ptr, ptr @stderr, align 8, !tbaa !7
  %479 = icmp eq i32 %427, 1
  %480 = select i1 %479, ptr @.str.129, ptr @.str.130
  %481 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %478, ptr noundef nonnull %480) #36
  tail call void @exit(i32 noundef 1) #35
  unreachable

482:                                              ; preds = %463
  %483 = load i1, ptr @inited, align 4
  br i1 %483, label %936, label %484

484:                                              ; preds = %482
  %485 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @hashname, i32 noundef 0) #32
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = load ptr, ptr @stderr, align 8, !tbaa !7
  %489 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %488, ptr noundef nonnull @.str.9.314, ptr noundef nonnull @hashname) #36
  br label %935

490:                                              ; preds = %484
  %491 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @hashname, i32 noundef 47) #33
  %492 = icmp eq ptr %491, null
  %493 = getelementptr inbounds i8, ptr %491, i64 1
  %494 = select i1 %492, ptr @hashname, ptr %493
  %495 = tail call i64 @read(i32 noundef %485, ptr noundef nonnull @hashheader, i64 noundef 3928) #32
  %496 = trunc i64 %495 to i32
  store i32 %496, ptr @hashsize, align 4, !tbaa !11
  %497 = icmp ult i32 %496, 3928
  br i1 %497, label %498, label %505

498:                                              ; preds = %490
  %499 = icmp eq i32 %496, 0
  %500 = load ptr, ptr @stderr, align 8, !tbaa !7
  br i1 %499, label %501, label %503

501:                                              ; preds = %498
  %502 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %500, ptr noundef nonnull @.str.2.233, ptr noundef nonnull %494) #36
  br label %935

503:                                              ; preds = %498
  %504 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %500, ptr noundef nonnull @.str.3.234, ptr noundef nonnull %494, i32 noundef %496, i32 noundef 3928) #36
  br label %935

505:                                              ; preds = %490
  %506 = load i16, ptr @hashheader, align 4, !tbaa !18
  %507 = icmp eq i16 %506, -27134
  br i1 %507, label %512, label %508

508:                                              ; preds = %505
  %509 = zext i16 %506 to i32
  %510 = load ptr, ptr @stderr, align 8, !tbaa !7
  %511 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %510, ptr noundef nonnull @.str.4.235, ptr noundef nonnull %494, i32 noundef 38402, i32 noundef %509) #36
  br label %935

512:                                              ; preds = %505
  %513 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 31), align 4, !tbaa !21
  %514 = icmp eq i16 %513, -27134
  br i1 %514, label %519, label %515

515:                                              ; preds = %512
  %516 = zext i16 %513 to i32
  %517 = load ptr, ptr @stderr, align 8, !tbaa !7
  %518 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %517, ptr noundef nonnull @.str.5.236, ptr noundef nonnull %494, i32 noundef 38402, i32 noundef %516) #36
  br label %935

519:                                              ; preds = %512
  %520 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 1), align 2, !tbaa !22
  %521 = icmp ne i16 %520, 3
  %522 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 2), align 4
  %523 = icmp ne i16 %522, 100
  %524 = select i1 %521, i1 true, i1 %523
  %525 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 3), align 2
  %526 = icmp ne i16 %525, 10
  %527 = select i1 %524, i1 true, i1 %526
  br i1 %527, label %528, label %534

528:                                              ; preds = %519
  %529 = sext i16 %525 to i32
  %530 = sext i16 %522 to i32
  %531 = zext i16 %520 to i32
  %532 = load ptr, ptr @stderr, align 8, !tbaa !7
  %533 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %532, ptr noundef nonnull @.str.6.237, i32 noundef %531, i32 noundef %530, i32 noundef %529, i32 noundef 3, i32 noundef 100, i32 noundef 10) #36
  br label %935

534:                                              ; preds = %519
  %535 = load i32, ptr @nodictflag, align 4, !tbaa !11
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %544, label %537

537:                                              ; preds = %534
  store i32 1, ptr @hashsize, align 4, !tbaa !11
  %538 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #37
  store ptr %538, ptr @hashtbl, align 8, !tbaa !7
  %539 = icmp eq ptr %538, null
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = load ptr, ptr @stderr, align 8, !tbaa !7
  %542 = tail call i64 @fwrite(ptr nonnull @.str.7.238, i64 40, i64 1, ptr %541) #38
  br label %935

543:                                              ; preds = %537
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %538, i8 0, i64 24, i1 false)
  br label %549

544:                                              ; preds = %534
  %545 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !23
  %546 = zext i32 %545 to i64
  %547 = mul nuw nsw i64 %546, 24
  %548 = tail call noalias ptr @malloc(i64 noundef %547) #39
  store ptr %548, ptr @hashtbl, align 8, !tbaa !7
  store i32 %545, ptr @hashsize, align 4, !tbaa !11
  br label %549

549:                                              ; preds = %544, %543
  %550 = phi ptr [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), %544 ], [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), %543 ]
  %551 = phi ptr [ %548, %544 ], [ %538, %543 ]
  %552 = load i32, ptr %550, align 4, !tbaa !11
  %553 = zext i32 %552 to i64
  %554 = tail call noalias ptr @malloc(i64 noundef %553) #39
  store ptr %554, ptr @hashstrings, align 8, !tbaa !7
  %555 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 9), align 4, !tbaa !24
  store i32 %555, ptr @numsflags, align 4, !tbaa !11
  %556 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 10), align 4, !tbaa !25
  store i32 %556, ptr @numpflags, align 4, !tbaa !11
  %557 = add nsw i32 %556, %555
  %558 = sext i32 %557 to i64
  %559 = shl nsw i64 %558, 8
  %560 = tail call noalias ptr @malloc(i64 noundef %559) #39
  store ptr %560, ptr @sflaglist, align 8, !tbaa !7
  %561 = icmp eq ptr %551, null
  %562 = icmp eq ptr %554, null
  %563 = or i1 %561, %562
  %564 = icmp eq ptr %560, null
  %565 = or i1 %563, %564
  br i1 %565, label %566, label %569

566:                                              ; preds = %549
  %567 = load ptr, ptr @stderr, align 8, !tbaa !7
  %568 = tail call i64 @fwrite(ptr nonnull @.str.7.238, i64 40, i64 1, ptr %567) #38
  br label %935

569:                                              ; preds = %549
  %570 = sext i32 %555 to i64
  %571 = getelementptr inbounds %struct.flagent, ptr %560, i64 %570
  store ptr %571, ptr @pflaglist, align 8, !tbaa !7
  br i1 %536, label %591, label %572

572:                                              ; preds = %569
  %573 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !26
  %574 = zext i32 %573 to i64
  %575 = tail call i64 @read(i32 noundef %485, ptr noundef nonnull %554, i64 noundef %574) #32
  %576 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !26
  %577 = sext i32 %576 to i64
  %578 = icmp eq i64 %575, %577
  br i1 %578, label %582, label %579

579:                                              ; preds = %572
  %580 = load ptr, ptr @stderr, align 8, !tbaa !7
  %581 = tail call i64 @fwrite(ptr nonnull @.str.8.239, i64 27, i64 1, ptr %580) #38
  br label %935

582:                                              ; preds = %572
  %583 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !27
  %584 = sext i32 %583 to i64
  %585 = sub i64 %584, %575
  %586 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !23
  %587 = sext i32 %586 to i64
  %588 = mul nsw i64 %587, 24
  %589 = add nsw i64 %585, %588
  %590 = tail call i64 @lseek(i32 noundef %485, i64 noundef %589, i32 noundef 1) #32
  br label %611

591:                                              ; preds = %569
  %592 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !27
  %593 = zext i32 %592 to i64
  %594 = tail call i64 @read(i32 noundef %485, ptr noundef nonnull %554, i64 noundef %593) #32
  %595 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !27
  %596 = sext i32 %595 to i64
  %597 = icmp eq i64 %594, %596
  br i1 %597, label %598, label %608

598:                                              ; preds = %591
  %599 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %600 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !23
  %601 = zext i32 %600 to i64
  %602 = mul nuw nsw i64 %601, 24
  %603 = tail call i64 @read(i32 noundef %485, ptr noundef %599, i64 noundef %602) #32
  %604 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !23
  %605 = sext i32 %604 to i64
  %606 = mul nsw i64 %605, 24
  %607 = icmp eq i64 %603, %606
  br i1 %607, label %611, label %608

608:                                              ; preds = %598, %591
  %609 = load ptr, ptr @stderr, align 8, !tbaa !7
  %610 = tail call i64 @fwrite(ptr nonnull @.str.8.239, i64 27, i64 1, ptr %609) #38
  br label %935

611:                                              ; preds = %598, %582
  %612 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %613 = load i32, ptr @numsflags, align 4, !tbaa !11
  %614 = load i32, ptr @numpflags, align 4, !tbaa !11
  %615 = add nsw i32 %614, %613
  %616 = zext i32 %615 to i64
  %617 = shl nuw nsw i64 %616, 8
  %618 = tail call i64 @read(i32 noundef %485, ptr noundef %612, i64 noundef %617) #32
  %619 = load i32, ptr @numsflags, align 4, !tbaa !11
  %620 = load i32, ptr @numpflags, align 4, !tbaa !11
  %621 = add nsw i32 %620, %619
  %622 = sext i32 %621 to i64
  %623 = shl nsw i64 %622, 8
  %624 = icmp eq i64 %618, %623
  br i1 %624, label %628, label %625

625:                                              ; preds = %611
  %626 = load ptr, ptr @stderr, align 8, !tbaa !7
  %627 = tail call i64 @fwrite(ptr nonnull @.str.8.239, i64 27, i64 1, ptr %626) #38
  br label %935

628:                                              ; preds = %611
  %629 = tail call i32 @close(i32 noundef %485) #32
  %630 = load i32, ptr @nodictflag, align 4, !tbaa !11
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %632, label %659

632:                                              ; preds = %628
  %633 = load i32, ptr @hashsize, align 4, !tbaa !11
  %634 = icmp sgt i32 %633, 0
  br i1 %634, label %635, label %659

635:                                              ; preds = %632
  %636 = load ptr, ptr @hashtbl, align 8
  %637 = load ptr, ptr @hashstrings, align 8
  br label %638

638:                                              ; preds = %638, %635
  %639 = phi ptr [ %657, %638 ], [ %636, %635 ]
  %640 = phi i32 [ %641, %638 ], [ %633, %635 ]
  %641 = add nsw i32 %640, -1
  %642 = getelementptr inbounds %struct.dent, ptr %639, i64 0, i32 1
  %643 = load ptr, ptr %642, align 8, !tbaa !28
  %644 = icmp eq ptr %643, inttoptr (i64 -1 to ptr)
  %645 = ptrtoint ptr %643 to i64
  %646 = shl i64 %645, 32
  %647 = ashr exact i64 %646, 32
  %648 = getelementptr inbounds i8, ptr %637, i64 %647
  %649 = select i1 %644, ptr null, ptr %648
  store ptr %649, ptr %642, align 8, !tbaa !28
  %650 = load ptr, ptr %639, align 8, !tbaa !30
  %651 = icmp eq ptr %650, inttoptr (i64 -1 to ptr)
  %652 = ptrtoint ptr %650 to i64
  %653 = shl i64 %652, 32
  %654 = ashr exact i64 %653, 32
  %655 = getelementptr inbounds %struct.dent, ptr %636, i64 %654
  %656 = select i1 %651, ptr null, ptr %655
  store ptr %656, ptr %639, align 8, !tbaa !30
  %657 = getelementptr inbounds %struct.dent, ptr %639, i64 1
  %658 = icmp ugt i32 %640, 1
  br i1 %658, label %638, label %659, !llvm.loop !31

659:                                              ; preds = %638, %632, %628
  %660 = load i32, ptr @numsflags, align 4, !tbaa !11
  %661 = load i32, ptr @numpflags, align 4, !tbaa !11
  %662 = add nsw i32 %661, %660
  %663 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %664 = icmp sgt i32 %662, 0
  br i1 %664, label %665, label %696

665:                                              ; preds = %659
  %666 = load ptr, ptr @hashstrings, align 8
  br label %667

667:                                              ; preds = %692, %665
  %668 = phi i32 [ %670, %692 ], [ %662, %665 ]
  %669 = phi ptr [ %694, %692 ], [ %663, %665 ]
  %670 = add nsw i32 %668, -1
  %671 = getelementptr inbounds %struct.flagent, ptr %669, i64 0, i32 3
  %672 = load i16, ptr %671, align 2, !tbaa !32
  %673 = icmp eq i16 %672, 0
  br i1 %673, label %680, label %674

674:                                              ; preds = %667
  %675 = load ptr, ptr %669, align 8, !tbaa !34
  %676 = ptrtoint ptr %675 to i64
  %677 = shl i64 %676, 32
  %678 = ashr exact i64 %677, 32
  %679 = getelementptr inbounds i8, ptr %666, i64 %678
  br label %680

680:                                              ; preds = %674, %667
  %681 = phi ptr [ %679, %674 ], [ null, %667 ]
  store ptr %681, ptr %669, align 8, !tbaa !34
  %682 = getelementptr inbounds %struct.flagent, ptr %669, i64 0, i32 4
  %683 = load i16, ptr %682, align 4, !tbaa !35
  %684 = icmp eq i16 %683, 0
  %685 = getelementptr inbounds %struct.flagent, ptr %669, i64 0, i32 1
  br i1 %684, label %692, label %686

686:                                              ; preds = %680
  %687 = load ptr, ptr %685, align 8, !tbaa !36
  %688 = ptrtoint ptr %687 to i64
  %689 = shl i64 %688, 32
  %690 = ashr exact i64 %689, 32
  %691 = getelementptr inbounds i8, ptr %666, i64 %690
  br label %692

692:                                              ; preds = %686, %680
  %693 = phi ptr [ %691, %686 ], [ null, %680 ]
  store ptr %693, ptr %685, align 8, !tbaa !36
  %694 = getelementptr inbounds %struct.flagent, ptr %669, i64 1
  %695 = icmp ugt i32 %668, 1
  br i1 %695, label %667, label %696, !llvm.loop !37

696:                                              ; preds = %692, %659
  %697 = icmp sgt i32 %660, 0
  br i1 %697, label %698, label %786

698:                                              ; preds = %780, %696
  %699 = phi ptr [ %784, %780 ], [ %663, %696 ]
  %700 = phi i32 [ %783, %780 ], [ %660, %696 ]
  %701 = getelementptr inbounds %struct.flagent, ptr %699, i64 0, i32 4
  %702 = load i16, ptr %701, align 4, !tbaa !35
  %703 = icmp eq i16 %702, 0
  br i1 %703, label %738, label %704

704:                                              ; preds = %698
  %705 = getelementptr inbounds %struct.flagent, ptr %699, i64 0, i32 1
  %706 = load ptr, ptr %705, align 8, !tbaa !36
  %707 = sext i16 %702 to i64
  %708 = getelementptr inbounds i8, ptr %706, i64 %707
  %709 = getelementptr inbounds i8, ptr %708, i64 -1
  %710 = load i8, ptr %709, align 1, !tbaa !13
  %711 = zext i8 %710 to i64
  %712 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %711
  %713 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %711, i32 1
  %714 = load i32, ptr %713, align 8, !tbaa !38
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %716, label %738

716:                                              ; preds = %704
  %717 = load ptr, ptr %712, align 16, !tbaa !13
  %718 = icmp eq ptr %717, null
  br i1 %718, label %738, label %722

719:                                              ; preds = %731
  %720 = load ptr, ptr %732, align 8, !tbaa !13
  %721 = icmp eq ptr %720, null
  br i1 %721, label %738, label %722, !llvm.loop !40

722:                                              ; preds = %719, %716
  %723 = phi ptr [ %720, %719 ], [ %717, %716 ]
  %724 = phi ptr [ %734, %719 ], [ %709, %716 ]
  %725 = icmp eq ptr %724, %706
  br i1 %725, label %731, label %726

726:                                              ; preds = %722
  %727 = getelementptr inbounds i8, ptr %724, i64 -1
  %728 = load i8, ptr %727, align 1, !tbaa !13
  %729 = zext i8 %728 to i64
  %730 = getelementptr inbounds %struct.flagptr, ptr %723, i64 %729
  br label %731

731:                                              ; preds = %726, %722
  %732 = phi ptr [ %730, %726 ], [ %723, %722 ]
  %733 = phi i32 [ 0, %726 ], [ 1, %722 ]
  %734 = phi ptr [ %727, %726 ], [ %706, %722 ]
  %735 = getelementptr inbounds %struct.flagptr, ptr %732, i64 0, i32 1
  %736 = load i32, ptr %735, align 8, !tbaa !38
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %719, label %738, !llvm.loop !40

738:                                              ; preds = %731, %719, %716, %704, %698
  %739 = phi ptr [ @sflagindex, %698 ], [ %712, %704 ], [ %712, %716 ], [ %732, %719 ], [ %732, %731 ]
  %740 = phi i32 [ 1, %698 ], [ 0, %704 ], [ 0, %716 ], [ %733, %719 ], [ %733, %731 ]
  %741 = getelementptr inbounds %struct.flagptr, ptr %739, i64 0, i32 1
  %742 = load i32, ptr %741, align 8, !tbaa !38
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %745

744:                                              ; preds = %738
  store ptr %699, ptr %739, align 8, !tbaa !13
  br label %776

745:                                              ; preds = %738
  %746 = add nsw i32 %742, 1
  store i32 %746, ptr %741, align 8, !tbaa !38
  %747 = icmp eq i32 %740, 0
  %748 = icmp sgt i32 %742, 2
  %749 = and i1 %747, %748
  br i1 %749, label %750, label %780

750:                                              ; preds = %745
  %751 = getelementptr inbounds %struct.flagent, ptr %699, i64 0, i32 1
  %752 = load ptr, ptr %751, align 8, !tbaa !36
  %753 = load ptr, ptr %739, align 8, !tbaa !13
  %754 = getelementptr inbounds %struct.flagent, ptr %753, i64 0, i32 1
  %755 = load ptr, ptr %754, align 8, !tbaa !36
  %756 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %752, ptr noundef nonnull dereferenceable(1) %755) #33
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %780, label %758

758:                                              ; preds = %750
  %759 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %760 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !41
  %761 = add nsw i32 %760, 128
  %762 = zext i32 %761 to i64
  %763 = tail call noalias ptr @calloc(i64 noundef %762, i64 noundef 16) #37
  store ptr %763, ptr %739, align 8, !tbaa !13
  %764 = icmp eq ptr %763, null
  br i1 %764, label %765, label %768

765:                                              ; preds = %758
  %766 = load ptr, ptr @stderr, align 8, !tbaa !7
  %767 = tail call i64 @fwrite(ptr nonnull @.str.9.240, i64 45, i64 1, ptr %766) #38
  br label %935

768:                                              ; preds = %758
  %769 = getelementptr inbounds %struct.flagent, ptr %753, i64 -1
  %770 = ptrtoint ptr %769 to i64
  %771 = ptrtoint ptr %759 to i64
  %772 = sub i64 %770, %771
  %773 = lshr exact i64 %772, 8
  %774 = trunc i64 %773 to i32
  %775 = sub i32 %660, %774
  br label %776

776:                                              ; preds = %768, %744
  %777 = phi i32 [ 1, %744 ], [ 0, %768 ]
  %778 = phi i32 [ %700, %744 ], [ %775, %768 ]
  %779 = phi ptr [ %699, %744 ], [ %769, %768 ]
  store i32 %777, ptr %741, align 8, !tbaa !38
  br label %780

780:                                              ; preds = %776, %750, %745
  %781 = phi i32 [ %700, %745 ], [ %700, %750 ], [ %778, %776 ]
  %782 = phi ptr [ %699, %745 ], [ %699, %750 ], [ %779, %776 ]
  %783 = add nsw i32 %781, -1
  %784 = getelementptr inbounds %struct.flagent, ptr %782, i64 1
  %785 = icmp sgt i32 %781, 1
  br i1 %785, label %698, label %786, !llvm.loop !42

786:                                              ; preds = %780, %696
  %787 = icmp sgt i32 %661, 0
  br i1 %787, label %788, label %878

788:                                              ; preds = %786
  %789 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  br label %790

790:                                              ; preds = %872, %788
  %791 = phi ptr [ %876, %872 ], [ %789, %788 ]
  %792 = phi i32 [ %875, %872 ], [ %661, %788 ]
  %793 = getelementptr inbounds %struct.flagent, ptr %791, i64 0, i32 4
  %794 = load i16, ptr %793, align 4, !tbaa !35
  %795 = icmp eq i16 %794, 0
  br i1 %795, label %830, label %796

796:                                              ; preds = %790
  %797 = getelementptr inbounds %struct.flagent, ptr %791, i64 0, i32 1
  %798 = load ptr, ptr %797, align 8, !tbaa !36
  %799 = load i8, ptr %798, align 1, !tbaa !13
  %800 = zext i8 %799 to i64
  %801 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %800
  %802 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %800, i32 1
  %803 = load i32, ptr %802, align 8, !tbaa !38
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %830

805:                                              ; preds = %796
  %806 = load ptr, ptr %801, align 16, !tbaa !13
  %807 = icmp eq ptr %806, null
  br i1 %807, label %826, label %808

808:                                              ; preds = %805
  %809 = getelementptr inbounds i8, ptr %798, i64 1
  br label %816

810:                                              ; preds = %816
  %811 = xor i1 %820, true
  %812 = zext i1 %811 to i64
  %813 = getelementptr inbounds i8, ptr %818, i64 %812
  %814 = load ptr, ptr %822, align 8, !tbaa !13
  %815 = icmp eq ptr %814, null
  br i1 %815, label %826, label %816, !llvm.loop !43

816:                                              ; preds = %810, %808
  %817 = phi ptr [ %806, %808 ], [ %814, %810 ]
  %818 = phi ptr [ %809, %808 ], [ %813, %810 ]
  %819 = load i8, ptr %818, align 1, !tbaa !13
  %820 = icmp eq i8 %819, 0
  %821 = zext i8 %819 to i64
  %822 = getelementptr inbounds %struct.flagptr, ptr %817, i64 %821
  %823 = getelementptr inbounds %struct.flagptr, ptr %817, i64 %821, i32 1
  %824 = load i32, ptr %823, align 8, !tbaa !38
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %810, label %826, !llvm.loop !43

826:                                              ; preds = %816, %810, %805
  %827 = phi ptr [ %801, %805 ], [ %822, %810 ], [ %822, %816 ]
  %828 = phi i1 [ false, %805 ], [ %820, %810 ], [ %820, %816 ]
  %829 = zext i1 %828 to i32
  br label %830

830:                                              ; preds = %826, %796, %790
  %831 = phi ptr [ @pflagindex, %790 ], [ %801, %796 ], [ %827, %826 ]
  %832 = phi i32 [ 1, %790 ], [ 0, %796 ], [ %829, %826 ]
  %833 = getelementptr inbounds %struct.flagptr, ptr %831, i64 0, i32 1
  %834 = load i32, ptr %833, align 8, !tbaa !38
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %837

836:                                              ; preds = %830
  store ptr %791, ptr %831, align 8, !tbaa !13
  br label %868

837:                                              ; preds = %830
  %838 = add nsw i32 %834, 1
  store i32 %838, ptr %833, align 8, !tbaa !38
  %839 = icmp eq i32 %832, 0
  %840 = icmp sgt i32 %834, 2
  %841 = and i1 %839, %840
  br i1 %841, label %842, label %872

842:                                              ; preds = %837
  %843 = getelementptr inbounds %struct.flagent, ptr %791, i64 0, i32 1
  %844 = load ptr, ptr %843, align 8, !tbaa !36
  %845 = load ptr, ptr %831, align 8, !tbaa !13
  %846 = getelementptr inbounds %struct.flagent, ptr %845, i64 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !36
  %848 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %844, ptr noundef nonnull dereferenceable(1) %847) #33
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %872, label %850

850:                                              ; preds = %842
  %851 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %852 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !41
  %853 = add nsw i32 %852, 128
  %854 = sext i32 %853 to i64
  %855 = tail call noalias ptr @calloc(i64 noundef %854, i64 noundef 16) #37
  store ptr %855, ptr %831, align 8, !tbaa !13
  %856 = icmp eq ptr %855, null
  br i1 %856, label %857, label %860

857:                                              ; preds = %850
  %858 = load ptr, ptr @stderr, align 8, !tbaa !7
  %859 = tail call i64 @fwrite(ptr nonnull @.str.9.240, i64 45, i64 1, ptr %858) #38
  br label %935

860:                                              ; preds = %850
  %861 = getelementptr inbounds %struct.flagent, ptr %845, i64 -1
  %862 = ptrtoint ptr %861 to i64
  %863 = ptrtoint ptr %851 to i64
  %864 = sub i64 %862, %863
  %865 = lshr exact i64 %864, 8
  %866 = trunc i64 %865 to i32
  %867 = sub i32 %661, %866
  br label %868

868:                                              ; preds = %860, %836
  %869 = phi i32 [ 1, %836 ], [ 0, %860 ]
  %870 = phi i32 [ %792, %836 ], [ %867, %860 ]
  %871 = phi ptr [ %791, %836 ], [ %861, %860 ]
  store i32 %869, ptr %833, align 8, !tbaa !38
  br label %872

872:                                              ; preds = %868, %842, %837
  %873 = phi i32 [ %792, %837 ], [ %792, %842 ], [ %870, %868 ]
  %874 = phi ptr [ %791, %837 ], [ %791, %842 ], [ %871, %868 ]
  %875 = add nsw i32 %873, -1
  %876 = getelementptr inbounds %struct.flagent, ptr %874, i64 1
  %877 = icmp sgt i32 %873, 1
  br i1 %877, label %790, label %878, !llvm.loop !44

878:                                              ; preds = %872, %786
  %879 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !45
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %882

881:                                              ; preds = %878
  store ptr null, ptr @chartypes, align 8, !tbaa !7
  br label %934

882:                                              ; preds = %878
  %883 = sext i32 %879 to i64
  %884 = mul nsw i64 %883, 24
  %885 = tail call noalias ptr @malloc(i64 noundef %884) #39
  store ptr %885, ptr @chartypes, align 8, !tbaa !7
  %886 = icmp eq ptr %885, null
  br i1 %886, label %887, label %890

887:                                              ; preds = %882
  %888 = load ptr, ptr @stderr, align 8, !tbaa !7
  %889 = tail call i64 @fwrite(ptr nonnull @.str.9.240, i64 45, i64 1, ptr %888) #38
  br label %935

890:                                              ; preds = %882
  %891 = icmp sgt i32 %879, 0
  br i1 %891, label %892, label %934

892:                                              ; preds = %890
  %893 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 14), align 4, !tbaa !46
  %894 = zext i32 %879 to i64
  %895 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  br label %896

896:                                              ; preds = %929, %892
  %897 = phi i64 [ 0, %892 ], [ %932, %929 ]
  %898 = phi i32 [ %893, %892 ], [ %931, %929 ]
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds i8, ptr %895, i64 %899
  %901 = getelementptr inbounds %struct.success, ptr %885, i64 %897
  store ptr %900, ptr %901, align 8, !tbaa !47
  %902 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %900) #33
  %903 = trunc i64 %902 to i32
  %904 = add i32 %898, 1
  %905 = add i32 %904, %903
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds i8, ptr %895, i64 %906
  %908 = getelementptr inbounds %struct.success, ptr %885, i64 %897, i32 1
  store ptr %907, ptr %908, align 8, !tbaa !49
  %909 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %907) #33
  %910 = trunc i64 %909 to i32
  %911 = add i32 %905, 1
  %912 = add i32 %911, %910
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i8, ptr %895, i64 %913
  %915 = getelementptr inbounds %struct.success, ptr %885, i64 %897, i32 2
  store ptr %914, ptr %915, align 8, !tbaa !50
  %916 = load i8, ptr %914, align 1, !tbaa !13
  %917 = icmp eq i8 %916, 0
  br i1 %917, label %929, label %918

918:                                              ; preds = %918, %896
  %919 = phi ptr [ %926, %918 ], [ %914, %896 ]
  %920 = phi i32 [ %924, %918 ], [ %912, %896 ]
  %921 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %919) #33
  %922 = trunc i64 %921 to i32
  %923 = add i32 %920, 1
  %924 = add i32 %923, %922
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds i8, ptr %895, i64 %925
  %927 = load i8, ptr %926, align 1, !tbaa !13
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %929, label %918, !llvm.loop !51

929:                                              ; preds = %918, %896
  %930 = phi i32 [ %912, %896 ], [ %924, %918 ]
  %931 = add nsw i32 %930, 1
  %932 = add nuw nsw i64 %897, 1
  %933 = icmp eq i64 %932, %894
  br i1 %933, label %934, label %896, !llvm.loop !52

934:                                              ; preds = %929, %890, %881
  store i1 true, ptr @inited, align 4
  br label %936

935:                                              ; preds = %887, %857, %765, %625, %608, %579, %566, %540, %528, %515, %508, %503, %501, %487
  tail call void @exit(i32 noundef 1) #35
  unreachable

936:                                              ; preds = %934, %482
  %937 = icmp eq ptr %425, null
  br i1 %937, label %938, label %940

938:                                              ; preds = %936
  %939 = load i32, ptr @prefstringchar, align 4, !tbaa !11
  br label %955

940:                                              ; preds = %936
  %941 = load i32, ptr @deftflag, align 4, !tbaa !11
  %942 = icmp slt i32 %941, 0
  %943 = select i1 %942, ptr @deftflag, ptr null
  %944 = tail call fastcc i32 @findfiletype(ptr noundef nonnull %425, i32 noundef 1, ptr noundef %943) #32
  store i32 %944, ptr @prefstringchar, align 4, !tbaa !11
  %945 = icmp slt i32 %944, 0
  br i1 %945, label %946, label %955

946:                                              ; preds = %940
  %947 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %425, ptr noundef nonnull dereferenceable(4) @.str.5.270) #33
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %955, label %949

949:                                              ; preds = %946
  %950 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %425, ptr noundef nonnull dereferenceable(6) @.str.127) #33
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %955, label %952

952:                                              ; preds = %949
  %953 = load ptr, ptr @stderr, align 8, !tbaa !7
  %954 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %953, ptr noundef nonnull @.str.131, ptr noundef nonnull %425) #36
  tail call void @exit(i32 noundef 1) #35
  unreachable

955:                                              ; preds = %949, %946, %940, %938
  %956 = phi i32 [ %939, %938 ], [ %944, %940 ], [ %944, %946 ], [ %944, %949 ]
  %957 = tail call i32 @llvm.smax.i32(i32 %956, i32 0)
  store i32 %957, ptr @defdupchar, align 4, !tbaa !11
  %958 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %959 = icmp slt i32 %958, 0
  br i1 %959, label %960, label %963

960:                                              ; preds = %955
  %961 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 17), align 2, !tbaa !53
  %962 = sext i8 %961 to i32
  store i32 %962, ptr @compoundflag, align 4, !tbaa !11
  br label %963

963:                                              ; preds = %960, %955
  %964 = load i32, ptr @tryhardflag, align 4, !tbaa !11
  %965 = icmp slt i32 %964, 0
  br i1 %965, label %966, label %969

966:                                              ; preds = %963
  %967 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 18), align 1, !tbaa !54
  %968 = sext i8 %967 to i32
  store i32 %968, ptr @tryhardflag, align 4, !tbaa !11
  br label %969

969:                                              ; preds = %966, %963
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #40
  %970 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !41
  %971 = and i32 %970, 255
  %972 = xor i32 %971, 128
  %973 = load i32, ptr @Trynum, align 4
  %974 = icmp eq i32 %972, 0
  br i1 %974, label %1000, label %975

975:                                              ; preds = %969
  %976 = zext i32 %972 to i64
  br label %977

977:                                              ; preds = %996, %975
  %978 = phi i64 [ 0, %975 ], [ %998, %996 ]
  %979 = phi i32 [ %973, %975 ], [ %997, %996 ]
  %980 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %978
  %981 = load i8, ptr %980, align 1, !tbaa !13
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %987, label %983

983:                                              ; preds = %977
  %984 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %978
  %985 = load i8, ptr %984, align 1, !tbaa !13
  %986 = icmp eq i8 %985, 0
  br i1 %986, label %991, label %996

987:                                              ; preds = %977
  %988 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %978
  %989 = load i8, ptr %988, align 1, !tbaa !13
  %990 = icmp eq i8 %989, 0
  br i1 %990, label %996, label %991

991:                                              ; preds = %987, %983
  %992 = sext i32 %979 to i64
  %993 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %992
  %994 = trunc i64 %978 to i8
  store i8 %994, ptr %993, align 1, !tbaa !13
  %995 = add nsw i32 %979, 1
  store i32 %995, ptr @Trynum, align 4, !tbaa !11
  br label %996

996:                                              ; preds = %991, %987, %983
  %997 = phi i32 [ %979, %983 ], [ %979, %987 ], [ %995, %991 ]
  %998 = add nuw nsw i64 %978, 1
  %999 = icmp eq i64 %998, %976
  br i1 %999, label %1000, label %977, !llvm.loop !55

1000:                                             ; preds = %996, %969
  %1001 = phi i32 [ %973, %969 ], [ %997, %996 ]
  %1002 = icmp ne ptr %424, null
  %1003 = icmp slt i32 %1001, 128
  %1004 = select i1 %1002, i1 %1003, i1 false
  br i1 %1004, label %1005, label %1087

1005:                                             ; preds = %1000
  %1006 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !56
  %1007 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1
  %1008 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2
  br label %1009

1009:                                             ; preds = %1083, %1005
  %1010 = phi i32 [ %1084, %1083 ], [ %1006, %1005 ]
  %1011 = phi i32 [ %1085, %1083 ], [ %1001, %1005 ]
  %1012 = phi ptr [ %1069, %1083 ], [ %424, %1005 ]
  %1013 = load i8, ptr %1012, align 1, !tbaa !13
  switch i8 %1013, label %1014 [
    i8 0, label %1087
    i8 110, label %1016
    i8 92, label %1016
  ]

1014:                                             ; preds = %1009
  %1015 = getelementptr inbounds i8, ptr %1012, i64 1
  br label %1068

1016:                                             ; preds = %1009, %1009
  %1017 = getelementptr inbounds i8, ptr %1012, i64 1
  %1018 = tail call ptr @__ctype_b_loc() #41
  store i32 0, ptr %6, align 4
  %1019 = load ptr, ptr %1018, align 8, !tbaa !7
  %1020 = load i8, ptr %1017, align 1, !tbaa !13
  %1021 = sext i8 %1020 to i64
  %1022 = getelementptr inbounds i16, ptr %1019, i64 %1021
  %1023 = load i16, ptr %1022, align 2, !tbaa !57
  %1024 = and i16 %1023, 2048
  %1025 = icmp eq i16 %1024, 0
  br i1 %1025, label %1043, label %1026

1026:                                             ; preds = %1016
  store i8 %1020, ptr %6, align 4, !tbaa !13
  %1027 = getelementptr inbounds i8, ptr %1012, i64 2
  %1028 = load i8, ptr %1027, align 1, !tbaa !13
  %1029 = sext i8 %1028 to i64
  %1030 = getelementptr inbounds i16, ptr %1019, i64 %1029
  %1031 = load i16, ptr %1030, align 2, !tbaa !57
  %1032 = and i16 %1031, 2048
  %1033 = icmp eq i16 %1032, 0
  br i1 %1033, label %1043, label %1034

1034:                                             ; preds = %1026
  store i8 %1028, ptr %1007, align 1, !tbaa !13
  %1035 = getelementptr inbounds i8, ptr %1012, i64 3
  %1036 = load i8, ptr %1035, align 1, !tbaa !13
  %1037 = sext i8 %1036 to i64
  %1038 = getelementptr inbounds i16, ptr %1019, i64 %1037
  %1039 = load i16, ptr %1038, align 2, !tbaa !57
  %1040 = and i16 %1039, 2048
  %1041 = icmp eq i16 %1040, 0
  br i1 %1041, label %1043, label %1042

1042:                                             ; preds = %1034
  store i8 %1036, ptr %1008, align 2, !tbaa !13
  br label %1043

1043:                                             ; preds = %1042, %1034, %1026, %1016
  %1044 = phi i8 [ 0, %1026 ], [ %1036, %1042 ], [ 0, %1034 ], [ 0, %1016 ]
  %1045 = phi i8 [ 0, %1026 ], [ %1028, %1042 ], [ %1028, %1034 ], [ 0, %1016 ]
  %1046 = phi i8 [ %1020, %1026 ], [ %1020, %1042 ], [ %1020, %1034 ], [ 0, %1016 ]
  %1047 = load i8, ptr %1012, align 1, !tbaa !13
  %1048 = icmp eq i8 %1047, 110
  %1049 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #33
  %1050 = getelementptr inbounds i8, ptr %1017, i64 %1049
  br i1 %1048, label %1051, label %1054

1051:                                             ; preds = %1043
  %1052 = call i32 @atoi(ptr nocapture noundef nonnull %6) #33
  %1053 = trunc i32 %1052 to i8
  br label %1068

1054:                                             ; preds = %1043
  %1055 = icmp eq i8 %1046, 0
  %1056 = add i8 %1046, -48
  %1057 = select i1 %1055, i8 0, i8 %1056
  %1058 = icmp eq i8 %1045, 0
  %1059 = shl i8 %1057, 3
  %1060 = add i8 %1045, -48
  %1061 = add i8 %1060, %1059
  %1062 = select i1 %1058, i8 %1057, i8 %1061
  %1063 = icmp eq i8 %1044, 0
  br i1 %1063, label %1068, label %1064

1064:                                             ; preds = %1054
  %1065 = shl i8 %1062, 3
  %1066 = add i8 %1044, -48
  %1067 = add i8 %1066, %1065
  br label %1068

1068:                                             ; preds = %1064, %1054, %1051, %1014
  %1069 = phi ptr [ %1015, %1014 ], [ %1050, %1051 ], [ %1050, %1064 ], [ %1050, %1054 ]
  %1070 = phi i8 [ %1013, %1014 ], [ %1053, %1051 ], [ %1067, %1064 ], [ %1062, %1054 ]
  %1071 = and i8 %1070, 127
  %1072 = zext i8 %1071 to i64
  %1073 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %1072
  %1074 = load i8, ptr %1073, align 1, !tbaa !13
  %1075 = icmp eq i8 %1074, 0
  br i1 %1075, label %1076, label %1083

1076:                                             ; preds = %1068
  store i8 1, ptr %1073, align 1, !tbaa !13
  %1077 = add nsw i32 %1010, 1
  store i32 %1077, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !56
  %1078 = trunc i32 %1010 to i16
  %1079 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %1072
  store i16 %1078, ptr %1079, align 2, !tbaa !57
  %1080 = sext i32 %1011 to i64
  %1081 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %1080
  store i8 %1071, ptr %1081, align 1, !tbaa !13
  %1082 = add nsw i32 %1011, 1
  store i32 %1082, ptr @Trynum, align 4, !tbaa !11
  br label %1083

1083:                                             ; preds = %1076, %1068
  %1084 = phi i32 [ %1077, %1076 ], [ %1010, %1068 ]
  %1085 = phi i32 [ %1082, %1076 ], [ %1011, %1068 ]
  %1086 = icmp slt i32 %1085, 128
  br i1 %1086, label %1009, label %1087

1087:                                             ; preds = %1083, %1009, %1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #40
  %1088 = load ptr, ptr @LibDict, align 8, !tbaa !7
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1090, label %1097

1090:                                             ; preds = %1087
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) @main.libdictname, ptr noundef nonnull align 1 dereferenceable(13) @.str.4.81, i64 13, i1 false) #32
  store ptr @main.libdictname, ptr @LibDict, align 8, !tbaa !7
  %1091 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #33
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1097, label %1093

1093:                                             ; preds = %1090
  %1094 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1091, ptr noundef nonnull dereferenceable(6) @.str.3.80) #33
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1097

1096:                                             ; preds = %1093
  store i8 0, ptr %1091, align 1, !tbaa !13
  br label %1097

1097:                                             ; preds = %1096, %1093, %1090, %1087
  %1098 = phi ptr [ @main.libdictname, %1090 ], [ @main.libdictname, %1093 ], [ @main.libdictname, %1096 ], [ %1088, %1087 ]
  %1099 = load i32, ptr @nodictflag, align 4, !tbaa !11
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1101, label %1213

1101:                                             ; preds = %1097
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #40
  %1102 = icmp eq ptr %423, null
  br i1 %1102, label %1103, label %1105

1103:                                             ; preds = %1101
  %1104 = tail call ptr @getenv(ptr noundef nonnull @.str.305) #32
  br label %1105

1105:                                             ; preds = %1103, %1101
  %1106 = phi ptr [ %1104, %1103 ], [ %423, %1101 ]
  %1107 = tail call ptr @getenv(ptr noundef nonnull @.str.1.306) #32
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %1212, label %1109

1109:                                             ; preds = %1105
  %1110 = icmp eq ptr %1106, null
  br i1 %1110, label %1111, label %1162

1111:                                             ; preds = %1109
  %1112 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef %1098) #34
  store ptr %1112, ptr @dictf, align 8, !tbaa !7
  %1113 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %1107, ptr noundef %1098) #34
  %1114 = load ptr, ptr @dictf, align 8, !tbaa !7
  %1115 = icmp eq ptr %1114, null
  %1116 = icmp eq ptr %1113, null
  %1117 = select i1 %1115, i1 %1116, i1 false
  br i1 %1117, label %1118, label %1122

1118:                                             ; preds = %1111
  %1119 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef nonnull @.str.3.307) #34
  store ptr %1119, ptr @dictf, align 8, !tbaa !7
  %1120 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %1107, ptr noundef nonnull @.str.3.307) #34
  %1121 = load ptr, ptr @dictf, align 8, !tbaa !7
  br label %1122

1122:                                             ; preds = %1118, %1111
  %1123 = phi ptr [ %1121, %1118 ], [ %1114, %1111 ]
  %1124 = phi ptr [ %1120, %1118 ], [ %1113, %1111 ]
  %1125 = icmp eq ptr %1123, null
  %1126 = icmp eq ptr %1124, null
  %1127 = select i1 %1125, i1 %1126, i1 false
  br i1 %1127, label %1128, label %1132

1128:                                             ; preds = %1122
  %1129 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef %1098) #34
  store ptr %1129, ptr @dictf, align 8, !tbaa !7
  %1130 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %1107, ptr noundef %1098) #34
  %1131 = load ptr, ptr @dictf, align 8, !tbaa !7
  br label %1132

1132:                                             ; preds = %1128, %1122
  %1133 = phi ptr [ %1131, %1128 ], [ %1123, %1122 ]
  %1134 = phi ptr [ %1130, %1128 ], [ %1124, %1122 ]
  %1135 = icmp eq ptr %1133, null
  %1136 = icmp eq ptr %1134, null
  %1137 = select i1 %1135, i1 %1136, i1 false
  br i1 %1137, label %1138, label %1141

1138:                                             ; preds = %1132
  %1139 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef nonnull @.str.3.307) #34
  store ptr %1139, ptr @dictf, align 8, !tbaa !7
  %1140 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %1107, ptr noundef nonnull @.str.3.307) #34
  br label %1141

1141:                                             ; preds = %1138, %1132
  %1142 = phi ptr [ %1140, %1138 ], [ %1134, %1132 ]
  %1143 = load i8, ptr @personaldict, align 16, !tbaa !13
  %1144 = icmp eq i8 %1143, 0
  br i1 %1144, label %1145, label %1152

1145:                                             ; preds = %1141
  %1146 = load i8, ptr %3, align 16, !tbaa !13
  %1147 = icmp eq i8 %1146, 0
  br i1 %1147, label %1150, label %1148

1148:                                             ; preds = %1145
  %1149 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %3) #32
  br label %1152

1150:                                             ; preds = %1145
  %1151 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.4.308, ptr noundef nonnull %1107, ptr noundef nonnull @.str.2.309, ptr noundef %1098) #32
  br label %1152

1152:                                             ; preds = %1150, %1148, %1141
  %1153 = load ptr, ptr @dictf, align 8, !tbaa !7
  %1154 = icmp eq ptr %1153, null
  br i1 %1154, label %1158, label %1155

1155:                                             ; preds = %1152
  tail call fastcc void @treeload(ptr noundef nonnull %1153) #34
  %1156 = load ptr, ptr @dictf, align 8, !tbaa !7
  %1157 = tail call i32 @fclose(ptr noundef %1156) #34
  br label %1158

1158:                                             ; preds = %1155, %1152
  %1159 = icmp eq ptr %1142, null
  br i1 %1159, label %1195, label %1160

1160:                                             ; preds = %1158
  tail call fastcc void @treeload(ptr noundef nonnull %1142) #34
  %1161 = tail call i32 @fclose(ptr noundef nonnull %1142) #34
  br label %1195

1162:                                             ; preds = %1109
  %1163 = load i8, ptr %1106, align 1, !tbaa !13
  %1164 = icmp eq i8 %1163, 47
  br i1 %1164, label %1171, label %1165

1165:                                             ; preds = %1162
  %1166 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1106, ptr noundef nonnull dereferenceable(3) @.str.5.310, i64 noundef 2) #33
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1171, label %1168

1168:                                             ; preds = %1165
  %1169 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1106, ptr noundef nonnull dereferenceable(4) @.str.6.311, i64 noundef 3) #33
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1171, label %1178

1171:                                             ; preds = %1168, %1165, %1162
  %1172 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %1106) #32
  %1173 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.2.337) #34
  store ptr %1173, ptr @dictf, align 8, !tbaa !7
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1195, label %1175

1175:                                             ; preds = %1171
  tail call fastcc void @treeload(ptr noundef nonnull %1173) #34
  %1176 = load ptr, ptr @dictf, align 8, !tbaa !7
  %1177 = tail call i32 @fclose(ptr noundef %1176) #34
  br label %1195

1178:                                             ; preds = %1168
  %1179 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %1106) #32
  %1180 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.2.337) #34
  store ptr %1180, ptr @dictf, align 8, !tbaa !7
  %1181 = icmp eq ptr %1180, null
  br i1 %1181, label %1182, label %1186

1182:                                             ; preds = %1178
  %1183 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.8.313, ptr noundef nonnull %1107, ptr noundef nonnull %1106) #32
  %1184 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.2.337) #34
  store ptr %1184, ptr @dictf, align 8, !tbaa !7
  %1185 = icmp eq ptr %1184, null
  br i1 %1185, label %1192, label %1186

1186:                                             ; preds = %1182, %1178
  %1187 = phi ptr [ %1180, %1178 ], [ %1184, %1182 ]
  tail call fastcc void @treeload(ptr noundef nonnull %1187) #34
  %1188 = load ptr, ptr @dictf, align 8, !tbaa !7
  %1189 = tail call i32 @fclose(ptr noundef %1188) #34
  %1190 = load ptr, ptr @dictf, align 8, !tbaa !7
  %1191 = icmp eq ptr %1190, null
  br i1 %1191, label %1192, label %1195

1192:                                             ; preds = %1186, %1182
  %1193 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1193, ptr noundef nonnull @.str.9.314, ptr noundef nonnull %1106) #36
  tail call void @perror(ptr noundef nonnull @.str.10.315) #36
  br label %1212

1195:                                             ; preds = %1186, %1175, %1171, %1160, %1158
  %1196 = load i32, ptr @lflag, align 4, !tbaa !11
  %1197 = icmp ne i32 %1196, 0
  %1198 = load i32, ptr @aflag, align 4
  %1199 = icmp ne i32 %1198, 0
  %1200 = select i1 %1197, i1 true, i1 %1199
  br i1 %1200, label %1212, label %1201

1201:                                             ; preds = %1195
  %1202 = tail call i32 @access(ptr noundef nonnull @personaldict, i32 noundef 2) #32
  %1203 = icmp slt i32 %1202, 0
  br i1 %1203, label %1204, label %1212

1204:                                             ; preds = %1201
  %1205 = tail call ptr @__errno_location() #41
  %1206 = load i32, ptr %1205, align 4, !tbaa !11
  %1207 = icmp eq i32 %1206, 2
  br i1 %1207, label %1212, label %1208

1208:                                             ; preds = %1204
  %1209 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1209, ptr noundef nonnull @.str.11.316, ptr noundef nonnull @personaldict) #36
  %1211 = tail call i32 @sleep(i32 noundef 2) #32
  br label %1212

1212:                                             ; preds = %1208, %1204, %1201, %1195, %1192, %1105
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #40
  br label %1213

1213:                                             ; preds = %1212, %1097
  %1214 = load i32, ptr @aflag, align 4, !tbaa !11
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1217, label %1216

1216:                                             ; preds = %1213
  tail call fastcc void @askmode() #32
  tail call fastcc void @treeoutput() #32
  tail call void @exit(i32 noundef 0) #35
  unreachable

1217:                                             ; preds = %1213
  %1218 = load i32, ptr @eflag, align 4, !tbaa !11
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1221, label %1220

1220:                                             ; preds = %1217
  tail call fastcc void @expandmode(i32 noundef %1218) #34
  tail call void @exit(i32 noundef 0) #35
  unreachable

1221:                                             ; preds = %1217
  %1222 = load i32, ptr @dumpflag, align 4, !tbaa !11
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1225, label %1224

1224:                                             ; preds = %1221
  tail call fastcc void @dumpmode() #32
  tail call void @exit(i32 noundef 0) #35
  unreachable

1225:                                             ; preds = %1221
  %1226 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @setbuf(ptr noundef %1226, ptr noundef nonnull @main.outbuf) #32
  %1227 = load i32, ptr @lflag, align 4, !tbaa !11
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1232, label %1229

1229:                                             ; preds = %1225
  %1230 = load ptr, ptr @stdin, align 8, !tbaa !7
  store ptr %1230, ptr @infile, align 8, !tbaa !7
  %1231 = load ptr, ptr @stdout, align 8, !tbaa !7
  store ptr %1231, ptr @outfile, align 8, !tbaa !7
  tail call fastcc void @checkfile() #32
  tail call void @exit(i32 noundef 0) #35
  unreachable

1232:                                             ; preds = %1225
  tail call fastcc void @terminit() #32
  %1233 = icmp eq i32 %427, 0
  br i1 %1233, label %1369, label %1234

1234:                                             ; preds = %1232
  %1235 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  %1236 = ptrtoint ptr %4 to i64
  br label %1237

1237:                                             ; preds = %1367, %1234
  %1238 = phi i32 [ %427, %1234 ], [ %1240, %1367 ]
  %1239 = phi ptr [ %426, %1234 ], [ %1241, %1367 ]
  %1240 = add nsw i32 %1238, -1
  %1241 = getelementptr inbounds ptr, ptr %1239, i64 1
  %1242 = load ptr, ptr %1239, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #40
  store ptr %1242, ptr @currentfile, align 8, !tbaa !7
  %1243 = load i32, ptr @deftflag, align 4, !tbaa !11
  store i32 %1243, ptr @tflag, align 4, !tbaa !11
  %1244 = icmp slt i32 %1243, 0
  br i1 %1244, label %1245, label %1254

1245:                                             ; preds = %1237
  %1246 = call ptr @rindex(ptr noundef %1242, i32 noundef 46) #33
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1252, label %1248

1248:                                             ; preds = %1245
  %1249 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1246, ptr noundef nonnull dereferenceable(5) @.str.176) #33
  %1250 = icmp eq i32 %1249, 0
  %1251 = zext i1 %1250 to i32
  br label %1252

1252:                                             ; preds = %1248, %1245
  %1253 = phi i32 [ 0, %1245 ], [ %1251, %1248 ]
  store i32 %1253, ptr @tflag, align 4, !tbaa !11
  br label %1254

1254:                                             ; preds = %1252, %1237
  %1255 = load i32, ptr @prefstringchar, align 4, !tbaa !11
  %1256 = icmp slt i32 %1255, 0
  br i1 %1256, label %1257, label %1261

1257:                                             ; preds = %1254
  %1258 = select i1 %1244, ptr @tflag, ptr null
  %1259 = call fastcc i32 @findfiletype(ptr noundef %1242, i32 noundef 0, ptr noundef %1258) #32
  %1260 = call i32 @llvm.smax.i32(i32 %1259, i32 0)
  store i32 %1260, ptr @defdupchar, align 4
  br label %1261

1261:                                             ; preds = %1257, %1254
  %1262 = call noalias ptr @fopen(ptr noundef %1242, ptr noundef nonnull @.str.2.337) #34
  store ptr %1262, ptr @infile, align 8, !tbaa !7
  %1263 = icmp eq ptr %1262, null
  br i1 %1263, label %1264, label %1268

1264:                                             ; preds = %1261
  %1265 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1266 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1265, ptr noundef nonnull @.str.9.314, ptr noundef %1242) #36
  %1267 = call i32 @sleep(i32 noundef 2) #32
  br label %1367

1268:                                             ; preds = %1261
  %1269 = call i32 @access(ptr noundef %1242, i32 noundef 2) #32
  %1270 = icmp slt i32 %1269, 0
  %1271 = lshr i32 %1269, 31
  store i32 %1271, ptr @readonly, align 4, !tbaa !11
  br i1 %1270, label %1272, label %1276

1272:                                             ; preds = %1268
  %1273 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1274 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1273, ptr noundef nonnull @.str.179, ptr noundef %1242) #36
  %1275 = call i32 @sleep(i32 noundef 2) #32
  br label %1276

1276:                                             ; preds = %1272, %1268
  %1277 = load ptr, ptr @infile, align 8, !tbaa !7
  %1278 = call i32 @fileno(ptr noundef %1277) #32
  %1279 = call i32 @fstat(i32 noundef %1278, ptr noundef nonnull %5) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) @tempfile, ptr noundef nonnull align 1 dereferenceable(18) @.str.115, i64 18, i1 false) #32
  %1280 = call ptr @mktemp(ptr noundef nonnull @tempfile) #32
  %1281 = icmp eq ptr %1280, null
  %1282 = load i8, ptr @tempfile, align 16
  %1283 = icmp eq i8 %1282, 0
  %1284 = select i1 %1281, i1 true, i1 %1283
  br i1 %1284, label %1290, label %1285

1285:                                             ; preds = %1276
  %1286 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.14.328) #34
  store ptr %1286, ptr @outfile, align 8, !tbaa !7
  %1287 = icmp eq ptr %1286, null
  br i1 %1287, label %1288, label %1297

1288:                                             ; preds = %1285
  %1289 = load i8, ptr @tempfile, align 16, !tbaa !13
  br label %1290

1290:                                             ; preds = %1288, %1276
  %1291 = phi i8 [ %1289, %1288 ], [ %1282, %1276 ]
  %1292 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1293 = icmp eq i8 %1291, 0
  %1294 = select i1 %1293, ptr @.str.182, ptr @tempfile
  %1295 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1292, ptr noundef nonnull @.str.15.329, ptr noundef nonnull %1294) #36
  %1296 = call i32 @sleep(i32 noundef 2) #32
  br label %1367

1297:                                             ; preds = %1285
  %1298 = load i32, ptr %1235, align 8, !tbaa !58
  %1299 = call i32 @chmod(ptr noundef nonnull @tempfile, i32 noundef %1298) #32
  store i1 false, ptr @quit, align 4
  store i1 false, ptr @changes, align 4
  call fastcc void @checkfile() #32
  %1300 = load ptr, ptr @infile, align 8, !tbaa !7
  %1301 = call i32 @fclose(ptr noundef %1300) #34
  %1302 = load ptr, ptr @outfile, align 8, !tbaa !7
  %1303 = call i32 @fclose(ptr noundef %1302) #34
  %1304 = load i32, ptr @cflag, align 4, !tbaa !11
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1306, label %1307

1306:                                             ; preds = %1297
  call fastcc void @treeoutput() #32
  br label %1307

1307:                                             ; preds = %1306, %1297
  %1308 = load i1, ptr @changes, align 4
  %1309 = load i32, ptr @readonly, align 4
  %1310 = icmp eq i32 %1309, 0
  %1311 = select i1 %1308, i1 %1310, i1 false
  br i1 %1311, label %1312, label %1365

1312:                                             ; preds = %1307
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #40
  %1313 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.2.337) #34
  store ptr %1313, ptr @infile, align 8, !tbaa !7
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1315, label %1319

1315:                                             ; preds = %1312
  %1316 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1316, ptr noundef nonnull @.str.183, ptr noundef nonnull @tempfile) #36
  %1318 = call i32 @sleep(i32 noundef 2) #32
  br label %1364

1319:                                             ; preds = %1312
  %1320 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.184, i32 noundef 4091, ptr noundef %1242, ptr noundef nonnull @.str.10.85) #32
  %1321 = call ptr @rindex(ptr noundef nonnull %4, i32 noundef 47) #33
  %1322 = icmp eq ptr %1321, null
  %1323 = getelementptr inbounds i8, ptr %1321, i64 1
  %1324 = select i1 %1322, ptr %4, ptr %1323
  %1325 = ptrtoint ptr %1324 to i64
  %1326 = sub i64 %1325, %1236
  %1327 = add nsw i64 %1326, 255
  %1328 = call i32 @strncmp(ptr noundef %1242, ptr noundef nonnull %4, i64 noundef %1327) #33
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1332, label %1330

1330:                                             ; preds = %1319
  %1331 = call i32 @unlink(ptr noundef nonnull %4) #32
  br label %1332

1332:                                             ; preds = %1330, %1319
  %1333 = call i32 @link(ptr noundef %1242, ptr noundef nonnull %4) #32
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1335, label %1337

1335:                                             ; preds = %1332
  %1336 = call i32 @unlink(ptr noundef %1242) #32
  br label %1337

1337:                                             ; preds = %1335, %1332
  %1338 = call noalias ptr @fopen(ptr noundef %1242, ptr noundef nonnull @.str.14.328) #34
  store ptr %1338, ptr @outfile, align 8, !tbaa !7
  %1339 = icmp eq ptr %1338, null
  br i1 %1339, label %1340, label %1344

1340:                                             ; preds = %1337
  %1341 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1342 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1341, ptr noundef nonnull @.str.15.329, ptr noundef %1242) #36
  %1343 = call i32 @sleep(i32 noundef 2) #32
  br label %1364

1344:                                             ; preds = %1337
  %1345 = call i32 @chmod(ptr noundef %1242, i32 noundef %1298) #32
  br label %1346

1346:                                             ; preds = %1350, %1344
  %1347 = load ptr, ptr @infile, align 8, !tbaa !7
  %1348 = call i32 @getc(ptr noundef %1347) #34
  %1349 = icmp eq i32 %1348, -1
  br i1 %1349, label %1353, label %1350

1350:                                             ; preds = %1346
  %1351 = load ptr, ptr @outfile, align 8, !tbaa !7
  %1352 = call i32 @putc(i32 noundef %1348, ptr noundef %1351) #34
  br label %1346, !llvm.loop !62

1353:                                             ; preds = %1346
  %1354 = load ptr, ptr @infile, align 8, !tbaa !7
  %1355 = call i32 @fclose(ptr noundef %1354) #34
  %1356 = load ptr, ptr @outfile, align 8, !tbaa !7
  %1357 = call i32 @fclose(ptr noundef %1356) #34
  %1358 = load i1, ptr @xflag, align 4
  br i1 %1358, label %1359, label %1364

1359:                                             ; preds = %1353
  %1360 = call i32 @strncmp(ptr noundef %1242, ptr noundef nonnull %4, i64 noundef %1327) #33
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1364, label %1362

1362:                                             ; preds = %1359
  %1363 = call i32 @unlink(ptr noundef nonnull %4) #32
  br label %1364

1364:                                             ; preds = %1362, %1359, %1353, %1340, %1315
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #40
  br label %1365

1365:                                             ; preds = %1364, %1307
  %1366 = call i32 @unlink(ptr noundef nonnull @tempfile) #32
  br label %1367

1367:                                             ; preds = %1365, %1290, %1264
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #40
  %1368 = icmp eq i32 %1240, 0
  br i1 %1368, label %1369, label %1237, !llvm.loop !63

1369:                                             ; preds = %1367, %1232
  call void @done(i32 poison) #32
  unreachable
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare ptr @rindex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @usage() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef %2) #36
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.133, ptr noundef %5) #36
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.134, ptr noundef %8) #36
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.135, ptr noundef %11) #36
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.136, ptr noundef %14) #36
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.137, ptr noundef %17) #36
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.138, ptr noundef %20) #36
  tail call fastcc void @givehelp(i32 noundef 0) #32
  tail call void @exit(i32 noundef 1) #35
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @findfiletype(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #15 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %1, 0
  %7 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !45
  br i1 %6, label %27, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %72

10:                                               ; preds = %8
  %11 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %12 = zext i32 %7 to i64
  br label %13

13:                                               ; preds = %24, %10
  %14 = phi i64 [ 0, %10 ], [ %25, %24 ]
  %15 = getelementptr inbounds %struct.success, ptr %11, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %16) #33
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %.lcssa1 = phi i64 [ %14, %13 ]
  %20 = trunc i64 %.lcssa1 to i32
  %21 = icmp eq ptr %2, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.success, ptr %11, i64 %.lcssa1, i32 1
  br label %65

24:                                               ; preds = %13
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %27, label %13, !llvm.loop !64

27:                                               ; preds = %24, %3
  %28 = icmp sgt i32 %7, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %27
  %30 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %31 = zext i32 %7 to i64
  br label %32

32:                                               ; preds = %62, %29
  %33 = phi i64 [ 0, %29 ], [ %63, %62 ]
  %34 = getelementptr inbounds %struct.success, ptr %30, i64 %33, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !50
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %55, %32
  %39 = phi ptr [ %59, %55 ], [ %35, %32 ]
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #33
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %5, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = sub i64 %4, %40
  %45 = shl i64 %44, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %39) #33
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %.lcssa = phi i64 [ %33, %43 ]
  %51 = trunc i64 %.lcssa to i32
  %52 = icmp eq ptr %2, null
  br i1 %52, label %72, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.success, ptr %30, i64 %.lcssa, i32 1
  br label %65

55:                                               ; preds = %43, %38
  %56 = shl i64 %40, 32
  %57 = add i64 %56, 4294967296
  %58 = ashr exact i64 %57, 32
  %59 = getelementptr inbounds i8, ptr %39, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %38, !llvm.loop !65

62:                                               ; preds = %55, %32
  %63 = add nuw nsw i64 %33, 1
  %64 = icmp eq i64 %63, %31
  br i1 %64, label %72, label %32, !llvm.loop !66

65:                                               ; preds = %53, %22
  %66 = phi ptr [ %54, %53 ], [ %23, %22 ]
  %67 = phi i32 [ %51, %53 ], [ %20, %22 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !49
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(4) @.str.5.270) #33
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, ptr %2, align 4, !tbaa !11
  br label %72

72:                                               ; preds = %65, %62, %50, %27, %19, %8
  %73 = phi i32 [ %20, %19 ], [ %51, %50 ], [ -1, %27 ], [ -1, %8 ], [ %67, %65 ], [ -1, %62 ]
  ret i32 %73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #17

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #17

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @trydict(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #19 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.16.323, ptr noundef nonnull @.str.2.309, ptr noundef %2) #32
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.4.308, ptr noundef nonnull %1, ptr noundef nonnull @.str.2.309, ptr noundef %2) #32
  br label %9

9:                                                ; preds = %7, %5
  %10 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2.337) #34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8 0, ptr %0, align 1, !tbaa !13
  br label %13

13:                                               ; preds = %12, %9
  ret ptr %10
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @treeload(ptr nocapture noundef %0) unnamed_addr #20 {
  %2 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #40
  br label %3

3:                                                ; preds = %6, %1
  %4 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %0) #34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  call fastcc void @treeinsert(ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1) #34
  br label %3, !llvm.loop !67

7:                                                ; preds = %3
  store i32 0, ptr @newwords, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #40
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

; Function Attrs: optsize
declare i32 @sleep(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @askmode() unnamed_addr #20 {
  %1 = load i32, ptr @fflag, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %5 = load ptr, ptr @stdout, align 8, !tbaa !7
  %6 = tail call ptr @freopen(ptr noundef %4, ptr noundef nonnull @.str.14.328, ptr noundef %5) #32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.15.329, ptr noundef %10) #36
  tail call void @exit(i32 noundef 1) #35
  unreachable

12:                                               ; preds = %3, %0
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.139)
  store i32 0, ptr @contextoffset, align 4, !tbaa !11
  br label %14

14:                                               ; preds = %142, %12
  %15 = load ptr, ptr @stdout, align 8, !tbaa !7
  %16 = tail call i32 @fflush(ptr noundef %15) #34
  %17 = load i32, ptr @contextoffset, align 4, !tbaa !11
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr @stdin, align 8, !tbaa !7
  br i1 %18, label %20, label %23

20:                                               ; preds = %14
  %21 = tail call fastcc ptr @xgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %19) #32
  %22 = icmp eq ptr %21, null
  br i1 %22, label %143, label %26

23:                                               ; preds = %14
  %24 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %19) #34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %143, label %26

26:                                               ; preds = %23, %20
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #33
  %28 = trunc i64 %27 to i32
  %29 = shl i64 %27, 32
  %30 = add i64 %29, -4294967296
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = icmp eq i8 %33, 10
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = add nsw i32 %28, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %37
  store i8 0, ptr %38, align 1, !tbaa !13
  br label %39

39:                                               ; preds = %35, %26
  %40 = phi i32 [ %36, %35 ], [ %28, %26 ]
  %41 = icmp eq i32 %40, 4095
  br i1 %41, label %42, label %75

42:                                               ; preds = %39
  %43 = load i8, ptr getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 4094), align 2, !tbaa !13
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %65, %42
  %46 = phi i64 [ 4095, %42 ], [ %67, %65 ]
  %47 = phi i32 [ %44, %42 ], [ %63, %65 ]
  %48 = and i32 %47, 255
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %49
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %49
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57, %53, %45
  %62 = load ptr, ptr @stdin, align 8, !tbaa !7
  %63 = tail call i32 @getc(ptr noundef %62) #34
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = trunc i32 %63 to i8
  %67 = add nuw nsw i64 %46, 1
  %68 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %46
  store i8 %66, ptr %68, align 1, !tbaa !13
  %69 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %67
  store i8 0, ptr %69, align 1, !tbaa !13
  %70 = icmp eq i64 %67, 8191
  br i1 %70, label %75, label %45, !llvm.loop !68

71:                                               ; preds = %61
  %.lcssa1 = phi i64 [ %46, %61 ]
  %72 = trunc i64 %.lcssa1 to i32
  br label %75

73:                                               ; preds = %57
  %.lcssa = phi i64 [ %46, %57 ]
  %74 = trunc i64 %.lcssa to i32
  br label %75

75:                                               ; preds = %73, %71, %65, %39
  %76 = phi i32 [ %40, %39 ], [ %72, %71 ], [ %74, %73 ], [ 8191, %65 ]
  %77 = load i32, ptr @contextoffset, align 4, !tbaa !11
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call fastcc void @checkline(ptr noundef %80) #32
  br label %128

81:                                               ; preds = %75
  %82 = load i8, ptr @contextbufs, align 16
  switch i8 %82, label %125 [
    i8 64, label %83
    i8 42, label %83
    i8 38, label %87
    i8 35, label %100
    i8 33, label %101
    i8 37, label %102
    i8 45, label %103
    i8 43, label %104
    i8 126, label %113
    i8 94, label %116
  ]

83:                                               ; preds = %81, %81
  tail call fastcc void @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #32
  tail call fastcc void @ichartosstr(ptr noundef nonnull @strtosichar.out, i32 noundef 1) #32
  %84 = load i8, ptr @contextbufs, align 16, !tbaa !13
  %85 = icmp eq i8 %84, 42
  %86 = zext i1 %85 to i32
  tail call fastcc void @treeinsert(ptr noundef nonnull @ichartosstr.out, i32 noundef 184, i32 noundef %86) #32
  br label %128

87:                                               ; preds = %81
  tail call fastcc void @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #32
  %88 = load i8, ptr @strtosichar.out, align 16, !tbaa !13
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %90, %87
  %91 = phi i8 [ %97, %90 ], [ %88, %87 ]
  %92 = phi ptr [ %96, %90 ], [ @strtosichar.out, %87 ]
  %93 = zext i8 %91 to i64
  %94 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !13
  store i8 %95, ptr %92, align 1, !tbaa !13
  %96 = getelementptr inbounds i8, ptr %92, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !13
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %90, !llvm.loop !69

99:                                               ; preds = %90, %87
  tail call fastcc void @ichartosstr(ptr noundef nonnull @strtosichar.out, i32 noundef 1) #32
  tail call fastcc void @treeinsert(ptr noundef nonnull @ichartosstr.out, i32 noundef 184, i32 noundef 1) #32
  br label %128

100:                                              ; preds = %81
  tail call fastcc void @treeoutput() #32
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %128

101:                                              ; preds = %81
  store i1 true, ptr @terse, align 4
  br label %128

102:                                              ; preds = %81
  store i1 false, ptr @terse, align 4
  br label %128

103:                                              ; preds = %81
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i32 0, ptr @tflag, align 4, !tbaa !11
  br label %128

104:                                              ; preds = %81
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  %105 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.127, i64 6)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.42, i64 6)
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ false, %104 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  store i32 %112, ptr @tflag, align 4, !tbaa !11
  br label %128

113:                                              ; preds = %81
  %114 = tail call fastcc i32 @findfiletype(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 1, ptr noundef null) #32
  %115 = tail call i32 @llvm.smax.i32(i32 %114, i32 0)
  store i32 %115, ptr @defdupchar, align 4
  br label %128

116:                                              ; preds = %116, %81
  %117 = phi ptr [ %121, %116 ], [ @contextbufs, %81 ]
  %118 = phi ptr [ %119, %116 ], [ getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), %81 ]
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = load i8, ptr %118, align 1, !tbaa !13
  %121 = getelementptr inbounds i8, ptr %117, i64 1
  store i8 %120, ptr %117, align 1, !tbaa !13
  %122 = icmp eq i8 %120, 0
  br i1 %122, label %123, label %116, !llvm.loop !70

123:                                              ; preds = %116
  store i32 1, ptr @contextoffset, align 4, !tbaa !11
  %124 = add nsw i32 %76, -1
  br label %125

125:                                              ; preds = %123, %81
  %126 = phi i32 [ %124, %123 ], [ %76, %81 ]
  %127 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call fastcc void @checkline(ptr noundef %127) #32
  br label %128

128:                                              ; preds = %125, %113, %110, %103, %102, %101, %100, %99, %83, %79
  %129 = phi i32 [ %76, %79 ], [ %76, %83 ], [ %76, %99 ], [ %76, %100 ], [ %76, %101 ], [ %76, %102 ], [ %76, %103 ], [ %76, %110 ], [ %76, %113 ], [ %126, %125 ]
  %130 = load i32, ptr @contextoffset, align 4
  %131 = add nsw i32 %130, %129
  %132 = select i1 %34, i32 0, i32 %131
  store i32 %132, ptr @contextoffset, align 4, !tbaa !11
  %133 = load i32, ptr @sflag, align 4, !tbaa !11
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %128
  tail call void @onstop(i32 noundef 20) #34
  %136 = load i32, ptr @fflag, align 4, !tbaa !11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @rewind(ptr noundef %139) #34
  %140 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %141 = tail call i32 @creat(ptr noundef %140, i32 noundef 438) #32
  br label %142

142:                                              ; preds = %138, %135, %128
  br label %14

143:                                              ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @treeoutput() unnamed_addr #20 {
  %1 = load i32, ptr @newwords, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %202, label %3

3:                                                ; preds = %0
  %4 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.14.328) #34
  store ptr %4, ptr @dictf, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.15.329, ptr noundef nonnull @personaldict) #36
  br label %202

9:                                                ; preds = %3
  %10 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %11 = load i1, ptr @pershsize, align 4
  %12 = select i1 %11, i64 53, i64 0
  %13 = getelementptr inbounds %struct.dent, ptr %10, i64 %12
  br i1 %11, label %14, label %44

14:                                               ; preds = %40, %9
  %15 = phi i32 [ %41, %40 ], [ 0, %9 ]
  %16 = phi ptr [ %42, %40 ], [ %10, %9 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %36, %14
  %19 = phi i32 [ %26, %36 ], [ %15, %14 ]
  %20 = phi ptr [ %38, %36 ], [ %16, %14 ]
  %21 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !71
  %23 = and i64 %22, 201326592
  %24 = icmp eq i64 %23, 201326592
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 %19, %25
  %27 = and i64 %22, 1073741824
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %29, %18
  %30 = phi ptr [ %31, %29 ], [ %20, %18 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.dent, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !71
  %34 = and i64 %33, 1073741824
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %29, !llvm.loop !72

36:                                               ; preds = %29, %18
  %37 = phi ptr [ %20, %18 ], [ %31, %29 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %18, !llvm.loop !73

40:                                               ; preds = %36, %14
  %41 = phi i32 [ %15, %14 ], [ %26, %36 ]
  %42 = getelementptr inbounds %struct.dent, ptr %16, i64 1
  %43 = icmp ult ptr %42, %13
  br i1 %43, label %14, label %44, !llvm.loop !74

44:                                               ; preds = %40, %9
  %45 = phi i32 [ 0, %9 ], [ %41, %40 ]
  %46 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %47 = load i32, ptr @hashsize, align 4, !tbaa !11
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dent, ptr %46, i64 %48
  %50 = icmp sgt i32 %47, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %67, %44
  %52 = phi i32 [ %68, %67 ], [ %45, %44 ]
  %53 = phi ptr [ %69, %67 ], [ %46, %44 ]
  %54 = getelementptr inbounds %struct.dent, ptr %53, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !71
  %56 = and i64 %55, 201326592
  %57 = icmp ne i64 %56, 201326592
  %58 = and i64 %55, 805306368
  %59 = icmp eq i64 %58, 805306368
  %60 = or i1 %57, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.dent, ptr %53, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !28
  %64 = icmp ne ptr %63, null
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %52, %65
  br label %67

67:                                               ; preds = %61, %51
  %68 = phi i32 [ %52, %51 ], [ %66, %61 ]
  %69 = getelementptr inbounds %struct.dent, ptr %53, i64 1
  %70 = icmp ult ptr %69, %49
  br i1 %70, label %51, label %71, !llvm.loop !75

71:                                               ; preds = %67, %44
  %72 = phi i32 [ %45, %44 ], [ %68, %67 ]
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, 24
  %75 = tail call noalias ptr @malloc(i64 noundef %74) #39
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br i1 %11, label %135, label %166

78:                                               ; preds = %71
  br i1 %11, label %79, label %111

79:                                               ; preds = %104, %78
  %80 = phi ptr [ %105, %104 ], [ %10, %78 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %104, label %82

82:                                               ; preds = %100, %79
  %83 = phi ptr [ %102, %100 ], [ %80, %79 ]
  %84 = getelementptr inbounds %struct.dent, ptr %83, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !71
  %86 = and i64 %85, 201326592
  %87 = icmp eq i64 %86, 201326592
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load ptr, ptr @dictf, align 8, !tbaa !7
  tail call fastcc void @toutent(ptr noundef %89, ptr noundef nonnull %83) #32
  %90 = load i64, ptr %84, align 8, !tbaa !71
  %91 = and i64 %90, 1073741824
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %93, %88
  %94 = phi ptr [ %95, %93 ], [ %83, %88 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !30
  %96 = getelementptr inbounds %struct.dent, ptr %95, i64 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !71
  %98 = and i64 %97, 1073741824
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %93, !llvm.loop !76

100:                                              ; preds = %93, %88, %82
  %101 = phi ptr [ %83, %82 ], [ %83, %88 ], [ %95, %93 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !30
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %82, !llvm.loop !77

104:                                              ; preds = %100, %79
  %105 = getelementptr inbounds %struct.dent, ptr %80, i64 1
  %106 = icmp ult ptr %105, %13
  br i1 %106, label %79, label %107, !llvm.loop !78

107:                                              ; preds = %104
  %108 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %109 = load i32, ptr @hashsize, align 4, !tbaa !11
  %110 = sext i32 %109 to i64
  br label %111

111:                                              ; preds = %107, %78
  %112 = phi i64 [ %110, %107 ], [ %48, %78 ]
  %113 = phi i32 [ %109, %107 ], [ %47, %78 ]
  %114 = phi ptr [ %108, %107 ], [ %46, %78 ]
  %115 = getelementptr inbounds %struct.dent, ptr %114, i64 %112
  %116 = icmp sgt i32 %113, 0
  br i1 %116, label %117, label %202

117:                                              ; preds = %132, %111
  %118 = phi ptr [ %133, %132 ], [ %114, %111 ]
  %119 = getelementptr inbounds %struct.dent, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !71
  %121 = and i64 %120, 201326592
  %122 = icmp ne i64 %121, 201326592
  %123 = and i64 %120, 805306368
  %124 = icmp eq i64 %123, 805306368
  %125 = or i1 %122, %124
  br i1 %125, label %132, label %126

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.dent, ptr %118, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !28
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr @dictf, align 8, !tbaa !7
  tail call fastcc void @toutent(ptr noundef %131, ptr noundef nonnull %118) #32
  br label %132

132:                                              ; preds = %130, %126, %117
  %133 = getelementptr inbounds %struct.dent, ptr %118, i64 1
  %134 = icmp ult ptr %133, %115
  br i1 %134, label %117, label %202, !llvm.loop !79

135:                                              ; preds = %162, %77
  %136 = phi ptr [ %163, %162 ], [ %75, %77 ]
  %137 = phi ptr [ %164, %162 ], [ %10, %77 ]
  %138 = icmp eq ptr %137, null
  br i1 %138, label %162, label %139

139:                                              ; preds = %157, %135
  %140 = phi ptr [ %159, %157 ], [ %136, %135 ]
  %141 = phi ptr [ %160, %157 ], [ %137, %135 ]
  %142 = getelementptr inbounds %struct.dent, ptr %141, i64 0, i32 2
  %143 = load i64, ptr %142, align 8, !tbaa !71
  %144 = and i64 %143, 201326592
  %145 = icmp eq i64 %144, 201326592
  br i1 %145, label %146, label %157

146:                                              ; preds = %139
  %147 = getelementptr inbounds ptr, ptr %140, i64 1
  store ptr %141, ptr %140, align 8, !tbaa !7
  %148 = and i64 %143, 1073741824
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %150, %146
  %151 = phi ptr [ %152, %150 ], [ %141, %146 ]
  %152 = load ptr, ptr %151, align 8, !tbaa !30
  %153 = getelementptr inbounds %struct.dent, ptr %152, i64 0, i32 2
  %154 = load i64, ptr %153, align 8, !tbaa !71
  %155 = and i64 %154, 1073741824
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %150, !llvm.loop !80

157:                                              ; preds = %150, %146, %139
  %158 = phi ptr [ %141, %139 ], [ %141, %146 ], [ %152, %150 ]
  %159 = phi ptr [ %140, %139 ], [ %147, %146 ], [ %147, %150 ]
  %160 = load ptr, ptr %158, align 8, !tbaa !30
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %139, !llvm.loop !81

162:                                              ; preds = %157, %135
  %163 = phi ptr [ %136, %135 ], [ %159, %157 ]
  %164 = getelementptr inbounds %struct.dent, ptr %137, i64 1
  %165 = icmp ult ptr %164, %13
  br i1 %165, label %135, label %166, !llvm.loop !82

166:                                              ; preds = %162, %77
  %167 = phi ptr [ %75, %77 ], [ %163, %162 ]
  br i1 %50, label %168, label %188

168:                                              ; preds = %184, %166
  %169 = phi ptr [ %185, %184 ], [ %167, %166 ]
  %170 = phi ptr [ %186, %184 ], [ %46, %166 ]
  %171 = getelementptr inbounds %struct.dent, ptr %170, i64 0, i32 2
  %172 = load i64, ptr %171, align 8, !tbaa !71
  %173 = and i64 %172, 201326592
  %174 = icmp ne i64 %173, 201326592
  %175 = and i64 %172, 805306368
  %176 = icmp eq i64 %175, 805306368
  %177 = or i1 %174, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %168
  %179 = getelementptr inbounds %struct.dent, ptr %170, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !28
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds ptr, ptr %169, i64 1
  store ptr %170, ptr %169, align 8, !tbaa !7
  br label %184

184:                                              ; preds = %182, %178, %168
  %185 = phi ptr [ %183, %182 ], [ %169, %178 ], [ %169, %168 ]
  %186 = getelementptr inbounds %struct.dent, ptr %170, i64 1
  %187 = icmp ult ptr %186, %49
  br i1 %187, label %168, label %188, !llvm.loop !83

188:                                              ; preds = %184, %166
  %189 = zext i32 %72 to i64
  tail call void @qsort(ptr noundef nonnull %75, i64 noundef %189, i64 noundef 8, ptr noundef nonnull @pdictcmp) #32
  %190 = icmp sgt i32 %72, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %191, %188
  %192 = phi ptr [ %196, %191 ], [ %75, %188 ]
  %193 = phi i32 [ %194, %191 ], [ %72, %188 ]
  %194 = add nsw i32 %193, -1
  %195 = load ptr, ptr @dictf, align 8, !tbaa !7
  %196 = getelementptr inbounds ptr, ptr %192, i64 1
  %197 = load ptr, ptr %192, align 8, !tbaa !7
  tail call fastcc void @toutent(ptr noundef %195, ptr noundef %197) #32
  %198 = icmp ugt i32 %193, 1
  br i1 %198, label %191, label %199, !llvm.loop !84

199:                                              ; preds = %191, %188
  tail call void @free(ptr noundef %75) #32
  store i32 0, ptr @newwords, align 4, !tbaa !11
  %200 = load ptr, ptr @dictf, align 8, !tbaa !7
  %201 = tail call i32 @fclose(ptr noundef %200) #34
  br label %202

202:                                              ; preds = %199, %132, %111, %6, %0
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @expandmode(i32 noundef %0) unnamed_addr #19 {
  %2 = alloca [8192 x i8], align 16
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #40
  %7 = ptrtoint ptr %2 to i64
  %8 = icmp eq i32 %0, 4
  %9 = add nsw i32 %0, -2
  %10 = icmp ult i32 %9, 3
  %11 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 100
  br label %12

12:                                               ; preds = %108, %1
  %13 = load ptr, ptr @stdin, align 8, !tbaa !7
  %14 = call fastcc ptr @xgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %13) #32
  %15 = icmp eq ptr %14, null
  br i1 %15, label %110, label %16

16:                                               ; preds = %12
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #33
  %18 = trunc i64 %17 to i32
  %19 = shl i64 %17, 32
  %20 = add i64 %19, -4294967296
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = icmp eq i8 %23, 10
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = add nsw i32 %18, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !13
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %26, %25 ], [ %18, %16 ]
  %31 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %2) #32
  %32 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !85
  %33 = sext i8 %32 to i32
  %34 = call ptr @index(ptr noundef nonnull %2, i32 noundef %33) #33
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = ptrtoint ptr %34 to i64
  %38 = sub i64 %37, %7
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 0, ptr %34, align 1, !tbaa !13
  br label %41

41:                                               ; preds = %36, %29
  %42 = phi ptr [ %40, %36 ], [ null, %29 ]
  %43 = phi i32 [ %39, %36 ], [ %30, %29 ]
  br i1 %10, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.185, ptr noundef nonnull %5) #34
  br label %46

46:                                               ; preds = %44, %41
  %47 = icmp eq ptr %42, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %46
  %49 = ptrtoint ptr %42 to i64
  %50 = sub i64 %49, %7
  %51 = icmp sgt i64 %50, 100
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  store i8 0, ptr %11, align 4, !tbaa !13
  br label %61

53:                                               ; preds = %46
  %54 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #33
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 99
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8 0, ptr %11, align 4, !tbaa !13
  br label %58

58:                                               ; preds = %57, %53
  %59 = load ptr, ptr @stdout, align 8, !tbaa !7
  %60 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %59) #34
  br label %108

61:                                               ; preds = %52, %48
  %62 = load ptr, ptr @stdout, align 8, !tbaa !7
  %63 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %62) #34
  store i64 0, ptr %4, align 8
  br label %64

64:                                               ; preds = %80, %61
  %65 = phi i64 [ 0, %61 ], [ %81, %80 ]
  %66 = phi ptr [ %42, %61 ], [ %87, %80 ]
  %67 = load i8, ptr %66, align 1, !tbaa !13
  switch i8 %67, label %68 [
    i8 0, label %88
    i8 10, label %88
  ]

68:                                               ; preds = %64
  %69 = zext i8 %67 to i32
  %70 = add i8 %67, -65
  %71 = icmp ult i8 %70, 27
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = add nsw i32 %69, -65
  %74 = zext i32 %73 to i64
  %75 = shl nuw nsw i64 1, %74
  %76 = or i64 %65, %75
  store i64 %76, ptr %4, align 8, !tbaa !71
  br label %80

77:                                               ; preds = %68
  %78 = load ptr, ptr @stderr, align 8, !tbaa !7
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.4.255, i32 noundef %69) #36
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi i64 [ %65, %77 ], [ %76, %72 ]
  %82 = getelementptr inbounds i8, ptr %66, i64 1
  %83 = load i8, ptr %82, align 1, !tbaa !13
  %84 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !85
  %85 = icmp eq i8 %83, %84
  %86 = getelementptr inbounds i8, ptr %66, i64 2
  %87 = select i1 %85, ptr %86, ptr %82
  br label %64, !llvm.loop !86

88:                                               ; preds = %64, %64
  %89 = call fastcc i32 @strtoichar(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1) #32, !range !87
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @stderr, align 8, !tbaa !7
  %93 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.17.321, ptr noundef nonnull %2, i32 noundef 997, ptr noundef nonnull @.str.188) #36
  br label %94

94:                                               ; preds = %91, %88
  %95 = call fastcc i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %0, ptr noundef nonnull @.str.10.315) #32
  %96 = call fastcc i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %0, ptr noundef nonnull @.str.10.315) #32
  br i1 %8, label %97, label %108

97:                                               ; preds = %94
  %98 = add i32 %95, %43
  %99 = add i32 %98, %96
  %100 = sitofp i32 %99 to double
  %101 = sitofp i32 %43 to double
  %102 = fdiv double %100, %101
  %103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.189, double noundef %102) #32
  %104 = load ptr, ptr @stdout, align 8, !tbaa !7
  %105 = call i32 @fputs(ptr noundef nonnull %6, ptr noundef %104) #34
  %106 = call fastcc i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull %6) #32
  %107 = call fastcc i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %6) #32
  br label %108

108:                                              ; preds = %97, %94, %58
  %109 = call i32 @putchar(i32 noundef 10) #34
  br label %12, !llvm.loop !88

110:                                              ; preds = %12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #40
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @dumpmode() unnamed_addr #19 {
  %1 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4
  %2 = sext i8 %1 to i32
  switch i8 %1, label %5 [
    i8 92, label %3
    i8 91, label %3
    i8 62, label %3
    i8 58, label %3
    i8 45, label %3
    i8 44, label %3
    i8 35, label %3
  ]

3:                                                ; preds = %0, %0, %0, %0, %0, %0, %0
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %2) #34
  br label %13

5:                                                ; preds = %0
  %6 = add i8 %1, -127
  %7 = icmp ult i8 %6, -95
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = and i32 %2, 255
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.61, i32 noundef %9) #34
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.62, i32 noundef %2) #34
  br label %13

13:                                               ; preds = %11, %8, %3
  %14 = load i32, ptr @numpflags, align 4, !tbaa !11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %18 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %19 = load i32, ptr @numpflags, align 4, !tbaa !11
  tail call fastcc void @tbldump(ptr noundef %18, i32 noundef %19) #34
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, ptr @numsflags, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  %25 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %26 = load i32, ptr @numsflags, align 4, !tbaa !11
  tail call fastcc void @tbldump(ptr noundef %25, i32 noundef %26) #34
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nofree nounwind optsize
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @checkfile() unnamed_addr #20 {
  %1 = load i32, ptr @contextsize, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %96

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = add nuw nsw i64 %4, 15
  %6 = and i64 %5, 8589934576
  %7 = add nsw i64 %4, -1
  %8 = insertelement <16 x i64> poison, i64 %7, i64 0
  %9 = shufflevector <16 x i64> %8, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %10

10:                                               ; preds = %92, %3
  %11 = phi i64 [ 0, %3 ], [ %93, %92 ]
  %12 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %3 ], [ %94, %92 ]
  %13 = icmp ule <16 x i64> %12, %9
  %14 = extractelement <16 x i1> %13, i64 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %11
  store i8 0, ptr %16, align 16, !tbaa !13
  br label %17

17:                                               ; preds = %15, %10
  %18 = extractelement <16 x i1> %13, i64 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = or i64 %11, 1
  %21 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %20
  store i8 0, ptr %21, align 16, !tbaa !13
  br label %22

22:                                               ; preds = %19, %17
  %23 = extractelement <16 x i1> %13, i64 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = or i64 %11, 2
  %26 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %25
  store i8 0, ptr %26, align 16, !tbaa !13
  br label %27

27:                                               ; preds = %24, %22
  %28 = extractelement <16 x i1> %13, i64 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = or i64 %11, 3
  %31 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %30
  store i8 0, ptr %31, align 16, !tbaa !13
  br label %32

32:                                               ; preds = %29, %27
  %33 = extractelement <16 x i1> %13, i64 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = or i64 %11, 4
  %36 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %35
  store i8 0, ptr %36, align 16, !tbaa !13
  br label %37

37:                                               ; preds = %34, %32
  %38 = extractelement <16 x i1> %13, i64 5
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = or i64 %11, 5
  %41 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %40
  store i8 0, ptr %41, align 16, !tbaa !13
  br label %42

42:                                               ; preds = %39, %37
  %43 = extractelement <16 x i1> %13, i64 6
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = or i64 %11, 6
  %46 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %45
  store i8 0, ptr %46, align 16, !tbaa !13
  br label %47

47:                                               ; preds = %44, %42
  %48 = extractelement <16 x i1> %13, i64 7
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = or i64 %11, 7
  %51 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %50
  store i8 0, ptr %51, align 16, !tbaa !13
  br label %52

52:                                               ; preds = %49, %47
  %53 = extractelement <16 x i1> %13, i64 8
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = or i64 %11, 8
  %56 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %55
  store i8 0, ptr %56, align 16, !tbaa !13
  br label %57

57:                                               ; preds = %54, %52
  %58 = extractelement <16 x i1> %13, i64 9
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = or i64 %11, 9
  %61 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %60
  store i8 0, ptr %61, align 16, !tbaa !13
  br label %62

62:                                               ; preds = %59, %57
  %63 = extractelement <16 x i1> %13, i64 10
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = or i64 %11, 10
  %66 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %65
  store i8 0, ptr %66, align 16, !tbaa !13
  br label %67

67:                                               ; preds = %64, %62
  %68 = extractelement <16 x i1> %13, i64 11
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = or i64 %11, 11
  %71 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %70
  store i8 0, ptr %71, align 16, !tbaa !13
  br label %72

72:                                               ; preds = %69, %67
  %73 = extractelement <16 x i1> %13, i64 12
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = or i64 %11, 12
  %76 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %75
  store i8 0, ptr %76, align 16, !tbaa !13
  br label %77

77:                                               ; preds = %74, %72
  %78 = extractelement <16 x i1> %13, i64 13
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = or i64 %11, 13
  %81 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %80
  store i8 0, ptr %81, align 16, !tbaa !13
  br label %82

82:                                               ; preds = %79, %77
  %83 = extractelement <16 x i1> %13, i64 14
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = or i64 %11, 14
  %86 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %85
  store i8 0, ptr %86, align 16, !tbaa !13
  br label %87

87:                                               ; preds = %84, %82
  %88 = extractelement <16 x i1> %13, i64 15
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = or i64 %11, 15
  %91 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %90
  store i8 0, ptr %91, align 16, !tbaa !13
  br label %92

92:                                               ; preds = %89, %87
  %93 = add nuw nsw i64 %11, 16
  %94 = add <16 x i64> %12, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %95 = icmp eq i64 %93, %6
  br i1 %95, label %96, label %10, !llvm.loop !89

96:                                               ; preds = %92, %0
  br label %97

97:                                               ; preds = %168, %96
  %98 = phi i32 [ %170, %168 ], [ %1, %96 ]
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %112

100:                                              ; preds = %97
  %101 = zext i32 %98 to i64
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i64 [ %101, %100 ], [ %104, %102 ]
  %104 = add nsw i64 %103, -1
  %105 = and i64 %104, 4294967295
  %106 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %105
  %107 = add nuw nsw i64 %103, 4294967294
  %108 = and i64 %107, 4294967295
  %109 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %108
  %110 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull dereferenceable(1) %109) #32
  %111 = icmp ugt i64 %103, 2
  br i1 %111, label %102, label %112, !llvm.loop !92

112:                                              ; preds = %102, %97
  %113 = load i1, ptr @quit, align 4
  br i1 %113, label %114, label %121

114:                                              ; preds = %118, %112
  %115 = load ptr, ptr @infile, align 8, !tbaa !7
  %116 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 8192, ptr noundef %115) #34
  %117 = icmp eq ptr %116, null
  br i1 %117, label %171, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr @outfile, align 8, !tbaa !7
  %120 = tail call i32 @fputs(ptr noundef nonnull @contextbufs, ptr noundef %119) #34
  br label %114, !llvm.loop !93

121:                                              ; preds = %112
  %122 = load ptr, ptr @infile, align 8, !tbaa !7
  %123 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %122) #34
  %124 = icmp eq ptr %123, null
  br i1 %124, label %171, label %125

125:                                              ; preds = %121
  %126 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #33
  %127 = and i64 %126, 4294967295
  %128 = icmp eq i64 %127, 4095
  %129 = trunc i64 %126 to i32
  %130 = icmp ult i32 %129, 8191
  %131 = and i1 %128, %130
  br i1 %131, label %132, label %168

132:                                              ; preds = %125
  %133 = shl i64 %126, 32
  %134 = ashr exact i64 %133, 32
  %135 = add i64 %133, -4294967296
  %136 = ashr exact i64 %135, 32
  %137 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !13
  %139 = zext i8 %138 to i32
  br label %140

140:                                              ; preds = %160, %132
  %141 = phi i64 [ %134, %132 ], [ %162, %160 ]
  %142 = phi i32 [ %139, %132 ], [ %158, %160 ]
  %143 = and i32 %142, 255
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !13
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %144
  %150 = load i8, ptr %149, align 1, !tbaa !13
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %144
  %154 = load i8, ptr %153, align 1, !tbaa !13
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %152, %148, %140
  %157 = load ptr, ptr @infile, align 8, !tbaa !7
  %158 = tail call i32 @getc(ptr noundef %157) #34
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = trunc i32 %158 to i8
  %162 = add nsw i64 %141, 1
  %163 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %141
  store i8 %161, ptr %163, align 1, !tbaa !13
  %164 = and i64 %162, 4294967295
  %165 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %164
  store i8 0, ptr %165, align 1, !tbaa !13
  %166 = trunc i64 %141 to i32
  %167 = icmp ult i32 %166, 8190
  br i1 %167, label %140, label %168, !llvm.loop !94

168:                                              ; preds = %160, %156, %152, %125
  %169 = load ptr, ptr @outfile, align 8, !tbaa !7
  tail call fastcc void @checkline(ptr noundef %169) #32
  %170 = load i32, ptr @contextsize, align 4, !tbaa !11
  br label %97

171:                                              ; preds = %121, %114
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @terminit() unnamed_addr #20 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40
  %3 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21523, ptr noundef nonnull %2) #32
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.winsize, ptr %2, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !95
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = zext i16 %7 to i32
  store i32 %10, ptr @co, align 4, !tbaa !11
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i16, ptr %2, align 2, !tbaa !97
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = zext i16 %12 to i32
  store i32 %15, ptr @li, align 4, !tbaa !11
  br label %16

16:                                               ; preds = %14, %11, %0
  %17 = call ptr @getenv(ptr noundef nonnull @.str.283) #32
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @atoi(ptr nocapture noundef nonnull %17) #33
  store i32 %20, ptr @co, align 4, !tbaa !11
  br label %21

21:                                               ; preds = %19, %16
  %22 = call ptr @getenv(ptr noundef nonnull @.str.1.284) #32
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @atoi(ptr nocapture noundef nonnull %22) #33
  store i32 %25, ptr @li, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, ptr @contextsize, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, ptr @li, align 4, !tbaa !11
  %31 = sdiv i32 %30, 10
  store i32 %31, ptr @contextsize, align 4, !tbaa !11
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %31, %29 ], [ %27, %26 ]
  %34 = icmp sgt i32 %33, 10
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  store i32 10, ptr @contextsize, align 4, !tbaa !11
  %36 = load i32, ptr @li, align 4, !tbaa !11
  br label %40

37:                                               ; preds = %32
  %38 = icmp slt i32 %33, 2
  %39 = load i32, ptr @li, align 4, !tbaa !11
  br i1 %38, label %50, label %40

40:                                               ; preds = %37, %35
  %41 = phi i32 [ %39, %37 ], [ %36, %35 ]
  %42 = phi i32 [ %33, %37 ], [ 10, %35 ]
  %43 = add nuw nsw i32 %42, 8
  %44 = icmp slt i32 %41, %43
  %45 = icmp ugt i32 %42, 2
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = call i32 @llvm.smax.i32(i32 %41, i32 10)
  %49 = add nsw i32 %48, -8
  br label %50

50:                                               ; preds = %47, %37
  %51 = phi i32 [ %49, %47 ], [ 2, %37 ]
  %52 = phi i32 [ %41, %47 ], [ %39, %37 ]
  store i32 %51, ptr @contextsize, align 4
  br label %53

53:                                               ; preds = %50, %40
  %54 = phi i32 [ %41, %40 ], [ %52, %50 ]
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load ptr, ptr @stderr, align 8, !tbaa !7
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.2.285, i32 noundef 10) #36
  br label %59

59:                                               ; preds = %56, %53
  %60 = call i32 @isatty(i32 noundef 0) #32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load ptr, ptr @stderr, align 8, !tbaa !7
  %64 = call i64 @fwrite(ptr nonnull @.str.3.286, i64 41, i64 1, ptr %63) #38
  call void @exit(i32 noundef 1) #35
  unreachable

65:                                               ; preds = %59
  %66 = call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull @osbuf) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) @sbuf, ptr noundef nonnull align 4 dereferenceable(60) @osbuf, i64 60, i1 false), !tbaa.struct !98
  %67 = load i32, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !99
  %68 = and i32 %67, -107
  store i32 %68, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !99
  %69 = load <2 x i32>, ptr @sbuf, align 8, !tbaa !11
  %70 = and <2 x i32> %69, <i32 -449, i32 -2>
  store <2 x i32> %70, ptr @sbuf, align 8, !tbaa !11
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 6), align 1, !tbaa !13
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 5), align 2, !tbaa !13
  %71 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #32
  %72 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 2), align 1, !tbaa !13
  %73 = zext i8 %72 to i32
  store i32 %73, ptr @uerasechar, align 4, !tbaa !11
  %74 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 3), align 4, !tbaa !13
  %75 = zext i8 %74 to i32
  store i32 %75, ptr @ukillchar, align 4, !tbaa !11
  %76 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21519, ptr noundef nonnull %1) #32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = load ptr, ptr @stderr, align 8, !tbaa !7
  %80 = call i64 @fwrite(ptr nonnull @.str.3.286, i64 41, i64 1, ptr %79) #38
  call void @exit(i32 noundef 1) #35
  unreachable

81:                                               ; preds = %65
  %82 = call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #32
  store ptr %82, ptr @oldint, align 8, !tbaa !7
  %83 = icmp eq ptr %82, inttoptr (i64 1 to ptr)
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #32
  br label %86

86:                                               ; preds = %84, %81
  %87 = call ptr @signal(i32 noundef 15, ptr noundef nonnull inttoptr (i64 1 to ptr)) #32
  store ptr %87, ptr @oldterm, align 8, !tbaa !7
  %88 = icmp eq ptr %87, inttoptr (i64 1 to ptr)
  br i1 %88, label %91, label %89

89:                                               ; preds = %86
  %90 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #32
  br label %91

91:                                               ; preds = %89, %86
  %92 = call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #32
  store ptr %92, ptr @oldttin, align 8, !tbaa !7
  %93 = icmp eq ptr %92, inttoptr (i64 1 to ptr)
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #32
  br label %96

96:                                               ; preds = %94, %91
  %97 = call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #32
  store ptr %97, ptr @oldttou, align 8, !tbaa !7
  %98 = icmp eq ptr %97, inttoptr (i64 1 to ptr)
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #32
  br label %101

101:                                              ; preds = %99, %96
  %102 = call ptr @signal(i32 noundef 20, ptr noundef nonnull inttoptr (i64 1 to ptr)) #32
  store ptr %102, ptr @oldtstp, align 8, !tbaa !7
  %103 = icmp eq ptr %102, inttoptr (i64 1 to ptr)
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #32
  br label %106

106:                                              ; preds = %104, %101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #40
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @mktemp(ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @done(i32 %0) #0 {
  %2 = load i8, ptr @tempfile, align 16, !tbaa !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @unlink(ptr noundef nonnull @tempfile) #32
  br label %6

6:                                                ; preds = %4, %1
  tail call void @exit(i32 noundef 0) #35
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @onstop(i32 noundef %0) #20 {
  %2 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #32
  %3 = tail call ptr @signal(i32 noundef %0, ptr noundef null) #32
  %4 = tail call i32 @kill(i32 noundef 0, i32 noundef %0) #32
  %5 = tail call ptr @signal(i32 noundef %0, ptr noundef nonnull @onstop) #32
  %6 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #32
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @checkline(ptr nocapture noundef %0) unnamed_addr #20 {
  %2 = alloca [150 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [200 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca ptr, align 8
  store ptr @contextbufs, ptr @currentchar, align 8, !tbaa !7
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #33
  %8 = shl i64 %7, 32
  %9 = add i64 %8, -4294967296
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8 0, ptr %11, align 1, !tbaa !13
  br label %15

15:                                               ; preds = %14, %1
  %16 = load i32, ptr @tflag, align 4, !tbaa !11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %137, %123, %15
  %19 = phi ptr [ @contextbufs, %15 ], [ %126, %123 ], [ %134, %137 ]
  br label %167

20:                                               ; preds = %15
  %21 = load i8, ptr @contextbufs, align 16, !tbaa !13
  %22 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !13
  %23 = icmp eq i8 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str.5, i64 4)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str.1.6, i64 4)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %27, %24
  tail call fastcc void @copyout(i32 noundef 5) #32
  %31 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = icmp sgt i8 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = tail call ptr @__ctype_b_loc() #41
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = zext i8 %32 to i64
  %38 = getelementptr inbounds i16, ptr %36, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !57
  %40 = and i16 %39, 8192
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %53, label %49

42:                                               ; preds = %49
  %43 = load ptr, ptr %35, align 8, !tbaa !7
  %44 = zext i8 %51 to i64
  %45 = getelementptr inbounds i16, ptr %43, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !57
  %47 = and i16 %46, 8192
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49, !llvm.loop !101

49:                                               ; preds = %42, %34
  tail call fastcc void @copyout(i32 noundef 1) #32
  %50 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %51 = load i8, ptr %50, align 1, !tbaa !13
  %52 = icmp sgt i8 %51, 0
  br i1 %52, label %42, label %53, !llvm.loop !101

53:                                               ; preds = %49, %42, %34, %30, %27, %20
  %54 = phi i8 [ %32, %30 ], [ %21, %27 ], [ %21, %20 ], [ %32, %34 ], [ %51, %42 ], [ %51, %49 ]
  %55 = phi ptr [ %31, %30 ], [ @contextbufs, %27 ], [ @contextbufs, %20 ], [ %31, %34 ], [ %50, %42 ], [ %50, %49 ]
  %56 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2
  %57 = icmp eq i8 %54, %56
  br i1 %57, label %58, label %123

58:                                               ; preds = %53
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  %60 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(4) @.str.2.7, i64 noundef 3) #33
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(4) @.str.3.8, i64 noundef 3) #33
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(4) @.str.4.9, i64 noundef 3) #33
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %123

68:                                               ; preds = %65, %62, %58
  tail call fastcc void @copyout(i32 noundef 4) #32
  %69 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %70 = load i8, ptr %69, align 1, !tbaa !13
  %71 = icmp sgt i8 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %68
  %73 = tail call ptr @__ctype_b_loc() #41
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  %75 = zext i8 %70 to i64
  %76 = getelementptr inbounds i16, ptr %74, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !57
  %78 = and i16 %77, 8192
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %95, label %87

80:                                               ; preds = %87
  %81 = load ptr, ptr %73, align 8, !tbaa !7
  %82 = zext i8 %89 to i64
  %83 = getelementptr inbounds i16, ptr %81, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !57
  %85 = and i16 %84, 8192
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %95, label %87, !llvm.loop !102

87:                                               ; preds = %80, %72
  tail call fastcc void @copyout(i32 noundef 1) #32
  %88 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = icmp sgt i8 %89, 0
  br i1 %90, label %80, label %91, !llvm.loop !102

91:                                               ; preds = %87, %68
  %92 = phi i8 [ %70, %68 ], [ %89, %87 ]
  %93 = phi ptr [ %69, %68 ], [ %88, %87 ]
  %94 = icmp eq i8 %92, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %91, %80, %72
  %96 = phi ptr [ %93, %91 ], [ %69, %72 ], [ %88, %80 ]
  %97 = phi i8 [ %92, %91 ], [ %70, %72 ], [ %89, %80 ]
  br label %98

98:                                               ; preds = %110, %95
  %99 = phi ptr [ %111, %110 ], [ %96, %95 ]
  %100 = phi i8 [ %112, %110 ], [ %97, %95 ]
  %101 = icmp sgt i8 %100, -1
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = tail call ptr @__ctype_b_loc() #41
  %104 = load ptr, ptr %103, align 8, !tbaa !7
  %105 = zext i8 %100 to i64
  %106 = getelementptr inbounds i16, ptr %104, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !57
  %108 = and i16 %107, 8192
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %102, %98
  tail call fastcc void @copyout(i32 noundef 1) #32
  %111 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %112 = load i8, ptr %111, align 1, !tbaa !13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %98, !llvm.loop !103

114:                                              ; preds = %110, %91
  %115 = load i32, ptr @lflag, align 4, !tbaa !11
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %1202

117:                                              ; preds = %114
  %118 = load i32, ptr @aflag, align 4, !tbaa !11
  %119 = icmp ne i32 %118, 0
  %120 = or i1 %13, %119
  br i1 %120, label %1200, label %1202

121:                                              ; preds = %102
  %.lcssa19 = phi ptr [ %99, %102 ]
  %.lcssa18 = phi i8 [ %100, %102 ]
  %122 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2
  br label %123

123:                                              ; preds = %121, %65, %53
  %124 = phi i8 [ %56, %53 ], [ %54, %65 ], [ %122, %121 ]
  %125 = phi i8 [ %54, %53 ], [ %54, %65 ], [ %.lcssa18, %121 ]
  %126 = phi ptr [ %55, %53 ], [ %55, %65 ], [ %.lcssa19, %121 ]
  %127 = load i32, ptr @tflag, align 4, !tbaa !11
  %128 = icmp eq i32 %127, 0
  %129 = icmp eq i8 %125, %124
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %18

131:                                              ; preds = %123
  %132 = icmp eq i8 %124, 0
  br i1 %132, label %160, label %133

133:                                              ; preds = %155, %131
  %134 = phi ptr [ %157, %155 ], [ %126, %131 ]
  %135 = phi i8 [ %158, %155 ], [ %124, %131 ]
  %136 = icmp sgt i8 %135, -1
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = tail call ptr @__ctype_b_loc() #41
  %139 = load ptr, ptr %138, align 8, !tbaa !7
  %140 = zext i8 %135 to i64
  %141 = getelementptr inbounds i16, ptr %139, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !57
  %143 = and i16 %142, 8192
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %145, label %18

145:                                              ; preds = %137, %133
  %146 = load i32, ptr @aflag, align 4, !tbaa !11
  %147 = icmp ne i32 %146, 0
  %148 = load i32, ptr @lflag, align 4
  %149 = icmp ne i32 %148, 0
  %150 = select i1 %147, i1 true, i1 %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = sext i8 %135 to i32
  %153 = tail call i32 @putc(i32 noundef %152, ptr noundef %0) #34
  %154 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %155

155:                                              ; preds = %151, %145
  %156 = phi ptr [ %154, %151 ], [ %134, %145 ]
  %157 = getelementptr inbounds i8, ptr %156, i64 1
  store ptr %157, ptr @currentchar, align 8, !tbaa !7
  %158 = load i8, ptr %157, align 1, !tbaa !13
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %133, !llvm.loop !104

160:                                              ; preds = %155, %131
  %161 = load i32, ptr @lflag, align 4, !tbaa !11
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %1202

163:                                              ; preds = %160
  %164 = load i32, ptr @aflag, align 4, !tbaa !11
  %165 = icmp ne i32 %164, 0
  %166 = or i1 %13, %165
  br i1 %166, label %1200, label %1202

167:                                              ; preds = %832, %18
  %168 = phi ptr [ %833, %832 ], [ %19, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr %168, ptr %6, align 8, !tbaa !7
  %169 = load i8, ptr %168, align 1, !tbaa !13
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %760, label %171

171:                                              ; preds = %696, %167
  %172 = phi i8 [ %698, %696 ], [ %169, %167 ]
  %173 = phi ptr [ %697, %696 ], [ %168, %167 ]
  %174 = zext i8 %172 to i64
  %175 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !13
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %171
  %179 = tail call fastcc i32 @stringcharlen(ptr noundef nonnull %173, i32 noundef 0) #32
  %180 = icmp sgt i32 %179, 0
  %181 = load i8, ptr %173, align 1, !tbaa !13
  br i1 %180, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, ptr @tflag, align 4, !tbaa !11
  br label %193

184:                                              ; preds = %178
  %185 = zext i8 %181 to i64
  br label %186

186:                                              ; preds = %184, %171
  %187 = phi i64 [ %185, %184 ], [ %174, %171 ]
  %188 = phi i8 [ %181, %184 ], [ %172, %171 ]
  %189 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %187
  %190 = load i8, ptr %189, align 1, !tbaa !13
  %191 = icmp eq i8 %190, 0
  %192 = load i32, ptr @tflag, align 4, !tbaa !11
  br i1 %191, label %206, label %193

193:                                              ; preds = %186, %182
  %194 = phi i32 [ %192, %186 ], [ %183, %182 ]
  %195 = phi i8 [ %188, %186 ], [ %181, %182 ]
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !13
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = icmp ne i32 %194, 0
  %202 = load i32, ptr @math_mode, align 4
  %203 = and i32 %202, 1
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %201, i1 %204, i1 false
  br i1 %205, label %210, label %760

206:                                              ; preds = %193, %186
  %207 = phi i8 [ %195, %193 ], [ %188, %186 ]
  %208 = phi i32 [ %194, %193 ], [ %192, %186 ]
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %682, label %210

210:                                              ; preds = %206, %200
  %211 = phi i8 [ %207, %206 ], [ %195, %200 ]
  %212 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1, !tbaa !13
  %213 = icmp eq i8 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = load i1, ptr @TeX_comment, align 4
  br i1 %215, label %678, label %216

216:                                              ; preds = %214
  %217 = load i32, ptr @math_mode, align 4, !tbaa !11
  store i32 %217, ptr @save_math_mode, align 4, !tbaa !11
  %218 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i8 %218, ptr @save_LaTeX_Mode, align 1, !tbaa !13
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i1 true, ptr @TeX_comment, align 4
  br label %678

219:                                              ; preds = %210
  %220 = load i32, ptr @math_mode, align 4, !tbaa !11
  %221 = and i32 %220, 1
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %372, label %223

223:                                              ; preds = %219
  %224 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !13
  %225 = icmp eq i8 %224, 101
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %6) #34, !range !87
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %226
  %230 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %231

231:                                              ; preds = %229, %223
  %232 = phi i8 [ %230, %229 ], [ %224, %223 ]
  %233 = icmp eq i8 %232, 109
  br i1 %233, label %234, label %240

234:                                              ; preds = %231
  %235 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %6) #34, !range !87
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234, %226
  %238 = load i32, ptr @math_mode, align 4, !tbaa !11
  %239 = add nsw i32 %238, -1
  store i32 %239, ptr @math_mode, align 4, !tbaa !11
  br label %366

240:                                              ; preds = %234, %231
  %241 = load ptr, ptr %6, align 8, !tbaa !7
  %242 = load i8, ptr %241, align 1, !tbaa !13
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %760, label %244

244:                                              ; preds = %240
  %245 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !13
  %246 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %247 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1
  br label %248

248:                                              ; preds = %256, %244
  %249 = phi i8 [ %242, %244 ], [ %258, %256 ]
  %250 = phi ptr [ %241, %244 ], [ %257, %256 ]
  %251 = icmp eq i8 %249, %245
  %252 = icmp eq i8 %249, %246
  %253 = select i1 %251, i1 true, i1 %252
  %254 = icmp eq i8 %249, %247
  %255 = select i1 %253, i1 true, i1 %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %248
  %257 = getelementptr inbounds i8, ptr %250, i64 1
  %258 = load i8, ptr %257, align 1, !tbaa !13
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %760, label %248, !llvm.loop !105

260:                                              ; preds = %248
  %.lcssa2 = phi ptr [ %250, %248 ]
  %.lcssa1 = phi i1 [ %252, %248 ]
  %.lcssa = phi i1 [ %254, %248 ]
  store ptr %.lcssa2, ptr %6, align 8, !tbaa !7
  br i1 %.lcssa1, label %261, label %266

261:                                              ; preds = %260
  %262 = getelementptr inbounds i8, ptr %.lcssa2, i64 1
  %263 = load i8, ptr %262, align 1, !tbaa !13
  %264 = icmp eq i8 %263, %246
  br i1 %264, label %265, label %361

265:                                              ; preds = %261
  store ptr %262, ptr %6, align 8, !tbaa !7
  br label %361

266:                                              ; preds = %260
  br i1 %.lcssa, label %267, label %272

267:                                              ; preds = %266
  %268 = load i1, ptr @TeX_comment, align 4
  br i1 %268, label %364, label %269

269:                                              ; preds = %267
  %270 = load i32, ptr @math_mode, align 4, !tbaa !11
  store i32 %270, ptr @save_math_mode, align 4, !tbaa !11
  %271 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i8 %271, ptr @save_LaTeX_Mode, align 1, !tbaa !13
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i1 true, ptr @TeX_comment, align 4
  br label %364

272:                                              ; preds = %266
  %273 = getelementptr inbounds i8, ptr %.lcssa2, i64 1
  store ptr %273, ptr %6, align 8, !tbaa !7
  %274 = load i8, ptr %273, align 1, !tbaa !13
  %275 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 1), align 2, !tbaa !13
  %276 = icmp eq i8 %274, %275
  %277 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4
  %278 = icmp eq i8 %274, %277
  %279 = select i1 %276, i1 true, i1 %278
  br i1 %279, label %361, label %280

280:                                              ; preds = %272
  %281 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %273, ptr noundef nonnull @.str.28.10, i32 noundef 4) #34
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %292, label %283

283:                                              ; preds = %280
  %284 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %273, ptr noundef nonnull @.str.29, i32 noundef 7) #34
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %292, label %286

286:                                              ; preds = %283
  %287 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %273, ptr noundef nonnull @.str.30.11, i32 noundef 4) #34
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %273, ptr noundef nonnull @.str.31, i32 noundef 8) #34
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289, %286, %283, %280
  %293 = load i32, ptr @math_mode, align 4, !tbaa !11
  %294 = add nsw i32 %293, 2
  store i32 %294, ptr @math_mode, align 4, !tbaa !11
  br label %330

295:                                              ; preds = %289
  %296 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %273, ptr noundef nonnull @.str.32.12, i32 noundef 6) #34
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %273, ptr noundef nonnull @.str.33.13, i32 noundef 8) #34
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %327

301:                                              ; preds = %298, %295
  %302 = load i32, ptr @math_mode, align 4, !tbaa !11
  %303 = add nsw i32 %302, 2
  store i32 %303, ptr @math_mode, align 4, !tbaa !11
  %304 = load i8, ptr %273, align 1, !tbaa !13
  %305 = icmp eq i8 %304, 0
  %306 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %307 = icmp eq i8 %304, %306
  %308 = select i1 %305, i1 true, i1 %307
  %309 = icmp eq i8 %304, %246
  %310 = select i1 %308, i1 true, i1 %309
  br i1 %310, label %320, label %311

311:                                              ; preds = %311, %301
  %312 = phi ptr [ %313, %311 ], [ %273, %301 ]
  %313 = getelementptr inbounds i8, ptr %312, i64 1
  store ptr %313, ptr %6, align 8, !tbaa !7
  %314 = load i8, ptr %313, align 1, !tbaa !13
  %315 = icmp eq i8 %314, 0
  %316 = icmp eq i8 %314, %306
  %317 = select i1 %315, i1 true, i1 %316
  %318 = icmp eq i8 %314, %246
  %319 = select i1 %317, i1 true, i1 %318
  br i1 %319, label %320, label %311, !llvm.loop !106

320:                                              ; preds = %311, %301
  %321 = phi i8 [ %304, %301 ], [ %314, %311 ]
  %322 = phi ptr [ %273, %301 ], [ %313, %311 ]
  %323 = icmp eq i8 %321, 0
  br i1 %323, label %326, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds i8, ptr %322, i64 1
  store ptr %325, ptr %6, align 8, !tbaa !7
  br label %330

326:                                              ; preds = %320
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %330

327:                                              ; preds = %298
  %328 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %273, ptr noundef nonnull @.str.34.14, i32 noundef 5) #34
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %348, label %353

330:                                              ; preds = %326, %324, %292
  %331 = phi ptr [ %322, %326 ], [ %325, %324 ], [ %273, %292 ]
  %332 = load i8, ptr %331, align 1, !tbaa !13
  %333 = icmp eq i8 %332, 0
  %334 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %335 = icmp eq i8 %332, %334
  %336 = select i1 %333, i1 true, i1 %335
  %337 = icmp eq i8 %332, %246
  %338 = or i1 %337, %336
  br i1 %338, label %361, label %339

339:                                              ; preds = %339, %330
  %340 = phi ptr [ %341, %339 ], [ %331, %330 ]
  %341 = getelementptr inbounds i8, ptr %340, i64 1
  %342 = load i8, ptr %341, align 1, !tbaa !13
  %343 = icmp eq i8 %342, 0
  %344 = icmp eq i8 %342, %334
  %345 = select i1 %343, i1 true, i1 %344
  %346 = icmp eq i8 %342, %246
  %347 = or i1 %346, %345
  br i1 %347, label %360, label %339, !llvm.loop !106

348:                                              ; preds = %327
  %349 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %6) #34, !range !87
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load ptr, ptr %6, align 8, !tbaa !7
  br label %353

353:                                              ; preds = %351, %327
  %354 = phi ptr [ %352, %351 ], [ %273, %327 ]
  %355 = tail call fastcc i32 @TeX_strncmp(ptr noundef %354, ptr noundef nonnull @.str.27.15, i32 noundef 3) #34
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %353
  %358 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %6) #34, !range !87
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %364, label %361

360:                                              ; preds = %339
  %.lcssa3 = phi ptr [ %341, %339 ]
  store ptr %.lcssa3, ptr %6, align 8, !tbaa !7
  br label %361

361:                                              ; preds = %360, %357, %348, %330, %272, %265, %261
  %362 = load i32, ptr @math_mode, align 4, !tbaa !11
  %363 = add nsw i32 %362, -1
  store i32 %363, ptr @math_mode, align 4, !tbaa !11
  br label %366

364:                                              ; preds = %357, %353, %269, %267
  %365 = load i32, ptr @math_mode, align 4, !tbaa !11
  br label %366

366:                                              ; preds = %364, %361, %237
  %367 = phi i32 [ %365, %364 ], [ %363, %361 ], [ %239, %237 ]
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %678

369:                                              ; preds = %366
  %370 = load ptr, ptr @stderr, align 8, !tbaa !7
  %371 = tail call i64 @fwrite(ptr nonnull @.str.16.16, i64 37, i64 1, ptr %370) #38
  store i32 0, ptr @math_mode, align 4, !tbaa !11
  br label %678

372:                                              ; preds = %219
  %373 = icmp sgt i32 %220, 1
  %374 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %375 = icmp eq i8 %211, %374
  %376 = select i1 %373, i1 %375, i1 false
  br i1 %376, label %377, label %383

377:                                              ; preds = %372
  %378 = shl i32 %220, 7
  %379 = and i32 %378, 16256
  %380 = icmp ult i32 %220, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %377
  %382 = add nsw i32 %220, -1
  store i32 %382, ptr @math_mode, align 4, !tbaa !11
  br label %678

383:                                              ; preds = %377, %372
  %384 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !13
  %385 = icmp eq i8 %384, 109
  br i1 %385, label %395, label %386

386:                                              ; preds = %383
  %387 = icmp eq i32 %220, 0
  br i1 %387, label %401, label %388

388:                                              ; preds = %386
  %389 = shl i32 %220, 7
  %390 = and i32 %389, 16256
  %391 = icmp slt i32 %220, %390
  br i1 %391, label %401, label %392

392:                                              ; preds = %388
  %393 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %173, ptr noundef nonnull @.str.17.17, i32 noundef 4) #34
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %392, %383
  %396 = call fastcc i32 @TeX_LR_check(i32 noundef 0, ptr noundef nonnull %6) #34, !range !87
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %678, label %398

398:                                              ; preds = %395
  %399 = load i32, ptr @math_mode, align 4, !tbaa !11
  %400 = add nsw i32 %399, -1
  store i32 %400, ptr @math_mode, align 4, !tbaa !11
  br label %678

401:                                              ; preds = %392, %388, %386
  %402 = icmp eq i8 %384, 98
  br i1 %402, label %403, label %413

403:                                              ; preds = %401
  %404 = call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %6) #34, !range !87
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !13
  %408 = load ptr, ptr %6, align 8, !tbaa !7
  %409 = load i8, ptr %408, align 1, !tbaa !13
  br label %413

410:                                              ; preds = %403
  %411 = load i32, ptr @math_mode, align 4, !tbaa !11
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr @math_mode, align 4, !tbaa !11
  br label %678

413:                                              ; preds = %406, %401
  %414 = phi i8 [ %409, %406 ], [ %211, %401 ]
  %415 = phi ptr [ %408, %406 ], [ %173, %401 ]
  %416 = phi i8 [ %407, %406 ], [ %384, %401 ]
  %417 = icmp eq i8 %416, 114
  br i1 %417, label %418, label %437

418:                                              ; preds = %413
  %419 = icmp eq i8 %414, 0
  %420 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %421 = icmp eq i8 %414, %420
  %422 = select i1 %419, i1 true, i1 %421
  %423 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %424 = icmp eq i8 %414, %423
  %425 = select i1 %422, i1 true, i1 %424
  br i1 %425, label %436, label %426

426:                                              ; preds = %426, %418
  %427 = phi ptr [ %428, %426 ], [ %415, %418 ]
  %428 = getelementptr inbounds i8, ptr %427, i64 1
  %429 = load i8, ptr %428, align 1, !tbaa !13
  %430 = icmp eq i8 %429, 0
  %431 = icmp eq i8 %429, %420
  %432 = select i1 %430, i1 true, i1 %431
  %433 = icmp eq i8 %429, %423
  %434 = select i1 %432, i1 true, i1 %433
  br i1 %434, label %435, label %426, !llvm.loop !107

435:                                              ; preds = %426
  %.lcssa11 = phi ptr [ %428, %426 ]
  store ptr %.lcssa11, ptr %6, align 8, !tbaa !7
  br label %436

436:                                              ; preds = %435, %418
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %678

437:                                              ; preds = %413
  %438 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2, !tbaa !13
  %439 = icmp eq i8 %414, %438
  br i1 %439, label %455, label %440

440:                                              ; preds = %437
  %441 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !13
  %442 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1
  br label %446

443:                                              ; preds = %669
  %.lcssa9 = phi ptr [ %665, %669 ]
  %.lcssa8 = phi i8 [ %668, %669 ]
  %444 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2, !tbaa !13
  %445 = icmp eq i8 %.lcssa8, %444
  br i1 %445, label %455, label %446

446:                                              ; preds = %443, %440
  %447 = phi i8 [ %642, %443 ], [ %442, %440 ]
  %448 = phi i8 [ %644, %443 ], [ %441, %440 ]
  %449 = phi i8 [ %645, %443 ], [ %441, %440 ]
  %450 = phi i8 [ %.lcssa8, %443 ], [ %414, %440 ]
  %451 = phi ptr [ %.lcssa9, %443 ], [ %415, %440 ]
  %452 = icmp eq i8 %450, %449
  br i1 %452, label %453, label %641

453:                                              ; preds = %446
  %454 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16), align 1, !tbaa !13
  br label %462

455:                                              ; preds = %443, %437
  %456 = phi ptr [ %415, %437 ], [ %.lcssa9, %443 ]
  %457 = phi i8 [ %414, %437 ], [ %.lcssa8, %443 ]
  %458 = getelementptr inbounds i8, ptr %456, i64 1
  %459 = load i8, ptr %458, align 1, !tbaa !13
  %460 = icmp eq i8 %459, %457
  br i1 %460, label %461, label %675

461:                                              ; preds = %455
  store ptr %458, ptr %6, align 8, !tbaa !7
  br label %675

462:                                              ; preds = %485, %453
  %463 = phi i8 [ %486, %485 ], [ %447, %453 ]
  %464 = phi i8 [ %487, %485 ], [ %448, %453 ]
  %465 = phi i8 [ %488, %485 ], [ %447, %453 ]
  %466 = phi i8 [ %489, %485 ], [ %454, %453 ]
  %467 = phi ptr [ %490, %485 ], [ %451, %453 ]
  %468 = getelementptr inbounds i8, ptr %467, i64 1
  store ptr %468, ptr %6, align 8, !tbaa !7
  %469 = load i8, ptr %468, align 1, !tbaa !13
  %470 = icmp eq i8 %469, %466
  %471 = icmp eq i8 %469, %465
  %472 = select i1 %470, i1 true, i1 %471
  br i1 %472, label %675, label %473

473:                                              ; preds = %462
  %474 = tail call ptr @__ctype_b_loc() #41
  %475 = load ptr, ptr %474, align 8, !tbaa !7
  %476 = sext i8 %469 to i64
  %477 = getelementptr inbounds i16, ptr %475, i64 %476
  %478 = load i16, ptr %477, align 2, !tbaa !57
  %479 = and i16 %478, 1024
  %480 = icmp ne i16 %479, 0
  %481 = icmp eq i8 %469, 64
  %482 = or i1 %481, %480
  br i1 %482, label %493, label %483

483:                                              ; preds = %473
  %484 = getelementptr inbounds i8, ptr %467, i64 2
  br label %485

485:                                              ; preds = %499, %483
  %486 = phi i8 [ %463, %483 ], [ %500, %499 ]
  %487 = phi i8 [ %464, %483 ], [ %504, %499 ]
  %488 = phi i8 [ %465, %483 ], [ %500, %499 ]
  %489 = phi i8 [ %466, %483 ], [ %501, %499 ]
  %490 = phi ptr [ %484, %483 ], [ %503, %499 ]
  store ptr %490, ptr %6, align 8, !tbaa !7
  %491 = load i8, ptr %490, align 1, !tbaa !13
  %492 = icmp eq i8 %491, %487
  br i1 %492, label %462, label %641, !llvm.loop !108

493:                                              ; preds = %473
  %494 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %468, ptr noundef nonnull @.str.34.14, i32 noundef 5) #34
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %505

496:                                              ; preds = %493
  %497 = call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %6) #34, !range !87
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %675

499:                                              ; preds = %496
  %500 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1
  %501 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16), align 1, !tbaa !13
  %502 = load ptr, ptr %6, align 8, !tbaa !7
  %503 = getelementptr inbounds i8, ptr %502, i64 -1
  %504 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !13
  br label %485

505:                                              ; preds = %493
  %.lcssa7 = phi ptr [ %475, %493 ]
  %.lcssa6 = phi ptr [ %467, %493 ]
  %.lcssa5 = phi ptr [ %468, %493 ]
  %.lcssa4 = phi i8 [ %469, %493 ]
  %506 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.27.15, i32 noundef 3) #34
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %565, label %508

508:                                              ; preds = %505
  %509 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.35.18, i32 noundef 6) #34
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %565, label %511

511:                                              ; preds = %508
  %512 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.36.19, i32 noundef 6) #34
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %565, label %514

514:                                              ; preds = %511
  %515 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.37.20, i32 noundef 4) #34
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %565, label %517

517:                                              ; preds = %514
  %518 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.38.21, i32 noundef 3) #34
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %565, label %520

520:                                              ; preds = %517
  %521 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.32.12, i32 noundef 6) #34
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %565, label %523

523:                                              ; preds = %520
  %524 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.39.22, i32 noundef 5) #34
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %565, label %526

526:                                              ; preds = %523
  %527 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.40, i32 noundef 5) #34
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %565, label %529

529:                                              ; preds = %526
  %530 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.41.23, i32 noundef 6) #34
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %565, label %532

532:                                              ; preds = %529
  %533 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.42.24, i32 noundef 7) #34
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %565, label %535

535:                                              ; preds = %532
  %536 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.43.25, i32 noundef 11) #34
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %565, label %538

538:                                              ; preds = %535
  %539 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.44, i32 noundef 13) #34
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %565, label %541

541:                                              ; preds = %538
  %542 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.45, i32 noundef 13) #34
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %565, label %544

544:                                              ; preds = %541
  %545 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.46, i32 noundef 10) #34
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %565, label %547

547:                                              ; preds = %544
  %548 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.47, i32 noundef 9) #34
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %565, label %550

550:                                              ; preds = %547
  %551 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.48, i32 noundef 13) #34
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %565, label %553

553:                                              ; preds = %550
  %554 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.49, i32 noundef 12) #34
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %565, label %556

556:                                              ; preds = %553
  %557 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.50, i32 noundef 7) #34
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %565, label %559

559:                                              ; preds = %556
  %560 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.51, i32 noundef 11) #34
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %565, label %562

562:                                              ; preds = %559
  %563 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.52, i32 noundef 7) #34
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %586

565:                                              ; preds = %562, %559, %556, %553, %550, %547, %544, %541, %538, %535, %532, %529, %526, %523, %520, %517, %514, %511, %508, %505
  %566 = icmp eq i8 %.lcssa4, 0
  %567 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %568 = icmp eq i8 %.lcssa4, %567
  %569 = select i1 %566, i1 true, i1 %568
  %570 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %571 = icmp eq i8 %.lcssa4, %570
  %572 = select i1 %569, i1 true, i1 %571
  br i1 %572, label %582, label %573

573:                                              ; preds = %573, %565
  %574 = phi ptr [ %575, %573 ], [ %.lcssa5, %565 ]
  %575 = getelementptr inbounds i8, ptr %574, i64 1
  store ptr %575, ptr %6, align 8, !tbaa !7
  %576 = load i8, ptr %575, align 1, !tbaa !13
  %577 = icmp eq i8 %576, 0
  %578 = icmp eq i8 %576, %567
  %579 = select i1 %577, i1 true, i1 %578
  %580 = icmp eq i8 %576, %570
  %581 = select i1 %579, i1 true, i1 %580
  br i1 %581, label %582, label %573, !llvm.loop !107

582:                                              ; preds = %573, %565
  %583 = phi i8 [ %.lcssa4, %565 ], [ %576, %573 ]
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %585, label %678

585:                                              ; preds = %582
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %678

586:                                              ; preds = %562
  %587 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.53, i32 noundef 4) #34
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %604, label %589

589:                                              ; preds = %586
  %590 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.54, i32 noundef 10) #34
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %604, label %592

592:                                              ; preds = %589
  %593 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.55, i32 noundef 12) #34
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %604, label %595

595:                                              ; preds = %592
  %596 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.56, i32 noundef 9) #34
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %604, label %598

598:                                              ; preds = %595
  %599 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.57, i32 noundef 11) #34
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %604, label %601

601:                                              ; preds = %598
  %602 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.58, i32 noundef 10) #34
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %615

604:                                              ; preds = %601, %598, %595, %592, %589, %586
  call fastcc void @TeX_skip_parens(ptr noundef nonnull %6) #34
  %605 = load ptr, ptr %6, align 8, !tbaa !7
  %606 = load i8, ptr %605, align 1, !tbaa !13
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %608, label %609

608:                                              ; preds = %604
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %678

609:                                              ; preds = %604
  %610 = getelementptr inbounds i8, ptr %605, i64 1
  store ptr %610, ptr %6, align 8, !tbaa !7
  call fastcc void @TeX_skip_parens(ptr noundef nonnull %6) #34
  %611 = load ptr, ptr %6, align 8, !tbaa !7
  %612 = load i8, ptr %611, align 1, !tbaa !13
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %678

614:                                              ; preds = %609
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %678

615:                                              ; preds = %601
  %616 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.59, i32 noundef 4) #34
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %629

618:                                              ; preds = %615
  %619 = getelementptr inbounds i8, ptr %.lcssa6, i64 5
  %620 = load i8, ptr %619, align 1, !tbaa !13
  %621 = getelementptr inbounds i8, ptr %.lcssa6, i64 6
  br label %622

622:                                              ; preds = %622, %618
  %623 = phi ptr [ %621, %618 ], [ %628, %622 ]
  store ptr %623, ptr %6, align 8, !tbaa !7
  %624 = load i8, ptr %623, align 1, !tbaa !13
  %625 = icmp eq i8 %624, %620
  %626 = icmp eq i8 %624, 0
  %627 = or i1 %625, %626
  %628 = getelementptr inbounds i8, ptr %623, i64 1
  br i1 %627, label %678, label %622, !llvm.loop !109

629:                                              ; preds = %629, %615
  %630 = phi ptr [ %631, %629 ], [ %.lcssa5, %615 ]
  %631 = getelementptr inbounds i8, ptr %630, i64 1
  store ptr %631, ptr %6, align 8, !tbaa !7
  %632 = load i8, ptr %631, align 1, !tbaa !13
  %633 = sext i8 %632 to i64
  %634 = getelementptr inbounds i16, ptr %.lcssa7, i64 %633
  %635 = load i16, ptr %634, align 2, !tbaa !57
  %636 = and i16 %635, 1024
  %637 = icmp ne i16 %636, 0
  %638 = icmp eq i8 %632, 64
  %639 = or i1 %638, %637
  br i1 %639, label %629, label %640, !llvm.loop !110

640:                                              ; preds = %629
  %.lcssa10 = phi ptr [ %630, %629 ]
  store ptr %.lcssa10, ptr %6, align 8, !tbaa !7
  br label %678

641:                                              ; preds = %485, %446
  %642 = phi i8 [ %447, %446 ], [ %486, %485 ]
  %643 = phi i8 [ %447, %446 ], [ %488, %485 ]
  %644 = phi i8 [ %448, %446 ], [ %487, %485 ]
  %645 = phi i8 [ %449, %446 ], [ %487, %485 ]
  %646 = phi ptr [ %451, %446 ], [ %490, %485 ]
  %647 = phi i8 [ %450, %446 ], [ %491, %485 ]
  %648 = icmp eq i8 %647, %643
  %649 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 6), align 1
  %650 = icmp eq i8 %647, %649
  %651 = select i1 %648, i1 true, i1 %650
  br i1 %651, label %652, label %678

652:                                              ; preds = %641
  %653 = getelementptr inbounds i8, ptr %646, i64 1
  %654 = load i8, ptr %653, align 1, !tbaa !13
  %655 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 11), align 4, !tbaa !13
  %656 = icmp eq i8 %654, %655
  br i1 %656, label %657, label %678

657:                                              ; preds = %652
  store ptr %653, ptr %6, align 8, !tbaa !7
  %658 = load i8, ptr %653, align 1, !tbaa !13
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %678, label %660

660:                                              ; preds = %657
  %661 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4
  %662 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 7), align 4
  br label %663

663:                                              ; preds = %673, %660
  %664 = phi ptr [ %665, %673 ], [ %653, %660 ]
  %665 = getelementptr inbounds i8, ptr %664, i64 1
  store ptr %665, ptr %6, align 8, !tbaa !7
  %666 = load i8, ptr %664, align 1, !tbaa !13
  %667 = icmp eq i8 %666, %654
  %668 = load i8, ptr %665, align 1, !tbaa !13
  br i1 %667, label %669, label %673

669:                                              ; preds = %663
  %670 = icmp eq i8 %668, %661
  %671 = icmp eq i8 %668, %662
  %672 = select i1 %670, i1 true, i1 %671
  br i1 %672, label %443, label %673

673:                                              ; preds = %669, %663
  %674 = icmp eq i8 %668, 0
  br i1 %674, label %678, label %663, !llvm.loop !111

675:                                              ; preds = %496, %462, %461, %455
  %676 = load i32, ptr @math_mode, align 4, !tbaa !11
  %677 = add nsw i32 %676, 1
  store i32 %677, ptr @math_mode, align 4, !tbaa !11
  br label %678

678:                                              ; preds = %675, %673, %657, %652, %641, %640, %622, %614, %609, %608, %585, %582, %436, %410, %398, %395, %381, %369, %366, %216, %214
  %679 = load ptr, ptr %6, align 8, !tbaa !7
  %680 = load i8, ptr %679, align 1, !tbaa !13
  %681 = icmp eq i8 %680, 0
  br i1 %681, label %760, label %732

682:                                              ; preds = %206
  %683 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 3), align 1, !tbaa !13
  %684 = icmp eq i8 %207, %683
  br i1 %684, label %685, label %732

685:                                              ; preds = %682
  %686 = getelementptr inbounds i8, ptr %173, i64 1
  %687 = load i8, ptr %686, align 1, !tbaa !13
  %688 = sext i8 %687 to i32
  switch i32 %688, label %718 [
    i32 102, label %689
    i32 115, label %700
  ]

689:                                              ; preds = %685
  %690 = getelementptr inbounds i8, ptr %173, i64 2
  %691 = load i8, ptr %690, align 1, !tbaa !13
  %692 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !13
  %693 = icmp eq i8 %691, %692
  %694 = select i1 %693, i64 5, i64 3
  %695 = getelementptr inbounds i8, ptr %173, i64 %694
  store ptr %695, ptr %6, align 8, !tbaa !7
  br label %696

696:                                              ; preds = %759, %757, %726, %721, %716, %705, %689
  %697 = phi ptr [ %758, %757 ], [ %.lcssa12, %759 ], [ %707, %705 ], [ %717, %716 ], [ %695, %689 ], [ %722, %721 ], [ %731, %726 ]
  %698 = load i8, ptr %697, align 1, !tbaa !13
  %699 = icmp eq i8 %698, 0
  br i1 %699, label %760, label %171, !llvm.loop !112

700:                                              ; preds = %685
  %701 = getelementptr inbounds i8, ptr %173, i64 2
  store ptr %701, ptr %6, align 8, !tbaa !7
  %702 = load i8, ptr %701, align 1, !tbaa !13
  switch i8 %702, label %705 [
    i8 43, label %703
    i8 45, label %703
  ]

703:                                              ; preds = %700, %700
  %704 = getelementptr inbounds i8, ptr %173, i64 3
  br label %705

705:                                              ; preds = %703, %700
  %706 = phi ptr [ %701, %700 ], [ %704, %703 ]
  %707 = getelementptr inbounds i8, ptr %706, i64 1
  store ptr %707, ptr %6, align 8, !tbaa !7
  %708 = tail call ptr @__ctype_b_loc() #41
  %709 = load ptr, ptr %708, align 8, !tbaa !7
  %710 = load i8, ptr %707, align 1, !tbaa !13
  %711 = sext i8 %710 to i64
  %712 = getelementptr inbounds i16, ptr %709, i64 %711
  %713 = load i16, ptr %712, align 2, !tbaa !57
  %714 = and i16 %713, 2048
  %715 = icmp eq i16 %714, 0
  br i1 %715, label %696, label %716

716:                                              ; preds = %705
  %717 = getelementptr inbounds i8, ptr %706, i64 2
  store ptr %717, ptr %6, align 8, !tbaa !7
  br label %696

718:                                              ; preds = %685
  %719 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !13
  %720 = icmp eq i8 %687, %719
  br i1 %720, label %721, label %723

721:                                              ; preds = %718
  %722 = getelementptr inbounds i8, ptr %173, i64 4
  store ptr %722, ptr %6, align 8, !tbaa !7
  br label %696

723:                                              ; preds = %718
  %724 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 4), align 4, !tbaa !13
  %725 = icmp eq i8 %687, %724
  br i1 %725, label %726, label %732

726:                                              ; preds = %723
  %727 = getelementptr inbounds i8, ptr %173, i64 2
  %728 = load i8, ptr %727, align 1, !tbaa !13
  %729 = icmp eq i8 %728, %719
  %730 = select i1 %729, i64 5, i64 3
  %731 = getelementptr inbounds i8, ptr %173, i64 %730
  store ptr %731, ptr %6, align 8, !tbaa !7
  br label %696

732:                                              ; preds = %723, %682, %678
  %733 = phi i8 [ %207, %682 ], [ %207, %723 ], [ %680, %678 ]
  %734 = phi ptr [ %173, %682 ], [ %173, %723 ], [ %679, %678 ]
  %735 = icmp eq i8 %733, 48
  br i1 %735, label %736, label %757

736:                                              ; preds = %732
  %737 = getelementptr inbounds i8, ptr %734, i64 1
  %738 = load i8, ptr %737, align 1, !tbaa !13
  switch i8 %738, label %757 [
    i8 120, label %739
    i8 88, label %739
  ]

739:                                              ; preds = %736, %736
  %740 = load i1, ptr @terse, align 4
  %741 = load i32, ptr @aflag, align 4
  %742 = icmp eq i32 %741, 0
  %743 = select i1 %740, i1 true, i1 %742
  br i1 %743, label %744, label %757

744:                                              ; preds = %739
  %745 = getelementptr inbounds i8, ptr %734, i64 2
  %746 = tail call ptr @__ctype_b_loc() #41
  %747 = load ptr, ptr %746, align 8, !tbaa !7
  br label %748

748:                                              ; preds = %748, %744
  %749 = phi ptr [ %745, %744 ], [ %756, %748 ]
  %750 = load i8, ptr %749, align 1, !tbaa !13
  %751 = sext i8 %750 to i64
  %752 = getelementptr inbounds i16, ptr %747, i64 %751
  %753 = load i16, ptr %752, align 2, !tbaa !57
  %754 = and i16 %753, 4096
  %755 = icmp eq i16 %754, 0
  %756 = getelementptr inbounds i8, ptr %749, i64 1
  br i1 %755, label %759, label %748, !llvm.loop !113

757:                                              ; preds = %739, %736, %732
  %758 = getelementptr inbounds i8, ptr %734, i64 1
  store ptr %758, ptr %6, align 8, !tbaa !7
  br label %696

759:                                              ; preds = %748
  %.lcssa12 = phi ptr [ %749, %748 ]
  store ptr %.lcssa12, ptr %6, align 8, !tbaa !7
  br label %696

760:                                              ; preds = %696, %678, %256, %240, %200, %167
  %761 = phi i8 [ 0, %167 ], [ 0, %256 ], [ 0, %240 ], [ %195, %200 ], [ 0, %678 ], [ 0, %696 ]
  %762 = phi ptr [ %168, %167 ], [ %257, %256 ], [ %241, %240 ], [ %173, %200 ], [ %679, %678 ], [ %697, %696 ]
  %763 = icmp eq i8 %761, 0
  %764 = load i1, ptr @TeX_comment, align 4
  %765 = select i1 %763, i1 %764, i1 false
  br i1 %765, label %766, label %769

766:                                              ; preds = %760
  %767 = load i32, ptr @save_math_mode, align 4, !tbaa !11
  store i32 %767, ptr @math_mode, align 4, !tbaa !11
  %768 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !13
  store i8 %768, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i1 false, ptr @TeX_comment, align 4
  br label %769

769:                                              ; preds = %766, %760
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %770 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %771 = icmp eq ptr %762, %770
  br i1 %771, label %778, label %772

772:                                              ; preds = %769
  %773 = ptrtoint ptr %762 to i64
  %774 = ptrtoint ptr %770 to i64
  %775 = sub i64 %773, %774
  %776 = trunc i64 %775 to i32
  tail call fastcc void @copyout(i32 noundef %776) #32
  %777 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %778

778:                                              ; preds = %772, %769
  %779 = phi ptr [ %777, %772 ], [ %762, %769 ]
  %780 = load i8, ptr %779, align 1, !tbaa !13
  %781 = icmp eq i8 %780, 0
  br i1 %781, label %1193, label %782

782:                                              ; preds = %778
  %783 = tail call fastcc ptr @skipoverword(ptr noundef nonnull %779) #34
  %784 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %785 = icmp ult ptr %784, %783
  br i1 %785, label %786, label %796

786:                                              ; preds = %786, %782
  %787 = phi ptr [ %791, %786 ], [ @ctoken, %782 ]
  %788 = phi ptr [ %789, %786 ], [ %784, %782 ]
  %789 = getelementptr inbounds i8, ptr %788, i64 1
  %790 = load i8, ptr %788, align 1, !tbaa !13
  %791 = getelementptr inbounds i8, ptr %787, i64 1
  store i8 %790, ptr %787, align 1, !tbaa !13
  %792 = icmp ult ptr %789, %783
  %793 = icmp ult ptr %791, getelementptr inbounds ([120 x i8], ptr @ctoken, i64 0, i64 119)
  %794 = select i1 %792, i1 %793, i1 false
  br i1 %794, label %786, label %795, !llvm.loop !114

795:                                              ; preds = %786
  %.lcssa14 = phi ptr [ %789, %786 ]
  %.lcssa13 = phi ptr [ %791, %786 ]
  store ptr %.lcssa14, ptr @currentchar, align 8, !tbaa !7
  br label %796

796:                                              ; preds = %795, %782
  %797 = phi ptr [ @ctoken, %782 ], [ %.lcssa13, %795 ]
  store i8 0, ptr %797, align 1, !tbaa !13
  %798 = tail call fastcc i32 @strtoichar(ptr noundef nonnull @itoken, ptr noundef nonnull @ctoken, i32 noundef 100, i32 noundef 0) #32, !range !87
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %803, label %800

800:                                              ; preds = %796
  %801 = load ptr, ptr @stderr, align 8, !tbaa !7
  %802 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %801, ptr noundef nonnull @.str.17.321, ptr noundef nonnull @ctoken, i32 noundef 466, ptr noundef nonnull @.str.6.27) #36
  br label %803

803:                                              ; preds = %800, %796
  %804 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #33
  %805 = trunc i64 %804 to i32
  %806 = load i32, ptr @lflag, align 4, !tbaa !11
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %822, label %808

808:                                              ; preds = %803
  %809 = load i32, ptr @minword, align 4, !tbaa !11
  %810 = icmp slt i32 %809, %805
  br i1 %810, label %811, label %1185

811:                                              ; preds = %808
  %812 = tail call fastcc i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #32
  %813 = icmp ne i32 %812, 0
  %814 = load i32, ptr @cflag, align 4
  %815 = icmp ne i32 %814, 0
  %816 = select i1 %813, i1 true, i1 %815
  br i1 %816, label %1185, label %817

817:                                              ; preds = %811
  %818 = tail call fastcc i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #32, !range !87
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %1185

820:                                              ; preds = %817
  %821 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7.28, ptr noundef nonnull @ctoken) #34
  br label %1185

822:                                              ; preds = %803
  %823 = load i32, ptr @aflag, align 4, !tbaa !11
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %899, label %825

825:                                              ; preds = %822
  %826 = load i32, ptr @minword, align 4, !tbaa !11
  %827 = icmp slt i32 %826, %805
  br i1 %827, label %834, label %828

828:                                              ; preds = %825
  %829 = load i1, ptr @terse, align 4
  br i1 %829, label %832, label %830

830:                                              ; preds = %828
  %831 = tail call i64 @fwrite(ptr nonnull @.str.8.29, i64 2, i64 1, ptr %0)
  br label %832

832:                                              ; preds = %1191, %1185, %830, %828
  %833 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %167

834:                                              ; preds = %825
  %835 = tail call fastcc i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #32
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %853, label %837

837:                                              ; preds = %834
  %838 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), align 8, !tbaa !115
  %839 = icmp eq ptr %838, null
  %840 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 2), align 16
  %841 = icmp eq ptr %840, null
  %842 = select i1 %839, i1 %841, i1 false
  %843 = load i1, ptr @terse, align 4
  br i1 %842, label %844, label %847

844:                                              ; preds = %837
  br i1 %843, label %1185, label %845

845:                                              ; preds = %844
  %846 = tail call i64 @fwrite(ptr nonnull @.str.8.29, i64 2, i64 1, ptr %0)
  br label %1185

847:                                              ; preds = %837
  br i1 %843, label %1185, label %848

848:                                              ; preds = %847
  %849 = load ptr, ptr @hits, align 16, !tbaa !117
  %850 = getelementptr inbounds %struct.dent, ptr %849, i64 0, i32 1
  %851 = load ptr, ptr %850, align 8, !tbaa !28
  %852 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9.30, ptr noundef %851) #34
  br label %1185

853:                                              ; preds = %834
  %854 = tail call fastcc i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #32, !range !87
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %860, label %856

856:                                              ; preds = %853
  %857 = load i1, ptr @terse, align 4
  br i1 %857, label %1185, label %858

858:                                              ; preds = %856
  %859 = tail call i64 @fwrite(ptr nonnull @.str.10.31, i64 2, i64 1, ptr %0)
  br label %1185

860:                                              ; preds = %853
  tail call fastcc void @makepossibilities() #32
  %861 = load i32, ptr @pcount, align 4, !tbaa !11
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %889, label %863

863:                                              ; preds = %860
  %864 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %865 = icmp eq i32 %864, 0
  %866 = select i1 %865, i32 63, i32 38
  %867 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %868 = ptrtoint ptr %867 to i64
  %869 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #33
  %870 = add i64 %869, ptrtoint (ptr @contextbufs to i64)
  %871 = sub i64 %868, %870
  %872 = trunc i64 %871 to i32
  %873 = load i32, ptr @contextoffset, align 4, !tbaa !11
  %874 = add nsw i32 %873, %872
  %875 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11.32, i32 noundef %866, ptr noundef nonnull @ctoken, i32 noundef %864, i32 noundef %874) #34
  br label %876

876:                                              ; preds = %881, %863
  %877 = phi i64 [ 0, %863 ], [ %885, %881 ]
  %878 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %877
  %879 = load i8, ptr %878, align 8, !tbaa !13
  %880 = icmp eq i8 %879, 0
  br i1 %880, label %887, label %881

881:                                              ; preds = %876
  %882 = icmp eq i64 %877, 0
  %883 = select i1 %882, i32 58, i32 44
  %884 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12.33, i32 noundef %883, ptr noundef nonnull %878) #34
  %885 = add nuw nsw i64 %877, 1
  %886 = icmp eq i64 %885, 100
  br i1 %886, label %887, label %876, !llvm.loop !118

887:                                              ; preds = %881, %876
  %888 = tail call i32 @fputc(i32 10, ptr %0)
  br label %1185

889:                                              ; preds = %860
  %890 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %891 = ptrtoint ptr %890 to i64
  %892 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #33
  %893 = add i64 %892, ptrtoint (ptr @contextbufs to i64)
  %894 = sub i64 %891, %893
  %895 = trunc i64 %894 to i32
  %896 = load i32, ptr @contextoffset, align 4, !tbaa !11
  %897 = add nsw i32 %896, %895
  %898 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14.34, ptr noundef nonnull @ctoken, i32 noundef %897) #34
  br label %1185

899:                                              ; preds = %822
  %900 = load i1, ptr @quit, align 4
  br i1 %900, label %1185, label %901

901:                                              ; preds = %899
  %902 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %903 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #33
  %904 = sub i64 0, %903
  %905 = getelementptr inbounds i8, ptr %902, i64 %904
  %906 = load i32, ptr @minword, align 4, !tbaa !11
  %907 = sext i32 %906 to i64
  %908 = icmp ugt i64 %804, %907
  br i1 %908, label %909, label %1185

909:                                              ; preds = %1178, %901
  %910 = call fastcc i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #32
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %912, label %1185

912:                                              ; preds = %909
  %913 = call fastcc i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #34, !range !87
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %1185

915:                                              ; preds = %912
  %916 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef nonnull @ctoken) #34
  %917 = load ptr, ptr @currentfile, align 8, !tbaa !7
  %918 = icmp eq ptr %917, null
  br i1 %918, label %921, label %919

919:                                              ; preds = %915
  %920 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %917) #34
  br label %921

921:                                              ; preds = %919, %915
  %922 = load i32, ptr @readonly, align 4, !tbaa !11
  %923 = icmp eq i32 %922, 0
  br i1 %923, label %926, label %924

924:                                              ; preds = %921
  %925 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull @.str.25) #34
  br label %926

926:                                              ; preds = %924, %921
  %927 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call fastcc void @makepossibilities() #34
  %928 = load i32, ptr @li, align 4, !tbaa !11
  %929 = load i32, ptr @contextsize, align 4, !tbaa !11
  %930 = load i1, ptr @minimenusize, align 4
  %931 = select i1 %930, i32 0, i32 -2
  %932 = add i32 %928, -4
  %933 = sub i32 %932, %929
  %934 = add i32 %933, %931
  %935 = load i32, ptr @co, align 4, !tbaa !11
  %936 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %937 = add nuw nsw i32 %936, 8
  %938 = sdiv i32 %935, %937
  %939 = load i32, ptr @pcount, align 4, !tbaa !11
  %940 = mul nsw i32 %938, %934
  %941 = icmp sgt i32 %939, %940
  br i1 %941, label %942, label %943

942:                                              ; preds = %926
  store i32 %940, ptr @pcount, align 4, !tbaa !11
  br label %943

943:                                              ; preds = %942, %926
  %944 = phi i32 [ %940, %942 ], [ %939, %926 ]
  %945 = icmp sgt i32 %944, 0
  br i1 %945, label %946, label %971

946:                                              ; preds = %964, %943
  %947 = phi i64 [ %965, %964 ], [ 0, %943 ]
  %948 = trunc i64 %947 to i32
  %949 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %950 = sext i32 %949 to i64
  %951 = icmp slt i64 %947, %950
  br i1 %951, label %955, label %952

952:                                              ; preds = %946
  %953 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %947
  %954 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %953) #34
  br label %964

955:                                              ; preds = %946
  %956 = icmp sgt i32 %949, 9
  %957 = icmp ult i64 %947, 10
  %958 = and i1 %957, %956
  %959 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %947
  br i1 %958, label %960, label %962

960:                                              ; preds = %955
  %961 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %948, ptr noundef nonnull %959) #34
  br label %964

962:                                              ; preds = %955
  %963 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %948, ptr noundef nonnull %959) #34
  br label %964

964:                                              ; preds = %962, %960, %952
  %965 = add nuw nsw i64 %947, 1
  %966 = load i32, ptr @pcount, align 4, !tbaa !11
  %967 = sext i32 %966 to i64
  %968 = icmp slt i64 %965, %967
  br i1 %968, label %946, label %969, !llvm.loop !119

969:                                              ; preds = %964
  %970 = load i32, ptr @contextsize, align 4, !tbaa !11
  br label %971

971:                                              ; preds = %969, %943
  %972 = phi i32 [ %970, %969 ], [ %929, %943 ]
  %973 = icmp sgt i32 %972, 1
  br i1 %973, label %974, label %982

974:                                              ; preds = %971
  %975 = zext i32 %972 to i64
  br label %976

976:                                              ; preds = %976, %974
  %977 = phi i64 [ %975, %974 ], [ %978, %976 ]
  %978 = add nsw i64 %977, -1
  %979 = and i64 %978, 4294967295
  %980 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %979
  call fastcc void @show_line(ptr noundef nonnull %980, ptr noundef nonnull %980, i32 noundef 0) #34
  %981 = icmp ugt i64 %977, 2
  br i1 %981, label %976, label %982, !llvm.loop !120

982:                                              ; preds = %976, %971
  %983 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %984 = call fastcc i32 @line_size(ptr noundef nonnull @contextbufs, ptr noundef %983) #34
  %985 = load i32, ptr @co, align 4, !tbaa !11
  %986 = add i32 %985, -1
  %987 = icmp sgt i32 %984, %986
  br i1 %987, label %988, label %1011

988:                                              ; preds = %982
  %989 = sdiv i32 %985, -2
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds i8, ptr %905, i64 %990
  %992 = icmp sgt i32 %985, 1
  br i1 %992, label %993, label %1005

993:                                              ; preds = %999, %988
  %994 = phi ptr [ %1003, %999 ], [ %991, %988 ]
  %995 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %996 = call fastcc i32 @line_size(ptr noundef %994, ptr noundef %995) #34
  %997 = load i32, ptr @co, align 4, !tbaa !11
  %998 = icmp slt i32 %996, %997
  br i1 %998, label %1005, label %999

999:                                              ; preds = %993
  %1000 = add nsw i32 %996, 1
  %1001 = sub i32 %1000, %997
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds i8, ptr %994, i64 %1002
  %1004 = icmp ult ptr %1003, %905
  br i1 %1004, label %993, label %1005, !llvm.loop !121

1005:                                             ; preds = %999, %993, %988
  %1006 = phi ptr [ %991, %988 ], [ %994, %993 ], [ %1003, %999 ]
  %1007 = icmp ugt ptr %1006, %905
  %1008 = select i1 %1007, ptr %905, ptr %1006
  %1009 = icmp ult ptr %1008, @contextbufs
  %1010 = select i1 %1009, ptr @contextbufs, ptr %1008
  br label %1011

1011:                                             ; preds = %1005, %982
  %1012 = phi ptr [ %1010, %1005 ], [ @contextbufs, %982 ]
  %1013 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #33
  %1014 = trunc i64 %1013 to i32
  call fastcc void @show_line(ptr noundef %1012, ptr noundef %905, i32 noundef %1014) #34
  %1015 = load i1, ptr @minimenusize, align 4
  br i1 %1015, label %1018, label %1016

1016:                                             ; preds = %1011
  %1017 = call i32 @puts(ptr nonnull dereferenceable(1) @str.88)
  br label %1018

1018:                                             ; preds = %1016, %1011
  br label %1019

1019:                                             ; preds = %1184, %1018
  %1020 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1021 = call i32 @fflush(ptr noundef %1020) #34
  %1022 = call i32 @getchar() #34
  %1023 = and i32 %1022, 127
  switch i32 %1023, label %1182 [
    i32 26, label %1024
    i32 32, label %1025
    i32 113, label %1028
    i32 81, label %1028
    i32 105, label %1040
    i32 73, label %1040
    i32 117, label %1043
    i32 85, label %1043
    i32 97, label %1058
    i32 65, label %1058
    i32 12, label %1178
    i32 63, label %1061
    i32 33, label %1062
    i32 114, label %1076
    i32 82, label %1076
    i32 48, label %1101
    i32 49, label %1101
    i32 50, label %1101
    i32 51, label %1101
    i32 52, label %1101
    i32 53, label %1101
    i32 54, label %1101
    i32 55, label %1101
    i32 56, label %1101
    i32 57, label %1101
    i32 13, label %1184
    i32 10, label %1184
    i32 108, label %1131
    i32 76, label %1131
    i32 120, label %1179
    i32 88, label %1179
  ]

1024:                                             ; preds = %1019
  call void @onstop(i32 noundef 20) #34
  br label %1178

1025:                                             ; preds = %1019
  %1026 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1027 = call i32 @fflush(ptr noundef %1026) #34
  br label %1185

1028:                                             ; preds = %1019, %1019
  %1029 = load i1, ptr @changes, align 4
  br i1 %1029, label %1030, label %1037

1030:                                             ; preds = %1028
  %1031 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) #34
  %1032 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1033 = call i32 @fflush(ptr noundef %1032) #34
  %1034 = call i32 @getchar() #34
  %1035 = and i32 %1034, 95
  %1036 = icmp eq i32 %1035, 89
  br i1 %1036, label %1037, label %1178

1037:                                             ; preds = %1030, %1028
  %1038 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1039 = call i32 @fflush(ptr noundef %1038) #34
  call void @done(i32 poison) #32
  unreachable

1040:                                             ; preds = %1019, %1019
  call fastcc void @strtosichar(ptr noundef nonnull @ctoken, i32 noundef 0) #32
  call fastcc void @ichartosstr(ptr noundef nonnull @strtosichar.out, i32 noundef 1) #32
  call fastcc void @treeinsert(ptr noundef nonnull @ichartosstr.out, i32 noundef 184, i32 noundef 1) #32
  %1041 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1042 = call i32 @fflush(ptr noundef %1041) #34
  store i1 true, ptr @changes, align 4
  br label %1185

1043:                                             ; preds = %1019, %1019
  call fastcc void @strtosichar(ptr noundef nonnull @ctoken, i32 noundef 0) #32
  %1044 = load i8, ptr @strtosichar.out, align 16, !tbaa !13
  %1045 = icmp eq i8 %1044, 0
  br i1 %1045, label %1055, label %1046

1046:                                             ; preds = %1046, %1043
  %1047 = phi i8 [ %1053, %1046 ], [ %1044, %1043 ]
  %1048 = phi ptr [ %1052, %1046 ], [ @strtosichar.out, %1043 ]
  %1049 = zext i8 %1047 to i64
  %1050 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %1049
  %1051 = load i8, ptr %1050, align 1, !tbaa !13
  store i8 %1051, ptr %1048, align 1, !tbaa !13
  %1052 = getelementptr inbounds i8, ptr %1048, i64 1
  %1053 = load i8, ptr %1052, align 1, !tbaa !13
  %1054 = icmp eq i8 %1053, 0
  br i1 %1054, label %1055, label %1046, !llvm.loop !69

1055:                                             ; preds = %1046, %1043
  call fastcc void @ichartosstr(ptr noundef nonnull @strtosichar.out, i32 noundef 1) #32
  call fastcc void @treeinsert(ptr noundef nonnull @ichartosstr.out, i32 noundef 184, i32 noundef 1) #32
  %1056 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1057 = call i32 @fflush(ptr noundef %1056) #34
  store i1 true, ptr @changes, align 4
  br label %1185

1058:                                             ; preds = %1019, %1019
  call fastcc void @strtosichar(ptr noundef nonnull @ctoken, i32 noundef 0) #32
  call fastcc void @ichartosstr(ptr noundef nonnull @strtosichar.out, i32 noundef 1) #32
  call fastcc void @treeinsert(ptr noundef nonnull @ichartosstr.out, i32 noundef 184, i32 noundef 0) #32
  %1059 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1060 = call i32 @fflush(ptr noundef %1059) #34
  br label %1185

1061:                                             ; preds = %1019
  call fastcc void @givehelp(i32 noundef 1) #34
  br label %1178

1062:                                             ; preds = %1019
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #40
  %1063 = call i32 @putchar(i32 noundef 33) #34
  %1064 = call fastcc ptr @getline_ispell(ptr noundef nonnull %4) #34
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1066, label %1070

1066:                                             ; preds = %1062
  %1067 = call i32 @putchar(i32 noundef 7) #34
  %1068 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1069 = call i32 @fflush(ptr noundef %1068) #34
  br label %1075

1070:                                             ; preds = %1062
  %1071 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %1072 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1073 = call i32 @fflush(ptr noundef %1072) #34
  %1074 = call fastcc i32 @shellescape(ptr noundef nonnull %4) #32
  br label %1075

1075:                                             ; preds = %1070, %1066
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #40
  br label %1178

1076:                                             ; preds = %1019, %1019
  %1077 = load i32, ptr @readonly, align 4, !tbaa !11
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1082, label %1079

1079:                                             ; preds = %1076
  %1080 = call i32 @putchar(i32 noundef 7) #34
  %1081 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.185, ptr noundef nonnull @.str.25) #34
  br label %1082

1082:                                             ; preds = %1079, %1076
  %1083 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33) #34
  %1084 = call fastcc ptr @getline_ispell(ptr noundef nonnull @ctoken) #34
  %1085 = icmp eq ptr %1084, null
  br i1 %1085, label %1086, label %1089

1086:                                             ; preds = %1082
  %1087 = call i32 @putchar(i32 noundef 7) #34
  %1088 = call fastcc i32 @ichartostr(ptr noundef nonnull @ctoken, ptr noundef nonnull @itoken, i32 noundef 120, i32 noundef 0) #32, !range !87
  br label %1096

1089:                                             ; preds = %1082
  call fastcc void @inserttoken(ptr noundef %905) #34
  %1090 = call fastcc i32 @strtoichar(ptr noundef nonnull @itoken, ptr noundef nonnull @ctoken, i32 noundef 120, i32 noundef 0) #32, !range !87
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1095, label %1092

1092:                                             ; preds = %1089
  %1093 = call i32 @putchar(i32 noundef 7) #34
  %1094 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17.321, ptr noundef nonnull @ctoken, i32 noundef 494, ptr noundef nonnull @.str.35) #34
  br label %1095

1095:                                             ; preds = %1092, %1089
  store i1 true, ptr @changes, align 4
  br label %1096

1096:                                             ; preds = %1095, %1086
  %1097 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #33
  %1098 = load i32, ptr @minword, align 4, !tbaa !11
  %1099 = sext i32 %1098 to i64
  %1100 = icmp ugt i64 %1097, %1099
  br i1 %1100, label %1178, label %1185

1101:                                             ; preds = %1019, %1019, %1019, %1019, %1019, %1019, %1019, %1019, %1019, %1019
  %1102 = add nsw i32 %1023, -48
  %1103 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %1104 = icmp sgt i32 %1103, 9
  br i1 %1104, label %1105, label %1115

1105:                                             ; preds = %1101
  %1106 = call i32 @getchar() #34
  %1107 = and i32 %1106, 127
  %1108 = add nsw i32 %1107, -48
  %1109 = icmp ult i32 %1108, 10
  br i1 %1109, label %1110, label %1114

1110:                                             ; preds = %1105
  %1111 = mul nuw nsw i32 %1102, 10
  %1112 = add nsw i32 %1111, -48
  %1113 = add nsw i32 %1112, %1107
  br label %1115

1114:                                             ; preds = %1105
  switch i32 %1107, label %1182 [
    i32 13, label %1115
    i32 10, label %1115
  ]

1115:                                             ; preds = %1114, %1114, %1110, %1101
  %1116 = phi i32 [ %1113, %1110 ], [ %1102, %1114 ], [ %1102, %1101 ], [ %1102, %1114 ]
  %1117 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %1118 = icmp slt i32 %1116, %1117
  br i1 %1118, label %1119, label %1182

1119:                                             ; preds = %1115
  %.lcssa15 = phi i32 [ %1116, %1115 ]
  %1120 = zext i32 %.lcssa15 to i64
  %1121 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %1120
  %1122 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @ctoken, ptr noundef nonnull dereferenceable(1) %1121) #32
  store i1 true, ptr @changes, align 4
  call fastcc void @inserttoken(ptr noundef %905) #34
  %1123 = load i32, ptr @readonly, align 4, !tbaa !11
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1185, label %1125

1125:                                             ; preds = %1119
  %1126 = call i32 @putchar(i32 noundef 7) #34
  %1127 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef nonnull @.str.25) #34
  %1128 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1129 = call i32 @fflush(ptr noundef %1128) #34
  %1130 = call i32 @sleep(i32 noundef 2) #32
  br label %1185

1131:                                             ; preds = %1019, %1019
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #40
  %1132 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37) #34
  %1133 = call fastcc ptr @getline_ispell(ptr noundef nonnull %5) #34
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1135, label %1137

1135:                                             ; preds = %1131
  %1136 = call i32 @putchar(i32 noundef 7) #34
  br label %1177

1137:                                             ; preds = %1131
  %1138 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %1139 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1140 = call i32 @fflush(ptr noundef %1139) #34
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #40
  br label %1141

1141:                                             ; preds = %1152, %1137
  %1142 = phi ptr [ %3, %1137 ], [ %1153, %1152 ]
  %1143 = phi ptr [ %5, %1137 ], [ %1155, %1152 ]
  %1144 = phi i32 [ 0, %1137 ], [ %1154, %1152 ]
  %1145 = load i8, ptr %1143, align 1, !tbaa !13
  switch i8 %1145, label %1150 [
    i8 0, label %1156
    i8 42, label %1146
  ]

1146:                                             ; preds = %1141
  %1147 = add nsw i32 %1144, 1
  %1148 = getelementptr inbounds i8, ptr %1142, i64 1
  store i8 46, ptr %1142, align 1, !tbaa !13
  %1149 = getelementptr inbounds i8, ptr %1142, i64 2
  store i8 42, ptr %1148, align 1, !tbaa !13
  br label %1152

1150:                                             ; preds = %1141
  %1151 = getelementptr inbounds i8, ptr %1142, i64 1
  store i8 %1145, ptr %1142, align 1, !tbaa !13
  br label %1152

1152:                                             ; preds = %1150, %1146
  %1153 = phi ptr [ %1149, %1146 ], [ %1151, %1150 ]
  %1154 = phi i32 [ %1147, %1146 ], [ %1144, %1150 ]
  %1155 = getelementptr inbounds i8, ptr %1143, i64 1
  br label %1141, !llvm.loop !122

1156:                                             ; preds = %1141
  %.lcssa17 = phi ptr [ %1142, %1141 ]
  %.lcssa16 = phi i32 [ %1144, %1141 ]
  store i8 0, ptr %.lcssa17, align 1, !tbaa !13
  %1157 = load i8, ptr %3, align 16, !tbaa !13
  %1158 = icmp eq i8 %1157, 0
  br i1 %1158, label %1176, label %1159

1159:                                             ; preds = %1156
  %1160 = icmp ne i32 %.lcssa16, 0
  %1161 = load i1, ptr @lookharder.look, align 4
  %1162 = select i1 %1160, i1 true, i1 %1161
  br i1 %1162, label %1168, label %1163

1163:                                             ; preds = %1159
  %1164 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull @.str.60.127, ptr noundef nonnull %3, ptr noundef nonnull @.str.124) #32
  %1165 = call fastcc i32 @shellescape(ptr noundef nonnull %2) #32
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1167, label %1176

1167:                                             ; preds = %1163
  store i1 true, ptr @lookharder.look, align 4
  br label %1170

1168:                                             ; preds = %1159
  %1169 = icmp eq i32 %.lcssa16, 0
  br i1 %1169, label %1170, label %1173

1170:                                             ; preds = %1168, %1167
  %1171 = call i64 @strlen(ptr nonnull dereferenceable(1) %3)
  %1172 = getelementptr inbounds i8, ptr %3, i64 %1171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1172, ptr noundef nonnull align 1 dereferenceable(3) @.str.83, i64 3, i1 false)
  br label %1173

1173:                                             ; preds = %1170, %1168
  %1174 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull @.str.36.107, ptr noundef nonnull %3, ptr noundef nonnull @.str.124) #32
  %1175 = call fastcc i32 @shellescape(ptr noundef nonnull %2) #32
  br label %1176

1176:                                             ; preds = %1173, %1163, %1156
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %2) #40
  br label %1177

1177:                                             ; preds = %1176, %1135
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #40
  br label %1178

1178:                                             ; preds = %1177, %1096, %1075, %1061, %1030, %1024, %1019
  br label %909

1179:                                             ; preds = %1019, %1019
  store i1 true, ptr @quit, align 4
  %1180 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1181 = call i32 @fflush(ptr noundef %1180) #34
  br label %1185

1182:                                             ; preds = %1115, %1114, %1019
  %1183 = call i32 @putchar(i32 noundef 7) #34
  br label %1184

1184:                                             ; preds = %1182, %1019, %1019
  br label %1019

1185:                                             ; preds = %1179, %1125, %1119, %1096, %1058, %1055, %1040, %1025, %912, %909, %901, %899, %889, %887, %858, %856, %848, %847, %845, %844, %820, %817, %811, %808
  %1186 = load i32, ptr @aflag, align 4, !tbaa !11
  %1187 = icmp ne i32 %1186, 0
  %1188 = load i32, ptr @lflag, align 4
  %1189 = icmp ne i32 %1188, 0
  %1190 = select i1 %1187, i1 true, i1 %1189
  br i1 %1190, label %832, label %1191

1191:                                             ; preds = %1185
  %1192 = tail call i32 @fputs(ptr nonnull @ctoken, ptr %0)
  br label %832

1193:                                             ; preds = %778
  %1194 = load i32, ptr @lflag, align 4, !tbaa !11
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1196, label %1202

1196:                                             ; preds = %1193
  %1197 = load i32, ptr @aflag, align 4, !tbaa !11
  %1198 = icmp ne i32 %1197, 0
  %1199 = or i1 %13, %1198
  br i1 %1199, label %1200, label %1202

1200:                                             ; preds = %1196, %163, %117
  %1201 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #34
  br label %1202

1202:                                             ; preds = %1200, %1196, %1193, %163, %160, %117, %114
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @copyout(i32 noundef %0) unnamed_addr #19 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %3, label %26

3:                                                ; preds = %1
  %4 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %22, %3
  %6 = phi ptr [ %24, %22 ], [ %4, %3 ]
  %7 = phi i32 [ %8, %22 ], [ %0, %3 ]
  %8 = add nsw i32 %7, -1
  %9 = load i8, ptr %6, align 1, !tbaa !13
  %10 = sext i8 %9 to i32
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr @aflag, align 4, !tbaa !11
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @lflag, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr @outfile, align 8, !tbaa !7
  %20 = tail call i32 @putc(i32 noundef %10, ptr noundef %19) #34
  %21 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi ptr [ %21, %18 ], [ %6, %12 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr @currentchar, align 8, !tbaa !7
  %25 = icmp ugt i32 %7, 1
  br i1 %25, label %5, label %26, !llvm.loop !123

26:                                               ; preds = %22, %5, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @stringcharlen(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #22 {
  %3 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !41
  %4 = icmp eq i32 %1, 0
  %5 = load i32, ptr @defdupchar, align 4
  %6 = select i1 %4, i32 %5, i32 0
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %74, label %8

8:                                                ; preds = %2
  %9 = add nsw i32 %3, -1
  br label %10

10:                                               ; preds = %70, %8
  %11 = phi i32 [ %72, %70 ], [ %9, %8 ]
  %12 = phi i32 [ %71, %70 ], [ 0, %8 ]
  %13 = add nsw i32 %12, %11
  %14 = ashr i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %28, %10
  %20 = phi i8 [ %30, %28 ], [ %17, %10 ]
  %21 = phi ptr [ %23, %28 ], [ %0, %10 ]
  %22 = phi ptr [ %29, %28 ], [ %16, %10 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %21, align 1, !tbaa !13
  %25 = xor i8 %24, %20
  %26 = and i8 %25, 127
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %19
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %19, !llvm.loop !124

32:                                               ; preds = %28, %10
  %33 = phi ptr [ %16, %10 ], [ %29, %28 ]
  %34 = phi ptr [ %0, %10 ], [ %23, %28 ]
  %35 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %15
  %36 = load i32, ptr %35, align 4, !tbaa !11
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %.lcssa2 = phi ptr [ %33, %32 ]
  %.lcssa1 = phi i64 [ %15, %32 ]
  %.lcssa = phi ptr [ %16, %32 ]
  %39 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %.lcssa1
  %40 = load i32, ptr %39, align 4, !tbaa !11
  store i32 %40, ptr @laststringch, align 4, !tbaa !11
  %41 = ptrtoint ptr %.lcssa2 to i64
  %42 = ptrtoint ptr %.lcssa to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  br label %75

45:                                               ; preds = %32
  %46 = getelementptr inbounds i8, ptr %33, i64 -1
  %47 = load i8, ptr %46, align 1, !tbaa !13
  br label %48

48:                                               ; preds = %45, %19
  %49 = phi i8 [ %47, %45 ], [ %20, %19 ]
  %50 = phi ptr [ %34, %45 ], [ %23, %19 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = and i8 %52, 127
  %54 = and i8 %49, 127
  %55 = icmp ult i8 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = add nsw i32 %14, -1
  br label %70

58:                                               ; preds = %48
  %59 = icmp ugt i8 %53, %54
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = add nsw i32 %14, 1
  br label %70

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %15
  %64 = load i32, ptr %63, align 4, !tbaa !11
  %65 = icmp slt i32 %6, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = add nsw i32 %14, -1
  br label %70

68:                                               ; preds = %62
  %69 = add nsw i32 %14, 1
  br label %70

70:                                               ; preds = %68, %66, %60, %56
  %71 = phi i32 [ %12, %56 ], [ %61, %60 ], [ %12, %66 ], [ %69, %68 ]
  %72 = phi i32 [ %57, %56 ], [ %11, %60 ], [ %67, %66 ], [ %11, %68 ]
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %10, !llvm.loop !125

74:                                               ; preds = %70, %2
  store i32 -1, ptr @laststringch, align 4, !tbaa !11
  br label %75

75:                                               ; preds = %74, %38
  %76 = phi i32 [ %44, %38 ], [ 0, %74 ]
  ret i32 %76
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_math_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #23 {
  tail call fastcc void @TeX_open_paren(ptr noundef %1) #34
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = trunc i32 %0 to i8
  store i8 %7, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %55

8:                                                ; preds = %2
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  %9 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %9, ptr %1, align 8, !tbaa !7
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.18.37, i64 noundef 8) #33
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.19.38, i64 noundef 8) #33
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(12) @.str.20.39, i64 noundef 11) #33
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(8) @.str.21.40, i64 noundef 7) #33
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.22.41, i64 noundef 4) #33
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %15, %12, %8
  store ptr %3, ptr %1, align 8, !tbaa !7
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #34
  br label %55

25:                                               ; preds = %21
  %26 = icmp eq i32 %0, 98
  br i1 %26, label %27, label %54

27:                                               ; preds = %25
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(8) @.str.23.42, i64 noundef 7) #33
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.24.35, i64 noundef 8) #33
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ 1, %33 ], [ 0, %30 ]
  %36 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.25.43, i64 noundef 8) #33
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = add nuw nsw i32 %35, %38
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #34
  %40 = load ptr, ptr %1, align 8, !tbaa !7
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %44, ptr %1, align 8, !tbaa !7
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %43
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #34
  %47 = load ptr, ptr %1, align 8, !tbaa !7
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %47, i64 1
  store ptr %51, ptr %1, align 8, !tbaa !7
  %52 = icmp eq i32 %39, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #34
  br label %55

54:                                               ; preds = %25
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #34
  br label %55

55:                                               ; preds = %54, %53, %50, %46, %43, %34, %24, %6
  %56 = phi i32 [ 0, %6 ], [ 1, %24 ], [ 0, %54 ], [ 0, %34 ], [ 0, %43 ], [ 0, %46 ], [ 0, %50 ], [ 0, %53 ]
  ret i32 %56
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @TeX_LR_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #19 {
  tail call fastcc void @TeX_open_paren(ptr noundef %1) #34
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 109, ptr @LaTeX_Mode, align 1, !tbaa !13
  br label %36

7:                                                ; preds = %2
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %8, ptr %1, align 8, !tbaa !7
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(9) @.str.24.35, i64 noundef 8) #33
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #34
  %12 = load ptr, ptr %1, align 8, !tbaa !7
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %16, ptr %1, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %15, %11
  %18 = icmp eq i32 %0, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #34
  %20 = load i32, ptr @math_mode, align 4, !tbaa !11
  %21 = shl i32 %20, 7
  %22 = add i32 %21, 256
  %23 = and i32 %22, 16256
  %24 = add i32 %20, -126
  %25 = add i32 %24, %23
  store i32 %25, ptr @math_mode, align 4, !tbaa !11
  br label %36

26:                                               ; preds = %17
  %27 = load i32, ptr @math_mode, align 4, !tbaa !11
  %28 = shl i32 %27, 7
  %29 = and i32 %28, 16256
  %30 = sub nsw i32 %27, %29
  store i32 %30, ptr @math_mode, align 4, !tbaa !11
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load ptr, ptr @stderr, align 8, !tbaa !7
  %34 = tail call i64 @fwrite(ptr nonnull @.str.26.36, i64 36, i64 1, ptr %33) #38
  store i32 1, ptr @math_mode, align 4, !tbaa !11
  br label %36

35:                                               ; preds = %7
  store ptr %3, ptr %1, align 8, !tbaa !7
  br label %36

36:                                               ; preds = %35, %32, %26, %19, %6
  %37 = phi i32 [ 0, %6 ], [ 0, %35 ], [ 1, %26 ], [ 1, %32 ], [ 1, %19 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_strncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #24 {
  %4 = zext i32 %2 to i64
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %4) #33
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 %4
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call ptr @__ctype_b_loc() #41
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = zext i8 %9 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !57
  %17 = and i16 %16, 1024
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11, %7, %3
  br label %20

20:                                               ; preds = %19, %11
  %21 = phi i32 [ %5, %19 ], [ 1, %11 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @TeX_skip_parens(ptr nocapture noundef %0) unnamed_addr #25 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 0
  %5 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %6 = icmp eq i8 %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  %8 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %9 = icmp eq i8 %3, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %11, %1
  %12 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !7
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 0
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %17 = icmp eq i8 %14, %16
  %18 = select i1 %15, i1 true, i1 %17
  %19 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %20 = icmp eq i8 %14, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11, !llvm.loop !107

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @skipoverword(ptr noundef readonly %0) unnamed_addr #26 {
  %2 = load i8, ptr %0, align 1, !tbaa !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %41, %1
  %5 = phi ptr [ null, %1 ], [ %43, %41 ]
  %6 = phi ptr [ %0, %1 ], [ %44, %41 ]
  %7 = load i1, ptr @TeX_comment, align 4
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = load i32, ptr @save_math_mode, align 4, !tbaa !11
  store i32 %9, ptr @math_mode, align 4, !tbaa !11
  %10 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !13
  store i8 %10, ptr @LaTeX_Mode, align 1, !tbaa !13
  store i1 false, ptr @TeX_comment, align 4
  br label %47

11:                                               ; preds = %41, %1
  %12 = phi i8 [ %45, %41 ], [ %2, %1 ]
  %13 = phi ptr [ %44, %41 ], [ %0, %1 ]
  %14 = phi ptr [ %43, %41 ], [ null, %1 ]
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @stringcharlen(ptr noundef nonnull %13, i32 noundef 0) #32
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %13, align 1, !tbaa !13
  %24 = zext i8 %23 to i64
  br label %27

25:                                               ; preds = %19
  %26 = zext i32 %20 to i64
  br label %41

27:                                               ; preds = %22, %11
  %28 = phi i64 [ %24, %22 ], [ %15, %11 ]
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %28
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = icmp eq ptr %14, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds i8, ptr %13, i64 -1
  %40 = icmp eq ptr %14, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38, %36, %27, %25
  %42 = phi i64 [ %26, %25 ], [ 1, %27 ], [ 1, %36 ], [ 1, %38 ]
  %43 = phi ptr [ null, %25 ], [ null, %27 ], [ %13, %36 ], [ %14, %38 ]
  %44 = getelementptr inbounds i8, ptr %13, i64 %42
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %4, label %11

47:                                               ; preds = %38, %32, %8, %4
  %48 = phi ptr [ %5, %4 ], [ %5, %8 ], [ %14, %32 ], [ %14, %38 ]
  %49 = phi ptr [ %6, %4 ], [ %6, %8 ], [ %13, %32 ], [ %13, %38 ]
  %50 = icmp eq ptr %48, null
  %51 = select i1 %50, ptr %49, ptr %48
  ret ptr %51
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @strtoichar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #26 {
  br label %5

5:                                                ; preds = %29, %4
  %6 = phi ptr [ %32, %29 ], [ %0, %4 ]
  %7 = phi i32 [ %9, %29 ], [ %2, %4 ]
  %8 = phi ptr [ %34, %29 ], [ %1, %4 ]
  %9 = add nsw i32 %7, -1
  %10 = load i8, ptr %8, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %5
  %13 = zext i8 %10 to i64
  %14 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @stringcharlen(ptr noundef nonnull %8, i32 noundef %3) #34
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr %8, align 1, !tbaa !13
  br label %26

22:                                               ; preds = %17
  %23 = load i32, ptr @laststringch, align 4, !tbaa !11
  %24 = trunc i32 %23 to i8
  %25 = xor i8 %24, -128
  br label %29

26:                                               ; preds = %20, %12
  %27 = phi i8 [ %21, %20 ], [ %10, %12 ]
  %28 = and i8 %27, 127
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i8 [ %28, %26 ], [ %25, %22 ]
  %31 = phi i32 [ 1, %26 ], [ %18, %22 ]
  %32 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %30, ptr %6, align 1, !tbaa !13
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i8, ptr %8, i64 %33
  %35 = icmp ugt i32 %7, 2
  br i1 %35, label %5, label %36, !llvm.loop !126

36:                                               ; preds = %29, %5
  %37 = phi i32 [ 1, %29 ], [ %7, %5 ]
  %38 = phi ptr [ %32, %29 ], [ %6, %5 ]
  store i8 0, ptr %38, align 1, !tbaa !13
  %39 = icmp slt i32 %37, 2
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @good(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #19 {
  %6 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #40
  %7 = load i8, ptr %0, align 1, !tbaa !13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %5
  %10 = phi i8 [ %18, %9 ], [ %7, %5 ]
  %11 = phi ptr [ %13, %9 ], [ %0, %5 ]
  %12 = phi ptr [ %17, %9 ], [ %6, %5 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %16, ptr %12, align 1, !tbaa !13
  %18 = load i8, ptr %13, align 1, !tbaa !13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !127

20:                                               ; preds = %9, %5
  %21 = phi ptr [ %6, %5 ], [ %17, %9 ]
  store i8 0, ptr %21, align 1, !tbaa !13
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %6 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 0, ptr @numhits, align 4, !tbaa !11
  %26 = load i32, ptr @cflag, align 4, !tbaa !11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  call fastcc void @ichartosstr(ptr noundef nonnull %0, i32 noundef 0) #32
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef nonnull @ichartosstr.out) #34
  store ptr %0, ptr @orig_word, align 8, !tbaa !7
  br label %57

30:                                               ; preds = %20
  %31 = call fastcc ptr @lookup(ptr noundef nonnull %6) #32
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %30
  store ptr %31, ptr @hits, align 16, !tbaa !117
  %34 = icmp eq i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), i8 0, i64 16, i1 false)
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = call fastcc i32 @cap_ok(ptr noundef nonnull %0, i32 noundef %25) #34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %33
  store i32 1, ptr @numhits, align 4, !tbaa !11
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = or i32 %4, %3
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  %46 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 5), align 2
  %47 = icmp sgt i16 %46, -1
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = zext i16 %46 to i64
  %51 = getelementptr inbounds %struct.dent, ptr %31, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !71
  %53 = shl nuw i64 1, %50
  %54 = and i64 %52, %53
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, ptr @numhits, align 4, !tbaa !11
  br label %57

57:                                               ; preds = %56, %49, %42, %39, %30, %28
  %58 = load i32, ptr @numhits, align 4, !tbaa !11
  %59 = icmp eq i32 %58, 0
  %60 = icmp ne i32 %2, 0
  %61 = or i1 %60, %59
  br i1 %61, label %62, label %120

62:                                               ; preds = %57
  call fastcc void @pfx_list_chk(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %25, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @pflagindex, i32 noundef %1, i32 noundef %2) #34
  %63 = load i8, ptr %6, align 16, !tbaa !13
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %64
  %66 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %64, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !38
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %101

69:                                               ; preds = %93, %62
  %70 = phi ptr [ %72, %93 ], [ %6, %62 ]
  %71 = phi ptr [ %97, %93 ], [ %65, %62 ]
  %72 = getelementptr inbounds i8, ptr %70, i64 1
  %73 = load ptr, ptr %71, align 8, !tbaa !13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %101, label %75

75:                                               ; preds = %69
  %76 = load i8, ptr %72, align 1, !tbaa !13
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %111, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.flagptr, ptr %73, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !38
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  call fastcc void @pfx_list_chk(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %25, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %73, i32 noundef %1, i32 noundef %2) #34
  %83 = load i32, ptr @numhits, align 4, !tbaa !11
  %84 = icmp eq i32 %83, 0
  %85 = or i1 %60, %84
  %86 = load i32, ptr @cflag, align 4
  %87 = or i32 %86, %1
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %85, i1 true, i1 %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %82
  %91 = load ptr, ptr %71, align 8, !tbaa !13
  %92 = load i8, ptr %72, align 1, !tbaa !13
  br label %93

93:                                               ; preds = %90, %78
  %94 = phi i8 [ %92, %90 ], [ %76, %78 ]
  %95 = phi ptr [ %91, %90 ], [ %73, %78 ]
  %96 = zext i8 %94 to i64
  %97 = getelementptr inbounds %struct.flagptr, ptr %95, i64 %96
  %98 = getelementptr inbounds %struct.flagptr, ptr %95, i64 %96, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !38
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %69, label %101, !llvm.loop !128

101:                                              ; preds = %93, %69, %62
  %102 = phi ptr [ %65, %62 ], [ %97, %93 ], [ %71, %69 ]
  call fastcc void @pfx_list_chk(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %25, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %102, i32 noundef %1, i32 noundef %2) #34
  %103 = load i32, ptr @numhits, align 4, !tbaa !11
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %60, %104
  %106 = load i32, ptr @cflag, align 4
  %107 = or i32 %106, %1
  %108 = icmp ne i32 %107, 0
  %109 = select i1 %105, i1 true, i1 %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  call fastcc void @chk_suf(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %25, i32 noundef %4, ptr noundef null, i32 noundef %1, i32 noundef %2) #34
  br label %111

111:                                              ; preds = %110, %75
  %112 = load i32, ptr @cflag, align 4, !tbaa !11
  br label %113

113:                                              ; preds = %111, %101, %82
  %114 = phi i32 [ %112, %111 ], [ %106, %101 ], [ %86, %82 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 @putchar(i32 noundef 10) #34
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, ptr @numhits, align 4, !tbaa !11
  br label %120

120:                                              ; preds = %118, %57
  %121 = phi i32 [ %119, %118 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #40
  ret i32 %121
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @compoundgood(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #19 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #40
  %4 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %8 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !129
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %47, label %13

13:                                               ; preds = %6
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #32
  %15 = sext i16 %8 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = add nsw i64 %15, -1
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %40, %13
  %22 = phi ptr [ %41, %40 ], [ %16, %13 ]
  %23 = load i8, ptr %22, align 1, !tbaa !13
  store i8 0, ptr %22, align 1, !tbaa !13
  %24 = call fastcc i32 @good(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 2) #32
  %25 = icmp eq i32 %24, 0
  store i8 %23, ptr %22, align 1, !tbaa !13
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = call fastcc i32 @good(ptr noundef nonnull %22, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 0) #32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call fastcc i32 @compoundgood(ptr noundef nonnull %22, i32 noundef 2) #34, !range !87
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29, %26
  %33 = call fastcc i64 @whatcap(ptr noundef nonnull %22) #32, !range !130
  %34 = call fastcc i64 @whatcap(ptr noundef nonnull %3) #32, !range !130
  %35 = call i64 @llvm.fshl.i64(i64 %34, i64 %34, i64 36)
  switch i64 %35, label %40 [
    i64 0, label %36
    i64 2, label %36
    i64 3, label %36
    i64 1, label %38
  ]

36:                                               ; preds = %32, %32, %32
  %.lcssa = phi i64 [ %33, %32 ], [ %33, %32 ], [ %33, %32 ]
  %37 = icmp eq i64 %.lcssa, 0
  br label %47

38:                                               ; preds = %32
  %.lcssa1 = phi i64 [ %33, %32 ]
  %39 = icmp eq i64 %.lcssa1, 268435456
  br label %47

40:                                               ; preds = %32, %29, %21
  %41 = getelementptr inbounds i8, ptr %22, i64 1
  %42 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !129
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds i8, ptr %22, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %21, !llvm.loop !131

47:                                               ; preds = %40, %38, %36, %13, %6, %2
  %48 = phi i1 [ %39, %38 ], [ %37, %36 ], [ false, %2 ], [ false, %6 ], [ false, %13 ], [ false, %40 ]
  %49 = zext i1 %48 to i32
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #40
  ret i32 %49
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @makepossibilities() unnamed_addr #19 {
  %1 = alloca [10 x [120 x i8]], align 16
  %2 = alloca [121 x i8], align 16
  %3 = alloca [10 x [120 x i8]], align 16
  %4 = alloca [120 x i8], align 16
  %5 = alloca [120 x i8], align 16
  %6 = alloca [120 x i8], align 16
  %7 = alloca [121 x i8], align 16
  %8 = alloca [120 x i8], align 16
  br label %9

9:                                                ; preds = %91, %0
  %10 = phi i64 [ 0, %0 ], [ %92, %91 ]
  %11 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %0 ], [ %93, %91 ]
  %12 = icmp ult <16 x i64> %11, <i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100>
  %13 = extractelement <16 x i1> %12, i64 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %10
  store i8 0, ptr %15, align 16, !tbaa !13
  br label %16

16:                                               ; preds = %14, %9
  %17 = extractelement <16 x i1> %12, i64 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = or i64 %10, 1
  %20 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %19
  store i8 0, ptr %20, align 8, !tbaa !13
  br label %21

21:                                               ; preds = %18, %16
  %22 = extractelement <16 x i1> %12, i64 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = or i64 %10, 2
  %25 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %24
  store i8 0, ptr %25, align 16, !tbaa !13
  br label %26

26:                                               ; preds = %23, %21
  %27 = extractelement <16 x i1> %12, i64 3
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or i64 %10, 3
  %30 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %29
  store i8 0, ptr %30, align 8, !tbaa !13
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <16 x i1> %12, i64 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or i64 %10, 4
  %35 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %34
  store i8 0, ptr %35, align 16, !tbaa !13
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <16 x i1> %12, i64 5
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or i64 %10, 5
  %40 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %39
  store i8 0, ptr %40, align 8, !tbaa !13
  br label %41

41:                                               ; preds = %38, %36
  %42 = extractelement <16 x i1> %12, i64 6
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = or i64 %10, 6
  %45 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %44
  store i8 0, ptr %45, align 16, !tbaa !13
  br label %46

46:                                               ; preds = %43, %41
  %47 = extractelement <16 x i1> %12, i64 7
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = or i64 %10, 7
  %50 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %49
  store i8 0, ptr %50, align 8, !tbaa !13
  br label %51

51:                                               ; preds = %48, %46
  %52 = extractelement <16 x i1> %12, i64 8
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = or i64 %10, 8
  %55 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %54
  store i8 0, ptr %55, align 16, !tbaa !13
  br label %56

56:                                               ; preds = %53, %51
  %57 = extractelement <16 x i1> %12, i64 9
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = or i64 %10, 9
  %60 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %59
  store i8 0, ptr %60, align 8, !tbaa !13
  br label %61

61:                                               ; preds = %58, %56
  %62 = extractelement <16 x i1> %12, i64 10
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = or i64 %10, 10
  %65 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %64
  store i8 0, ptr %65, align 16, !tbaa !13
  br label %66

66:                                               ; preds = %63, %61
  %67 = extractelement <16 x i1> %12, i64 11
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = or i64 %10, 11
  %70 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %69
  store i8 0, ptr %70, align 8, !tbaa !13
  br label %71

71:                                               ; preds = %68, %66
  %72 = extractelement <16 x i1> %12, i64 12
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = or i64 %10, 12
  %75 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %74
  store i8 0, ptr %75, align 16, !tbaa !13
  br label %76

76:                                               ; preds = %73, %71
  %77 = extractelement <16 x i1> %12, i64 13
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = or i64 %10, 13
  %80 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %79
  store i8 0, ptr %80, align 8, !tbaa !13
  br label %81

81:                                               ; preds = %78, %76
  %82 = extractelement <16 x i1> %12, i64 14
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = or i64 %10, 14
  %85 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %84
  store i8 0, ptr %85, align 16, !tbaa !13
  br label %86

86:                                               ; preds = %83, %81
  %87 = extractelement <16 x i1> %12, i64 15
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = or i64 %10, 15
  %90 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %89
  store i8 0, ptr %90, align 8, !tbaa !13
  br label %91

91:                                               ; preds = %88, %86
  %92 = add nuw nsw i64 %10, 16
  %93 = add <16 x i64> %11, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %94 = icmp eq i64 %92, 112
  br i1 %94, label %95, label %9, !llvm.loop !132

95:                                               ; preds = %91
  store i32 0, ptr @pcount, align 4, !tbaa !11
  store i32 0, ptr @maxposslen, align 4, !tbaa !11
  store i32 0, ptr @easypossibilities, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %8) #40
  %96 = tail call fastcc i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %95
  %99 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @itoken) #32
  %100 = load i8, ptr %8, align 16, !tbaa !13
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %102, %98
  %103 = phi i8 [ %109, %102 ], [ %100, %98 ]
  %104 = phi ptr [ %108, %102 ], [ %8, %98 ]
  %105 = zext i8 %103 to i64
  %106 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !13
  store i8 %107, ptr %104, align 1, !tbaa !13
  %108 = getelementptr inbounds i8, ptr %104, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !13
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %102, !llvm.loop !133

111:                                              ; preds = %102, %98
  %112 = call fastcc i32 @ins_cap(ptr noundef nonnull %8) #34
  br label %113

113:                                              ; preds = %111, %95
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %8) #40
  %114 = load i32, ptr @pcount, align 4
  %115 = icmp slt i32 %114, 100
  br i1 %115, label %116, label %361

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %7) #40
  %117 = getelementptr inbounds i8, ptr %7, i64 1
  %118 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @itoken) #32
  %119 = load i8, ptr @itoken, align 16, !tbaa !13
  %120 = icmp eq i8 %119, 0
  %121 = load i32, ptr @Trynum, align 4, !tbaa !11
  br i1 %120, label %130, label %122

122:                                              ; preds = %156, %116
  %123 = phi i8 [ %161, %156 ], [ %119, %116 ]
  %124 = phi i32 [ %158, %156 ], [ %121, %116 ]
  %125 = phi ptr [ %160, %156 ], [ %7, %116 ]
  %126 = phi ptr [ %159, %156 ], [ @itoken, %116 ]
  %127 = icmp sgt i32 %124, 0
  br i1 %127, label %128, label %156

128:                                              ; preds = %122
  %129 = icmp eq ptr %125, %7
  br label %134

130:                                              ; preds = %156, %116
  %131 = phi i32 [ %121, %116 ], [ %158, %156 ]
  %132 = phi ptr [ %7, %116 ], [ %160, %156 ]
  %133 = icmp sgt i32 %131, 0
  br i1 %133, label %163, label %182

134:                                              ; preds = %149, %128
  %135 = phi i64 [ 0, %128 ], [ %150, %149 ]
  %136 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !13
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !13
  %141 = icmp ne i8 %140, 0
  %142 = select i1 %141, i1 %129, i1 false
  br i1 %142, label %149, label %143

143:                                              ; preds = %134
  store i8 %137, ptr %125, align 1, !tbaa !13
  %144 = call fastcc i32 @good(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = call fastcc i32 @ins_cap(ptr noundef nonnull %7) #34
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %182, label %149

149:                                              ; preds = %146, %143, %134
  %150 = add nuw nsw i64 %135, 1
  %151 = load i32, ptr @Trynum, align 4, !tbaa !11
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %134, label %154, !llvm.loop !134

154:                                              ; preds = %149
  %.lcssa = phi i32 [ %151, %149 ]
  %155 = load i8, ptr %126, align 1, !tbaa !13
  br label %156

156:                                              ; preds = %154, %122
  %157 = phi i8 [ %155, %154 ], [ %123, %122 ]
  %158 = phi i32 [ %.lcssa, %154 ], [ %124, %122 ]
  %159 = getelementptr inbounds i8, ptr %126, i64 1
  %160 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 %157, ptr %125, align 1, !tbaa !13
  %161 = load i8, ptr %159, align 1, !tbaa !13
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %130, label %122, !llvm.loop !135

163:                                              ; preds = %177, %130
  %164 = phi i64 [ %178, %177 ], [ 0, %130 ]
  %165 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !13
  %167 = zext i8 %166 to i64
  %168 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !13
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  store i8 %166, ptr %132, align 1, !tbaa !13
  %172 = call fastcc i32 @good(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = call fastcc i32 @ins_cap(ptr noundef nonnull %7) #34
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %174, %171, %163
  %178 = add nuw nsw i64 %164, 1
  %179 = load i32, ptr @Trynum, align 4, !tbaa !11
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %163, label %182, !llvm.loop !136

182:                                              ; preds = %177, %174, %146, %130
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %7) #40
  %183 = load i32, ptr @pcount, align 4
  %184 = icmp slt i32 %183, 100
  br i1 %184, label %185, label %361

185:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #40
  %186 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @itoken) #32
  %187 = getelementptr inbounds i8, ptr %6, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !13
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #40
  br label %212

191:                                              ; preds = %185
  %192 = load i8, ptr %6, align 16, !tbaa !13
  br label %193

193:                                              ; preds = %203, %191
  %194 = phi i8 [ %204, %203 ], [ %192, %191 ]
  %195 = phi i8 [ %207, %203 ], [ %188, %191 ]
  %196 = phi ptr [ %206, %203 ], [ %187, %191 ]
  %197 = phi ptr [ %196, %203 ], [ %6, %191 ]
  store i8 %195, ptr %197, align 1, !tbaa !13
  store i8 %194, ptr %196, align 1, !tbaa !13
  %198 = call fastcc i32 @good(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %193
  %201 = call fastcc i32 @ins_cap(ptr noundef nonnull %6) #34
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %200, %193
  %204 = load i8, ptr %197, align 1, !tbaa !13
  %205 = load i8, ptr %196, align 1, !tbaa !13
  store i8 %205, ptr %197, align 1, !tbaa !13
  store i8 %204, ptr %196, align 1, !tbaa !13
  %206 = getelementptr inbounds i8, ptr %196, i64 1
  %207 = load i8, ptr %206, align 1, !tbaa !13
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %193, !llvm.loop !137

209:                                              ; preds = %203, %200
  %210 = load i32, ptr @pcount, align 4
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #40
  %211 = icmp slt i32 %210, 100
  br i1 %211, label %212, label %361

212:                                              ; preds = %209, %190
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #40
  %213 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #33
  %214 = icmp ult i64 %213, 2
  br i1 %214, label %233, label %215

215:                                              ; preds = %212
  %216 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([120 x i8], ptr @itoken, i64 0, i64 1)) #32
  %217 = load i8, ptr @itoken, align 16, !tbaa !13
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %233, label %219

219:                                              ; preds = %227, %215
  %220 = phi ptr [ %230, %227 ], [ %5, %215 ]
  %221 = phi ptr [ %228, %227 ], [ @itoken, %215 ]
  %222 = call fastcc i32 @good(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = call fastcc i32 @ins_cap(ptr noundef nonnull %5) #34
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %224, %219
  %228 = getelementptr inbounds i8, ptr %221, i64 1
  %229 = load i8, ptr %221, align 1, !tbaa !13
  %230 = getelementptr inbounds i8, ptr %220, i64 1
  store i8 %229, ptr %220, align 1, !tbaa !13
  %231 = load i8, ptr %228, align 1, !tbaa !13
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %234, label %219, !llvm.loop !138

233:                                              ; preds = %215, %212
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #40
  br label %237

234:                                              ; preds = %227, %224
  %235 = load i32, ptr @pcount, align 4
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #40
  %236 = icmp slt i32 %235, 100
  br i1 %236, label %237, label %361

237:                                              ; preds = %234, %233
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #40
  %238 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #33
  %239 = trunc i64 %238 to i32
  %240 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @itoken) #32
  %241 = load i8, ptr %4, align 16, !tbaa !13
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %243, %237
  %244 = phi i8 [ %250, %243 ], [ %241, %237 ]
  %245 = phi ptr [ %249, %243 ], [ %4, %237 ]
  %246 = zext i8 %244 to i64
  %247 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !13
  store i8 %248, ptr %245, align 1, !tbaa !13
  %249 = getelementptr inbounds i8, ptr %245, i64 1
  %250 = load i8, ptr %249, align 1, !tbaa !13
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %243, !llvm.loop !133

252:                                              ; preds = %243, %237
  %253 = icmp sgt i32 %239, 0
  br i1 %253, label %254, label %295

254:                                              ; preds = %252
  %255 = add i64 %238, 4294967295
  %256 = and i64 %255, 4294967295
  %257 = and i64 %238, 4294967295
  %258 = load i32, ptr @Trynum, align 4, !tbaa !11
  br label %259

259:                                              ; preds = %291, %254
  %260 = phi i32 [ %258, %254 ], [ %292, %291 ]
  %261 = phi i64 [ 0, %254 ], [ %293, %291 ]
  %262 = getelementptr inbounds [120 x i8], ptr %4, i64 0, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !13
  %264 = icmp sgt i32 %260, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %259
  %266 = icmp ne i64 %261, 0
  %267 = icmp ne i64 %261, %256
  %268 = select i1 %266, i1 %267, i1 false
  br label %269

269:                                              ; preds = %286, %265
  %270 = phi i64 [ 0, %265 ], [ %287, %286 ]
  %271 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !13
  %273 = icmp eq i8 %272, %263
  br i1 %273, label %286, label %274

274:                                              ; preds = %269
  %275 = zext i8 %272 to i64
  %276 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !13
  %278 = icmp eq i8 %277, 0
  %279 = select i1 %278, i1 true, i1 %268
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  store i8 %272, ptr %262, align 1, !tbaa !13
  %281 = call fastcc i32 @good(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = call fastcc i32 @ins_cap(ptr noundef nonnull %4) #34
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %295, label %286

286:                                              ; preds = %283, %280, %274, %269
  %287 = add nuw nsw i64 %270, 1
  %288 = load i32, ptr @Trynum, align 4, !tbaa !11
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %287, %289
  br i1 %290, label %269, label %291, !llvm.loop !139

291:                                              ; preds = %286, %259
  %292 = phi i32 [ %260, %259 ], [ %288, %286 ]
  store i8 %263, ptr %262, align 1, !tbaa !13
  %293 = add nuw nsw i64 %261, 1
  %294 = icmp eq i64 %293, %257
  br i1 %294, label %295, label %259, !llvm.loop !140

295:                                              ; preds = %291, %283, %252
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #40
  %296 = load i32, ptr @pcount, align 4
  %297 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %298 = icmp ne i32 %297, 1
  %299 = icmp slt i32 %296, 100
  %300 = select i1 %298, i1 %299, i1 false
  br i1 %300, label %301, label %361

301:                                              ; preds = %295
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %3) #40
  %302 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #33
  %303 = trunc i64 %302 to i32
  %304 = add i32 %303, -119
  %305 = icmp ult i32 %304, -116
  br i1 %305, label %359, label %306

306:                                              ; preds = %301
  %307 = getelementptr inbounds i8, ptr %2, i64 1
  %308 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %307, ptr noundef nonnull dereferenceable(1) @itoken) #32
  %309 = getelementptr inbounds i8, ptr %2, i64 2
  %310 = load i8, ptr %309, align 2, !tbaa !13
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %359, label %312

312:                                              ; preds = %306
  %313 = ptrtoint ptr %2 to i64
  br label %314

314:                                              ; preds = %355, %312
  %315 = phi ptr [ %309, %312 ], [ %356, %355 ]
  %316 = phi ptr [ %307, %312 ], [ %315, %355 ]
  %317 = load i8, ptr %316, align 1, !tbaa !13
  %318 = getelementptr inbounds i8, ptr %316, i64 -1
  store i8 %317, ptr %318, align 1, !tbaa !13
  store i8 0, ptr %316, align 1, !tbaa !13
  %319 = call fastcc i32 @good(ptr noundef nonnull %2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %355, label %321

321:                                              ; preds = %314
  %322 = call fastcc i32 @save_cap(ptr noundef nonnull %2, ptr noundef nonnull @itoken, ptr noundef nonnull %1) #34
  %323 = call fastcc i32 @good(ptr noundef nonnull %315, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %355, label %325

325:                                              ; preds = %321
  %326 = call fastcc i32 @save_cap(ptr noundef nonnull %315, ptr noundef nonnull %315, ptr noundef nonnull %3) #34
  %327 = icmp sgt i32 %322, 0
  br i1 %327, label %328, label %355

328:                                              ; preds = %325
  %329 = ptrtoint ptr %316 to i64
  %330 = sub i64 %329, %313
  %331 = icmp sgt i32 %326, 0
  %332 = zext i32 %322 to i64
  %333 = zext i32 %326 to i64
  br label %334

334:                                              ; preds = %352, %328
  %335 = phi i64 [ 0, %328 ], [ %353, %352 ]
  %336 = getelementptr inbounds [10 x [120 x i8]], ptr %1, i64 0, i64 %335
  %337 = getelementptr inbounds [10 x [120 x i8]], ptr %1, i64 0, i64 %335, i64 %330
  br i1 %331, label %338, label %352

338:                                              ; preds = %334
  %339 = getelementptr inbounds i8, ptr %337, i64 1
  br label %343

340:                                              ; preds = %349
  %341 = add nuw nsw i64 %344, 1
  %342 = icmp eq i64 %341, %333
  br i1 %342, label %352, label %343, !llvm.loop !141

343:                                              ; preds = %340, %338
  %344 = phi i64 [ 0, %338 ], [ %341, %340 ]
  store i8 32, ptr %337, align 1, !tbaa !13
  %345 = getelementptr inbounds [10 x [120 x i8]], ptr %3, i64 0, i64 %344
  %346 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %339, ptr noundef nonnull dereferenceable(1) %345) #32
  %347 = call fastcc i32 @insert(ptr noundef nonnull %336) #34, !range !142
  %348 = icmp slt i32 %347, 0
  br i1 %348, label %359, label %349

349:                                              ; preds = %343
  store i8 45, ptr %337, align 1, !tbaa !13
  %350 = call fastcc i32 @insert(ptr noundef nonnull %336) #34, !range !142
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %359, label %340

352:                                              ; preds = %340, %334
  %353 = add nuw nsw i64 %335, 1
  %354 = icmp eq i64 %353, %332
  br i1 %354, label %355, label %334, !llvm.loop !143

355:                                              ; preds = %352, %325, %321, %314
  %356 = getelementptr inbounds i8, ptr %315, i64 1
  %357 = load i8, ptr %356, align 1, !tbaa !13
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %359, label %314, !llvm.loop !144

359:                                              ; preds = %355, %349, %343, %306, %301
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %1) #40
  %360 = load i32, ptr @pcount, align 4
  br label %361

361:                                              ; preds = %359, %295, %234, %209, %182, %113
  %362 = phi i32 [ %360, %359 ], [ %296, %295 ], [ %235, %234 ], [ %210, %209 ], [ %114, %113 ], [ %183, %182 ]
  store i32 %362, ptr @easypossibilities, align 4, !tbaa !11
  %363 = icmp eq i32 %362, 0
  %364 = load i32, ptr @tryhardflag, align 4
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %363, i1 true, i1 %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %361
  %368 = call fastcc i32 @good(ptr noundef nonnull @itoken, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #32
  %369 = load i32, ptr @pcount, align 4
  br label %370

370:                                              ; preds = %367, %361
  %371 = phi i32 [ %369, %367 ], [ %362, %361 ]
  %372 = load i1, ptr @sortit, align 4
  br i1 %372, label %373, label %378

373:                                              ; preds = %370
  %374 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %375 = icmp sgt i32 %371, %374
  %376 = icmp ne i32 %371, 0
  %377 = and i1 %376, %375
  br i1 %377, label %387, label %396

378:                                              ; preds = %370
  %379 = icmp eq i32 %371, 0
  br i1 %379, label %396, label %380

380:                                              ; preds = %378
  %381 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %380
  %384 = zext i32 %381 to i64
  call void @qsort(ptr noundef nonnull @possibilities, i64 noundef %384, i64 noundef 120, ptr noundef nonnull @posscmp) #32
  %385 = load i32, ptr @pcount, align 4, !tbaa !11
  %386 = load i32, ptr @easypossibilities, align 4, !tbaa !11
  br label %387

387:                                              ; preds = %383, %380, %373
  %388 = phi i32 [ %374, %373 ], [ %386, %383 ], [ %381, %380 ]
  %389 = phi i32 [ %371, %373 ], [ %385, %383 ], [ %371, %380 ]
  %390 = icmp sgt i32 %389, %388
  br i1 %390, label %391, label %396

391:                                              ; preds = %387
  %392 = sext i32 %388 to i64
  %393 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %392
  %394 = sub nsw i32 %389, %388
  %395 = zext i32 %394 to i64
  call void @qsort(ptr noundef nonnull %393, i64 noundef %395, i64 noundef 120, ptr noundef nonnull @posscmp) #32
  br label %396

396:                                              ; preds = %391, %387, %378, %373
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @show_line(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #19 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !7
  %5 = icmp eq i32 %2, 0
  %6 = icmp ult ptr %0, %1
  %7 = load i32, ptr @co, align 4
  %8 = icmp sgt i32 %7, 1
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = ptrtoint ptr %1 to i64
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi ptr [ %0, %10 ], [ %20, %12 ]
  %14 = phi i32 [ 0, %10 ], [ %19, %12 ]
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %11, %15
  %17 = trunc i64 %16 to i32
  %18 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %14, i32 noundef 1, i32 noundef %17) #34
  %19 = add nsw i32 %18, %14
  %20 = load ptr, ptr %4, align 8, !tbaa !7
  %21 = icmp ult ptr %20, %1
  %22 = load i32, ptr @co, align 4
  %23 = add nsw i32 %22, -1
  %24 = icmp slt i32 %19, %23
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %12, label %26, !llvm.loop !145

26:                                               ; preds = %12, %3
  %27 = phi i32 [ %7, %3 ], [ %22, %12 ]
  %28 = phi ptr [ %0, %3 ], [ %20, %12 ]
  %29 = phi i32 [ 0, %3 ], [ %19, %12 ]
  br i1 %5, label %53, label %30

30:                                               ; preds = %26
  %31 = sext i32 %2 to i64
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = icmp ult ptr %28, %32
  %34 = add nsw i32 %27, -1
  %35 = icmp slt i32 %29, %34
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %53

37:                                               ; preds = %30
  %38 = ptrtoint ptr %32 to i64
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi ptr [ %28, %37 ], [ %47, %39 ]
  %41 = phi i32 [ %29, %37 ], [ %46, %39 ]
  %42 = ptrtoint ptr %40 to i64
  %43 = sub i64 %38, %42
  %44 = trunc i64 %43 to i32
  %45 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %41, i32 noundef 1, i32 noundef %44) #34
  %46 = add nsw i32 %45, %41
  %47 = load ptr, ptr %4, align 8, !tbaa !7
  %48 = icmp ult ptr %47, %32
  %49 = load i32, ptr @co, align 4
  %50 = add nsw i32 %49, -1
  %51 = icmp slt i32 %46, %50
  %52 = select i1 %48, i1 %51, i1 false
  br i1 %52, label %39, label %53, !llvm.loop !146

53:                                               ; preds = %39, %30, %26
  %54 = phi i32 [ %27, %26 ], [ %27, %30 ], [ %49, %39 ]
  %55 = phi ptr [ %28, %26 ], [ %28, %30 ], [ %47, %39 ]
  %56 = phi i32 [ %29, %26 ], [ %29, %30 ], [ %46, %39 ]
  %57 = load i8, ptr %55, align 1, !tbaa !13
  %58 = icmp ne i8 %57, 0
  %59 = add nsw i32 %54, -1
  %60 = icmp slt i32 %56, %59
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %73

62:                                               ; preds = %62, %53
  %63 = phi i32 [ %65, %62 ], [ %56, %53 ]
  %64 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %63, i32 noundef 1, i32 noundef 0) #34
  %65 = add nsw i32 %64, %63
  %66 = load ptr, ptr %4, align 8, !tbaa !7
  %67 = load i8, ptr %66, align 1, !tbaa !13
  %68 = icmp ne i8 %67, 0
  %69 = load i32, ptr @co, align 4
  %70 = add nsw i32 %69, -1
  %71 = icmp slt i32 %65, %70
  %72 = select i1 %68, i1 %71, i1 false
  br i1 %72, label %62, label %73, !llvm.loop !147

73:                                               ; preds = %62, %53
  %74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @line_size(ptr noundef %0, ptr noundef %1) unnamed_addr #19 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = icmp ult ptr %0, %1
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = ptrtoint ptr %1 to i64
  br label %7

7:                                                ; preds = %12, %5
  %8 = phi ptr [ %0, %5 ], [ %18, %12 ]
  %9 = phi i32 [ 0, %5 ], [ %17, %12 ]
  %10 = load i8, ptr %8, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = ptrtoint ptr %8 to i64
  %14 = sub i64 %6, %13
  %15 = trunc i64 %14 to i32
  %16 = call fastcc i32 @show_char(ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0, i32 noundef %15) #34
  %17 = add nsw i32 %16, %9
  %18 = load ptr, ptr %3, align 8, !tbaa !7
  %19 = icmp ult ptr %18, %1
  br i1 %19, label %7, label %20, !llvm.loop !148

20:                                               ; preds = %12, %7, %2
  %21 = phi i32 [ 0, %2 ], [ %9, %7 ], [ %17, %12 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @strtosichar(ptr noundef %0, i32 noundef %1) unnamed_addr #19 {
  %3 = tail call fastcc i32 @strtoichar(ptr noundef nonnull @strtosichar.out, ptr noundef %0, i32 noundef 184, i32 noundef %1) #34, !range !87
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.17.321, ptr noundef %0, i32 noundef 944, ptr noundef nonnull @.str.1.250) #36
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @ichartosstr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #19 {
  %3 = tail call fastcc i32 @ichartostr(ptr noundef nonnull @ichartosstr.out, ptr noundef %0, i32 noundef 184, i32 noundef %1) #34, !range !87
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.17.321, ptr noundef nonnull @ichartosstr.out, i32 noundef 958, ptr noundef nonnull @.str.1.250) #36
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @treeinsert(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #20 {
  %4 = alloca [120 x i8], align 16
  %5 = alloca [120 x i8], align 16
  %6 = alloca %struct.dent, align 8
  %7 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #40
  %8 = load i1, ptr @cantexpand, align 4
  br i1 %8, label %26, label %9

9:                                                ; preds = %3
  %10 = load i1, ptr @pershsize, align 4
  br i1 %10, label %26, label %11

11:                                               ; preds = %9
  %12 = load ptr, ptr @pershtab, align 8, !tbaa !7
  store i1 true, ptr @pershsize, align 4
  %13 = tail call noalias dereferenceable_or_null(1272) ptr @calloc(i64 noundef 53, i64 noundef 24) #37
  store ptr %13, ptr @pershtab, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = tail call i64 @fwrite(ptr nonnull @.str.12.319, i64 42, i64 1, ptr %16) #38
  %18 = icmp eq ptr %12, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @exit(i32 noundef 1) #35
  unreachable

20:                                               ; preds = %15
  %21 = load ptr, ptr @stderr, align 8, !tbaa !7
  %22 = tail call i64 @fwrite(ptr nonnull @.str.13.320, i64 47, i64 1, ptr %21) #38
  store i1 true, ptr @cantexpand, align 4
  store i1 false, ptr @pershsize, align 4
  store ptr %12, ptr @pershtab, align 8, !tbaa !7
  store i32 1, ptr @newwords, align 4, !tbaa !11
  br label %26

23:                                               ; preds = %11
  %24 = icmp eq ptr %12, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %12) #32
  br label %26

26:                                               ; preds = %25, %23, %20, %9, %3
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #40
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %28 = shl i64 %27, 32
  %29 = add i64 %28, -4294967296
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = icmp eq i8 %32, 10
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i8 0, ptr %31, align 1, !tbaa !13
  br label %35

35:                                               ; preds = %34, %26
  store ptr null, ptr %6, align 8, !tbaa !30
  %36 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 2
  %37 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !85
  %38 = sext i8 %37 to i32
  %39 = tail call ptr @index(ptr noundef nonnull %0, i32 noundef %38) #33
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i8 0, ptr %39, align 1, !tbaa !13
  br label %42

42:                                               ; preds = %41, %35
  %43 = call fastcc i32 @strtoichar(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 100, i32 noundef 1) #34, !range !87
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = call fastcc i32 @ichartostr(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef 1) #34, !range !87
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8, ptr %4, align 16, !tbaa !13
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %81, label %54

51:                                               ; preds = %45, %42
  %52 = load ptr, ptr @stderr, align 8, !tbaa !7
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.17.321, ptr noundef nonnull %0, i32 noundef 158, ptr noundef nonnull @.str.1.250) #36
  br label %131

54:                                               ; preds = %77, %48
  %55 = phi i8 [ %78, %77 ], [ %49, %48 ]
  %56 = phi ptr [ %79, %77 ], [ %4, %48 ]
  %57 = zext i8 %55 to i64
  %58 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds i8, ptr %56, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !13
  br label %77

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %57
  %66 = load i8, ptr %65, align 1, !tbaa !13
  %67 = icmp eq i8 %66, 0
  %68 = icmp eq ptr %56, %4
  %69 = or i1 %68, %67
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds i8, ptr %56, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !13
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %64
  %75 = load ptr, ptr @stderr, align 8, !tbaa !7
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.2.251, ptr noundef %0) #36
  br label %131

77:                                               ; preds = %70, %61
  %78 = phi i8 [ %63, %61 ], [ %72, %70 ]
  %79 = getelementptr inbounds i8, ptr %56, i64 1
  %80 = icmp eq i8 %78, 0
  br i1 %80, label %81, label %54, !llvm.loop !149

81:                                               ; preds = %77, %48
  %82 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %83 = trunc i64 %82 to i32
  %84 = call fastcc i64 @whatcap(ptr noundef nonnull %4) #34, !range !130
  %85 = or i64 %84, 67108864
  store i64 %85, ptr %36, align 8, !tbaa !71
  %86 = icmp sgt i32 %83, 99
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load ptr, ptr @stderr, align 8, !tbaa !7
  %89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.17.321, ptr noundef %0, i32 noundef 188, ptr noundef nonnull @.str.1.250) #36
  br label %131

90:                                               ; preds = %81
  %91 = add i64 %82, 1
  %92 = and i64 %91, 4294967295
  %93 = call noalias ptr @malloc(i64 noundef %92) #39
  %94 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  store ptr %93, ptr %94, align 8, !tbaa !28
  %95 = icmp eq ptr %93, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load ptr, ptr @stderr, align 8, !tbaa !7
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.3.254, ptr noundef %0) #36
  br label %131

99:                                               ; preds = %90
  %100 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(1) %0) #32
  %101 = and i64 %84, 805306368
  %102 = icmp eq i64 %101, 805306368
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call fastcc void @chupcase(ptr noundef nonnull %93) #34
  br label %104

104:                                              ; preds = %103, %99
  br i1 %40, label %132, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds i8, ptr %39, i64 1
  br label %107

107:                                              ; preds = %123, %105
  %108 = phi i64 [ %85, %105 ], [ %124, %123 ]
  %109 = phi ptr [ %106, %105 ], [ %130, %123 ]
  %110 = load i8, ptr %109, align 1, !tbaa !13
  switch i8 %110, label %111 [
    i8 0, label %132
    i8 10, label %132
  ]

111:                                              ; preds = %107
  %112 = zext i8 %110 to i32
  %113 = add i8 %110, -65
  %114 = icmp ult i8 %113, 27
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = add nsw i32 %112, -65
  %117 = zext i32 %116 to i64
  %118 = shl nuw nsw i64 1, %117
  %119 = or i64 %108, %118
  store i64 %119, ptr %36, align 8, !tbaa !71
  br label %123

120:                                              ; preds = %111
  %121 = load ptr, ptr @stderr, align 8, !tbaa !7
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.4.255, i32 noundef %112) #36
  br label %123

123:                                              ; preds = %120, %115
  %124 = phi i64 [ %108, %120 ], [ %119, %115 ]
  %125 = getelementptr inbounds i8, ptr %109, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !13
  %127 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !85
  %128 = icmp eq i8 %126, %127
  %129 = getelementptr inbounds i8, ptr %109, i64 2
  %130 = select i1 %128, ptr %129, ptr %125
  br label %107, !llvm.loop !150

131:                                              ; preds = %96, %87, %74, %51
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #40
  br label %258

132:                                              ; preds = %107, %107, %104
  %133 = phi i64 [ %85, %104 ], [ %108, %107 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #40
  %134 = icmp eq i32 %2, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132
  %136 = or i64 %133, 134217728
  store i64 %136, ptr %36, align 8, !tbaa !71
  br label %137

137:                                              ; preds = %135, %132
  %138 = call fastcc i32 @strtoichar(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 120, i32 noundef 1) #32, !range !87
  %139 = load i8, ptr %7, align 16, !tbaa !13
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %141, %137
  %142 = phi i8 [ %148, %141 ], [ %139, %137 ]
  %143 = phi ptr [ %147, %141 ], [ %7, %137 ]
  %144 = zext i8 %142 to i64
  %145 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !13
  store i8 %146, ptr %143, align 1, !tbaa !13
  %147 = getelementptr inbounds i8, ptr %143, i64 1
  %148 = load i8, ptr %147, align 1, !tbaa !13
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %141, !llvm.loop !133

150:                                              ; preds = %141, %137
  %151 = call fastcc ptr @lookup(ptr noundef nonnull %7) #32
  %152 = icmp eq ptr %151, null
  br i1 %152, label %219, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.dent, ptr %151, i64 0, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !71
  %156 = and i64 %155, 1879048192
  %157 = icmp eq i64 %156, 1342177280
  br i1 %157, label %158, label %168

158:                                              ; preds = %164, %153
  %159 = phi ptr [ %165, %164 ], [ %151, %153 ]
  %160 = getelementptr inbounds %struct.dent, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !71
  %162 = and i64 %161, 1073741824
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %159, align 8, !tbaa !30
  %166 = call fastcc i32 @combine_two_entries(ptr noundef nonnull %151, ptr noundef %165, ptr noundef nonnull %6) #34, !range !87
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %158, label %255, !llvm.loop !151

168:                                              ; preds = %153
  %169 = call fastcc i32 @combine_two_entries(ptr noundef nonnull %151, ptr noundef nonnull %151, ptr noundef nonnull %6) #34, !range !87
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %255

171:                                              ; preds = %168, %158
  %172 = phi ptr [ %151, %168 ], [ %159, %158 ]
  %173 = load i64, ptr %154, align 8, !tbaa !71
  %174 = and i64 %173, 1879048192
  switch i64 %174, label %182 [
    i64 268435456, label %175
    i64 1342177280, label %183
  ]

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.dent, ptr %172, i64 0, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !71
  %178 = load i64, ptr %36, align 8, !tbaa !71
  %179 = xor i64 %178, %177
  %180 = and i64 %179, 134217728
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %175, %171
  call fastcc void @addvheader(ptr noundef nonnull %151) #34
  br label %183

183:                                              ; preds = %182, %175, %171
  %184 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #39
  %185 = icmp eq ptr %184, null
  br i1 %185, label %215, label %186

186:                                              ; preds = %183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %184, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !152
  %187 = load ptr, ptr %151, align 8, !tbaa !30
  store ptr %187, ptr %184, align 8, !tbaa !30
  store ptr %184, ptr %151, align 8, !tbaa !30
  %188 = load i64, ptr %154, align 8, !tbaa !71
  %189 = and i64 %188, 1073741824
  %190 = getelementptr inbounds %struct.dent, ptr %184, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !71
  %192 = or i64 %191, %189
  store i64 %192, ptr %190, align 8, !tbaa !71
  %193 = or i64 %188, 1073741824
  %194 = load i64, ptr %36, align 8, !tbaa !71
  %195 = and i64 %194, -1946157057
  %196 = or i64 %195, %193
  store i64 %196, ptr %154, align 8, !tbaa !71
  %197 = and i64 %194, 805306368
  %198 = icmp eq i64 %197, 805306368
  br i1 %198, label %199, label %202

199:                                              ; preds = %186
  %200 = load ptr, ptr %94, align 8, !tbaa !28
  %201 = getelementptr inbounds %struct.dent, ptr %184, i64 0, i32 1
  store ptr %200, ptr %201, align 8, !tbaa !28
  br label %255

202:                                              ; preds = %186
  %203 = getelementptr inbounds %struct.dent, ptr %184, i64 0, i32 1
  store ptr null, ptr %203, align 8, !tbaa !28
  %204 = load ptr, ptr %94, align 8, !tbaa !28
  %205 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %206 = icmp eq ptr %205, null
  %207 = icmp ugt ptr %205, %204
  %208 = or i1 %206, %207
  %209 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, ptr %205, i64 %210
  %212 = icmp ult ptr %211, %204
  %213 = select i1 %208, i1 true, i1 %212
  br i1 %213, label %214, label %255

214:                                              ; preds = %202
  call void @free(ptr noundef %204) #32
  br label %255

215:                                              ; preds = %183
  %216 = load ptr, ptr @stderr, align 8, !tbaa !7
  %217 = load ptr, ptr %94, align 8, !tbaa !28
  %218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef nonnull @.str.3.254, ptr noundef %217) #36
  call void @free(ptr noundef %217) #32
  br label %258

219:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #40
  %220 = call fastcc i32 @strtoichar(ptr noundef nonnull %5, ptr noundef nonnull %93, i32 noundef 120, i32 noundef 1) #32, !range !87
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr @stderr, align 8, !tbaa !7
  %224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.17.321, ptr noundef nonnull %93, i32 noundef 449, ptr noundef nonnull @.str.18.322) #36
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i1, ptr @pershsize, align 4
  %227 = select i1 %226, i32 53, i32 0
  %228 = call fastcc i32 @hash(ptr noundef nonnull %5, i32 noundef %227) #32
  %229 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds %struct.dent, ptr %229, i64 %230
  %232 = getelementptr inbounds %struct.dent, ptr %229, i64 %230, i32 2
  %233 = load i64, ptr %232, align 8, !tbaa !71
  %234 = and i64 %233, 67108864
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %231, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !152
  br label %248

237:                                              ; preds = %237, %225
  %238 = phi ptr [ %239, %237 ], [ %231, %225 ]
  %239 = load ptr, ptr %238, align 8, !tbaa !30
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %237, !llvm.loop !153

241:                                              ; preds = %237
  %.lcssa = phi ptr [ %238, %237 ]
  %242 = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #37
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load ptr, ptr @stderr, align 8, !tbaa !7
  %246 = call i64 @fwrite(ptr nonnull @.str.12.319, i64 42, i64 1, ptr %245) #38
  call void @exit(i32 noundef 1) #35
  unreachable

247:                                              ; preds = %241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %242, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !152
  store ptr %242, ptr %.lcssa, align 8, !tbaa !30
  br label %248

248:                                              ; preds = %247, %236
  %249 = phi ptr [ %231, %236 ], [ %242, %247 ]
  store ptr null, ptr %249, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #40
  %250 = getelementptr inbounds %struct.dent, ptr %249, i64 0, i32 2
  %251 = load i64, ptr %250, align 8, !tbaa !71
  %252 = and i64 %251, 805306368
  %253 = icmp eq i64 %252, 805306368
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  call fastcc void @addvheader(ptr noundef nonnull %249) #32
  br label %255

255:                                              ; preds = %254, %248, %214, %202, %199, %168, %164
  %256 = load i32, ptr @newwords, align 4, !tbaa !11
  %257 = or i32 %256, %2
  store i32 %257, ptr @newwords, align 4, !tbaa !11
  br label %258

258:                                              ; preds = %255, %215, %131
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @givehelp(i32 noundef %0) unnamed_addr #19 {
  %2 = icmp eq i32 %0, 0
  %3 = load ptr, ptr @stderr, align 8
  %4 = load ptr, ptr @stdout, align 8
  %5 = select i1 %2, ptr %3, ptr %4
  %6 = tail call i64 @fwrite(ptr nonnull @.str, i64 57, i64 1, ptr %5)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 67, i64 1, ptr %5)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 59, i64 1, ptr %5)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 62, i64 1, ptr %5)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %5)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 19, i64 1, ptr %5)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 49, i64 1, ptr %5)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 41, i64 1, ptr %5)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 55, i64 1, ptr %5)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 65, i64 1, ptr %5)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 65, i64 1, ptr %5)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 50, i64 1, ptr %5)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr %5)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 91, i64 1, ptr %5)
  %20 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 83, i64 1, ptr %5)
  %21 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %5)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %5)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 26, i64 1, ptr %5)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 32, i64 1, ptr %5)
  br i1 %2, label %32, label %25

25:                                               ; preds = %1
  %26 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %4)
  %27 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 28, i64 1, ptr %4)
  %28 = tail call i32 @fflush(ptr noundef %4) #34
  br label %29

29:                                               ; preds = %29, %25
  %30 = tail call i32 @getchar() #34
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %29, !llvm.loop !154

32:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @getline_ispell(ptr noundef %0) unnamed_addr #19 {
  %2 = ptrtoint ptr %0 to i64
  br label %3

3:                                                ; preds = %46, %1
  %4 = phi ptr [ %0, %1 ], [ %47, %46 ]
  %5 = ptrtoint ptr %4 to i64
  %6 = load ptr, ptr @stdout, align 8, !tbaa !7
  %7 = tail call i32 @fflush(ptr noundef %6) #34
  %8 = tail call i32 @getchar() #34
  %9 = and i32 %8, 127
  switch i32 %9, label %20 [
    i32 92, label %10
    i32 7, label %48
    i32 13, label %19
    i32 10, label %19
  ]

10:                                               ; preds = %3
  %11 = tail call i32 @putchar(i32 noundef 92) #34
  %12 = load ptr, ptr @stdout, align 8, !tbaa !7
  %13 = tail call i32 @fflush(ptr noundef %12) #34
  %14 = tail call i32 @getchar() #34
  %15 = and i32 %14, 127
  %16 = tail call i32 @putchar(i32 noundef %15) #34
  %17 = trunc i32 %15 to i8
  %18 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %17, ptr %4, align 1, !tbaa !13
  br label %46

19:                                               ; preds = %3, %3
  %.lcssa1 = phi ptr [ %4, %3 ], [ %4, %3 ]
  store i8 0, ptr %.lcssa1, align 1, !tbaa !13
  br label %48

20:                                               ; preds = %3
  %21 = load i32, ptr @uerasechar, align 4, !tbaa !11
  %22 = icmp eq i32 %9, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = icmp eq ptr %4, %0
  br i1 %24, label %46, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %4, i64 -1
  %27 = tail call i32 @putchar(i32 noundef 32) #34
  br label %46

28:                                               ; preds = %20
  %29 = load i32, ptr @ukillchar, align 4, !tbaa !11
  %30 = icmp eq i32 %9, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = icmp eq ptr %4, %0
  br i1 %32, label %46, label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %35, %33 ], [ %4, %31 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  %36 = tail call i32 @putchar(i32 noundef 32) #34
  %37 = icmp eq ptr %35, %0
  br i1 %37, label %42, label %33, !llvm.loop !155

38:                                               ; preds = %28
  %39 = trunc i32 %9 to i8
  %40 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %39, ptr %4, align 1, !tbaa !13
  %41 = tail call i32 @putchar(i32 noundef %9) #34
  br label %46

42:                                               ; preds = %33
  %43 = sub i64 0, %5
  %44 = getelementptr i8, ptr %4, i64 %2
  %45 = getelementptr i8, ptr %44, i64 %43
  br label %46

46:                                               ; preds = %42, %38, %31, %25, %23, %10
  %47 = phi ptr [ %18, %10 ], [ %26, %25 ], [ %0, %23 ], [ %40, %38 ], [ %0, %31 ], [ %45, %42 ]
  br label %3

48:                                               ; preds = %19, %3
  %49 = phi ptr [ %0, %19 ], [ null, %3 ]
  ret ptr %49
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @shellescape(ptr noundef %0) unnamed_addr #20 {
  %2 = alloca [100 x ptr], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40
  %4 = load i8, ptr %0, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %24, %1
  %7 = phi i64 [ %17, %24 ], [ 0, %1 ]
  %8 = phi i8 [ %26, %24 ], [ %4, %1 ]
  %9 = phi ptr [ %25, %24 ], [ %0, %1 ]
  br label %10

10:                                               ; preds = %13, %6
  %11 = phi i8 [ %15, %13 ], [ %8, %6 ]
  %12 = phi ptr [ %14, %13 ], [ %9, %6 ]
  switch i8 %11, label %16 [
    i8 32, label %13
    i8 9, label %13
    i8 0, label %28
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !13
  br label %10, !llvm.loop !156

16:                                               ; preds = %10
  %.lcssa = phi ptr [ %12, %10 ]
  %17 = add nuw i64 %7, 1
  %18 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %7
  store ptr %.lcssa, ptr %18, align 8, !tbaa !7
  br label %19

19:                                               ; preds = %22, %16
  %20 = phi ptr [ %.lcssa, %16 ], [ %23, %22 ]
  %21 = load i8, ptr %20, align 1, !tbaa !13
  switch i8 %21, label %22 [
    i8 0, label %28
    i8 9, label %24
    i8 32, label %24
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  br label %19, !llvm.loop !157

24:                                               ; preds = %19, %19
  %.lcssa1 = phi ptr [ %20, %19 ], [ %20, %19 ]
  %25 = getelementptr inbounds i8, ptr %.lcssa1, i64 1
  store i8 0, ptr %.lcssa1, align 1, !tbaa !13
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %6, !llvm.loop !158

28:                                               ; preds = %24, %19, %10, %1
  %29 = phi i64 [ 0, %1 ], [ %17, %19 ], [ %7, %10 ], [ %17, %24 ]
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !7
  %32 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #32
  %33 = load ptr, ptr @oldint, align 8, !tbaa !7
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef %33) #32
  %35 = load ptr, ptr @oldterm, align 8, !tbaa !7
  %36 = tail call ptr @signal(i32 noundef 15, ptr noundef %35) #32
  %37 = load ptr, ptr @oldttin, align 8, !tbaa !7
  %38 = tail call ptr @signal(i32 noundef 21, ptr noundef %37) #32
  %39 = load ptr, ptr @oldttou, align 8, !tbaa !7
  %40 = tail call ptr @signal(i32 noundef 22, ptr noundef %39) #32
  %41 = load ptr, ptr @oldtstp, align 8, !tbaa !7
  %42 = tail call ptr @signal(i32 noundef 20, ptr noundef %41) #32
  %43 = tail call i32 @fork() #32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load ptr, ptr %2, align 16, !tbaa !7
  %47 = call i32 @execvp(ptr noundef %46, ptr noundef nonnull %2) #32
  call void @_exit(i32 noundef 123) #35
  unreachable

48:                                               ; preds = %28
  %49 = icmp sgt i32 %43, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %48
  %51 = call i32 (ptr, ...) @wait(ptr noundef nonnull %3) #32
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %53, label %50, !llvm.loop !159

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 4, !tbaa !11
  %55 = icmp ne i32 %54, 31488
  %56 = sext i1 %55 to i32
  br label %59

57:                                               ; preds = %48
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.293)
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ -1, %57 ], [ %56, %53 ]
  store i32 %60, ptr %3, align 4, !tbaa !11
  %61 = load ptr, ptr @oldint, align 8, !tbaa !7
  %62 = icmp eq ptr %61, inttoptr (i64 1 to ptr)
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #32
  br label %65

65:                                               ; preds = %63, %59
  %66 = load ptr, ptr @oldterm, align 8, !tbaa !7
  %67 = icmp eq ptr %66, inttoptr (i64 1 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #32
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr @oldttin, align 8, !tbaa !7
  %72 = icmp eq ptr %71, inttoptr (i64 1 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #32
  br label %75

75:                                               ; preds = %73, %70
  %76 = load ptr, ptr @oldttou, align 8, !tbaa !7
  %77 = icmp eq ptr %76, inttoptr (i64 1 to ptr)
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #32
  br label %80

80:                                               ; preds = %78, %75
  %81 = load ptr, ptr @oldtstp, align 8, !tbaa !7
  %82 = icmp eq ptr %81, inttoptr (i64 1 to ptr)
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #32
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #32
  %87 = load i32, ptr %3, align 4, !tbaa !11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.294) #34
  %91 = load ptr, ptr @stdout, align 8, !tbaa !7
  %92 = call i32 @fflush(ptr noundef %91) #34
  br label %93

93:                                               ; preds = %93, %89
  %94 = call i32 @getchar() #34
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %93, !llvm.loop !160

96:                                               ; preds = %93
  %97 = load i32, ptr %3, align 4, !tbaa !11
  br label %98

98:                                               ; preds = %96, %85
  %99 = phi i32 [ %97, %96 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %2) #40
  ret i32 %99
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @ichartostr(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #26 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %58

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  %8 = load i32, ptr @defdupchar, align 4
  br label %9

9:                                                ; preds = %55, %6
  %10 = phi ptr [ %0, %6 ], [ %56, %55 ]
  %11 = phi i32 [ %2, %6 ], [ %13, %55 ]
  %12 = phi ptr [ %1, %6 ], [ %14, %55 ]
  %13 = add nsw i32 %11, -1
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %12, align 1, !tbaa !13
  %16 = zext i8 %15 to i32
  %17 = icmp eq i8 %15, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %9
  %19 = icmp sgt i8 %15, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %15, ptr %10, align 1, !tbaa !13
  br label %55

22:                                               ; preds = %18
  %23 = add nsw i32 %16, -128
  br i1 %7, label %24, label %44

24:                                               ; preds = %22
  %25 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !41
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = zext i32 %25 to i64
  br label %29

29:                                               ; preds = %40, %27
  %30 = phi i64 [ %28, %27 ], [ %31, %40 ]
  %31 = add nsw i64 %30, -1
  %32 = and i64 %31, 4294967295
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !11
  %35 = icmp eq i32 %34, %8
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %32
  %38 = load i32, ptr %37, align 4, !tbaa !11
  %39 = icmp eq i32 %38, %23
  br i1 %39, label %42, label %40

40:                                               ; preds = %36, %29
  %41 = icmp ugt i64 %30, 1
  br i1 %41, label %29, label %44, !llvm.loop !161

42:                                               ; preds = %36
  %.lcssa = phi i64 [ %31, %36 ]
  %43 = trunc i64 %.lcssa to i32
  br label %44

44:                                               ; preds = %42, %40, %24, %22
  %45 = phi i32 [ %23, %22 ], [ %23, %24 ], [ %43, %42 ], [ %23, %40 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %46
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi ptr [ %10, %44 ], [ %53, %48 ]
  %50 = phi ptr [ %47, %44 ], [ %51, %48 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %50, align 1, !tbaa !13
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %52, ptr %49, align 1, !tbaa !13
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %55, label %48, !llvm.loop !162

55:                                               ; preds = %48, %20
  %56 = phi ptr [ %21, %20 ], [ %49, %48 ]
  %57 = icmp sgt i32 %11, 2
  br i1 %57, label %9, label %58, !llvm.loop !163

58:                                               ; preds = %55, %9, %4
  %59 = phi i32 [ %2, %4 ], [ %11, %9 ], [ 1, %55 ]
  %60 = phi ptr [ %0, %4 ], [ %10, %9 ], [ %56, %55 ]
  store i8 0, ptr %60, align 1, !tbaa !13
  %61 = icmp slt i32 %59, 2
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @inserttoken(ptr noundef %0) unnamed_addr #23 {
  %2 = ptrtoint ptr %0 to i64
  %3 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #40
  %4 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @contextbufs) #32
  %5 = icmp eq ptr %0, @contextbufs
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = sub i64 %2, ptrtoint (ptr @contextbufs to i64)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @contextbufs, ptr nonnull align 16 %3, i64 %7, i1 false), !tbaa !13
  %8 = getelementptr i8, ptr @contextbufs, i64 %7
  %9 = getelementptr i8, ptr %3, i64 %7
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi ptr [ @contextbufs, %1 ], [ %8, %6 ]
  %12 = phi ptr [ %3, %1 ], [ %9, %6 ]
  %13 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %2
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  %17 = call fastcc ptr @skipoverword(ptr noundef nonnull @ctoken) #32
  %18 = icmp ugt ptr %17, @ctoken
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = ptrtoint ptr %17 to i64
  %21 = sub i64 %20, ptrtoint (ptr @ctoken to i64)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr nonnull align 16 @ctoken, i64 %21, i1 false), !tbaa !13
  %22 = getelementptr i8, ptr @ctoken, i64 %21
  %23 = getelementptr i8, ptr %11, i64 %21
  br label %24

24:                                               ; preds = %19, %10
  %25 = phi ptr [ %11, %10 ], [ %23, %19 ]
  %26 = phi ptr [ @ctoken, %10 ], [ %22, %19 ]
  store ptr %25, ptr @currentchar, align 8, !tbaa !7
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  store i8 %27, ptr %25, align 1, !tbaa !13
  store i8 0, ptr %26, align 1, !tbaa !13
  %30 = getelementptr inbounds i8, ptr %25, i64 1
  %31 = getelementptr inbounds i8, ptr %26, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %29
  %35 = phi i8 [ %40, %34 ], [ %32, %29 ]
  %36 = phi ptr [ %39, %34 ], [ %31, %29 ]
  %37 = phi ptr [ %38, %34 ], [ %30, %29 ]
  store i8 %35, ptr %37, align 1, !tbaa !13
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %34, !llvm.loop !164

42:                                               ; preds = %34, %29, %24
  %43 = phi ptr [ %25, %24 ], [ %30, %29 ], [ %38, %34 ]
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi ptr [ %49, %44 ], [ %43, %42 ]
  %46 = phi ptr [ %47, %44 ], [ %16, %42 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = load i8, ptr %46, align 1, !tbaa !13
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  store i8 %48, ptr %45, align 1, !tbaa !13
  %50 = icmp eq i8 %48, 0
  br i1 %50, label %51, label %44, !llvm.loop !165

51:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #40
  ret void
}

; Function Attrs: nofree nounwind optsize
declare i32 @fork() local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #27

; Function Attrs: optsize
declare i32 @wait(...) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #28

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i64 @whatcap(ptr nocapture noundef readonly %0) unnamed_addr #29 {
  %2 = load i8, ptr %0, align 1, !tbaa !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %11, %1
  %5 = phi i8 [ %13, %11 ], [ %2, %1 ]
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %41, label %4, !llvm.loop !166

15:                                               ; preds = %19
  %16 = getelementptr inbounds i8, ptr %21, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19, !llvm.loop !167

19:                                               ; preds = %15, %4
  %20 = phi i8 [ %17, %15 ], [ %5, %4 ]
  %21 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %22 = zext i8 %20 to i64
  %23 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %15, label %41

26:                                               ; preds = %15
  %27 = zext i8 %2 to i64
  %28 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !13
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %36, %26
  %32 = phi ptr [ %33, %36 ], [ %0, %26 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = zext i8 %34 to i64
  %38 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %31, label %41, !llvm.loop !168

41:                                               ; preds = %36, %31, %26, %19, %11, %1
  %42 = phi i64 [ 0, %26 ], [ 268435456, %1 ], [ 805306368, %36 ], [ 536870912, %31 ], [ 805306368, %19 ], [ 268435456, %11 ]
  ret i64 %42
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @chupcase(ptr noundef %0) unnamed_addr #19 {
  tail call fastcc void @strtosichar(ptr noundef %0, i32 noundef 1) #34
  %2 = load i8, ptr @strtosichar.out, align 16, !tbaa !13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ @strtosichar.out, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !13
  store i8 %9, ptr %6, align 1, !tbaa !13
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !133

13:                                               ; preds = %4, %1
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, 1
  %17 = tail call fastcc i32 @ichartostr(ptr noundef %0, ptr noundef nonnull @strtosichar.out, i32 noundef %16, i32 noundef 1) #34, !range !87
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @lookup(ptr nocapture noundef readonly %0) unnamed_addr #19 {
  %2 = alloca [120 x i8], align 16
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #40
  %4 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %5 = load i32, ptr @hashsize, align 4, !tbaa !11
  %6 = tail call fastcc i32 @hash(ptr noundef %0, i32 noundef %5) #32
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.dent, ptr %4, i64 %7
  br label %9

9:                                                ; preds = %34, %1
  %10 = phi ptr [ %3, %1 ], [ %35, %34 ]
  %11 = phi i32 [ 120, %1 ], [ %13, %34 ]
  %12 = phi ptr [ %0, %1 ], [ %14, %34 ]
  %13 = add nsw i32 %11, -1
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = load i8, ptr %12, align 1, !tbaa !13
  %16 = zext i8 %15 to i64
  %17 = icmp eq i8 %15, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  %.lcssa = phi ptr [ %10, %9 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !13
  br label %40

19:                                               ; preds = %9
  %20 = icmp sgt i8 %15, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %15, ptr %10, align 1, !tbaa !13
  br label %34

23:                                               ; preds = %19
  %24 = add nuw nsw i64 %16, 4294967168
  %25 = and i64 %24, 4294967295
  %26 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %25
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi ptr [ %10, %23 ], [ %32, %27 ]
  %29 = phi ptr [ %26, %23 ], [ %30, %27 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %29, align 1, !tbaa !13
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %31, ptr %28, align 1, !tbaa !13
  %33 = icmp eq i8 %31, 0
  br i1 %33, label %34, label %27, !llvm.loop !162

34:                                               ; preds = %27, %21
  %35 = phi ptr [ %22, %21 ], [ %28, %27 ]
  %36 = icmp ugt i32 %11, 2
  br i1 %36, label %9, label %37, !llvm.loop !163

37:                                               ; preds = %34
  %.lcssa2 = phi ptr [ %35, %34 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !13
  %38 = load ptr, ptr @stderr, align 8, !tbaa !7
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.17.321, ptr noundef nonnull %3, i32 noundef 475, ptr noundef nonnull @.str.11.244) #36
  br label %40

40:                                               ; preds = %37, %18
  %41 = icmp eq ptr %4, null
  br i1 %41, label %73, label %42

42:                                               ; preds = %40
  %43 = load i8, ptr %3, align 16
  %44 = getelementptr inbounds i8, ptr %3, i64 1
  br label %45

45:                                               ; preds = %69, %42
  %46 = phi ptr [ %8, %42 ], [ %71, %69 ]
  %47 = getelementptr inbounds %struct.dent, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !28
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = load i8, ptr %48, align 1, !tbaa !13
  %52 = icmp eq i8 %51, %43
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %48, i64 1
  %55 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %44) #33
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %139, label %57

57:                                               ; preds = %53, %50, %45
  %58 = getelementptr inbounds %struct.dent, ptr %46, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !71
  %60 = and i64 %59, 1073741824
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %62, %57
  %63 = phi ptr [ %64, %62 ], [ %46, %57 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !30
  %65 = getelementptr inbounds %struct.dent, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !71
  %67 = and i64 %66, 1073741824
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %62, !llvm.loop !169

69:                                               ; preds = %62, %57
  %70 = phi ptr [ %46, %57 ], [ %64, %62 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !30
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %45, !llvm.loop !170

73:                                               ; preds = %69, %40
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #40
  %74 = load i1, ptr @pershsize, align 4
  br i1 %74, label %75, label %137

75:                                               ; preds = %99, %73
  %76 = phi ptr [ %100, %99 ], [ %2, %73 ]
  %77 = phi i32 [ %79, %99 ], [ 120, %73 ]
  %78 = phi ptr [ %80, %99 ], [ %0, %73 ]
  %79 = add nsw i32 %77, -1
  %80 = getelementptr inbounds i8, ptr %78, i64 1
  %81 = load i8, ptr %78, align 1, !tbaa !13
  %82 = zext i8 %81 to i64
  %83 = icmp eq i8 %81, 0
  br i1 %83, label %102, label %84

84:                                               ; preds = %75
  %85 = icmp sgt i8 %81, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %84
  %87 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 %81, ptr %76, align 1, !tbaa !13
  br label %99

88:                                               ; preds = %84
  %89 = add nuw nsw i64 %82, 4294967168
  %90 = and i64 %89, 4294967295
  %91 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %90
  br label %92

92:                                               ; preds = %92, %88
  %93 = phi ptr [ %76, %88 ], [ %97, %92 ]
  %94 = phi ptr [ %91, %88 ], [ %95, %92 ]
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  %96 = load i8, ptr %94, align 1, !tbaa !13
  %97 = getelementptr inbounds i8, ptr %93, i64 1
  store i8 %96, ptr %93, align 1, !tbaa !13
  %98 = icmp eq i8 %96, 0
  br i1 %98, label %99, label %92, !llvm.loop !162

99:                                               ; preds = %92, %86
  %100 = phi ptr [ %87, %86 ], [ %93, %92 ]
  %101 = icmp ugt i32 %77, 2
  br i1 %101, label %75, label %102, !llvm.loop !163

102:                                              ; preds = %99, %75
  %103 = phi ptr [ %76, %75 ], [ %100, %99 ]
  store i8 0, ptr %103, align 1, !tbaa !13
  %104 = load i1, ptr @pershsize, align 4
  %105 = select i1 %104, i32 53, i32 0
  %106 = call fastcc i32 @hash(ptr noundef %0, i32 noundef %105) #32
  %107 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %108 = icmp eq ptr %107, null
  br i1 %108, label %137, label %109

109:                                              ; preds = %102
  %110 = sext i32 %106 to i64
  %111 = getelementptr inbounds %struct.dent, ptr %107, i64 %110
  br label %112

112:                                              ; preds = %133, %109
  %113 = phi ptr [ %135, %133 ], [ %111, %109 ]
  %114 = getelementptr inbounds %struct.dent, ptr %113, i64 0, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !71
  %116 = and i64 %115, 67108864
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %137, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.dent, ptr %113, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !28
  %121 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %120) #33
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %118
  %124 = and i64 %115, 1073741824
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %126, %123
  %127 = phi ptr [ %128, %126 ], [ %113, %123 ]
  %128 = load ptr, ptr %127, align 8, !tbaa !30
  %129 = getelementptr inbounds %struct.dent, ptr %128, i64 0, i32 2
  %130 = load i64, ptr %129, align 8, !tbaa !71
  %131 = and i64 %130, 1073741824
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %126, !llvm.loop !171

133:                                              ; preds = %126, %123
  %134 = phi ptr [ %113, %123 ], [ %128, %126 ]
  %135 = load ptr, ptr %134, align 8, !tbaa !30
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %112, !llvm.loop !172

137:                                              ; preds = %133, %118, %112, %102, %73
  %138 = phi ptr [ null, %73 ], [ null, %102 ], [ %113, %118 ], [ null, %133 ], [ null, %112 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #40
  br label %139

139:                                              ; preds = %137, %53
  %140 = phi ptr [ %138, %137 ], [ %46, %53 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #40
  ret ptr %140
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @combine_two_entries(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #20 {
  %4 = tail call fastcc i32 @acoversb(ptr noundef %1, ptr noundef %2) #34, !range !87
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !71
  %9 = and i64 %8, -2080374785
  %10 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !71
  %12 = or i64 %11, %9
  store i64 %12, ptr %10, align 8, !tbaa !71
  %13 = load i64, ptr %7, align 8, !tbaa !71
  %14 = and i64 %13, 134217728
  %15 = or i64 %14, %12
  store i64 %15, ptr %10, align 8, !tbaa !71
  %16 = load i64, ptr %7, align 8, !tbaa !71
  %17 = and i64 %16, 134217728
  %18 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !71
  %20 = or i64 %19, %17
  store i64 %20, ptr %18, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !28
  %23 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %24 = icmp eq ptr %23, null
  %25 = icmp ugt ptr %23, %22
  %26 = or i1 %24, %25
  %27 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %23, i64 %28
  %30 = icmp ult ptr %29, %22
  %31 = select i1 %26, i1 true, i1 %30
  br i1 %31, label %32, label %81

32:                                               ; preds = %6
  tail call void @free(ptr noundef %22) #32
  br label %81

33:                                               ; preds = %3
  %34 = tail call fastcc i32 @acoversb(ptr noundef %2, ptr noundef %1) #34, !range !87
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %81, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !71
  %39 = and i64 %38, -2080374785
  %40 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !71
  %42 = or i64 %41, %39
  store i64 %42, ptr %40, align 8, !tbaa !71
  %43 = load i64, ptr %37, align 8, !tbaa !71
  %44 = and i64 %43, 1207959552
  %45 = or i64 %44, %42
  store i64 %45, ptr %40, align 8, !tbaa !71
  %46 = and i64 %45, 134217728
  %47 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !71
  %49 = or i64 %46, %48
  store i64 %49, ptr %47, align 8, !tbaa !71
  %50 = load ptr, ptr %1, align 8, !tbaa !30
  store ptr %50, ptr %2, align 8, !tbaa !30
  %51 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !28
  %57 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %56) #32
  br label %58

58:                                               ; preds = %54, %36
  %59 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !28
  %61 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %62 = icmp eq ptr %61, null
  %63 = icmp ugt ptr %61, %60
  %64 = or i1 %62, %63
  %65 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %61, i64 %66
  %68 = icmp ult ptr %67, %60
  %69 = select i1 %64, i1 true, i1 %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  tail call void @free(ptr noundef %60) #32
  br label %71

71:                                               ; preds = %70, %58
  %72 = load ptr, ptr %51, align 8, !tbaa !28
  store ptr %72, ptr %59, align 8, !tbaa !28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !152
  %73 = load i64, ptr %40, align 8, !tbaa !71
  %74 = and i64 %73, 805306368
  %75 = icmp eq i64 %74, 805306368
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i64, ptr %47, align 8, !tbaa !71
  %78 = and i64 %77, 1879048192
  %79 = icmp eq i64 %78, 1342177280
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call fastcc void @addvheader(ptr noundef nonnull %0) #34
  br label %81

81:                                               ; preds = %80, %76, %71, %33, %32, %6
  %82 = phi i32 [ 1, %80 ], [ 1, %76 ], [ 1, %71 ], [ 0, %33 ], [ 1, %6 ], [ 1, %32 ]
  ret i32 %82
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @addvheader(ptr nocapture noundef %0) unnamed_addr #20 {
  %2 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.3.254, ptr noundef %7) #36
  br label %50

9:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !152
  %10 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !71
  %12 = and i64 %11, 805306368
  %13 = icmp eq i64 %12, 805306368
  %14 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  br i1 %13, label %18, label %15

15:                                               ; preds = %9
  store ptr null, ptr %14, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !28
  br label %44

18:                                               ; preds = %9
  %19 = load ptr, ptr %14, align 8, !tbaa !28
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #33
  %21 = add i64 %20, 1
  %22 = and i64 %21, 4294967295
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #39
  store ptr %23, ptr %14, align 8, !tbaa !28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load ptr, ptr @stderr, align 8, !tbaa !7
  %27 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !28
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.3.254, ptr noundef %28) #36
  %30 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  %32 = icmp ugt ptr %30, %2
  %33 = or i1 %31, %32
  %34 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %30, i64 %35
  %37 = icmp ult ptr %36, %2
  %38 = select i1 %33, i1 true, i1 %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %25
  tail call void @free(ptr noundef nonnull %2) #32
  br label %50

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !28
  %43 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %42) #32
  br label %44

44:                                               ; preds = %40, %15
  %45 = phi ptr [ %42, %40 ], [ %17, %15 ]
  tail call fastcc void @chupcase(ptr noundef %45) #34
  store ptr %2, ptr %0, align 8, !tbaa !30
  %46 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !71
  %48 = and i64 %47, -1879048193
  %49 = or i64 %48, 1342177280
  store i64 %49, ptr %46, align 8, !tbaa !71
  br label %50

50:                                               ; preds = %44, %39, %25, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @hash(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #29 {
  %3 = getelementptr i8, ptr %0, i64 4
  br label %4

4:                                                ; preds = %10, %2
  %5 = phi i32 [ 3, %2 ], [ %18, %10 ]
  %6 = phi i64 [ 0, %2 ], [ %17, %10 ]
  %7 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = load i8, ptr %7, align 1, !tbaa !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %4
  %11 = shl i64 %6, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = zext i8 %8 to i64
  %14 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !13
  %16 = zext i8 %15 to i64
  %17 = or i64 %11, %16
  %18 = add nsw i32 %5, -1
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %20, label %4, !llvm.loop !173

20:                                               ; preds = %10
  %.lcssa = phi i64 [ %17, %10 ]
  %21 = load i8, ptr %3, align 1, !tbaa !13
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %23, %20
  %24 = phi i8 [ %37, %23 ], [ %21, %20 ]
  %25 = phi i64 [ %36, %23 ], [ %.lcssa, %20 ]
  %26 = phi ptr [ %31, %23 ], [ %3, %20 ]
  %27 = shl i64 %25, 5
  %28 = lshr i64 %25, 27
  %29 = and i64 %28, 31
  %30 = or i64 %29, %27
  %31 = getelementptr inbounds i8, ptr %26, i64 1
  %32 = zext i8 %24 to i64
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i64
  %36 = xor i64 %30, %35
  %37 = load i8, ptr %31, align 1, !tbaa !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %23, !llvm.loop !174

39:                                               ; preds = %23, %20, %4
  %40 = phi i64 [ %.lcssa, %20 ], [ %36, %23 ], [ %6, %4 ]
  %41 = sext i32 %1 to i64
  %42 = urem i64 %40, %41
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @acoversb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #24 {
  %3 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !71
  %7 = xor i64 %6, -1
  %8 = and i64 %4, -2080374785
  %9 = and i64 %8, %7
  %10 = icmp eq i64 %9, 0
  %11 = xor i64 %6, %4
  br i1 %10, label %12, label %18

12:                                               ; preds = %2
  %13 = and i64 %11, 134217728
  %14 = icmp ne i64 %13, 0
  %15 = and i64 %6, 134217728
  %16 = icmp eq i64 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %42, label %21

18:                                               ; preds = %2
  %19 = and i64 %11, 939524096
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %42

21:                                               ; preds = %12
  %22 = and i64 %11, 805306368
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21, %18
  %25 = and i64 %6, 805306368
  %26 = icmp eq i64 %25, 805306368
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %31) #33
  %33 = icmp eq i32 %32, 0
  br label %42

34:                                               ; preds = %21
  %35 = and i64 %4, 805306368
  %36 = icmp eq i64 %35, 268435456
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = and i64 %6, 805306368
  %39 = icmp eq i64 %38, 0
  %40 = icmp eq i64 %35, 536870912
  %41 = and i1 %40, %39
  br label %42

42:                                               ; preds = %37, %34, %27, %24, %18, %12
  %43 = phi i1 [ false, %12 ], [ false, %18 ], [ true, %24 ], [ true, %34 ], [ %33, %27 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @show_char(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #19 {
  %5 = load ptr, ptr %0, align 8, !tbaa !7
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = tail call fastcc i32 @stringcharlen(ptr noundef nonnull %5, i32 noundef 0) #32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, ptr @laststringch, align 4, !tbaa !11
  %17 = trunc i32 %16 to i8
  %18 = xor i8 %17, -128
  br label %19

19:                                               ; preds = %15, %12, %4
  %20 = phi i32 [ %13, %15 ], [ 1, %12 ], [ 1, %4 ]
  %21 = phi i8 [ %18, %15 ], [ %6, %12 ], [ %6, %4 ]
  %22 = load i1, ptr @vflag, align 4
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  %24 = zext i8 %21 to i64
  %25 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = icmp ne i8 %26, 0
  %28 = icmp eq i32 %20, 1
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = icmp eq i32 %2, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = tail call i32 @putchar(i32 noundef %7) #34
  br label %34

34:                                               ; preds = %32, %30
  %35 = load ptr, ptr %0, align 8, !tbaa !7
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %36, ptr %0, align 8, !tbaa !7
  br label %92

37:                                               ; preds = %23, %19
  %38 = icmp eq i8 %6, 9
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %39
  %42 = tail call i32 @putchar(i32 noundef 9) #34
  br label %43

43:                                               ; preds = %41, %39
  %44 = load ptr, ptr %0, align 8, !tbaa !7
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %0, align 8, !tbaa !7
  %46 = and i32 %1, 7
  %47 = sub nuw nsw i32 8, %46
  br label %92

48:                                               ; preds = %37
  %49 = icmp ne i32 %3, 0
  %50 = icmp sgt i32 %20, %3
  %51 = and i1 %49, %50
  %52 = select i1 %51, i32 %3, i32 %20
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %48
  %55 = icmp eq i32 %2, 0
  br label %56

56:                                               ; preds = %87, %54
  %57 = phi i32 [ 0, %54 ], [ %89, %87 ]
  %58 = phi i32 [ 0, %54 ], [ %90, %87 ]
  %59 = load ptr, ptr %0, align 8, !tbaa !7
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %60, ptr %0, align 8, !tbaa !7
  %61 = load i8, ptr %59, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = icmp slt i8 %61, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  br i1 %55, label %68, label %65

65:                                               ; preds = %64
  %66 = tail call i32 @putchar(i32 noundef 77) #34
  %67 = tail call i32 @putchar(i32 noundef 45) #34
  br label %68

68:                                               ; preds = %65, %64
  %69 = add nsw i32 %57, 2
  %70 = and i32 %62, 127
  br label %71

71:                                               ; preds = %68, %56
  %72 = phi i32 [ %70, %68 ], [ %62, %56 ]
  %73 = phi i32 [ %69, %68 ], [ %57, %56 ]
  %74 = icmp ult i32 %72, 32
  %75 = icmp eq i32 %72, 127
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  br i1 %55, label %87, label %78

78:                                               ; preds = %77
  %79 = tail call i32 @putchar(i32 noundef 94) #34
  %80 = add nuw nsw i32 %72, 64
  %81 = select i1 %75, i32 63, i32 %80
  br label %83

82:                                               ; preds = %71
  br i1 %55, label %87, label %83

83:                                               ; preds = %82, %78
  %84 = phi i32 [ %81, %78 ], [ %72, %82 ]
  %85 = phi i32 [ 2, %78 ], [ 1, %82 ]
  %86 = tail call i32 @putchar(i32 noundef %84) #34
  br label %87

87:                                               ; preds = %83, %82, %77
  %88 = phi i32 [ 2, %77 ], [ 1, %82 ], [ %85, %83 ]
  %89 = add nsw i32 %88, %73
  %90 = add nuw nsw i32 %58, 1
  %91 = icmp eq i32 %90, %52
  br i1 %91, label %92, label %56, !llvm.loop !175

92:                                               ; preds = %87, %48, %43, %34
  %93 = phi i32 [ %47, %43 ], [ 1, %34 ], [ 0, %48 ], [ %89, %87 ]
  ret i32 %93
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @ins_cap(ptr nocapture noundef readonly %0) unnamed_addr #19 {
  %2 = alloca [10 x [120 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %2) #40
  %3 = call fastcc i32 @save_cap(ptr noundef %0, ptr noundef nonnull @itoken, ptr noundef nonnull %2) #34
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = zext i32 %3 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %15, label %10, !llvm.loop !176

10:                                               ; preds = %7, %5
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [10 x [120 x i8]], ptr %2, i64 0, i64 %11
  %13 = call fastcc i32 @insert(ptr noundef nonnull %12) #34, !range !142
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %10, %7, %1
  %16 = phi i32 [ 0, %1 ], [ -1, %10 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %2) #40
  ret i32 %16
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @save_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #19 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40
  %5 = load i8, ptr %0, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @numhits, align 4, !tbaa !11
  store i32 0, ptr %4, align 4, !tbaa !11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  %11 = zext i32 %8 to i64
  br label %12

12:                                               ; preds = %40, %10
  %13 = phi i64 [ %11, %10 ], [ %14, %40 ]
  %14 = add nsw i64 %13, -1
  %15 = and i64 %14, 4294967295
  %16 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %15
  %17 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %15, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.flagent, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !32
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.flagent, ptr %18, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !35
  %26 = sext i16 %25 to i32
  br label %27

27:                                               ; preds = %20, %12
  %28 = phi i32 [ %26, %20 ], [ 0, %12 ]
  %29 = phi i32 [ %23, %20 ], [ 0, %12 ]
  %30 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %15, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !177
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.flagent, ptr %31, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !32
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.flagent, ptr %31, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !35
  %39 = sext i16 %38 to i32
  br label %40

40:                                               ; preds = %33, %27
  %41 = phi i32 [ %39, %33 ], [ 0, %27 ]
  %42 = phi i32 [ %36, %33 ], [ 0, %27 ]
  %43 = load ptr, ptr %16, align 8, !tbaa !117
  call fastcc void @save_root_cap(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %29, i32 noundef %28, i32 noundef %42, i32 noundef %41, ptr noundef %43, ptr noundef %18, ptr noundef %31, ptr noundef %2, ptr noundef nonnull %4) #34
  %44 = icmp ugt i64 %13, 1
  %45 = load i32, ptr %4, align 4
  %46 = icmp slt i32 %45, 10
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %12, label %48, !llvm.loop !178

48:                                               ; preds = %40, %7, %3
  %49 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %45, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40
  ret i32 %49
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @insert(ptr nocapture noundef readonly %0) unnamed_addr #19 {
  tail call fastcc void @ichartosstr(ptr noundef %0, i32 noundef 0) #32
  %2 = load i32, ptr @pcount, align 4, !tbaa !11
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = zext i32 %2 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9, !llvm.loop !179

9:                                                ; preds = %6, %4
  %10 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %11 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %10
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @ichartosstr.out) #33
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %6

14:                                               ; preds = %6, %1
  %15 = add nsw i32 %2, 1
  store i32 %15, ptr @pcount, align 4, !tbaa !11
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %16
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @ichartosstr.out) #32
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ichartosstr.out) #33
  %20 = trunc i64 %19 to i32
  %21 = load i32, ptr @maxposslen, align 4, !tbaa !11
  %22 = icmp slt i32 %21, %20
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 %20, ptr @maxposslen, align 4, !tbaa !11
  br label %24

24:                                               ; preds = %23, %14
  %25 = icmp sgt i32 %2, 98
  %26 = sext i1 %25 to i32
  br label %27

27:                                               ; preds = %24, %9
  %28 = phi i32 [ %26, %24 ], [ 0, %9 ]
  ret i32 %28
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @posscmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #30 {
  %3 = tail call fastcc i32 @casecmp(ptr noundef %0, ptr noundef %1, i32 noundef 0) #34, !range !180
  ret i32 %3
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @casecmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #30 {
  %4 = alloca [184 x i8], align 16
  %5 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %5) #40
  %6 = call fastcc i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 184, i32 noundef %2) #32, !range !87
  %7 = call fastcc i32 @strtoichar(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 184, i32 noundef %2) #32, !range !87
  %8 = load i8, ptr %4, align 16, !tbaa !13
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %60, %3
  %11 = phi i8 [ %63, %60 ], [ %8, %3 ]
  %12 = phi ptr [ %62, %60 ], [ %5, %3 ]
  %13 = phi ptr [ %61, %60 ], [ %4, %3 ]
  %14 = load i8, ptr %12, align 1, !tbaa !13
  %15 = icmp eq i8 %11, %14
  br i1 %15, label %60, label %16

16:                                               ; preds = %10
  %17 = icmp eq i8 %14, 0
  %18 = zext i8 %11 to i64
  br i1 %17, label %19, label %23

19:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %18, %16 ]
  %20 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa2
  %21 = load i16, ptr %20, align 2, !tbaa !57
  %22 = zext i16 %21 to i32
  br label %99

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %18
  %25 = load i8, ptr %24, align 1, !tbaa !13
  %26 = icmp eq i8 %25, 0
  %27 = zext i8 %14 to i64
  br i1 %26, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %27
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %18
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = icmp eq i8 %34, %14
  br i1 %35, label %60, label %36

36:                                               ; preds = %32, %28
  %.lcssa5 = phi i64 [ %27, %32 ], [ %27, %28 ]
  %.lcssa3 = phi i64 [ %18, %32 ], [ %18, %28 ]
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa3
  %38 = load i16, ptr %37, align 2, !tbaa !57
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa5
  %41 = load i16, ptr %40, align 2, !tbaa !57
  %42 = zext i16 %41 to i32
  %43 = sub nsw i32 %39, %42
  br label %99

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %27
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %18
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = icmp eq i8 %50, %14
  br i1 %51, label %60, label %52

52:                                               ; preds = %48, %44
  %.lcssa6 = phi i64 [ %27, %48 ], [ %27, %44 ]
  %.lcssa4 = phi i64 [ %18, %48 ], [ %18, %44 ]
  %53 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa4
  %54 = load i16, ptr %53, align 2, !tbaa !57
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa6
  %57 = load i16, ptr %56, align 2, !tbaa !57
  %58 = zext i16 %57 to i32
  %59 = sub nsw i32 %55, %58
  br label %99

60:                                               ; preds = %48, %32, %10
  %61 = getelementptr inbounds i8, ptr %13, i64 1
  %62 = getelementptr inbounds i8, ptr %12, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !13
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %10, !llvm.loop !181

65:                                               ; preds = %60
  %.lcssa7 = phi ptr [ %62, %60 ]
  %66 = load i8, ptr %.lcssa7, align 1, !tbaa !13
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %78, label %71

68:                                               ; preds = %3
  %69 = load i8, ptr %5, align 16, !tbaa !13
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %99, label %71

71:                                               ; preds = %68, %65
  %72 = phi i8 [ %69, %68 ], [ %66, %65 ]
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !57
  %76 = zext i16 %75 to i32
  %77 = sub nsw i32 0, %76
  br label %99

78:                                               ; preds = %94, %65
  %79 = phi i8 [ %97, %94 ], [ %8, %65 ]
  %80 = phi ptr [ %96, %94 ], [ %5, %65 ]
  %81 = phi ptr [ %95, %94 ], [ %4, %65 ]
  %82 = load i8, ptr %80, align 1, !tbaa !13
  %83 = icmp eq i8 %79, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %78
  %.lcssa1 = phi i8 [ %79, %78 ]
  %.lcssa = phi i8 [ %82, %78 ]
  %85 = zext i8 %.lcssa1 to i64
  %86 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !57
  %88 = zext i16 %87 to i32
  %89 = zext i8 %.lcssa to i64
  %90 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !57
  %92 = zext i16 %91 to i32
  %93 = sub nsw i32 %88, %92
  br label %99

94:                                               ; preds = %78
  %95 = getelementptr inbounds i8, ptr %81, i64 1
  %96 = getelementptr inbounds i8, ptr %80, i64 1
  %97 = load i8, ptr %95, align 1, !tbaa !13
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %78, !llvm.loop !182

99:                                               ; preds = %94, %84, %71, %68, %52, %36, %19
  %100 = phi i32 [ %22, %19 ], [ %43, %36 ], [ %59, %52 ], [ %77, %71 ], [ %93, %84 ], [ 0, %68 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #40
  ret i32 %100
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @save_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7, ptr noundef readonly %8, ptr noundef %9, ptr nocapture noundef %10) unnamed_addr #19 {
  %12 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %12) #40
  %13 = load i32, ptr %10, align 4, !tbaa !11
  %14 = icmp sgt i32 %13, 9
  br i1 %14, label %346, label %15

15:                                               ; preds = %11
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #32
  %17 = load i8, ptr %1, align 1, !tbaa !13
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !71
  %23 = and i64 %22, 1879048192
  %24 = icmp eq i64 %23, 268435456
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = icmp eq i8 %17, 0
  br i1 %26, label %50, label %43

27:                                               ; preds = %15
  %28 = load i8, ptr %12, align 16, !tbaa !13
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %340, label %30

30:                                               ; preds = %30, %27
  %31 = phi i8 [ %37, %30 ], [ %28, %27 ]
  %32 = phi ptr [ %36, %30 ], [ %12, %27 ]
  %33 = zext i8 %31 to i64
  %34 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !13
  store i8 %35, ptr %32, align 1, !tbaa !13
  %36 = getelementptr inbounds i8, ptr %32, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %340, label %30, !llvm.loop !133

39:                                               ; preds = %43
  %40 = getelementptr inbounds i8, ptr %45, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43, !llvm.loop !183

43:                                               ; preds = %39, %25
  %44 = phi i8 [ %41, %39 ], [ %17, %25 ]
  %45 = phi ptr [ %40, %39 ], [ %1, %25 ]
  %46 = zext i8 %44 to i64
  %47 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %39, label %62

50:                                               ; preds = %39, %25
  %51 = load i8, ptr %12, align 16, !tbaa !13
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %340, label %53

53:                                               ; preds = %53, %50
  %54 = phi i8 [ %60, %53 ], [ %51, %50 ]
  %55 = phi ptr [ %59, %53 ], [ %12, %50 ]
  %56 = zext i8 %54 to i64
  %57 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !13
  store i8 %58, ptr %55, align 1, !tbaa !13
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %340, label %53, !llvm.loop !133

62:                                               ; preds = %67, %43
  %63 = phi ptr [ %64, %67 ], [ %1, %43 ]
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !13
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = zext i8 %65 to i64
  %69 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !13
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %62, label %179, !llvm.loop !184

72:                                               ; preds = %62
  %73 = icmp eq i8 %20, 0
  %74 = and i64 %22, 805306368
  br i1 %73, label %95, label %75

75:                                               ; preds = %72
  switch i64 %74, label %109 [
    i64 536870912, label %76
    i64 0, label %76
  ]

76:                                               ; preds = %75, %75
  %77 = load i8, ptr %12, align 16, !tbaa !13
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %79, %76
  %80 = phi i8 [ %86, %79 ], [ %77, %76 ]
  %81 = phi ptr [ %85, %79 ], [ %12, %76 ]
  %82 = zext i8 %80 to i64
  %83 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !13
  store i8 %84, ptr %81, align 1, !tbaa !13
  %85 = getelementptr inbounds i8, ptr %81, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %79, !llvm.loop !69

88:                                               ; preds = %79
  %89 = load i8, ptr %12, align 16, !tbaa !13
  %90 = zext i8 %89 to i64
  br label %91

91:                                               ; preds = %88, %76
  %92 = phi i64 [ %90, %88 ], [ 0, %76 ]
  %93 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !13
  store i8 %94, ptr %12, align 16, !tbaa !13
  br label %340

95:                                               ; preds = %72
  %96 = icmp eq i64 %74, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %95
  %98 = load i8, ptr %12, align 16, !tbaa !13
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %340, label %100

100:                                              ; preds = %100, %97
  %101 = phi i8 [ %107, %100 ], [ %98, %97 ]
  %102 = phi ptr [ %106, %100 ], [ %12, %97 ]
  %103 = zext i8 %101 to i64
  %104 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !13
  store i8 %105, ptr %102, align 1, !tbaa !13
  %106 = getelementptr inbounds i8, ptr %102, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !13
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %340, label %100, !llvm.loop !69

109:                                              ; preds = %95, %75
  %110 = and i64 %22, 1073741824
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %179, label %112

112:                                              ; preds = %109
  %113 = icmp eq ptr %7, null
  %114 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %115 = icmp eq ptr %8, null
  %116 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  br label %117

117:                                              ; preds = %140, %112
  %118 = phi ptr [ %6, %112 ], [ %119, %140 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !30
  %120 = getelementptr inbounds %struct.dent, ptr %119, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !71
  %122 = and i64 %121, 805306368
  %123 = icmp eq i64 %122, 805306368
  br i1 %123, label %140, label %124

124:                                              ; preds = %117
  br i1 %113, label %132, label %125

125:                                              ; preds = %124
  %126 = load i16, ptr %114, align 8, !tbaa !185
  %127 = sext i16 %126 to i64
  %128 = and i64 %127, 4294967295
  %129 = shl nuw i64 1, %128
  %130 = and i64 %129, %121
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %125, %124
  br i1 %115, label %143, label %133

133:                                              ; preds = %132
  %134 = load i16, ptr %116, align 8, !tbaa !185
  %135 = sext i16 %134 to i64
  %136 = and i64 %135, 4294967295
  %137 = shl nuw i64 1, %136
  %138 = and i64 %137, %121
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %165, %144, %133, %125, %117
  %141 = and i64 %121, 1073741824
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %179, label %117, !llvm.loop !186

143:                                              ; preds = %133, %132
  br i1 %73, label %165, label %144

144:                                              ; preds = %143
  %145 = icmp eq i64 %122, 536870912
  br i1 %145, label %146, label %140

146:                                              ; preds = %144
  %147 = load i8, ptr %12, align 16, !tbaa !13
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %149, %146
  %150 = phi i8 [ %156, %149 ], [ %147, %146 ]
  %151 = phi ptr [ %155, %149 ], [ %12, %146 ]
  %152 = zext i8 %150 to i64
  %153 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !13
  store i8 %154, ptr %151, align 1, !tbaa !13
  %155 = getelementptr inbounds i8, ptr %151, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !13
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %149, !llvm.loop !69

158:                                              ; preds = %149
  %159 = load i8, ptr %12, align 16, !tbaa !13
  %160 = zext i8 %159 to i64
  br label %161

161:                                              ; preds = %158, %146
  %162 = phi i64 [ %160, %158 ], [ 0, %146 ]
  %163 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !13
  store i8 %164, ptr %12, align 16, !tbaa !13
  br label %340

165:                                              ; preds = %143
  %166 = icmp eq i64 %122, 0
  br i1 %166, label %167, label %140

167:                                              ; preds = %165
  %168 = load i8, ptr %12, align 16, !tbaa !13
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %340, label %170

170:                                              ; preds = %170, %167
  %171 = phi i8 [ %177, %170 ], [ %168, %167 ]
  %172 = phi ptr [ %176, %170 ], [ %12, %167 ]
  %173 = zext i8 %171 to i64
  %174 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !13
  store i8 %175, ptr %172, align 1, !tbaa !13
  %176 = getelementptr inbounds i8, ptr %172, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !13
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %340, label %170, !llvm.loop !69

179:                                              ; preds = %140, %109, %67
  %180 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !28
  call fastcc void @strtosichar(ptr noundef %181, i32 noundef 1) #32
  %182 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @strtosichar.out) #33
  %183 = trunc i64 %182 to i32
  %184 = load i64, ptr %21, align 8, !tbaa !71
  %185 = and i64 %184, 1073741824
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %179
  %188 = load ptr, ptr %6, align 8, !tbaa !30
  br label %189

189:                                              ; preds = %187, %179
  %190 = phi ptr [ %188, %187 ], [ %6, %179 ]
  %191 = icmp eq ptr %7, null
  %192 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %193 = icmp eq ptr %8, null
  %194 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  %195 = icmp eq i8 %20, 0
  %196 = sext i32 %2 to i64
  %197 = sext i32 %3 to i64
  %198 = getelementptr inbounds i8, ptr %12, i64 %197
  %199 = add nsw i32 %4, %2
  %200 = sub i32 %183, %199
  %201 = sext i32 %200 to i64
  %202 = icmp sgt i32 %3, 0
  %203 = add nsw i32 %183, %3
  %204 = sub i32 %5, %199
  %205 = add i32 %203, %204
  %206 = sub i32 %203, %199
  %207 = xor i32 %4, -1
  %208 = add i32 %183, %207
  %209 = sext i32 %208 to i64
  %210 = sext i32 %206 to i64
  %211 = getelementptr inbounds i8, ptr %12, i64 %210
  %212 = icmp slt i32 %206, %205
  %213 = zext i32 %3 to i64
  %214 = getelementptr inbounds i8, ptr @strtosichar.out, i64 %196
  %215 = getelementptr inbounds i8, ptr @strtosichar.out, i64 %209
  br label %216

216:                                              ; preds = %338, %189
  %217 = phi ptr [ %190, %189 ], [ %339, %338 ]
  %218 = getelementptr inbounds %struct.dent, ptr %217, i64 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !71
  br i1 %191, label %227, label %220

220:                                              ; preds = %216
  %221 = load i16, ptr %192, align 8, !tbaa !185
  %222 = sext i16 %221 to i64
  %223 = and i64 %222, 4294967295
  %224 = shl nuw i64 1, %223
  %225 = and i64 %224, %219
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %333, label %227

227:                                              ; preds = %220, %216
  %228 = getelementptr inbounds %struct.dent, ptr %217, i64 0, i32 2
  br i1 %193, label %236, label %229

229:                                              ; preds = %227
  %230 = load i16, ptr %194, align 8, !tbaa !185
  %231 = sext i16 %230 to i64
  %232 = and i64 %231, 4294967295
  %233 = shl nuw i64 1, %232
  %234 = and i64 %233, %219
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %333, label %236

236:                                              ; preds = %229, %227
  %237 = and i64 %219, 805306368
  %238 = icmp eq i64 %237, 805306368
  br i1 %238, label %269, label %239

239:                                              ; preds = %236
  %240 = load i8, ptr %12, align 16, !tbaa !13
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %251, label %242

242:                                              ; preds = %242, %239
  %243 = phi i8 [ %249, %242 ], [ %240, %239 ]
  %244 = phi ptr [ %248, %242 ], [ %12, %239 ]
  %245 = zext i8 %243 to i64
  %246 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !13
  store i8 %247, ptr %244, align 1, !tbaa !13
  %248 = getelementptr inbounds i8, ptr %244, i64 1
  %249 = load i8, ptr %248, align 1, !tbaa !13
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %242, !llvm.loop !69

251:                                              ; preds = %242, %239
  br i1 %195, label %252, label %256

252:                                              ; preds = %251
  %253 = load i64, ptr %228, align 8, !tbaa !71
  %254 = and i64 %253, 805306368
  %255 = icmp eq i64 %254, 536870912
  br i1 %255, label %256, label %261

256:                                              ; preds = %252, %251
  %257 = load i8, ptr %12, align 16, !tbaa !13
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !13
  store i8 %260, ptr %12, align 16, !tbaa !13
  br label %261

261:                                              ; preds = %256, %252
  %262 = load i32, ptr %10, align 4, !tbaa !11
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [120 x i8], ptr %9, i64 %263
  %265 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(1) %12) #32
  %266 = load i32, ptr %10, align 4, !tbaa !11
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %10, align 4, !tbaa !11
  %268 = icmp sgt i32 %266, 8
  br i1 %268, label %346, label %333

269:                                              ; preds = %236
  %270 = getelementptr inbounds %struct.dent, ptr %217, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !28
  call fastcc void @strtosichar(ptr noundef %271, i32 noundef 1) #32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %198, ptr nonnull align 1 %214, i64 %201, i1 false)
  %272 = load i8, ptr %214, align 1, !tbaa !13
  %273 = zext i8 %272 to i64
  %274 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !13
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %269
  br i1 %202, label %279, label %297

278:                                              ; preds = %269
  br i1 %202, label %288, label %297

279:                                              ; preds = %279, %277
  %280 = phi i64 [ %286, %279 ], [ 0, %277 ]
  %281 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %280
  %282 = load i8, ptr %281, align 1, !tbaa !13
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !13
  store i8 %285, ptr %281, align 1, !tbaa !13
  %286 = add nuw nsw i64 %280, 1
  %287 = icmp eq i64 %286, %213
  br i1 %287, label %297, label %279, !llvm.loop !187

288:                                              ; preds = %288, %278
  %289 = phi i64 [ %295, %288 ], [ 0, %278 ]
  %290 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !13
  %292 = zext i8 %291 to i64
  %293 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !13
  store i8 %294, ptr %290, align 1, !tbaa !13
  %295 = add nuw nsw i64 %289, 1
  %296 = icmp eq i64 %295, %213
  br i1 %296, label %297, label %288, !llvm.loop !188

297:                                              ; preds = %288, %279, %278, %277
  %298 = load i8, ptr %215, align 1, !tbaa !13
  %299 = zext i8 %298 to i64
  %300 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %299
  %301 = load i8, ptr %300, align 1, !tbaa !13
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %314, label %303

303:                                              ; preds = %297
  br i1 %212, label %304, label %325

304:                                              ; preds = %304, %303
  %305 = phi i32 [ %311, %304 ], [ %206, %303 ]
  %306 = phi ptr [ %312, %304 ], [ %211, %303 ]
  %307 = load i8, ptr %306, align 1, !tbaa !13
  %308 = zext i8 %307 to i64
  %309 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !13
  store i8 %310, ptr %306, align 1, !tbaa !13
  %311 = add nsw i32 %305, 1
  %312 = getelementptr inbounds i8, ptr %306, i64 1
  %313 = icmp eq i32 %311, %205
  br i1 %313, label %325, label %304, !llvm.loop !189

314:                                              ; preds = %297
  br i1 %212, label %315, label %325

315:                                              ; preds = %315, %314
  %316 = phi i32 [ %322, %315 ], [ %206, %314 ]
  %317 = phi ptr [ %323, %315 ], [ %211, %314 ]
  %318 = load i8, ptr %317, align 1, !tbaa !13
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !13
  store i8 %321, ptr %317, align 1, !tbaa !13
  %322 = add nsw i32 %316, 1
  %323 = getelementptr inbounds i8, ptr %317, i64 1
  %324 = icmp eq i32 %322, %205
  br i1 %324, label %325, label %315, !llvm.loop !190

325:                                              ; preds = %315, %314, %304, %303
  %326 = load i32, ptr %10, align 4, !tbaa !11
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [120 x i8], ptr %9, i64 %327
  %329 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %328, ptr noundef nonnull dereferenceable(1) %12) #32
  %330 = load i32, ptr %10, align 4, !tbaa !11
  %331 = add nsw i32 %330, 1
  store i32 %331, ptr %10, align 4, !tbaa !11
  %332 = icmp sgt i32 %330, 8
  br i1 %332, label %346, label %333

333:                                              ; preds = %325, %261, %229, %220
  %334 = getelementptr inbounds %struct.dent, ptr %217, i64 0, i32 2
  %335 = load i64, ptr %334, align 8, !tbaa !71
  %336 = and i64 %335, 1073741824
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %346, label %338

338:                                              ; preds = %333
  %339 = load ptr, ptr %217, align 8, !tbaa !30
  br label %216

340:                                              ; preds = %170, %167, %161, %100, %97, %91, %53, %50, %30, %27
  %341 = sext i32 %13 to i64
  %342 = getelementptr inbounds [120 x i8], ptr %9, i64 %341
  %343 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %342, ptr noundef nonnull dereferenceable(1) %12) #32
  %344 = load i32, ptr %10, align 4, !tbaa !11
  %345 = add nsw i32 %344, 1
  store i32 %345, ptr %10, align 4, !tbaa !11
  br label %346

346:                                              ; preds = %340, %333, %325, %261, %11
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %12) #40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @cap_ok(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #30 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #40
  %4 = tail call fastcc i64 @whatcap(ptr noundef %0) #32, !range !130
  switch i64 %4, label %24 [
    i64 268435456, label %139
    i64 805306368, label %5
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), align 8, !tbaa !115
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 4
  %10 = load i16, ptr %9, align 4, !tbaa !35
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 3
  %13 = load i16, ptr %12, align 2, !tbaa !32
  %14 = sext i16 %13 to i64
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi i64 [ %11, %8 ], [ 0, %5 ]
  %17 = phi i64 [ %14, %8 ], [ 0, %5 ]
  %18 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 2), align 16, !tbaa !177
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.flagent, ptr %18, i64 0, i32 4
  %22 = load i16, ptr %21, align 4, !tbaa !35
  %23 = sext i16 %22 to i64
  br label %24

24:                                               ; preds = %20, %15, %2
  %25 = phi i64 [ 0, %2 ], [ %16, %15 ], [ %16, %20 ]
  %26 = phi i64 [ 0, %2 ], [ %17, %15 ], [ %17, %20 ]
  %27 = phi i64 [ 0, %2 ], [ 0, %15 ], [ %23, %20 ]
  %28 = icmp eq i64 %4, 536870912
  %29 = icmp eq i64 %4, 805306368
  %30 = getelementptr inbounds i8, ptr %0, i64 %25
  %31 = getelementptr inbounds i8, ptr %3, i64 %26
  %32 = icmp sgt i64 %25, 0
  %33 = sext i32 %1 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = sub nsw i64 0, %25
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  %37 = sub nsw i64 0, %27
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  br label %40

40:                                               ; preds = %135, %24
  %41 = phi ptr [ @hits, %24 ], [ %42, %135 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = getelementptr inbounds %struct.dent, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !71
  %45 = and i64 %44, 805306368
  %46 = icmp eq i64 %45, %4
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = icmp eq i64 %45, 0
  %49 = and i1 %28, %48
  br i1 %49, label %50, label %135

50:                                               ; preds = %47
  %51 = call fastcc i32 @entryhasaffixes(ptr noundef nonnull %42) #34
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %135, label %139

53:                                               ; preds = %40
  br i1 %29, label %57, label %54

54:                                               ; preds = %53
  %55 = call fastcc i32 @entryhasaffixes(ptr noundef nonnull %42) #34
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %135, label %139

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.dent, ptr %42, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !28
  %60 = call fastcc i32 @strtoichar(ptr noundef nonnull %3, ptr noundef %59, i32 noundef 100, i32 noundef 1) #32, !range !87
  %61 = load i8, ptr %31, align 1, !tbaa !13
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br i1 %32, label %68, label %88

67:                                               ; preds = %57
  br i1 %32, label %78, label %88

68:                                               ; preds = %75, %66
  %69 = phi ptr [ %76, %75 ], [ %0, %66 ]
  %70 = load i8, ptr %69, align 1, !tbaa !13
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %68
  %76 = getelementptr inbounds i8, ptr %69, i64 1
  %77 = icmp ult ptr %76, %30
  br i1 %77, label %68, label %88, !llvm.loop !191

78:                                               ; preds = %85, %67
  %79 = phi ptr [ %86, %85 ], [ %0, %67 ]
  %80 = load i8, ptr %79, align 1, !tbaa !13
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !13
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %135

85:                                               ; preds = %78
  %86 = getelementptr inbounds i8, ptr %79, i64 1
  %87 = icmp ult ptr %86, %30
  br i1 %87, label %78, label %88, !llvm.loop !192

88:                                               ; preds = %85, %75, %67, %66
  %89 = phi ptr [ %0, %67 ], [ %0, %66 ], [ %86, %85 ], [ %76, %75 ]
  br label %90

90:                                               ; preds = %94, %88
  %91 = phi ptr [ %97, %94 ], [ %89, %88 ]
  %92 = phi ptr [ %95, %94 ], [ %31, %88 ]
  %93 = icmp ult ptr %92, %38
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  %96 = load i8, ptr %92, align 1, !tbaa !13
  %97 = getelementptr inbounds i8, ptr %91, i64 1
  %98 = load i8, ptr %91, align 1, !tbaa !13
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %90, label %135, !llvm.loop !193

100:                                              ; preds = %90
  %.lcssa = phi ptr [ %91, %90 ]
  %101 = load i8, ptr %39, align 1, !tbaa !13
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = icmp eq i8 %104, 0
  %106 = load i8, ptr %.lcssa, align 1, !tbaa !13
  %107 = icmp eq i8 %106, 0
  br i1 %105, label %109, label %108

108:                                              ; preds = %100
  br i1 %107, label %132, label %114

109:                                              ; preds = %100
  br i1 %107, label %132, label %125

110:                                              ; preds = %114
  %111 = getelementptr inbounds i8, ptr %116, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !13
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %132, label %114, !llvm.loop !194

114:                                              ; preds = %110, %108
  %115 = phi i8 [ %112, %110 ], [ %106, %108 ]
  %116 = phi ptr [ %111, %110 ], [ %.lcssa, %108 ]
  %117 = zext i8 %115 to i64
  %118 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !13
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %110, label %135

121:                                              ; preds = %125
  %122 = getelementptr inbounds i8, ptr %127, i64 1
  %123 = load i8, ptr %122, align 1, !tbaa !13
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %132, label %125, !llvm.loop !195

125:                                              ; preds = %121, %109
  %126 = phi i8 [ %123, %121 ], [ %106, %109 ]
  %127 = phi ptr [ %122, %121 ], [ %.lcssa, %109 ]
  %128 = zext i8 %126 to i64
  %129 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !13
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %121, label %135

132:                                              ; preds = %121, %110, %109, %108
  %133 = call fastcc i32 @entryhasaffixes(ptr noundef %42) #34
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132, %125, %114, %94, %78, %68, %54, %50, %47
  %136 = load i64, ptr %43, align 8, !tbaa !71
  %137 = and i64 %136, 1073741824
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %40

139:                                              ; preds = %135, %132, %54, %50, %2
  %140 = phi i32 [ 1, %2 ], [ 1, %50 ], [ 1, %54 ], [ 1, %132 ], [ 0, %135 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #40
  ret i32 %140
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @pfx_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) unnamed_addr #19 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #40
  %11 = getelementptr inbounds %struct.flagptr, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !38
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %180

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !tbaa !13
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %6, 0
  %19 = ptrtoint ptr %10 to i64
  %20 = icmp eq i32 %7, 0
  %21 = or i32 %4, 1
  br label %22

22:                                               ; preds = %176, %14
  %23 = phi ptr [ %15, %14 ], [ %177, %176 ]
  %24 = phi i32 [ %12, %14 ], [ %178, %176 ]
  %25 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 6
  %26 = load i16, ptr %25, align 8, !tbaa !196
  %27 = and i16 %26, 2
  %28 = icmp ne i16 %27, 0
  %29 = and i1 %17, %28
  br i1 %29, label %176, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = zext i16 %26 to i32
  %35 = xor i32 %34, %3
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %176

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !35
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %2, %41
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %176

44:                                               ; preds = %38
  %45 = icmp eq i16 %40, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !36
  %49 = sext i16 %40 to i64
  %50 = call i32 @strncmp(ptr noundef %48, ptr noundef %1, i64 noundef %49) #33
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %176

52:                                               ; preds = %46, %44
  %53 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !32
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %42, %55
  %57 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !197
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %176, label %61

61:                                               ; preds = %52
  %62 = icmp eq i16 %54, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %23, align 8, !tbaa !34
  %65 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %64) #32
  %66 = load i16, ptr %53, align 2, !tbaa !32
  %67 = load i16, ptr %39, align 4, !tbaa !35
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i16 [ %67, %63 ], [ %40, %61 ]
  %70 = phi i16 [ %66, %63 ], [ 0, %61 ]
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i8, ptr %9, i64 %71
  %73 = sext i16 %69 to i64
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  %75 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(1) %74) #32
  %76 = load i16, ptr %57, align 2, !tbaa !197
  %77 = sext i16 %76 to i32
  %78 = icmp sgt i16 %76, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %90, %68
  %80 = phi i32 [ %92, %90 ], [ 0, %68 ]
  %81 = phi ptr [ %91, %90 ], [ %9, %68 ]
  %82 = load i8, ptr %81, align 1, !tbaa !13
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 7, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = sext i8 %85 to i32
  %87 = shl nuw i32 1, %80
  %88 = and i32 %87, %86
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %176, label %90

90:                                               ; preds = %79
  %91 = getelementptr inbounds i8, ptr %81, i64 1
  %92 = add nuw nsw i32 %80, 1
  %93 = icmp eq i32 %92, %77
  br i1 %93, label %94, label %79, !llvm.loop !198

94:                                               ; preds = %90, %68
  %95 = load i16, ptr %53, align 2, !tbaa !32
  %96 = sext i16 %95 to i32
  %97 = add nsw i32 %42, %96
  %98 = load i32, ptr @cflag, align 4, !tbaa !11
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %102 = load i16, ptr %101, align 8, !tbaa !185
  %103 = sext i16 %102 to i32
  %104 = add nsw i32 %103, 65
  %105 = load i16, ptr %39, align 4, !tbaa !35
  %106 = sext i16 %105 to i32
  call fastcc void @flagpr(ptr noundef nonnull %9, i32 noundef %104, i32 noundef %96, i32 noundef %106, i32 noundef -1, i32 noundef 0) #32
  br label %171

107:                                              ; preds = %94
  %108 = call fastcc ptr @lookup(ptr noundef nonnull %9) #32
  %109 = icmp eq ptr %108, null
  br i1 %18, label %146, label %110

110:                                              ; preds = %107
  br i1 %109, label %171, label %111

111:                                              ; preds = %110
  %112 = load i16, ptr %39, align 4, !tbaa !35
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !36
  %117 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %116) #32
  %118 = load i16, ptr %39, align 4, !tbaa !35
  %119 = sext i16 %118 to i64
  %120 = getelementptr inbounds i8, ptr %10, i64 %119
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  store i8 43, ptr %120, align 1, !tbaa !13
  %122 = ptrtoint ptr %121 to i64
  br label %123

123:                                              ; preds = %114, %111
  %124 = phi i64 [ %122, %114 ], [ %19, %111 ]
  %125 = phi ptr [ %121, %114 ], [ %10, %111 ]
  %126 = sub i64 %124, %19
  %127 = trunc i64 %126 to i32
  %128 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %125, ptr noundef nonnull dereferenceable(1) %9) #32
  %129 = sext i32 %97 to i64
  %130 = getelementptr inbounds i8, ptr %125, i64 %129
  %131 = load i16, ptr %53, align 2, !tbaa !32
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %123
  %134 = getelementptr inbounds i8, ptr %130, i64 1
  store i8 45, ptr %130, align 1, !tbaa !13
  %135 = load ptr, ptr %23, align 8, !tbaa !34
  %136 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %134, ptr noundef nonnull dereferenceable(1) %135) #32
  %137 = load i16, ptr %53, align 2, !tbaa !32
  br label %138

138:                                              ; preds = %133, %123
  %139 = phi i16 [ %137, %133 ], [ 0, %123 ]
  %140 = phi ptr [ %134, %133 ], [ %130, %123 ]
  %141 = sext i16 %139 to i32
  %142 = ptrtoint ptr %140 to i64
  %143 = add i64 %124, %129
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  call fastcc void @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %141, i32 noundef %127, i32 noundef 0, i32 noundef %145, ptr noundef nonnull %108, ptr noundef nonnull %23, ptr noundef null) #32
  br label %171

146:                                              ; preds = %107
  br i1 %109, label %171, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.dent, ptr %108, i64 0, i32 2
  %149 = load i64, ptr %148, align 8, !tbaa !71
  %150 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %151 = load i16, ptr %150, align 8, !tbaa !185
  %152 = sext i16 %151 to i64
  %153 = and i64 %152, 4294967295
  %154 = shl nuw i64 1, %153
  %155 = and i64 %154, %149
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %171, label %157

157:                                              ; preds = %147
  %158 = load i32, ptr @numhits, align 4, !tbaa !11
  %159 = icmp slt i32 %158, 10
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = zext i32 %158 to i64
  %162 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %161
  store ptr %108, ptr %162, align 8, !tbaa !117
  %163 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %161, i32 1
  store ptr %23, ptr %163, align 8, !tbaa !115
  %164 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %161, i32 2
  store ptr null, ptr %164, align 8, !tbaa !177
  %165 = add nuw nsw i32 %158, 1
  store i32 %165, ptr @numhits, align 4, !tbaa !11
  br label %166

166:                                              ; preds = %160, %157
  br i1 %20, label %167, label %171

167:                                              ; preds = %166
  %168 = call fastcc i32 @cap_ok(ptr noundef %0, i32 noundef %2) #32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  store i32 0, ptr @numhits, align 4, !tbaa !11
  br label %171

171:                                              ; preds = %170, %166, %147, %146, %138, %110, %100
  %172 = load i16, ptr %25, align 8, !tbaa !196
  %173 = and i16 %172, 1
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  call fastcc void @chk_suf(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %97, i32 noundef %21, ptr noundef nonnull %23, i32 noundef %6, i32 noundef %7) #34
  br label %176

176:                                              ; preds = %175, %171, %79, %52, %46, %38, %33, %22
  %177 = getelementptr inbounds %struct.flagent, ptr %23, i64 1
  %178 = add nsw i32 %24, -1
  %179 = icmp sgt i32 %24, 1
  br i1 %179, label %22, label %180, !llvm.loop !199

180:                                              ; preds = %176, %167, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #40
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @chk_suf(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #19 {
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @sflagindex, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #34
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !13
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12
  %14 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !38
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %7
  %18 = icmp ne i32 %6, 0
  br label %19

19:                                               ; preds = %40, %17
  %20 = phi ptr [ %13, %17 ], [ %45, %40 ]
  %21 = phi ptr [ %10, %17 ], [ %42, %40 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, %1
  br i1 %25, label %51, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.flagptr, ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !38
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %22, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #34
  %31 = load i32, ptr @numhits, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %18, %32
  %34 = load i32, ptr @cflag, align 4
  %35 = or i32 %34, %5
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %33, i1 true, i1 %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load ptr, ptr %20, align 8, !tbaa !13
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi ptr [ %39, %38 ], [ %22, %26 ]
  %42 = getelementptr inbounds i8, ptr %21, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds %struct.flagptr, ptr %41, i64 %44
  %46 = getelementptr inbounds %struct.flagptr, ptr %41, i64 %44, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !38
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %19, label %49, !llvm.loop !200

49:                                               ; preds = %40, %19, %7
  %50 = phi ptr [ %13, %7 ], [ %20, %19 ], [ %45, %40 ]
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %50, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #34
  br label %51

51:                                               ; preds = %49, %30, %24
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @suf_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #19 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #40
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #32
  %12 = getelementptr inbounds %struct.flagptr, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !38
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %243

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8, !tbaa !13
  %17 = and i32 %4, 1
  %18 = icmp ne i32 %17, 0
  %19 = and i32 %4, 2
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 2
  %22 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 4
  %24 = icmp eq i32 %6, 0
  %25 = getelementptr inbounds %struct.flagent, ptr %5, i64 0, i32 1
  %26 = ptrtoint ptr %10 to i64
  %27 = icmp eq i32 %7, 0
  br label %28

28:                                               ; preds = %239, %15
  %29 = phi ptr [ %16, %15 ], [ %240, %239 ]
  %30 = phi i32 [ %13, %15 ], [ %241, %239 ]
  %31 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 6
  %32 = load i16, ptr %31, align 8, !tbaa !196
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  %35 = select i1 %18, i1 %34, i1 false
  br i1 %35, label %239, label %36

36:                                               ; preds = %28
  %37 = and i16 %32, 2
  %38 = icmp ne i16 %37, 0
  %39 = and i1 %20, %38
  br i1 %39, label %239, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr @compoundflag, align 4, !tbaa !11
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = zext i16 %32 to i32
  %45 = xor i32 %44, %4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %239

48:                                               ; preds = %43, %40
  %49 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !35
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %2, %51
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %239

54:                                               ; preds = %48
  %55 = icmp eq i16 %50, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !36
  %59 = zext i32 %52 to i64
  %60 = getelementptr inbounds i8, ptr %1, i64 %59
  %61 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %60) #33
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %239

63:                                               ; preds = %56, %54
  %64 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 3
  %65 = load i16, ptr %64, align 2, !tbaa !32
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %52, %66
  %68 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 5
  %69 = load i16, ptr %68, align 2, !tbaa !197
  %70 = sext i16 %69 to i32
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %239, label %72

72:                                               ; preds = %63
  %73 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #32
  %74 = zext i32 %52 to i64
  %75 = getelementptr inbounds i8, ptr %9, i64 %74
  %76 = load i16, ptr %64, align 2, !tbaa !32
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %29, align 8, !tbaa !34
  %80 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %79) #32
  %81 = load i16, ptr %64, align 2, !tbaa !32
  %82 = sext i16 %81 to i32
  %83 = add nsw i32 %52, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %9, i64 %84
  br label %87

86:                                               ; preds = %72
  store i8 0, ptr %75, align 1, !tbaa !13
  br label %87

87:                                               ; preds = %86, %78
  %88 = phi ptr [ %85, %78 ], [ %75, %86 ]
  %89 = phi i32 [ %83, %78 ], [ %52, %86 ]
  %90 = load i16, ptr %68, align 2, !tbaa !197
  %91 = sext i16 %90 to i32
  br label %92

92:                                               ; preds = %96, %87
  %93 = phi i32 [ %91, %87 ], [ %97, %96 ]
  %94 = phi ptr [ %88, %87 ], [ %98, %96 ]
  %95 = icmp sgt i32 %93, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = add nsw i32 %93, -1
  %98 = getelementptr inbounds i8, ptr %94, i64 -1
  %99 = load i8, ptr %98, align 1, !tbaa !13
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 7, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !13
  %103 = sext i8 %102 to i32
  %104 = shl nuw i32 1, %97
  %105 = and i32 %104, %103
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %239, label %92, !llvm.loop !201

107:                                              ; preds = %92
  %108 = load i32, ptr @cflag, align 4, !tbaa !11
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %107
  br i1 %18, label %111, label %125

111:                                              ; preds = %110
  %112 = load i16, ptr %21, align 8, !tbaa !185
  %113 = sext i16 %112 to i32
  %114 = add nsw i32 %113, 65
  %115 = load i16, ptr %22, align 2, !tbaa !32
  %116 = sext i16 %115 to i32
  %117 = load i16, ptr %23, align 4, !tbaa !35
  %118 = sext i16 %117 to i32
  %119 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 2
  %120 = load i16, ptr %119, align 8, !tbaa !185
  %121 = sext i16 %120 to i32
  %122 = add nsw i32 %121, 65
  %123 = load i16, ptr %49, align 4, !tbaa !35
  %124 = sext i16 %123 to i32
  call fastcc void @flagpr(ptr noundef nonnull %9, i32 noundef %114, i32 noundef %116, i32 noundef %118, i32 noundef %122, i32 noundef %124) #32
  br label %239

125:                                              ; preds = %110
  %126 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 2
  %127 = load i16, ptr %126, align 8, !tbaa !185
  %128 = sext i16 %127 to i32
  %129 = add nsw i32 %128, 65
  %130 = load i16, ptr %49, align 4, !tbaa !35
  %131 = sext i16 %130 to i32
  call fastcc void @flagpr(ptr noundef nonnull %9, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef %129, i32 noundef %131) #32
  br label %239

132:                                              ; preds = %107
  %133 = call fastcc ptr @lookup(ptr noundef nonnull %9) #32
  %134 = icmp eq ptr %133, null
  br i1 %24, label %206, label %135

135:                                              ; preds = %132
  br i1 %134, label %239, label %136

136:                                              ; preds = %135
  br i1 %18, label %137, label %147

137:                                              ; preds = %136
  %138 = load i16, ptr %23, align 4, !tbaa !35
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %25, align 8, !tbaa !36
  %142 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %141) #32
  %143 = sext i16 %138 to i64
  %144 = getelementptr inbounds i8, ptr %10, i64 %143
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  store i8 43, ptr %144, align 1, !tbaa !13
  %146 = ptrtoint ptr %145 to i64
  br label %151

147:                                              ; preds = %136
  %148 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %9) #32
  %149 = sext i32 %89 to i64
  %150 = getelementptr inbounds i8, ptr %10, i64 %149
  br label %166

151:                                              ; preds = %140, %137
  %152 = phi i64 [ %146, %140 ], [ %26, %137 ]
  %153 = phi ptr [ %145, %140 ], [ %10, %137 ]
  %154 = sub i64 %152, %26
  %155 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %153, ptr noundef nonnull dereferenceable(1) %9) #32
  %156 = sext i32 %89 to i64
  %157 = getelementptr inbounds i8, ptr %153, i64 %156
  %158 = load i16, ptr %22, align 2, !tbaa !32
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %151
  %161 = getelementptr inbounds i8, ptr %157, i64 1
  store i8 45, ptr %157, align 1, !tbaa !13
  %162 = load ptr, ptr %5, align 8, !tbaa !34
  %163 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull dereferenceable(1) %162) #32
  %164 = sext i16 %158 to i64
  %165 = getelementptr inbounds i8, ptr %161, i64 %164
  br label %166

166:                                              ; preds = %160, %151, %147
  %167 = phi i64 [ %156, %160 ], [ %156, %151 ], [ %149, %147 ]
  %168 = phi i64 [ %154, %160 ], [ %154, %151 ], [ 0, %147 ]
  %169 = phi i64 [ %152, %160 ], [ %152, %151 ], [ %26, %147 ]
  %170 = phi ptr [ %165, %160 ], [ %157, %151 ], [ %150, %147 ]
  %171 = trunc i64 %168 to i32
  %172 = load i16, ptr %64, align 2, !tbaa !32
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %166
  %175 = getelementptr inbounds i8, ptr %170, i64 1
  store i8 45, ptr %170, align 1, !tbaa !13
  %176 = load ptr, ptr %29, align 8, !tbaa !34
  %177 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %175, ptr noundef nonnull dereferenceable(1) %176) #32
  %178 = load i16, ptr %64, align 2, !tbaa !32
  %179 = sext i16 %178 to i64
  %180 = getelementptr inbounds i8, ptr %175, i64 %179
  br label %181

181:                                              ; preds = %174, %166
  %182 = phi ptr [ %180, %174 ], [ %170, %166 ]
  %183 = load i16, ptr %49, align 4, !tbaa !35
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 43, ptr %182, align 1, !tbaa !13
  %187 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !36
  %189 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(1) %188) #32
  %190 = load i16, ptr %49, align 4, !tbaa !35
  %191 = sext i16 %190 to i64
  %192 = getelementptr inbounds i8, ptr %186, i64 %191
  br label %193

193:                                              ; preds = %185, %181
  %194 = phi ptr [ %192, %185 ], [ %182, %181 ]
  br i1 %18, label %195, label %198

195:                                              ; preds = %193
  %196 = load i16, ptr %22, align 2, !tbaa !32
  %197 = sext i16 %196 to i32
  br label %198

198:                                              ; preds = %195, %193
  %199 = phi i32 [ %197, %195 ], [ 0, %193 ]
  %200 = load i16, ptr %64, align 2, !tbaa !32
  %201 = sext i16 %200 to i32
  %202 = ptrtoint ptr %194 to i64
  %203 = add i64 %169, %167
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  call fastcc void @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %199, i32 noundef %171, i32 noundef %201, i32 noundef %205, ptr noundef nonnull %133, ptr noundef %5, ptr noundef nonnull %29) #32
  br label %239

206:                                              ; preds = %132
  br i1 %134, label %239, label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.dent, ptr %133, i64 0, i32 2
  %209 = load i64, ptr %208, align 8, !tbaa !71
  %210 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 2
  %211 = load i16, ptr %210, align 8, !tbaa !185
  %212 = sext i16 %211 to i64
  %213 = and i64 %212, 4294967295
  %214 = shl nuw i64 1, %213
  %215 = and i64 %214, %209
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %239, label %217

217:                                              ; preds = %207
  br i1 %18, label %218, label %225

218:                                              ; preds = %217
  %219 = load i16, ptr %21, align 8, !tbaa !185
  %220 = sext i16 %219 to i64
  %221 = and i64 %220, 4294967295
  %222 = shl nuw i64 1, %221
  %223 = and i64 %222, %209
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %239, label %225

225:                                              ; preds = %218, %217
  %226 = load i32, ptr @numhits, align 4, !tbaa !11
  %227 = icmp slt i32 %226, 10
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = zext i32 %226 to i64
  %230 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %229
  store ptr %133, ptr %230, align 8, !tbaa !117
  %231 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %229, i32 1
  store ptr %5, ptr %231, align 8, !tbaa !115
  %232 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %229, i32 2
  store ptr %29, ptr %232, align 8, !tbaa !177
  %233 = add nuw nsw i32 %226, 1
  store i32 %233, ptr @numhits, align 4, !tbaa !11
  br label %234

234:                                              ; preds = %228, %225
  br i1 %27, label %235, label %239

235:                                              ; preds = %234
  %236 = call fastcc i32 @cap_ok(ptr noundef %0, i32 noundef %2) #32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  store i32 0, ptr @numhits, align 4, !tbaa !11
  br label %239

239:                                              ; preds = %238, %234, %218, %207, %206, %198, %135, %125, %111, %96, %63, %56, %48, %43, %36, %28
  %240 = getelementptr inbounds %struct.flagent, ptr %29, i64 1
  %241 = add nsw i32 %30, -1
  %242 = icmp sgt i32 %30, 1
  br i1 %242, label %28, label %243, !llvm.loop !202

243:                                              ; preds = %239, %235, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #40
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @flagpr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #19 {
  %7 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #33
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 0
  %19 = icmp sgt i32 %3, 0
  br i1 %18, label %21, label %20

20:                                               ; preds = %11
  br i1 %19, label %25, label %42

21:                                               ; preds = %11
  br i1 %19, label %35, label %42

22:                                               ; preds = %25
  %23 = getelementptr inbounds i8, ptr %26, i64 1
  %24 = icmp ult ptr %23, %13
  br i1 %24, label %25, label %42, !llvm.loop !203

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %23, %22 ], [ %7, %20 ]
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %22, label %207

32:                                               ; preds = %35
  %33 = getelementptr inbounds i8, ptr %36, i64 1
  %34 = icmp ult ptr %33, %13
  br i1 %34, label %35, label %42, !llvm.loop !204

35:                                               ; preds = %32, %21
  %36 = phi ptr [ %33, %32 ], [ %7, %21 ]
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %32, label %207

42:                                               ; preds = %32, %22, %21, %20, %6
  %43 = icmp sgt i32 %4, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %42
  %45 = shl i64 %8, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %7, i64 %46
  %48 = sext i32 %5 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = icmp eq i8 %55, 0
  %57 = load i8, ptr %50, align 1, !tbaa !13
  %58 = icmp eq i8 %57, 0
  br i1 %56, label %60, label %59

59:                                               ; preds = %44
  br i1 %58, label %83, label %65

60:                                               ; preds = %44
  br i1 %58, label %83, label %76

61:                                               ; preds = %65
  %62 = getelementptr inbounds i8, ptr %67, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %83, label %65, !llvm.loop !205

65:                                               ; preds = %61, %59
  %66 = phi i8 [ %63, %61 ], [ %57, %59 ]
  %67 = phi ptr [ %62, %61 ], [ %50, %59 ]
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !13
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %61, label %207

72:                                               ; preds = %76
  %73 = getelementptr inbounds i8, ptr %78, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !13
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76, !llvm.loop !206

76:                                               ; preds = %72, %60
  %77 = phi i8 [ %74, %72 ], [ %57, %60 ]
  %78 = phi ptr [ %73, %72 ], [ %50, %60 ]
  %79 = zext i8 %77 to i64
  %80 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %72, label %207

83:                                               ; preds = %72, %61, %60, %59, %42
  %84 = tail call i32 @putchar(i32 noundef 32) #34
  %85 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %86 = sext i32 %3 to i64
  %87 = getelementptr inbounds i8, ptr %85, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !13
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !13
  %92 = icmp eq i8 %91, 0
  %93 = icmp sgt i32 %2, 0
  br i1 %92, label %95, label %94

94:                                               ; preds = %83
  br i1 %93, label %96, label %135

95:                                               ; preds = %83
  br i1 %93, label %114, label %135

96:                                               ; preds = %110, %94
  %97 = phi ptr [ %100, %110 ], [ %0, %94 ]
  %98 = phi i32 [ %99, %110 ], [ %2, %94 ]
  %99 = add nsw i32 %98, -1
  %100 = getelementptr inbounds i8, ptr %97, i64 1
  %101 = load i8, ptr %97, align 1, !tbaa !13
  %102 = icmp sgt i8 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i8 %101, ptr @printichar.out, align 1, !tbaa !13
  store i8 0, ptr getelementptr inbounds ([11 x i8], ptr @printichar.out, i64 0, i64 1), align 1, !tbaa !13
  br label %110

104:                                              ; preds = %96
  %105 = zext i8 %101 to i64
  %106 = add nuw nsw i64 %105, 4294967168
  %107 = and i64 %106, 4294967295
  %108 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %107
  %109 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @printichar.out, ptr noundef nonnull dereferenceable(1) %108) #32
  br label %110

110:                                              ; preds = %104, %103
  %111 = load ptr, ptr @stdout, align 8, !tbaa !7
  %112 = tail call i32 @fputs(ptr noundef nonnull @printichar.out, ptr noundef %111) #34
  %113 = icmp ugt i32 %98, 1
  br i1 %113, label %96, label %135, !llvm.loop !207

114:                                              ; preds = %131, %95
  %115 = phi ptr [ %118, %131 ], [ %0, %95 ]
  %116 = phi i32 [ %117, %131 ], [ %2, %95 ]
  %117 = add nsw i32 %116, -1
  %118 = getelementptr inbounds i8, ptr %115, i64 1
  %119 = load i8, ptr %115, align 1, !tbaa !13
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !13
  %123 = icmp sgt i8 %122, -1
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  store i8 %122, ptr @printichar.out, align 1, !tbaa !13
  store i8 0, ptr getelementptr inbounds ([11 x i8], ptr @printichar.out, i64 0, i64 1), align 1, !tbaa !13
  br label %131

125:                                              ; preds = %114
  %126 = zext i8 %122 to i64
  %127 = add nuw nsw i64 %126, 4294967168
  %128 = and i64 %127, 4294967295
  %129 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %128
  %130 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @printichar.out, ptr noundef nonnull dereferenceable(1) %129) #32
  br label %131

131:                                              ; preds = %125, %124
  %132 = load ptr, ptr @stdout, align 8, !tbaa !7
  %133 = tail call i32 @fputs(ptr noundef nonnull @printichar.out, ptr noundef %132) #34
  %134 = icmp ugt i32 %116, 1
  br i1 %134, label %114, label %135, !llvm.loop !208

135:                                              ; preds = %131, %110, %95, %94
  %136 = phi ptr [ %0, %95 ], [ %0, %94 ], [ %118, %131 ], [ %100, %110 ]
  %137 = add i32 %5, %3
  %138 = sub i32 %9, %137
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %155, %135
  %141 = phi ptr [ %158, %155 ], [ %136, %135 ]
  %142 = phi ptr [ %145, %155 ], [ %87, %135 ]
  %143 = phi i32 [ %144, %155 ], [ %138, %135 ]
  %144 = add nsw i32 %143, -1
  %145 = getelementptr inbounds i8, ptr %142, i64 1
  %146 = load i8, ptr %142, align 1, !tbaa !13
  %147 = icmp sgt i8 %146, -1
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  store i8 %146, ptr @printichar.out, align 1, !tbaa !13
  store i8 0, ptr getelementptr inbounds ([11 x i8], ptr @printichar.out, i64 0, i64 1), align 1, !tbaa !13
  br label %155

149:                                              ; preds = %140
  %150 = zext i8 %146 to i64
  %151 = add nuw nsw i64 %150, 4294967168
  %152 = and i64 %151, 4294967295
  %153 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %152
  %154 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @printichar.out, ptr noundef nonnull dereferenceable(1) %153) #32
  br label %155

155:                                              ; preds = %149, %148
  %156 = load ptr, ptr @stdout, align 8, !tbaa !7
  %157 = tail call i32 @fputs(ptr noundef nonnull @printichar.out, ptr noundef %156) #34
  %158 = getelementptr inbounds i8, ptr %141, i64 1
  %159 = icmp ugt i32 %143, 1
  br i1 %159, label %140, label %160, !llvm.loop !209

160:                                              ; preds = %155, %135
  %161 = phi ptr [ %87, %135 ], [ %145, %155 ]
  %162 = phi ptr [ %136, %135 ], [ %158, %155 ]
  %163 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %164 = icmp ugt ptr %161, %163
  %165 = sext i1 %164 to i64
  %166 = getelementptr inbounds i8, ptr %161, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !13
  %168 = zext i8 %167 to i64
  %169 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !13
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %160
  %173 = load i8, ptr %162, align 1, !tbaa !13
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %198, label %178

175:                                              ; preds = %160
  tail call fastcc void @ichartosstr(ptr noundef %162, i32 noundef 0) #32
  %176 = load ptr, ptr @stdout, align 8, !tbaa !7
  %177 = tail call i32 @fputs(ptr noundef nonnull @ichartosstr.out, ptr noundef %176) #34
  br label %198

178:                                              ; preds = %193, %172
  %179 = phi i8 [ %196, %193 ], [ %173, %172 ]
  %180 = phi ptr [ %181, %193 ], [ %162, %172 ]
  %181 = getelementptr inbounds i8, ptr %180, i64 1
  %182 = zext i8 %179 to i64
  %183 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !13
  %185 = icmp sgt i8 %184, -1
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  store i8 %184, ptr @printichar.out, align 1, !tbaa !13
  store i8 0, ptr getelementptr inbounds ([11 x i8], ptr @printichar.out, i64 0, i64 1), align 1, !tbaa !13
  br label %193

187:                                              ; preds = %178
  %188 = zext i8 %184 to i64
  %189 = add nuw nsw i64 %188, 4294967168
  %190 = and i64 %189, 4294967295
  %191 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %190
  %192 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @printichar.out, ptr noundef nonnull dereferenceable(1) %191) #32
  br label %193

193:                                              ; preds = %187, %186
  %194 = load ptr, ptr @stdout, align 8, !tbaa !7
  %195 = tail call i32 @fputs(ptr noundef nonnull @printichar.out, ptr noundef %194) #34
  %196 = load i8, ptr %181, align 1, !tbaa !13
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %178, !llvm.loop !210

198:                                              ; preds = %193, %175, %172
  %199 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !85
  %200 = sext i8 %199 to i32
  %201 = tail call i32 @putchar(i32 noundef %200) #34
  br i1 %10, label %202, label %204

202:                                              ; preds = %198
  %203 = tail call i32 @putchar(i32 noundef %1) #34
  br label %204

204:                                              ; preds = %202, %198
  br i1 %43, label %205, label %207

205:                                              ; preds = %204
  %206 = tail call i32 @putchar(i32 noundef %4) #34
  br label %207

207:                                              ; preds = %205, %204, %76, %65, %35, %25
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @ins_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, ptr noundef %8) unnamed_addr #19 {
  %10 = alloca [10 x [120 x i8]], align 16
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %10) #40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #40
  store i32 0, ptr %11, align 4, !tbaa !11
  call fastcc void @save_root_cap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %10, ptr noundef nonnull %11) #34
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = zext i32 %12 to i64
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %21, %16 ]
  %18 = getelementptr inbounds [10 x [120 x i8]], ptr %10, i64 0, i64 %17
  %19 = call fastcc i32 @insert(ptr noundef nonnull %18) #34, !range !142
  %20 = icmp slt i32 %19, 0
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %24, label %16, !llvm.loop !211

24:                                               ; preds = %16, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %10) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @entryhasaffixes(ptr nocapture noundef readonly %0) unnamed_addr #31 {
  %2 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), align 8, !tbaa !115
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.flagent, ptr %2, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !185
  %9 = sext i16 %8 to i64
  %10 = and i64 %9, 4294967295
  %11 = shl nuw i64 1, %10
  %12 = and i64 %11, %6
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %4, %1
  %15 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 2), align 16, !tbaa !177
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !71
  %20 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !185
  %22 = sext i16 %21 to i64
  %23 = and i64 %22, 4294967295
  %24 = shl nuw i64 1, %23
  %25 = and i64 %24, %19
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17, %14
  br label %28

28:                                               ; preds = %27, %17, %4
  %29 = phi i32 [ 1, %27 ], [ 0, %4 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @TeX_open_paren(ptr nocapture noundef %0) unnamed_addr #25 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !13
  %4 = icmp eq i8 %3, 0
  %5 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %6 = icmp eq i8 %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  %8 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %9 = icmp eq i8 %3, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %11, %1
  %12 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !7
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 0
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %17 = icmp eq i8 %14, %16
  %18 = select i1 %15, i1 true, i1 %17
  %19 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %20 = icmp eq i8 %14, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11, !llvm.loop !106

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @tbldump(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #19 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %92

4:                                                ; preds = %88, %2
  %5 = phi i32 [ %7, %88 ], [ %1, %2 ]
  %6 = phi ptr [ %8, %88 ], [ %0, %2 ]
  %7 = add nsw i32 %5, -1
  %8 = getelementptr inbounds %struct.flagent, ptr %6, i64 1
  %9 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 6
  %10 = load i16, ptr %9, align 8, !tbaa !196
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, ptr @.str.7.64, ptr @.str.6.65
  %14 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !185
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 65
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.66, ptr noundef nonnull %13, i32 noundef %17) #34
  %19 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 5
  %20 = load i16, ptr %19, align 2, !tbaa !197
  %21 = icmp slt i16 %20, 1
  br i1 %21, label %68, label %22

22:                                               ; preds = %4
  %23 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 7
  br label %24

24:                                               ; preds = %64, %22
  %25 = phi i32 [ 0, %22 ], [ %66, %64 ]
  %26 = shl nuw i32 1, %25
  br label %27

27:                                               ; preds = %27, %24
  %28 = phi i64 [ 128, %24 ], [ %31, %27 ]
  %29 = phi i32 [ 0, %24 ], [ %40, %27 ]
  %30 = phi i32 [ 0, %24 ], [ %38, %27 ]
  %31 = add nsw i64 %28, -1
  %32 = getelementptr inbounds i8, ptr %23, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !13
  %34 = sext i8 %33 to i32
  %35 = and i32 %26, %34
  %36 = icmp ne i32 %35, 0
  %37 = trunc i64 %31 to i32
  %38 = select i1 %36, i32 %37, i32 %30
  %39 = zext i1 %36 to i32
  %40 = add nuw nsw i32 %29, %39
  %41 = icmp ugt i64 %28, 1
  br i1 %41, label %27, label %42, !llvm.loop !212

42:                                               ; preds = %27
  %.lcssa1 = phi i32 [ %38, %27 ]
  %.lcssa = phi i32 [ %40, %27 ]
  switch i32 %.lcssa, label %44 [
    i32 1, label %51
    i32 128, label %43
  ]

43:                                               ; preds = %42
  br label %51

44:                                               ; preds = %42
  %45 = icmp ugt i32 %.lcssa, 64
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12.67) #34
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef 0) #34
  br label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr @stdout, align 8, !tbaa !7
  %50 = tail call i32 @putc(i32 noundef 91, ptr noundef %49) #34
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef %26) #34
  br label %51

51:                                               ; preds = %48, %46, %43, %42
  %52 = phi i32 [ 46, %43 ], [ 93, %48 ], [ 93, %46 ], [ %.lcssa1, %42 ]
  %53 = load ptr, ptr @stdout, align 8, !tbaa !7
  %54 = tail call i32 @putc(i32 noundef %52, ptr noundef %53) #34
  %55 = load i16, ptr %19, align 2, !tbaa !197
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, -1
  %58 = icmp slt i32 %25, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load ptr, ptr @stdout, align 8, !tbaa !7
  %61 = tail call i32 @putc(i32 noundef 32, ptr noundef %60) #34
  %62 = load i16, ptr %19, align 2, !tbaa !197
  %63 = sext i16 %62 to i32
  br label %64

64:                                               ; preds = %59, %51
  %65 = phi i32 [ %56, %51 ], [ %63, %59 ]
  %66 = add nuw nsw i32 %25, 1
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %24, label %71, !llvm.loop !213

68:                                               ; preds = %4
  %69 = load ptr, ptr @stdout, align 8, !tbaa !7
  %70 = tail call i32 @putc(i32 noundef 46, ptr noundef %69) #34
  br label %71

71:                                               ; preds = %68, %64
  %72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.68) #34
  %73 = load ptr, ptr @stdout, align 8, !tbaa !7
  %74 = tail call i32 @putc(i32 noundef 9, ptr noundef %73) #34
  %75 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 3
  %76 = load i16, ptr %75, align 2, !tbaa !32
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %6, align 8, !tbaa !34
  tail call fastcc void @ichartosstr(ptr noundef %79, i32 noundef 1) #32
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.69, ptr noundef nonnull @ichartosstr.out) #34
  br label %81

81:                                               ; preds = %78, %71
  %82 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 4
  %83 = load i16, ptr %82, align 4, !tbaa !35
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !36
  tail call fastcc void @ichartosstr(ptr noundef %87, i32 noundef 1) #32
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi ptr [ @ichartosstr.out, %85 ], [ @.str.11.70, %81 ]
  %90 = tail call i32 @puts(ptr nonnull dereferenceable(1) %89)
  %91 = icmp sgt i32 %5, 1
  br i1 %91, label %4, label %92, !llvm.loop !214

92:                                               ; preds = %88, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @subsetdump(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #19 {
  br label %4

4:                                                ; preds = %51, %3
  %5 = phi i32 [ 0, %3 ], [ %55, %51 ]
  %6 = phi ptr [ %0, %3 ], [ %54, %51 ]
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %8 = sext i8 %7 to i32
  %9 = xor i32 %8, %2
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %4
  %13 = getelementptr i8, ptr %6, i64 1
  %14 = sub i32 127, %5
  %15 = zext i32 %14 to i64
  %16 = getelementptr i8, ptr %13, i64 %15
  br label %17

17:                                               ; preds = %25, %12
  %18 = phi i32 [ %27, %25 ], [ %5, %12 ]
  %19 = phi ptr [ %26, %25 ], [ %6, %12 ]
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = sext i8 %20 to i32
  %22 = xor i32 %21, %2
  %23 = and i32 %22, %1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = add i32 %18, 1
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %17, !llvm.loop !215

29:                                               ; preds = %25, %17
  %30 = phi ptr [ %16, %25 ], [ %19, %17 ]
  %31 = phi i32 [ 128, %25 ], [ %18, %17 ]
  %32 = add nsw i32 %5, 1
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load ptr, ptr @stdout, align 8, !tbaa !7
  %36 = tail call i32 @putc(i32 noundef %5, ptr noundef %35) #34
  br label %51

37:                                               ; preds = %29
  %38 = add nsw i32 %5, 3
  %39 = icmp sgt i32 %31, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = icmp slt i32 %5, %31
  br i1 %41, label %42, label %51

42:                                               ; preds = %42, %40
  %43 = phi i32 [ %46, %42 ], [ %5, %40 ]
  %44 = load ptr, ptr @stdout, align 8, !tbaa !7
  %45 = tail call i32 @putc(i32 noundef %43, ptr noundef %44) #34
  %46 = add i32 %43, 1
  %47 = icmp eq i32 %46, %31
  br i1 %47, label %51, label %42, !llvm.loop !216

48:                                               ; preds = %37
  %49 = add nsw i32 %31, -1
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13.71, i32 noundef %5, i32 noundef %49) #34
  br label %51

51:                                               ; preds = %48, %42, %40, %34, %4
  %52 = phi ptr [ %30, %34 ], [ %30, %48 ], [ %6, %4 ], [ %30, %40 ], [ %30, %42 ]
  %53 = phi i32 [ %31, %34 ], [ %31, %48 ], [ %5, %4 ], [ %31, %40 ], [ %31, %42 ]
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  %55 = add nsw i32 %53, 1
  %56 = icmp slt i32 %53, 127
  br i1 %56, label %4, label %57, !llvm.loop !217

57:                                               ; preds = %51
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @xgets(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #19 {
  %4 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.1.336) #32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load ptr, ptr @xgets.Include_File, align 8, !tbaa !7
  br label %12

11:                                               ; preds = %6
  store ptr %7, ptr @xgets.Include_File, align 8, !tbaa !7
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi ptr [ %10, %9 ], [ %7, %11 ]
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #33
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr @xgets.Include_Len, align 4, !tbaa !11
  %16 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  store ptr %2, ptr %16, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %12, %3
  %18 = ptrtoint ptr %0 to i64
  %19 = zext i32 %1 to i64
  br label %20

20:                                               ; preds = %70, %17
  %21 = phi ptr [ %0, %17 ], [ %71, %70 ]
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %18
  %24 = add i64 %23, 1
  %25 = icmp slt i64 %24, %19
  %26 = icmp eq ptr %21, %0
  br i1 %25, label %27, label %36

27:                                               ; preds = %42, %20
  %28 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = tail call i32 @getc(ptr noundef %29) #34
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %.lcssa = phi i32 [ %30, %27 ]
  %33 = trunc i32 %.lcssa to i8
  %34 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %33, ptr %21, align 1, !tbaa !13
  %35 = icmp eq i32 %.lcssa, 10
  br i1 %35, label %36, label %70

36:                                               ; preds = %32, %20
  %37 = phi ptr [ %34, %32 ], [ %21, %20 ]
  store i8 0, ptr %37, align 1, !tbaa !13
  br label %46

38:                                               ; preds = %27
  store i8 0, ptr %21, align 1, !tbaa !13
  %39 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %40 = icmp eq ptr %39, @xgets.F
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br i1 %26, label %72, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds ptr, ptr %39, i64 -1
  store ptr %43, ptr @xgets.current_F, align 8, !tbaa !7
  %44 = load ptr, ptr %39, align 8, !tbaa !7
  %45 = tail call i32 @fclose(ptr noundef %44) #34
  br i1 %26, label %27, label %46

46:                                               ; preds = %42, %41, %36
  %47 = load i1, ptr @incfileflag, align 4
  br i1 %47, label %48, label %72

48:                                               ; preds = %46
  %49 = load ptr, ptr @xgets.Include_File, align 8, !tbaa !7
  %50 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !11
  %51 = zext i32 %50 to i64
  %52 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %49, i64 noundef %51) #33
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = sext i32 %50 to i64
  %56 = getelementptr inbounds i8, ptr %0, i64 %55
  %57 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %58, ptrtoint (ptr @xgets.F to i64)
  %60 = icmp slt i64 %59, 40
  br i1 %60, label %61, label %70

61:                                               ; preds = %54
  %62 = load i8, ptr %56, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = tail call noalias ptr @fopen(ptr noundef nonnull %56, ptr noundef nonnull @.str.2.337) #34
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  store ptr %69, ptr @xgets.current_F, align 8, !tbaa !7
  store ptr %65, ptr %69, align 8, !tbaa !7
  br label %70

70:                                               ; preds = %67, %64, %61, %54, %32
  %71 = phi ptr [ %34, %32 ], [ %0, %64 ], [ %0, %67 ], [ %0, %61 ], [ %0, %54 ]
  br label %20

72:                                               ; preds = %48, %46, %41
  %73 = phi ptr [ null, %41 ], [ %0, %46 ], [ %0, %48 ]
  ret ptr %73
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @expand_pre(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #19 {
  %6 = alloca [120 x i8], align 16
  %7 = load i32, ptr @numpflags, align 4, !tbaa !11
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %188

9:                                                ; preds = %5
  %10 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %6, i64 1
  br label %12

12:                                               ; preds = %183, %9
  %13 = phi ptr [ %10, %9 ], [ %185, %183 ]
  %14 = phi i32 [ 0, %9 ], [ %184, %183 ]
  %15 = phi i32 [ %7, %9 ], [ %186, %183 ]
  %16 = load i64, ptr %2, align 8, !tbaa !71
  %17 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !185
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = and i64 %21, %16
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %183, label %24

24:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #40
  %25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !197
  %29 = sext i16 %28 to i32
  %30 = icmp sgt i32 %29, %26
  br i1 %30, label %180, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !32
  %34 = sext i16 %33 to i32
  %35 = sub nsw i32 %26, %34
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %180, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !35
  %40 = sext i16 %39 to i32
  %41 = add nsw i32 %35, %40
  %42 = icmp sgt i16 %28, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = zext i32 %29 to i64
  %45 = getelementptr i8, ptr %1, i64 %44
  br label %46

46:                                               ; preds = %60, %43
  %47 = phi ptr [ %61, %60 ], [ %1, %43 ]
  %48 = phi i32 [ %62, %60 ], [ 0, %43 ]
  %49 = load i8, ptr %47, align 1, !tbaa !13
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 7, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = sext i8 %55 to i32
  %57 = shl nuw i32 1, %48
  %58 = and i32 %57, %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %180, label %60

60:                                               ; preds = %46
  %61 = getelementptr inbounds i8, ptr %47, i64 1
  %62 = add nuw nsw i32 %48, 1
  %63 = icmp eq i32 %62, %29
  br i1 %63, label %64, label %46, !llvm.loop !218

64:                                               ; preds = %60, %37
  %65 = phi ptr [ %1, %37 ], [ %45, %60 ]
  %66 = icmp eq i16 %39, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !36
  %70 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %69) #32
  %71 = sext i16 %39 to i64
  %72 = getelementptr inbounds i8, ptr %6, i64 %71
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi ptr [ %72, %67 ], [ %65, %64 ]
  %75 = sext i16 %33 to i64
  %76 = getelementptr inbounds i8, ptr %1, i64 %75
  %77 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull dereferenceable(1) %76) #32
  %78 = load i8, ptr %1, align 1, !tbaa !13
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !13
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %145, label %83

83:                                               ; preds = %88, %73
  %84 = phi ptr [ %85, %88 ], [ %1, %73 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %167, label %88

88:                                               ; preds = %83
  %89 = zext i8 %86 to i64
  %90 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !13
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %83, !llvm.loop !219

93:                                               ; preds = %97
  %94 = getelementptr inbounds i8, ptr %99, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !13
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %128, label %97, !llvm.loop !220

97:                                               ; preds = %93, %88
  %98 = phi i8 [ %95, %93 ], [ %86, %88 ]
  %99 = phi ptr [ %94, %93 ], [ %85, %88 ]
  %100 = zext i8 %98 to i64
  %101 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !13
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %93, label %104

104:                                              ; preds = %97
  %105 = load i16, ptr %38, align 4, !tbaa !35
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds [120 x i8], ptr %6, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !13
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !13
  %112 = icmp eq i8 %111, 0
  %113 = icmp sgt i16 %105, 0
  %114 = and i1 %113, %112
  br i1 %114, label %115, label %167

115:                                              ; preds = %104
  %116 = zext i16 %105 to i64
  %117 = add nuw nsw i64 %116, 4294967295
  %118 = and i64 %117, 4294967295
  %119 = getelementptr i8, ptr %6, i64 %118
  br label %120

120:                                              ; preds = %120, %115
  %121 = phi ptr [ %126, %120 ], [ %6, %115 ]
  %122 = load i8, ptr %121, align 1, !tbaa !13
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !13
  store i8 %125, ptr %121, align 1, !tbaa !13
  %126 = getelementptr inbounds i8, ptr %121, i64 1
  %127 = icmp eq ptr %121, %119
  br i1 %127, label %167, label %120, !llvm.loop !221

128:                                              ; preds = %93
  %129 = icmp sgt i32 %41, 1
  br i1 %129, label %130, label %167

130:                                              ; preds = %128
  %131 = add nsw i32 %26, -2
  %132 = sub i32 %131, %34
  %133 = add i32 %132, %40
  %134 = zext i32 %133 to i64
  %135 = add nuw nsw i64 %134, 1
  %136 = getelementptr i8, ptr %6, i64 %135
  br label %137

137:                                              ; preds = %137, %130
  %138 = phi ptr [ %143, %137 ], [ %11, %130 ]
  %139 = load i8, ptr %138, align 1, !tbaa !13
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !13
  store i8 %142, ptr %138, align 1, !tbaa !13
  %143 = getelementptr inbounds i8, ptr %138, i64 1
  %144 = icmp eq ptr %138, %136
  br i1 %144, label %167, label %137, !llvm.loop !221

145:                                              ; preds = %73
  %146 = load i8, ptr %74, align 1, !tbaa !13
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !13
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = load i16, ptr %38, align 4, !tbaa !35
  %153 = icmp sgt i16 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %151
  %155 = zext i16 %152 to i64
  %156 = add nuw nsw i64 %155, 4294967295
  %157 = and i64 %156, 4294967295
  %158 = getelementptr i8, ptr %6, i64 %157
  br label %159

159:                                              ; preds = %159, %154
  %160 = phi ptr [ %165, %159 ], [ %6, %154 ]
  %161 = load i8, ptr %160, align 1, !tbaa !13
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !13
  store i8 %164, ptr %160, align 1, !tbaa !13
  %165 = getelementptr inbounds i8, ptr %160, i64 1
  %166 = icmp eq ptr %160, %158
  br i1 %166, label %167, label %159, !llvm.loop !221

167:                                              ; preds = %159, %151, %145, %137, %128, %120, %104, %83
  switch i32 %3, label %170 [
    i32 3, label %168
    i32 4, label %172
  ]

168:                                              ; preds = %167
  %169 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, ptr noundef %0) #34
  br label %170

170:                                              ; preds = %168, %167
  call fastcc void @ichartosstr(ptr noundef nonnull %6, i32 noundef 1) #32
  %171 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.300, ptr noundef nonnull @ichartosstr.out, ptr noundef %4) #34
  br label %172

172:                                              ; preds = %170, %167
  %173 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 6
  %174 = load i16, ptr %173, align 8, !tbaa !196
  %175 = and i16 %174, 1
  %176 = icmp eq i16 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = call fastcc i32 @expand_suf(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %3, ptr noundef %4) #34
  %179 = add nsw i32 %178, %41
  br label %180

180:                                              ; preds = %177, %172, %46, %31, %24
  %181 = phi i32 [ %179, %177 ], [ 0, %24 ], [ 0, %31 ], [ %41, %172 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #40
  %182 = add nsw i32 %181, %14
  br label %183

183:                                              ; preds = %180, %12
  %184 = phi i32 [ %182, %180 ], [ %14, %12 ]
  %185 = getelementptr inbounds %struct.flagent, ptr %13, i64 1
  %186 = add nsw i32 %15, -1
  %187 = icmp sgt i32 %15, 1
  br i1 %187, label %12, label %188, !llvm.loop !222

188:                                              ; preds = %183, %5
  %189 = phi i32 [ 0, %5 ], [ %184, %183 ]
  ret i32 %189
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @expand_suf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #19 {
  %7 = alloca [120 x i8], align 16
  %8 = load i32, ptr @numsflags, align 4, !tbaa !11
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %122

10:                                               ; preds = %6
  %11 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %117, %10
  %15 = phi ptr [ %11, %10 ], [ %119, %117 ]
  %16 = phi i32 [ 0, %10 ], [ %118, %117 ]
  %17 = phi i32 [ %8, %10 ], [ %120, %117 ]
  %18 = load i64, ptr %2, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !185
  %21 = sext i16 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %117, label %26

26:                                               ; preds = %14
  br i1 %13, label %32, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !196
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %117, label %32

32:                                               ; preds = %27, %26
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #40
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !197
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i32 %37, %34
  br i1 %38, label %114, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !32
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %34, %42
  br i1 %43, label %44, label %114

44:                                               ; preds = %39
  %45 = shl i64 %33, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %1, i64 %46
  br label %48

48:                                               ; preds = %52, %44
  %49 = phi i32 [ %37, %44 ], [ %53, %52 ]
  %50 = phi ptr [ %47, %44 ], [ %54, %52 ]
  %51 = icmp sgt i32 %49, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = add nsw i32 %49, -1
  %54 = getelementptr inbounds i8, ptr %50, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !13
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 7, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = sext i8 %61 to i32
  %63 = shl nuw i32 1, %53
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %114, label %48, !llvm.loop !223

66:                                               ; preds = %48
  %67 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #32
  %68 = getelementptr inbounds i8, ptr %7, i64 %46
  %69 = sext i16 %41 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 4
  %73 = load i16, ptr %72, align 4, !tbaa !35
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !36
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %77) #32
  %79 = getelementptr inbounds i8, ptr %71, i64 -1
  %80 = load i8, ptr %79, align 1, !tbaa !13
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !13
  %84 = icmp eq i8 %83, 0
  %85 = icmp sgt i16 %73, 0
  %86 = and i1 %85, %84
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  %88 = zext i16 %73 to i32
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i32 [ %92, %89 ], [ %88, %87 ]
  %91 = phi ptr [ %97, %89 ], [ %71, %87 ]
  %92 = add nsw i32 %90, -1
  %93 = load i8, ptr %91, align 1, !tbaa !13
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !13
  store i8 %96, ptr %91, align 1, !tbaa !13
  %97 = getelementptr inbounds i8, ptr %91, i64 1
  %98 = icmp ugt i32 %90, 1
  br i1 %98, label %89, label %100, !llvm.loop !221

99:                                               ; preds = %66
  store i8 0, ptr %71, align 1, !tbaa !13
  br label %100

100:                                              ; preds = %99, %89, %75
  switch i32 %4, label %103 [
    i32 3, label %101
    i32 4, label %108
  ]

101:                                              ; preds = %100
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, ptr noundef %0) #34
  br label %103

103:                                              ; preds = %101, %100
  call fastcc void @ichartosstr(ptr noundef nonnull %7, i32 noundef 1) #32
  %104 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.300, ptr noundef nonnull @ichartosstr.out, ptr noundef %5) #34
  %105 = load i16, ptr %72, align 4, !tbaa !35
  %106 = load i16, ptr %40, align 2, !tbaa !32
  %107 = sext i16 %106 to i32
  br label %108

108:                                              ; preds = %103, %100
  %109 = phi i32 [ %42, %100 ], [ %107, %103 ]
  %110 = phi i16 [ %73, %100 ], [ %105, %103 ]
  %111 = sext i16 %110 to i32
  %112 = sub i32 %34, %109
  %113 = add i32 %112, %111
  br label %114

114:                                              ; preds = %108, %52, %39, %32
  %115 = phi i32 [ %113, %108 ], [ 0, %32 ], [ 0, %39 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #40
  %116 = add nsw i32 %115, %16
  br label %117

117:                                              ; preds = %114, %27, %14
  %118 = phi i32 [ %116, %114 ], [ %16, %27 ], [ %16, %14 ]
  %119 = getelementptr inbounds %struct.flagent, ptr %15, i64 1
  %120 = add nsw i32 %17, -1
  %121 = icmp sgt i32 %17, 1
  br i1 %121, label %14, label %122, !llvm.loop !224

122:                                              ; preds = %117, %6
  %123 = phi i32 [ 0, %6 ], [ %118, %117 ]
  ret i32 %123
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @toutent(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #19 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #40
  %4 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = call fastcc i32 @strtoichar(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 100, i32 noundef 1) #34, !range !87
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = load ptr, ptr %4, align 8, !tbaa !28
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.17.321, ptr noundef %10, i32 noundef 700, ptr noundef nonnull @.str.1.250) #36
  br label %12

12:                                               ; preds = %8, %2
  br label %13

13:                                               ; preds = %80, %12
  %14 = phi ptr [ %81, %80 ], [ %1, %12 ]
  %15 = getelementptr inbounds %struct.dent, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !71
  %17 = and i64 %16, 134217728
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %13
  %20 = lshr i64 %16, 28
  %21 = and i64 %20, 3
  switch i64 %21, label %75 [
    i64 0, label %22
    i64 1, label %35
    i64 2, label %53
    i64 3, label %72
  ]

22:                                               ; preds = %19
  %23 = load i8, ptr %3, align 16, !tbaa !13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %25, %22
  %26 = phi i8 [ %32, %25 ], [ %23, %22 ]
  %27 = phi ptr [ %31, %25 ], [ %3, %22 ]
  %28 = zext i8 %26 to i64
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !13
  store i8 %30, ptr %27, align 1, !tbaa !13
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !13
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %25, !llvm.loop !69

34:                                               ; preds = %25, %22
  call fastcc void @ichartosstr(ptr noundef nonnull %3, i32 noundef 1) #34
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef nonnull @ichartosstr.out, ptr noundef %14) #34
  br label %76

35:                                               ; preds = %19
  %36 = and i64 %16, 1073741824
  %37 = icmp ne i64 %36, 0
  %38 = icmp eq ptr %14, %1
  %39 = and i1 %38, %37
  br i1 %39, label %76, label %40

40:                                               ; preds = %35
  %41 = load i8, ptr %3, align 16, !tbaa !13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %43, %40
  %44 = phi i8 [ %50, %43 ], [ %41, %40 ]
  %45 = phi ptr [ %49, %43 ], [ %3, %40 ]
  %46 = zext i8 %44 to i64
  %47 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !13
  store i8 %48, ptr %45, align 1, !tbaa !13
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %43, !llvm.loop !133

52:                                               ; preds = %43, %40
  call fastcc void @ichartosstr(ptr noundef nonnull %3, i32 noundef 1) #34
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef nonnull @ichartosstr.out, ptr noundef %14) #34
  br label %76

53:                                               ; preds = %19
  %54 = load i8, ptr %3, align 16, !tbaa !13
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %56, %53
  %57 = phi i8 [ %63, %56 ], [ %54, %53 ]
  %58 = phi ptr [ %62, %56 ], [ %3, %53 ]
  %59 = zext i8 %57 to i64
  %60 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !13
  store i8 %61, ptr %58, align 1, !tbaa !13
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %56, !llvm.loop !69

65:                                               ; preds = %56
  %66 = load i8, ptr %3, align 16, !tbaa !13
  br label %67

67:                                               ; preds = %65, %53
  %68 = phi i8 [ %66, %65 ], [ 0, %53 ]
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !13
  store i8 %71, ptr %3, align 16, !tbaa !13
  call fastcc void @ichartosstr(ptr noundef nonnull %3, i32 noundef 1) #34
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef nonnull @ichartosstr.out, ptr noundef %14) #34
  br label %76

72:                                               ; preds = %19
  %73 = getelementptr inbounds %struct.dent, ptr %14, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !28
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef %74, ptr noundef nonnull %14) #34
  br label %76

75:                                               ; preds = %19
  unreachable

76:                                               ; preds = %72, %67, %52, %35, %34, %13
  %77 = load i64, ptr %15, align 8, !tbaa !71
  %78 = and i64 %77, 1073741824
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %14, align 8, !tbaa !30
  br label %13

82:                                               ; preds = %76
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #40
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @pdictcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #30 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.dent, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = tail call fastcc i32 @casecmp(ptr noundef %5, ptr noundef %8, i32 noundef 1) #32, !range !180
  ret i32 %9
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @toutword(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #19 {
  store i1 false, ptr @has_marker, align 4
  %4 = tail call i32 @fputs(ptr %1, ptr %0)
  %5 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  br label %6

6:                                                ; preds = %22, %3
  %7 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %8 = load i64, ptr %5, align 8, !tbaa !71
  %9 = shl nuw nsw i64 1, %7
  %10 = and i64 %8, %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = load i1, ptr @has_marker, align 4
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !85
  %16 = sext i8 %15 to i32
  %17 = tail call i32 @putc(i32 noundef %16, ptr noundef %0) #34
  br label %18

18:                                               ; preds = %14, %12
  store i1 true, ptr @has_marker, align 4
  %19 = trunc i64 %7 to i32
  %20 = add i32 %19, 65
  %21 = tail call i32 @putc(i32 noundef %20, ptr noundef %0) #34
  br label %22

22:                                               ; preds = %18, %6
  %23 = add nuw nsw i64 %7, 1
  %24 = icmp eq i64 %23, 26
  br i1 %24, label %25, label %6, !llvm.loop !225

25:                                               ; preds = %22
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @creat(ptr noundef, i32 noundef) local_unnamed_addr #14

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind optsize }
attributes #33 = { nounwind optsize willreturn memory(read) }
attributes #34 = { optsize }
attributes #35 = { noreturn nounwind optsize }
attributes #36 = { cold optsize }
attributes #37 = { nounwind optsize allocsize(0,1) }
attributes #38 = { cold }
attributes #39 = { nounwind optsize allocsize(0) }
attributes #40 = { nounwind }
attributes #41 = { nounwind optsize willreturn memory(none) }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!19, !20, i64 0}
!19 = !{!"hashheader", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !9, i64 48, !9, i64 53, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 70, !9, i64 526, !9, i64 754, !9, i64 982, !9, i64 1210, !9, i64 1438, !9, i64 1666, !9, i64 1894, !9, i64 2022, !9, i64 3124, !9, i64 3524, !20, i64 3924}
!20 = !{!"short", !9, i64 0}
!21 = !{!19, !20, i64 3924}
!22 = !{!19, !20, i64 2}
!23 = !{!19, !12, i64 20}
!24 = !{!19, !12, i64 24}
!25 = !{!19, !12, i64 28}
!26 = !{!19, !12, i64 16}
!27 = !{!19, !12, i64 12}
!28 = !{!29, !8, i64 8}
!29 = !{!"dent", !8, i64 0, !8, i64 8, !9, i64 16}
!30 = !{!29, !8, i64 0}
!31 = distinct !{!31, !15}
!32 = !{!33, !20, i64 18}
!33 = !{!"flagent", !8, i64 0, !8, i64 8, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !9, i64 26}
!34 = !{!33, !8, i64 0}
!35 = !{!33, !20, i64 20}
!36 = !{!33, !8, i64 8}
!37 = distinct !{!37, !15}
!38 = !{!39, !12, i64 8}
!39 = !{!"flagptr", !9, i64 0, !12, i64 8}
!40 = distinct !{!40, !15}
!41 = !{!19, !12, i64 36}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = !{!19, !12, i64 40}
!46 = !{!19, !12, i64 44}
!47 = !{!48, !8, i64 0}
!48 = !{!"strchartype", !8, i64 0, !8, i64 8, !8, i64 16}
!49 = !{!48, !8, i64 8}
!50 = !{!48, !8, i64 16}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = !{!19, !9, i64 66}
!54 = !{!19, !9, i64 67}
!55 = distinct !{!55, !15}
!56 = !{!19, !12, i64 32}
!57 = !{!20, !20, i64 0}
!58 = !{!59, !12, i64 24}
!59 = !{!"stat", !60, i64 0, !60, i64 8, !60, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !61, i64 72, !61, i64 88, !61, i64 104, !9, i64 120}
!60 = !{!"long", !9, i64 0}
!61 = !{!"timespec", !60, i64 0, !60, i64 8}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = !{!60, !60, i64 0}
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
!85 = !{!19, !9, i64 68}
!86 = distinct !{!86, !15}
!87 = !{i32 0, i32 2}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15, !90, !91}
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !{!"llvm.loop.unroll.runtime.disable"}
!92 = distinct !{!92, !15}
!93 = distinct !{!93, !15}
!94 = distinct !{!94, !15}
!95 = !{!96, !20, i64 2}
!96 = !{!"winsize", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6}
!97 = !{!96, !20, i64 0}
!98 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 1, !13, i64 17, i64 32, !13, i64 52, i64 4, !11, i64 56, i64 4, !11}
!99 = !{!100, !12, i64 12}
!100 = !{!"termios", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !9, i64 16, !9, i64 17, !12, i64 52, !12, i64 56}
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
!115 = !{!116, !8, i64 8}
!116 = !{!"success", !8, i64 0, !8, i64 8, !8, i64 16}
!117 = !{!116, !8, i64 0}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = !{!19, !20, i64 8}
!130 = !{i64 0, i64 805306369}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15, !90, !91}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !15}
!135 = distinct !{!135, !15}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = distinct !{!139, !15}
!140 = distinct !{!140, !15}
!141 = distinct !{!141, !15}
!142 = !{i32 -1, i32 1}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = distinct !{!150, !15}
!151 = distinct !{!151, !15}
!152 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !13}
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
!177 = !{!116, !8, i64 16}
!178 = distinct !{!178, !15}
!179 = distinct !{!179, !15}
!180 = !{i32 -65535, i32 65536}
!181 = distinct !{!181, !15}
!182 = distinct !{!182, !15}
!183 = distinct !{!183, !15}
!184 = distinct !{!184, !15}
!185 = !{!33, !20, i64 16}
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
!196 = !{!33, !20, i64 24}
!197 = !{!33, !20, i64 22}
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
!212 = distinct !{!212, !15}
!213 = distinct !{!213, !15}
!214 = distinct !{!214, !15}
!215 = distinct !{!215, !15}
!216 = distinct !{!216, !15}
!217 = distinct !{!217, !15}
!218 = distinct !{!218, !15}
!219 = distinct !{!219, !15}
!220 = distinct !{!220, !15}
!221 = distinct !{!221, !15}
!222 = distinct !{!222, !15}
!223 = distinct !{!223, !15}
!224 = distinct !{!224, !15}
!225 = distinct !{!225, !15}
