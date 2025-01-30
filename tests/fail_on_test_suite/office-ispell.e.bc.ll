; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/MiBench/office-ispell/office-ispell.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.flagptr = type { %union.ptr_union, i32 }
%union.ptr_union = type { ptr }
%struct.success = type { ptr, ptr, ptr }
%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }
%struct.flagent = type { ptr, ptr, i16, i16, i16, i16, i16, [228 x i8] }
%struct.dent = type { ptr, ptr, [1 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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
@.str.32 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"Replace with: \00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [76 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/correct.c\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Lookup string ('*' is wildcard): \00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"nroff\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"@(#) International Ispell Version 3.1.20 10/10/95\00", align 1
@lookharder.look = internal unnamed_addr global i1 false, align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"look -df\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c"/usr/dict/words\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"%s ^%s$ %s\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
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
@.str.5.26 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
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
@minimenusize = internal global i32 2, align 4
@eflag = internal global i32 0, align 4
@dumpflag = internal global i32 0, align 4
@fflag = internal global i32 0, align 4
@sflag = internal global i32 0, align 4
@vflag = internal global i32 0, align 4
@xflag = internal global i32 0, align 4
@deftflag = internal global i32 -1, align 4
@tflag = internal global i32 0, align 4
@prefstringchar = internal global i32 -1, align 4
@terse = internal global i32 0, align 4
@minword = internal global i32 1, align 4
@sortit = internal global i32 1, align 4
@tryhardflag = internal global i32 -1, align 4
@currentfile = internal global ptr null, align 8
@math_mode = internal global i32 0, align 4
@LaTeX_Mode = internal global i8 80, align 1
@main.libdictname = internal global [13 x i8] zeroinitializer, align 1
@main.outbuf = internal global [8192 x i8] zeroinitializer, align 16
@Cmd = internal unnamed_addr global ptr null, align 8
@Trynum = internal global i32 0, align 4
@.str.77 = private unnamed_addr constant [11 x i8] c"DICTIONARY\00", align 1
@.str.1.78 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
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
@.str.26.97 = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@.str.27.98 = private unnamed_addr constant [17 x i8] c"\09DEFLANG = \22%s\22\0A\00", align 1
@.str.28.99 = private unnamed_addr constant [12 x i8] c"english.aff\00", align 1
@.str.29.100 = private unnamed_addr constant [23 x i8] c"\09DEFNOBACKUPFLAG = %d\0A\00", align 1
@.str.30.101 = private unnamed_addr constant [17 x i8] c"\09DEFPAFF = \22%s\22\0A\00", align 1
@.str.31.102 = private unnamed_addr constant [6 x i8] c"words\00", align 1
@.str.32.103 = private unnamed_addr constant [18 x i8] c"\09DEFPDICT = \22%s\22\0A\00", align 1
@.str.33.104 = private unnamed_addr constant [9 x i8] c".ispell_\00", align 1
@.str.34.105 = private unnamed_addr constant [18 x i8] c"\09DEFTEXFLAG = %d\0A\00", align 1
@.str.35.106 = private unnamed_addr constant [18 x i8] c"\09EGREPCMD = \22%s\22\0A\00", align 1
@.str.36.107 = private unnamed_addr constant [18 x i8] c"/usr/bin/egrep -i\00", align 1
@.str.37.108 = private unnamed_addr constant [18 x i8] c"\09ELISPDIR = \22%s\22\0A\00", align 1
@.str.38.109 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/emacs/site-lisp\00", align 1
@.str.39.110 = private unnamed_addr constant [15 x i8] c"\09EMACS = \22%s\22\0A\00", align 1
@.str.40.111 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.44.112 = private unnamed_addr constant [20 x i8] c"\09HASHSUFFIX = \22%s\22\0A\00", align 1
@.str.45.113 = private unnamed_addr constant [14 x i8] c"\09HOME = \22%s\22\0A\00", align 1
@.str.46.114 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.48.115 = private unnamed_addr constant [19 x i8] c"\09INCSTRVAR = \22%s\22\0A\00", align 1
@.str.49.116 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@.str.50.117 = private unnamed_addr constant [20 x i8] c"\09INPUTWORDLEN = %d\0A\00", align 1
@.str.51.118 = private unnamed_addr constant [19 x i8] c"\09LANGUAGES = \22%s\22\0A\00", align 1
@.str.52.119 = private unnamed_addr constant [81 x i8] c"{american,MASTERDICTS=american.med+,HASHFILES=americanmed+.hash,EXTRADICT=words}\00", align 1
@.str.53.120 = private unnamed_addr constant [16 x i8] c"\09LIBDIR = \22%s\22\0A\00", align 1
@.str.54.121 = private unnamed_addr constant [15 x i8] c"\09LIBES = \22%s\22\0A\00", align 1
@.str.55.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
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
@.str.105 = private unnamed_addr constant [9 x i8] c"WORDLIST\00", align 1
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
@.str.128 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@askfilename = internal global ptr null, align 8
@.str.129 = private unnamed_addr constant [40 x i8] c"ispell:  specified file does not exist\0A\00", align 1
@.str.130 = private unnamed_addr constant [39 x i8] c"ispell:  specified files do not exist\0A\00", align 1
@.str.131 = private unnamed_addr constant [43 x i8] c"ispell:  unrecognized formatter type '%s'\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@infile = internal global ptr null, align 8
@outfile = internal global ptr null, align 8
@sg = internal global i32 0, align 4
@contextbufs = internal global [10 x [8192 x i8]] zeroinitializer, align 16
@contextoffset = internal global i32 0, align 4
@currentchar = internal global ptr null, align 8
@ctoken = internal global [120 x i8] zeroinitializer, align 16
@itoken = internal global [120 x i8] zeroinitializer, align 16
@changes = internal global i32 0, align 4
@readonly = internal global i32 0, align 4
@quit = internal global i32 0, align 4
@possibilities = internal global [100 x [120 x i8]] zeroinitializer, align 16
@pcount = internal global i32 0, align 4
@maxposslen = internal global i32 0, align 4
@easypossibilities = internal global i32 0, align 4
@Try = internal global [228 x i8] zeroinitializer, align 16
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
@.str.177 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.178 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.179 = private unnamed_addr constant [30 x i8] c"Warning:  Can't write to %s\0D\0A\00", align 1
@.str.180 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.181 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"temporary file\00", align 1
@.str.183 = private unnamed_addr constant [34 x i8] c"temporary file disappeared (%s)\0D\0A\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.186 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@.str.187 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
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
@.str.232 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.2.233 = private unnamed_addr constant [21 x i8] c"Null hash table %s\0D\0A\00", align 1
@.str.3.234 = private unnamed_addr constant [54 x i8] c"Truncated hash table %s:  got %d bytes, expected %d\0D\0A\00", align 1
@.str.4.235 = private unnamed_addr constant [63 x i8] c"Illegal format hash table %s - expected magic 0x%x, got 0x%x\0D\0A\00", align 1
@.str.5.236 = private unnamed_addr constant [64 x i8] c"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\0D\0A\00", align 1
@.str.6.237 = private unnamed_addr constant [76 x i8] c"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\0D\0A\00", align 1
@nodictflag = internal global i32 0, align 4
@.str.7.238 = private unnamed_addr constant [41 x i8] c"Couldn't allocate space for hash table\0D\0A\00", align 1
@.str.8.239 = private unnamed_addr constant [28 x i8] c"Illegal format hash table\0D\0A\00", align 1
@.str.9.240 = private unnamed_addr constant [46 x i8] c"Couldn't allocate space for language tables\0D\0A\00", align 1
@.str.10.243 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.11.244 = private unnamed_addr constant [75 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c\00", align 1
@.str.249 = private unnamed_addr constant [51 x i8] c"\0D\0AWord '%s' too long at line %d of %s, truncated\0D\0A\00", align 1
@.str.1.250 = private unnamed_addr constant [77 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/makedent.c\00", align 1
@.str.2.251 = private unnamed_addr constant [42 x i8] c"\0D\0AWord '%s' contains illegal characters\0D\0A\00", align 1
@.str.3.254 = private unnamed_addr constant [42 x i8] c"\0D\0ACouldn't allocate space for word '%s'\0D\0A\00", align 1
@.str.4.255 = private unnamed_addr constant [38 x i8] c"\0D\0AIllegal affix flag character '%c'\0D\0A\00", align 1
@defdupchar = internal global i32 0, align 4
@laststringch = internal global i32 0, align 4
@strtosichar.out = internal global [184 x i8] zeroinitializer, align 16
@ichartosstr.out = internal global [184 x i8] zeroinitializer, align 16
@printichar.out = internal global [11 x i8] zeroinitializer, align 1
@chartypes = internal global ptr null, align 8
@.str.5.270 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@has_marker = internal unnamed_addr global i1 false, align 4
@co = internal global i32 0, align 4
@li = internal global i32 0, align 4
@.str.283 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.1.284 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@contextsize = internal global i32 0, align 4
@.str.2.285 = private unnamed_addr constant [43 x i8] c"Screen too small:  need at least %d lines\0A\00", align 1
@.str.3.286 = private unnamed_addr constant [42 x i8] c"Can't deal with non-interactive use yet.\0A\00", align 1
@osbuf = internal global %struct.termios zeroinitializer, align 4
@sbuf = internal global %struct.termios zeroinitializer, align 8
@uerasechar = internal global i32 0, align 4
@ukillchar = internal global i32 0, align 4
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
@numhits = internal global i32 0, align 4
@cflag = internal global i32 0, align 4
@pflaglist = internal global ptr null, align 8
@numpflags = internal global i32 0, align 4
@sflaglist = internal global ptr null, align 8
@numsflags = internal global i32 0, align 4
@compoundflag = internal global i32 -1, align 4
@hits = internal global [10 x %struct.success] zeroinitializer, align 16
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
@.str.7.312 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8.313 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9.314 = private unnamed_addr constant [16 x i8] c"Can't open %s\0D\0A\00", align 1
@.str.10.315 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lflag = internal global i32 0, align 4
@aflag = internal global i32 0, align 4
@.str.11.316 = private unnamed_addr constant [50 x i8] c"Warning: Cannot update personal dictionary (%s)\0D\0A\00", align 1
@cantexpand = internal unnamed_addr global i1 false, align 4
@pershsize = internal unnamed_addr global i32 0, align 4
@pershtab = internal unnamed_addr global ptr null, align 8
@goodsizes = internal unnamed_addr constant [4 x i32] [i32 53, i32 223, i32 907, i32 3631], align 16
@.str.12.319 = private unnamed_addr constant [43 x i8] c"Ran out of space for personal dictionary\0D\0A\00", align 1
@.str.13.320 = private unnamed_addr constant [48 x i8] c"Continuing anyway (with reduced performance).\0D\0A\00", align 1
@newwords = internal unnamed_addr global i32 0, align 4
@.str.14.328 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15.329 = private unnamed_addr constant [18 x i8] c"Can't create %s\0D\0A\00", align 1
@hashtbl = internal global ptr null, align 8
@hashsize = internal global i32 0, align 4
@hashstrings = internal global ptr null, align 8
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
@incfileflag = internal global i32 0, align 4
@.str.2.337 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal void @givehelp(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @erase() #35
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi ptr [ @stdout, %3 ], [ @stderr, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 57, i64 1, ptr %6)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 67, i64 1, ptr %6)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 59, i64 1, ptr %6)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 62, i64 1, ptr %6)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %6)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 19, i64 1, ptr %6)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 49, i64 1, ptr %6)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 41, i64 1, ptr %6)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 55, i64 1, ptr %6)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 65, i64 1, ptr %6)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 65, i64 1, ptr %6)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 50, i64 1, ptr %6)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr %6)
  %20 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 91, i64 1, ptr %6)
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 83, i64 1, ptr %6)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 23, i64 1, ptr %6)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %6)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 26, i64 1, ptr %6)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 32, i64 1, ptr %6)
  br i1 %2, label %33, label %26

26:                                               ; preds = %4
  %27 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 4, i64 1, ptr %6)
  %28 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 28, i64 1, ptr %6)
  %29 = tail call i32 @fflush(ptr noundef %6) #36
  br label %30

30:                                               ; preds = %30, %26
  %31 = tail call i32 @getchar() #36
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %33, label %30, !llvm.loop !11

33:                                               ; preds = %30, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @checkfile() #0 {
  %1 = load i32, ptr @contextsize, align 4, !tbaa !13
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
  store i8 0, ptr %16, align 16, !tbaa !15
  br label %17

17:                                               ; preds = %15, %10
  %18 = extractelement <16 x i1> %13, i64 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = or i64 %11, 1
  %21 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %20
  store i8 0, ptr %21, align 16, !tbaa !15
  br label %22

22:                                               ; preds = %19, %17
  %23 = extractelement <16 x i1> %13, i64 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = or i64 %11, 2
  %26 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %25
  store i8 0, ptr %26, align 16, !tbaa !15
  br label %27

27:                                               ; preds = %24, %22
  %28 = extractelement <16 x i1> %13, i64 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = or i64 %11, 3
  %31 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %30
  store i8 0, ptr %31, align 16, !tbaa !15
  br label %32

32:                                               ; preds = %29, %27
  %33 = extractelement <16 x i1> %13, i64 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = or i64 %11, 4
  %36 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %35
  store i8 0, ptr %36, align 16, !tbaa !15
  br label %37

37:                                               ; preds = %34, %32
  %38 = extractelement <16 x i1> %13, i64 5
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = or i64 %11, 5
  %41 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %40
  store i8 0, ptr %41, align 16, !tbaa !15
  br label %42

42:                                               ; preds = %39, %37
  %43 = extractelement <16 x i1> %13, i64 6
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = or i64 %11, 6
  %46 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %45
  store i8 0, ptr %46, align 16, !tbaa !15
  br label %47

47:                                               ; preds = %44, %42
  %48 = extractelement <16 x i1> %13, i64 7
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = or i64 %11, 7
  %51 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %50
  store i8 0, ptr %51, align 16, !tbaa !15
  br label %52

52:                                               ; preds = %49, %47
  %53 = extractelement <16 x i1> %13, i64 8
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = or i64 %11, 8
  %56 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %55
  store i8 0, ptr %56, align 16, !tbaa !15
  br label %57

57:                                               ; preds = %54, %52
  %58 = extractelement <16 x i1> %13, i64 9
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = or i64 %11, 9
  %61 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %60
  store i8 0, ptr %61, align 16, !tbaa !15
  br label %62

62:                                               ; preds = %59, %57
  %63 = extractelement <16 x i1> %13, i64 10
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = or i64 %11, 10
  %66 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %65
  store i8 0, ptr %66, align 16, !tbaa !15
  br label %67

67:                                               ; preds = %64, %62
  %68 = extractelement <16 x i1> %13, i64 11
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = or i64 %11, 11
  %71 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %70
  store i8 0, ptr %71, align 16, !tbaa !15
  br label %72

72:                                               ; preds = %69, %67
  %73 = extractelement <16 x i1> %13, i64 12
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = or i64 %11, 12
  %76 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %75
  store i8 0, ptr %76, align 16, !tbaa !15
  br label %77

77:                                               ; preds = %74, %72
  %78 = extractelement <16 x i1> %13, i64 13
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = or i64 %11, 13
  %81 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %80
  store i8 0, ptr %81, align 16, !tbaa !15
  br label %82

82:                                               ; preds = %79, %77
  %83 = extractelement <16 x i1> %13, i64 14
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = or i64 %11, 14
  %86 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %85
  store i8 0, ptr %86, align 16, !tbaa !15
  br label %87

87:                                               ; preds = %84, %82
  %88 = extractelement <16 x i1> %13, i64 15
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = or i64 %11, 15
  %91 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %90
  store i8 0, ptr %91, align 16, !tbaa !15
  br label %92

92:                                               ; preds = %89, %87
  %93 = add i64 %11, 16
  %94 = add <16 x i64> %12, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %95 = icmp eq i64 %93, %6
  br i1 %95, label %96, label %10, !llvm.loop !16

96:                                               ; preds = %92, %0
  br label %97

97:                                               ; preds = %169, %96
  %98 = phi i32 [ %171, %169 ], [ %1, %96 ]
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
  %107 = add nuw i64 %103, 4294967294
  %108 = and i64 %107, 4294967295
  %109 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %108
  %110 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull dereferenceable(1) %109) #35
  %111 = icmp ugt i64 %103, 2
  br i1 %111, label %102, label %112, !llvm.loop !19

112:                                              ; preds = %102, %97
  %113 = load i32, ptr @quit, align 4, !tbaa !13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %119, %112
  %116 = load ptr, ptr @infile, align 8, !tbaa !7
  %117 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 8192, ptr noundef %116) #36
  %118 = icmp eq ptr %117, null
  br i1 %118, label %172, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr @outfile, align 8, !tbaa !7
  %121 = tail call i32 @fputs(ptr noundef nonnull @contextbufs, ptr noundef %120) #36
  br label %115, !llvm.loop !20

122:                                              ; preds = %112
  %123 = load ptr, ptr @infile, align 8, !tbaa !7
  %124 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %123) #36
  %125 = icmp eq ptr %124, null
  br i1 %125, label %172, label %126

126:                                              ; preds = %122
  %127 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #37
  %128 = and i64 %127, 4294967295
  %129 = icmp eq i64 %128, 4095
  %130 = trunc i64 %127 to i32
  %131 = icmp ult i32 %130, 8191
  %132 = and i1 %129, %131
  br i1 %132, label %133, label %169

133:                                              ; preds = %126
  %134 = shl i64 %127, 32
  %135 = ashr exact i64 %134, 32
  %136 = add i64 %134, -4294967296
  %137 = ashr exact i64 %136, 32
  %138 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !15
  %140 = zext i8 %139 to i32
  br label %141

141:                                              ; preds = %161, %133
  %142 = phi i64 [ %135, %133 ], [ %163, %161 ]
  %143 = phi i32 [ %140, %133 ], [ %159, %161 ]
  %144 = and i32 %143, 255
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !15
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %145
  %151 = load i8, ptr %150, align 1, !tbaa !15
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %145
  %155 = load i8, ptr %154, align 1, !tbaa !15
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %153, %149, %141
  %158 = load ptr, ptr @infile, align 8, !tbaa !7
  %159 = tail call i32 @getc(ptr noundef %158) #36
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %169, label %161

161:                                              ; preds = %157
  %162 = trunc i32 %159 to i8
  %163 = add nsw i64 %142, 1
  %164 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %142
  store i8 %162, ptr %164, align 1, !tbaa !15
  %165 = and i64 %163, 4294967295
  %166 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %165
  store i8 0, ptr %166, align 1, !tbaa !15
  %167 = trunc i64 %142 to i32
  %168 = icmp ult i32 %167, 8190
  br i1 %168, label %141, label %169, !llvm.loop !21

169:                                              ; preds = %161, %157, %153, %126
  %170 = load ptr, ptr @outfile, align 8, !tbaa !7
  tail call void @checkline(ptr noundef %170) #35
  %171 = load i32, ptr @contextsize, align 4, !tbaa !13
  br label %97

172:                                              ; preds = %122, %115
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @correct(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = alloca [150 x i8], align 16
  %7 = alloca [100 x i8], align 16
  %8 = alloca [200 x i8], align 16
  %9 = alloca [100 x i8], align 16
  %10 = load ptr, ptr %4, align 8, !tbaa !7
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %12 = sub i64 0, %11
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37
  %15 = load i32, ptr @minword, align 4, !tbaa !13
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %14, %16
  br i1 %17, label %18, label %311

18:                                               ; preds = %164, %5
  %19 = call i32 @good(ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %311

21:                                               ; preds = %18
  %22 = call i32 @compoundgood(ptr noundef %2, i32 noundef 0) #36, !range !22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %311

24:                                               ; preds = %21
  call void @erase() #35
  %25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %0) #36
  %26 = load ptr, ptr @currentfile, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %26) #36
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, ptr @readonly, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef nonnull @.str.25) #36
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @makepossibilities(ptr noundef %2) #36
  %37 = load i32, ptr @li, align 4, !tbaa !13
  %38 = load i32, ptr @contextsize, align 4, !tbaa !13
  %39 = load i32, ptr @minimenusize, align 4, !tbaa !13
  %40 = add i32 %37, -4
  %41 = add i32 %38, %39
  %42 = sub i32 %40, %41
  %43 = load i32, ptr @co, align 4, !tbaa !13
  %44 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %45 = add nsw i32 %44, 8
  %46 = sdiv i32 %43, %45
  %47 = load i32, ptr @pcount, align 4, !tbaa !13
  %48 = mul nsw i32 %46, %42
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 %48, ptr @pcount, align 4, !tbaa !13
  br label %51

51:                                               ; preds = %50, %35
  %52 = phi i32 [ %48, %50 ], [ %47, %35 ]
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %80, %51
  %55 = phi i64 [ %81, %80 ], [ 0, %51 ]
  %56 = load i32, ptr @contextsize, align 4, !tbaa !13
  %57 = add nsw i32 %56, 3
  %58 = trunc i64 %55 to i32
  %59 = srem i32 %58, %42
  %60 = add nsw i32 %57, %59
  %61 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %62 = add nsw i32 %61, 8
  %63 = sdiv i32 %58, %42
  %64 = mul nsw i32 %62, %63
  call void @move(i32 noundef %60, i32 noundef %64) #35
  %65 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %55, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %54
  %69 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %55
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %69) #36
  br label %80

71:                                               ; preds = %54
  %72 = icmp sgt i32 %65, 9
  %73 = icmp ult i64 %55, 10
  %74 = and i1 %73, %72
  %75 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %55
  br i1 %74, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %58, ptr noundef nonnull %75) #36
  br label %80

78:                                               ; preds = %71
  %79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %58, ptr noundef nonnull %75) #36
  br label %80

80:                                               ; preds = %78, %76, %68
  %81 = add nuw nsw i64 %55, 1
  %82 = load i32, ptr @pcount, align 4, !tbaa !13
  %83 = sext i32 %82 to i64
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %54, label %85, !llvm.loop !23

85:                                               ; preds = %80, %51
  call void @move(i32 noundef 2, i32 noundef 0) #35
  %86 = load i32, ptr @contextsize, align 4, !tbaa !13
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = zext i32 %86 to i64
  br label %90

90:                                               ; preds = %90, %88
  %91 = phi i64 [ %89, %88 ], [ %92, %90 ]
  %92 = add nsw i64 %91, -1
  %93 = and i64 %92, 4294967295
  %94 = getelementptr inbounds [10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 %93
  call fastcc void @show_line(ptr noundef nonnull %94, ptr noundef nonnull %94, i32 noundef 0) #36
  %95 = icmp ugt i64 %91, 2
  br i1 %95, label %90, label %96, !llvm.loop !24

96:                                               ; preds = %90, %85
  %97 = load ptr, ptr %4, align 8, !tbaa !7
  %98 = call fastcc i32 @line_size(ptr noundef nonnull @contextbufs, ptr noundef %97) #36
  %99 = load i32, ptr @co, align 4, !tbaa !13
  %100 = load i32, ptr @sg, align 4, !tbaa !13
  %101 = shl i32 %100, 1
  %102 = xor i32 %101, -1
  %103 = add i32 %99, %102
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %96
  %106 = sdiv i32 %99, -2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %13, i64 %107
  %109 = icmp sgt i32 %99, 1
  br i1 %109, label %110, label %125

110:                                              ; preds = %120, %105
  %111 = phi ptr [ %123, %120 ], [ %108, %105 ]
  %112 = load ptr, ptr %4, align 8, !tbaa !7
  %113 = call fastcc i32 @line_size(ptr noundef %111, ptr noundef %112) #36
  %114 = add nsw i32 %113, 1
  %115 = load i32, ptr @sg, align 4, !tbaa !13
  %116 = shl i32 %115, 1
  %117 = add nsw i32 %116, %114
  %118 = load i32, ptr @co, align 4, !tbaa !13
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = sub nsw i32 %114, %118
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %111, i64 %122
  %124 = icmp ult ptr %123, %13
  br i1 %124, label %110, label %125, !llvm.loop !25

125:                                              ; preds = %120, %110, %105
  %126 = phi ptr [ %108, %105 ], [ %111, %110 ], [ %123, %120 ]
  %127 = icmp ugt ptr %126, %13
  %128 = select i1 %127, ptr %13, ptr %126
  %129 = icmp ult ptr %128, @contextbufs
  %130 = select i1 %129, ptr @contextbufs, ptr %128
  br label %131

131:                                              ; preds = %125, %96
  %132 = phi ptr [ %130, %125 ], [ @contextbufs, %96 ]
  %133 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %134 = trunc i64 %133 to i32
  call fastcc void @show_line(ptr noundef %132, ptr noundef %13, i32 noundef %134) #36
  %135 = load i32, ptr @minimenusize, align 4, !tbaa !13
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %131
  %138 = load i32, ptr @li, align 4, !tbaa !13
  %139 = add nsw i32 %138, -2
  call void @move(i32 noundef %139, i32 noundef 0) #35
  %140 = call i32 @puts(ptr nonnull dereferenceable(1) @str.88)
  br label %141

141:                                              ; preds = %137, %131
  br label %142

142:                                              ; preds = %310, %141
  %143 = load ptr, ptr @stdout, align 8, !tbaa !7
  %144 = call i32 @fflush(ptr noundef %143) #36
  %145 = call i32 @getchar() #36
  %146 = and i32 %145, 127
  switch i32 %146, label %308 [
    i32 26, label %147
    i32 32, label %148
    i32 113, label %151
    i32 81, label %151
    i32 105, label %165
    i32 73, label %165
    i32 117, label %170
    i32 85, label %170
    i32 97, label %175
    i32 65, label %175
    i32 12, label %164
    i32 63, label %180
    i32 33, label %181
    i32 114, label %197
    i32 82, label %197
    i32 48, label %224
    i32 49, label %224
    i32 50, label %224
    i32 51, label %224
    i32 52, label %224
    i32 53, label %224
    i32 54, label %224
    i32 55, label %224
    i32 56, label %224
    i32 57, label %224
    i32 13, label %310
    i32 10, label %310
    i32 108, label %256
    i32 76, label %256
    i32 120, label %305
    i32 88, label %305
  ]

147:                                              ; preds = %142
  call void @stop() #35
  call void @erase() #35
  br label %164

148:                                              ; preds = %142
  call void @erase() #35
  %149 = load ptr, ptr @stdout, align 8, !tbaa !7
  %150 = call i32 @fflush(ptr noundef %149) #36
  br label %311

151:                                              ; preds = %142, %142
  %152 = load i32, ptr @changes, align 4, !tbaa !13
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %151
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) #36
  %156 = load ptr, ptr @stdout, align 8, !tbaa !7
  %157 = call i32 @fflush(ptr noundef %156) #36
  %158 = call i32 @getchar() #36
  %159 = and i32 %158, 95
  %160 = icmp eq i32 %159, 89
  br i1 %160, label %161, label %164

161:                                              ; preds = %154, %151
  call void @erase() #35
  %162 = load ptr, ptr @stdout, align 8, !tbaa !7
  %163 = call i32 @fflush(ptr noundef %162) #36
  call void @done(i32 noundef 0) #35
  br label %164

164:                                              ; preds = %304, %219, %196, %180, %161, %154, %147, %142
  br label %18

165:                                              ; preds = %142, %142
  %166 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #35
  %167 = call ptr @ichartosstr(ptr noundef %166, i32 noundef 1) #35
  call void @treeinsert(ptr noundef %167, i32 noundef 184, i32 noundef 1) #35
  call void @erase() #35
  %168 = load ptr, ptr @stdout, align 8, !tbaa !7
  %169 = call i32 @fflush(ptr noundef %168) #36
  store i32 1, ptr @changes, align 4, !tbaa !13
  br label %311

170:                                              ; preds = %142, %142
  %171 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #35
  call void @lowcase(ptr noundef %171) #35
  %172 = call ptr @ichartosstr(ptr noundef %171, i32 noundef 1) #35
  call void @treeinsert(ptr noundef %172, i32 noundef 184, i32 noundef 1) #35
  call void @erase() #35
  %173 = load ptr, ptr @stdout, align 8, !tbaa !7
  %174 = call i32 @fflush(ptr noundef %173) #36
  store i32 1, ptr @changes, align 4, !tbaa !13
  br label %311

175:                                              ; preds = %142, %142
  %176 = call ptr @strtosichar(ptr noundef %0, i32 noundef 0) #35
  %177 = call ptr @ichartosstr(ptr noundef %176, i32 noundef 1) #35
  call void @treeinsert(ptr noundef %177, i32 noundef 184, i32 noundef 0) #35
  call void @erase() #35
  %178 = load ptr, ptr @stdout, align 8, !tbaa !7
  %179 = call i32 @fflush(ptr noundef %178) #36
  br label %311

180:                                              ; preds = %142
  call void @givehelp(i32 noundef 1) #36
  br label %164

181:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #38
  %182 = load i32, ptr @li, align 4, !tbaa !13
  %183 = add nsw i32 %182, -1
  call void @move(i32 noundef %183, i32 noundef 0) #35
  %184 = call i32 @putchar(i32 noundef 33) #36
  %185 = call fastcc ptr @getline_ispell(ptr noundef nonnull %8) #36
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = call i32 @putchar(i32 noundef 7) #36
  call void @erase() #35
  %189 = load ptr, ptr @stdout, align 8, !tbaa !7
  %190 = call i32 @fflush(ptr noundef %189) #36
  br label %196

191:                                              ; preds = %181
  %192 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %193 = load ptr, ptr @stdout, align 8, !tbaa !7
  %194 = call i32 @fflush(ptr noundef %193) #36
  %195 = call i32 @shellescape(ptr noundef nonnull %8) #35
  call void @erase() #35
  br label %196

196:                                              ; preds = %191, %187
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %8) #38
  br label %164

197:                                              ; preds = %142, %142
  %198 = load i32, ptr @li, align 4, !tbaa !13
  %199 = add nsw i32 %198, -1
  call void @move(i32 noundef %199, i32 noundef 0) #35
  %200 = load i32, ptr @readonly, align 4, !tbaa !13
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = call i32 @putchar(i32 noundef 7) #36
  %204 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull @.str.25) #36
  br label %205

205:                                              ; preds = %202, %197
  %206 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33) #36
  %207 = call fastcc ptr @getline_ispell(ptr noundef %0) #36
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = call i32 @putchar(i32 noundef 7) #36
  %211 = call i32 @ichartostr(ptr noundef %0, ptr noundef %2, i32 noundef %1, i32 noundef 0) #35
  br label %219

212:                                              ; preds = %205
  call fastcc void @inserttoken(ptr noundef %13, ptr noundef %0, ptr noundef nonnull %4) #36
  %213 = call i32 @strtoichar(ptr noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef 0) #35
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = call i32 @putchar(i32 noundef 7) #36
  %217 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0, i32 noundef 494, ptr noundef nonnull @.str.35) #36
  br label %218

218:                                              ; preds = %215, %212
  store i32 1, ptr @changes, align 4, !tbaa !13
  br label %219

219:                                              ; preds = %218, %209
  call void @erase() #35
  %220 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37
  %221 = load i32, ptr @minword, align 4, !tbaa !13
  %222 = sext i32 %221 to i64
  %223 = icmp ugt i64 %220, %222
  br i1 %223, label %164, label %311

224:                                              ; preds = %142, %142, %142, %142, %142, %142, %142, %142, %142, %142
  %225 = add nsw i32 %146, -48
  %226 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %227 = icmp sgt i32 %226, 9
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = call i32 @getchar() #36
  %230 = and i32 %229, 127
  %231 = add nsw i32 %230, -48
  %232 = icmp ult i32 %231, 10
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = mul nuw nsw i32 %225, 10
  %235 = add nsw i32 %234, -48
  %236 = add nsw i32 %235, %230
  br label %238

237:                                              ; preds = %228
  switch i32 %230, label %308 [
    i32 13, label %238
    i32 10, label %238
  ]

238:                                              ; preds = %237, %237, %233, %224
  %239 = phi i32 [ %236, %233 ], [ %225, %237 ], [ %225, %224 ], [ %225, %237 ]
  %240 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %308

242:                                              ; preds = %238
  %.lcssa = phi i32 [ %239, %238 ]
  %243 = zext i32 %.lcssa to i64
  %244 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %243
  %245 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %244) #35
  store i32 1, ptr @changes, align 4, !tbaa !13
  call fastcc void @inserttoken(ptr noundef %13, ptr noundef %0, ptr noundef nonnull %4) #36
  call void @erase() #35
  %246 = load i32, ptr @readonly, align 4, !tbaa !13
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %311, label %248

248:                                              ; preds = %242
  %249 = load i32, ptr @li, align 4, !tbaa !13
  %250 = add nsw i32 %249, -1
  call void @move(i32 noundef %250, i32 noundef 0) #35
  %251 = call i32 @putchar(i32 noundef 7) #36
  %252 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull @.str.25) #36
  %253 = load ptr, ptr @stdout, align 8, !tbaa !7
  %254 = call i32 @fflush(ptr noundef %253) #36
  %255 = call i32 @sleep(i32 noundef 2) #35
  br label %311

256:                                              ; preds = %142, %142
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %9) #38
  %257 = load i32, ptr @li, align 4, !tbaa !13
  %258 = add nsw i32 %257, -1
  call void @move(i32 noundef %258, i32 noundef 0) #35
  %259 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37) #36
  %260 = call fastcc ptr @getline_ispell(ptr noundef nonnull %9) #36
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = call i32 @putchar(i32 noundef 7) #36
  br label %304

264:                                              ; preds = %256
  %265 = call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %266 = load ptr, ptr @stdout, align 8, !tbaa !7
  %267 = call i32 @fflush(ptr noundef %266) #36
  call void @llvm.lifetime.start.p0(i64 150, ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #38
  br label %268

268:                                              ; preds = %279, %264
  %269 = phi ptr [ %7, %264 ], [ %280, %279 ]
  %270 = phi ptr [ %9, %264 ], [ %282, %279 ]
  %271 = phi i32 [ 0, %264 ], [ %281, %279 ]
  %272 = load i8, ptr %270, align 1, !tbaa !15
  switch i8 %272, label %277 [
    i8 0, label %283
    i8 42, label %273
  ]

273:                                              ; preds = %268
  %274 = add nsw i32 %271, 1
  %275 = getelementptr inbounds i8, ptr %269, i64 1
  store i8 46, ptr %269, align 1, !tbaa !15
  %276 = getelementptr inbounds i8, ptr %269, i64 2
  store i8 42, ptr %275, align 1, !tbaa !15
  br label %279

277:                                              ; preds = %268
  %278 = getelementptr inbounds i8, ptr %269, i64 1
  store i8 %272, ptr %269, align 1, !tbaa !15
  br label %279

279:                                              ; preds = %277, %273
  %280 = phi ptr [ %276, %273 ], [ %278, %277 ]
  %281 = phi i32 [ %274, %273 ], [ %271, %277 ]
  %282 = getelementptr inbounds i8, ptr %270, i64 1
  br label %268, !llvm.loop !26

283:                                              ; preds = %268
  %.lcssa2 = phi ptr [ %269, %268 ]
  %.lcssa1 = phi i32 [ %271, %268 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !15
  %284 = load i8, ptr %7, align 16, !tbaa !15
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %303, label %286

286:                                              ; preds = %283
  %287 = icmp ne i32 %.lcssa1, 0
  %288 = load i1, ptr @lookharder.look, align 4
  %289 = select i1 %287, i1 true, i1 %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %286
  %291 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull %7, ptr noundef nonnull @.str.82) #35
  %292 = call i32 @shellescape(ptr noundef nonnull %6) #35
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %303

294:                                              ; preds = %290
  store i1 true, ptr @lookharder.look, align 4
  br label %297

295:                                              ; preds = %286
  %296 = icmp eq i32 %.lcssa1, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %295, %294
  %298 = call i64 @strlen(ptr nonnull dereferenceable(1) %7)
  %299 = getelementptr inbounds i8, ptr %7, i64 %298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %299, ptr noundef nonnull align 1 dereferenceable(3) @.str.83, i64 3, i1 false)
  br label %300

300:                                              ; preds = %297, %295
  %301 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull %7, ptr noundef nonnull @.str.82) #35
  %302 = call i32 @shellescape(ptr noundef nonnull %6) #35
  br label %303

303:                                              ; preds = %300, %290, %283
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(i64 150, ptr nonnull %6) #38
  br label %304

304:                                              ; preds = %303, %262
  call void @erase() #35
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %9) #38
  br label %164

305:                                              ; preds = %142, %142
  store i32 1, ptr @quit, align 4, !tbaa !13
  call void @erase() #35
  %306 = load ptr, ptr @stdout, align 8, !tbaa !7
  %307 = call i32 @fflush(ptr noundef %306) #36
  br label %311

308:                                              ; preds = %238, %237, %142
  %309 = call i32 @putchar(i32 noundef 7) #36
  br label %310

310:                                              ; preds = %308, %142, %142
  br label %142

311:                                              ; preds = %305, %248, %242, %219, %175, %170, %165, %148, %21, %18, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @compoundgood(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #38
  %4 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %8 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !27
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %47, label %13

13:                                               ; preds = %6
  %14 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #35
  %15 = sext i16 %8 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = add nsw i64 %15, -1
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %40, %13
  %22 = phi ptr [ %41, %40 ], [ %16, %13 ]
  %23 = load i8, ptr %22, align 1, !tbaa !15
  store i8 0, ptr %22, align 1, !tbaa !15
  %24 = call i32 @good(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef 2) #35
  %25 = icmp eq i32 %24, 0
  store i8 %23, ptr %22, align 1, !tbaa !15
  br i1 %25, label %40, label %26

26:                                               ; preds = %21
  %27 = call i32 @good(ptr noundef nonnull %22, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 0) #35
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @compoundgood(ptr noundef nonnull %22, i32 noundef 2) #36, !range !22
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29, %26
  %33 = call i64 @whatcap(ptr noundef nonnull %22) #35
  %34 = call i64 @whatcap(ptr noundef nonnull %3) #35
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
  %42 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 4), align 4, !tbaa !27
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds i8, ptr %22, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %21, !llvm.loop !30

47:                                               ; preds = %40, %38, %36, %13, %6, %2
  %48 = phi i1 [ %39, %38 ], [ %37, %36 ], [ false, %2 ], [ false, %6 ], [ false, %13 ], [ false, %40 ]
  %49 = zext i1 %48 to i32
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #38
  ret i32 %49
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal void @makepossibilities(ptr noundef %0) #0 {
  %2 = alloca [10 x [120 x i8]], align 16
  %3 = alloca [121 x i8], align 16
  %4 = alloca [10 x [120 x i8]], align 16
  %5 = alloca [120 x i8], align 16
  %6 = alloca [120 x i8], align 16
  %7 = alloca [120 x i8], align 16
  %8 = alloca [121 x i8], align 16
  %9 = alloca [120 x i8], align 16
  br label %10

10:                                               ; preds = %92, %1
  %11 = phi i64 [ 0, %1 ], [ %93, %92 ]
  %12 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %1 ], [ %94, %92 ]
  %13 = icmp ult <16 x i64> %12, <i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100, i64 100>
  %14 = extractelement <16 x i1> %13, i64 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %11
  store i8 0, ptr %16, align 16, !tbaa !15
  br label %17

17:                                               ; preds = %15, %10
  %18 = extractelement <16 x i1> %13, i64 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = or i64 %11, 1
  %21 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %20
  store i8 0, ptr %21, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %19, %17
  %23 = extractelement <16 x i1> %13, i64 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = or i64 %11, 2
  %26 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %25
  store i8 0, ptr %26, align 16, !tbaa !15
  br label %27

27:                                               ; preds = %24, %22
  %28 = extractelement <16 x i1> %13, i64 3
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = or i64 %11, 3
  %31 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %30
  store i8 0, ptr %31, align 8, !tbaa !15
  br label %32

32:                                               ; preds = %29, %27
  %33 = extractelement <16 x i1> %13, i64 4
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = or i64 %11, 4
  %36 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %35
  store i8 0, ptr %36, align 16, !tbaa !15
  br label %37

37:                                               ; preds = %34, %32
  %38 = extractelement <16 x i1> %13, i64 5
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = or i64 %11, 5
  %41 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %40
  store i8 0, ptr %41, align 8, !tbaa !15
  br label %42

42:                                               ; preds = %39, %37
  %43 = extractelement <16 x i1> %13, i64 6
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = or i64 %11, 6
  %46 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %45
  store i8 0, ptr %46, align 16, !tbaa !15
  br label %47

47:                                               ; preds = %44, %42
  %48 = extractelement <16 x i1> %13, i64 7
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = or i64 %11, 7
  %51 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %50
  store i8 0, ptr %51, align 8, !tbaa !15
  br label %52

52:                                               ; preds = %49, %47
  %53 = extractelement <16 x i1> %13, i64 8
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = or i64 %11, 8
  %56 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %55
  store i8 0, ptr %56, align 16, !tbaa !15
  br label %57

57:                                               ; preds = %54, %52
  %58 = extractelement <16 x i1> %13, i64 9
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = or i64 %11, 9
  %61 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %60
  store i8 0, ptr %61, align 8, !tbaa !15
  br label %62

62:                                               ; preds = %59, %57
  %63 = extractelement <16 x i1> %13, i64 10
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = or i64 %11, 10
  %66 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %65
  store i8 0, ptr %66, align 16, !tbaa !15
  br label %67

67:                                               ; preds = %64, %62
  %68 = extractelement <16 x i1> %13, i64 11
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = or i64 %11, 11
  %71 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %70
  store i8 0, ptr %71, align 8, !tbaa !15
  br label %72

72:                                               ; preds = %69, %67
  %73 = extractelement <16 x i1> %13, i64 12
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = or i64 %11, 12
  %76 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %75
  store i8 0, ptr %76, align 16, !tbaa !15
  br label %77

77:                                               ; preds = %74, %72
  %78 = extractelement <16 x i1> %13, i64 13
  br i1 %78, label %79, label %82

79:                                               ; preds = %77
  %80 = or i64 %11, 13
  %81 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %80
  store i8 0, ptr %81, align 8, !tbaa !15
  br label %82

82:                                               ; preds = %79, %77
  %83 = extractelement <16 x i1> %13, i64 14
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = or i64 %11, 14
  %86 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %85
  store i8 0, ptr %86, align 16, !tbaa !15
  br label %87

87:                                               ; preds = %84, %82
  %88 = extractelement <16 x i1> %13, i64 15
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = or i64 %11, 15
  %91 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %90
  store i8 0, ptr %91, align 8, !tbaa !15
  br label %92

92:                                               ; preds = %89, %87
  %93 = add i64 %11, 16
  %94 = add <16 x i64> %12, <i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16, i64 16>
  %95 = icmp eq i64 %93, 112
  br i1 %95, label %96, label %10, !llvm.loop !31

96:                                               ; preds = %92
  store i32 0, ptr @pcount, align 4, !tbaa !13
  store i32 0, ptr @maxposslen, align 4, !tbaa !13
  store i32 0, ptr @easypossibilities, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #38
  %97 = tail call i32 @good(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #35
  call void @upcase(ptr noundef nonnull %9) #35
  %101 = call fastcc i32 @ins_cap(ptr noundef nonnull %9, ptr noundef %0) #36, !range !32
  br label %102

102:                                              ; preds = %99, %96
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #38
  %103 = load i32, ptr @pcount, align 4
  %104 = icmp slt i32 %103, 100
  br i1 %104, label %105, label %339

105:                                              ; preds = %102
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %8) #38
  %106 = getelementptr inbounds i8, ptr %8, i64 1
  %107 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %106, ptr noundef nonnull dereferenceable(1) %0) #35
  %108 = load i8, ptr %0, align 1, !tbaa !15
  %109 = icmp eq i8 %108, 0
  %110 = load i32, ptr @Trynum, align 4, !tbaa !13
  br i1 %109, label %119, label %111

111:                                              ; preds = %145, %105
  %112 = phi i8 [ %150, %145 ], [ %108, %105 ]
  %113 = phi i32 [ %147, %145 ], [ %110, %105 ]
  %114 = phi ptr [ %149, %145 ], [ %8, %105 ]
  %115 = phi ptr [ %148, %145 ], [ %0, %105 ]
  %116 = icmp sgt i32 %113, 0
  br i1 %116, label %117, label %145

117:                                              ; preds = %111
  %118 = icmp eq ptr %114, %8
  br label %123

119:                                              ; preds = %145, %105
  %120 = phi i32 [ %110, %105 ], [ %147, %145 ]
  %121 = phi ptr [ %8, %105 ], [ %149, %145 ]
  %122 = icmp sgt i32 %120, 0
  br i1 %122, label %152, label %171

123:                                              ; preds = %138, %117
  %124 = phi i64 [ 0, %117 ], [ %139, %138 ]
  %125 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !15
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !15
  %130 = icmp ne i8 %129, 0
  %131 = select i1 %130, i1 %118, i1 false
  br i1 %131, label %138, label %132

132:                                              ; preds = %123
  store i8 %126, ptr %114, align 1, !tbaa !15
  %133 = call i32 @good(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = call fastcc i32 @ins_cap(ptr noundef nonnull %8, ptr noundef nonnull %0) #36, !range !32
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %171, label %138

138:                                              ; preds = %135, %132, %123
  %139 = add nuw nsw i64 %124, 1
  %140 = load i32, ptr @Trynum, align 4, !tbaa !13
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %139, %141
  br i1 %142, label %123, label %143, !llvm.loop !33

143:                                              ; preds = %138
  %.lcssa = phi i32 [ %140, %138 ]
  %144 = load i8, ptr %115, align 1, !tbaa !15
  br label %145

145:                                              ; preds = %143, %111
  %146 = phi i8 [ %144, %143 ], [ %112, %111 ]
  %147 = phi i32 [ %.lcssa, %143 ], [ %113, %111 ]
  %148 = getelementptr inbounds i8, ptr %115, i64 1
  %149 = getelementptr inbounds i8, ptr %114, i64 1
  store i8 %146, ptr %114, align 1, !tbaa !15
  %150 = load i8, ptr %148, align 1, !tbaa !15
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %119, label %111, !llvm.loop !34

152:                                              ; preds = %166, %119
  %153 = phi i64 [ %167, %166 ], [ 0, %119 ]
  %154 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !15
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !15
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %152
  store i8 %155, ptr %121, align 1, !tbaa !15
  %161 = call i32 @good(ptr noundef nonnull %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = call fastcc i32 @ins_cap(ptr noundef nonnull %8, ptr noundef nonnull %0) #36, !range !32
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %163, %160, %152
  %167 = add nuw nsw i64 %153, 1
  %168 = load i32, ptr @Trynum, align 4, !tbaa !13
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %167, %169
  br i1 %170, label %152, label %171, !llvm.loop !35

171:                                              ; preds = %166, %163, %135, %119
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %8) #38
  %172 = load i32, ptr @pcount, align 4
  %173 = icmp slt i32 %172, 100
  br i1 %173, label %174, label %339

174:                                              ; preds = %171
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #38
  %175 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #35
  %176 = getelementptr inbounds i8, ptr %7, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !15
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #38
  br label %201

180:                                              ; preds = %174
  %181 = load i8, ptr %7, align 16, !tbaa !15
  br label %182

182:                                              ; preds = %192, %180
  %183 = phi i8 [ %193, %192 ], [ %181, %180 ]
  %184 = phi i8 [ %196, %192 ], [ %177, %180 ]
  %185 = phi ptr [ %195, %192 ], [ %176, %180 ]
  %186 = phi ptr [ %185, %192 ], [ %7, %180 ]
  store i8 %184, ptr %186, align 1, !tbaa !15
  store i8 %183, ptr %185, align 1, !tbaa !15
  %187 = call i32 @good(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %182
  %190 = call fastcc i32 @ins_cap(ptr noundef nonnull %7, ptr noundef nonnull %0) #36, !range !32
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %189, %182
  %193 = load i8, ptr %186, align 1, !tbaa !15
  %194 = load i8, ptr %185, align 1, !tbaa !15
  store i8 %194, ptr %186, align 1, !tbaa !15
  store i8 %193, ptr %185, align 1, !tbaa !15
  %195 = getelementptr inbounds i8, ptr %185, i64 1
  %196 = load i8, ptr %195, align 1, !tbaa !15
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %182, !llvm.loop !36

198:                                              ; preds = %192, %189
  %199 = load i32, ptr @pcount, align 4
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #38
  %200 = icmp slt i32 %199, 100
  br i1 %200, label %201, label %339

201:                                              ; preds = %198, %179
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #38
  %202 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %203 = icmp ult i64 %202, 2
  br i1 %203, label %223, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds i8, ptr %0, i64 1
  %206 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %205) #35
  %207 = load i8, ptr %0, align 1, !tbaa !15
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %223, label %209

209:                                              ; preds = %217, %204
  %210 = phi ptr [ %220, %217 ], [ %6, %204 ]
  %211 = phi ptr [ %218, %217 ], [ %0, %204 ]
  %212 = call i32 @good(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = call fastcc i32 @ins_cap(ptr noundef nonnull %6, ptr noundef nonnull %0) #36, !range !32
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %224, label %217

217:                                              ; preds = %214, %209
  %218 = getelementptr inbounds i8, ptr %211, i64 1
  %219 = load i8, ptr %211, align 1, !tbaa !15
  %220 = getelementptr inbounds i8, ptr %210, i64 1
  store i8 %219, ptr %210, align 1, !tbaa !15
  %221 = load i8, ptr %218, align 1, !tbaa !15
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %224, label %209, !llvm.loop !37

223:                                              ; preds = %204, %201
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #38
  br label %227

224:                                              ; preds = %217, %214
  %225 = load i32, ptr @pcount, align 4
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #38
  %226 = icmp slt i32 %225, 100
  br i1 %226, label %227, label %339

227:                                              ; preds = %224, %223
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %5) #38
  %228 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %229 = trunc i64 %228 to i32
  %230 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %0) #35
  call void @upcase(ptr noundef nonnull %5) #35
  %231 = icmp sgt i32 %229, 0
  br i1 %231, label %232, label %273

232:                                              ; preds = %227
  %233 = add i64 %228, 4294967295
  %234 = and i64 %233, 4294967295
  %235 = and i64 %228, 4294967295
  %236 = load i32, ptr @Trynum, align 4, !tbaa !13
  br label %237

237:                                              ; preds = %269, %232
  %238 = phi i32 [ %236, %232 ], [ %270, %269 ]
  %239 = phi i64 [ 0, %232 ], [ %271, %269 ]
  %240 = getelementptr inbounds [120 x i8], ptr %5, i64 0, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !15
  %242 = icmp sgt i32 %238, 0
  br i1 %242, label %243, label %269

243:                                              ; preds = %237
  %244 = icmp ne i64 %239, 0
  %245 = icmp ne i64 %239, %234
  %246 = select i1 %244, i1 %245, i1 false
  br label %247

247:                                              ; preds = %264, %243
  %248 = phi i64 [ 0, %243 ], [ %265, %264 ]
  %249 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !15
  %251 = icmp eq i8 %250, %241
  br i1 %251, label %264, label %252

252:                                              ; preds = %247
  %253 = zext i8 %250 to i64
  %254 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !15
  %256 = icmp eq i8 %255, 0
  %257 = select i1 %256, i1 true, i1 %246
  br i1 %257, label %258, label %264

258:                                              ; preds = %252
  store i8 %250, ptr %240, align 1, !tbaa !15
  %259 = call i32 @good(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %258
  %262 = call fastcc i32 @ins_cap(ptr noundef nonnull %5, ptr noundef nonnull %0) #36, !range !32
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %261, %258, %252, %247
  %265 = add nuw nsw i64 %248, 1
  %266 = load i32, ptr @Trynum, align 4, !tbaa !13
  %267 = sext i32 %266 to i64
  %268 = icmp slt i64 %265, %267
  br i1 %268, label %247, label %269, !llvm.loop !38

269:                                              ; preds = %264, %237
  %270 = phi i32 [ %238, %237 ], [ %266, %264 ]
  store i8 %241, ptr %240, align 1, !tbaa !15
  %271 = add nuw nsw i64 %239, 1
  %272 = icmp eq i64 %271, %235
  br i1 %272, label %273, label %237, !llvm.loop !39

273:                                              ; preds = %269, %261, %227
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %5) #38
  %274 = load i32, ptr @pcount, align 4
  %275 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %276 = icmp ne i32 %275, 1
  %277 = icmp slt i32 %274, 100
  %278 = select i1 %276, i1 %277, i1 false
  br i1 %278, label %279, label %339

279:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(i64 121, ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %4) #38
  %280 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %281 = trunc i64 %280 to i32
  %282 = add i32 %281, -119
  %283 = icmp ult i32 %282, -116
  br i1 %283, label %337, label %284

284:                                              ; preds = %279
  %285 = getelementptr inbounds i8, ptr %3, i64 1
  %286 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %285, ptr noundef nonnull dereferenceable(1) %0) #35
  %287 = getelementptr inbounds i8, ptr %3, i64 2
  %288 = load i8, ptr %287, align 2, !tbaa !15
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %337, label %290

290:                                              ; preds = %284
  %291 = ptrtoint ptr %3 to i64
  br label %292

292:                                              ; preds = %333, %290
  %293 = phi ptr [ %287, %290 ], [ %334, %333 ]
  %294 = phi ptr [ %285, %290 ], [ %293, %333 ]
  %295 = load i8, ptr %294, align 1, !tbaa !15
  %296 = getelementptr inbounds i8, ptr %294, i64 -1
  store i8 %295, ptr %296, align 1, !tbaa !15
  store i8 0, ptr %294, align 1, !tbaa !15
  %297 = call i32 @good(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %333, label %299

299:                                              ; preds = %292
  %300 = call fastcc i32 @save_cap(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %2) #36
  %301 = call i32 @good(ptr noundef nonnull %293, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #35
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %333, label %303

303:                                              ; preds = %299
  %304 = call fastcc i32 @save_cap(ptr noundef nonnull %293, ptr noundef nonnull %293, ptr noundef nonnull %4) #36
  %305 = icmp sgt i32 %300, 0
  br i1 %305, label %306, label %333

306:                                              ; preds = %303
  %307 = ptrtoint ptr %294 to i64
  %308 = sub i64 %307, %291
  %309 = icmp sgt i32 %304, 0
  %310 = zext i32 %300 to i64
  %311 = zext i32 %304 to i64
  br label %312

312:                                              ; preds = %330, %306
  %313 = phi i64 [ 0, %306 ], [ %331, %330 ]
  %314 = getelementptr inbounds [10 x [120 x i8]], ptr %2, i64 0, i64 %313
  %315 = getelementptr inbounds [10 x [120 x i8]], ptr %2, i64 0, i64 %313, i64 %308
  br i1 %309, label %316, label %330

316:                                              ; preds = %312
  %317 = getelementptr inbounds i8, ptr %315, i64 1
  br label %321

318:                                              ; preds = %327
  %319 = add nuw nsw i64 %322, 1
  %320 = icmp eq i64 %319, %311
  br i1 %320, label %330, label %321, !llvm.loop !40

321:                                              ; preds = %318, %316
  %322 = phi i64 [ 0, %316 ], [ %319, %318 ]
  store i8 32, ptr %315, align 1, !tbaa !15
  %323 = getelementptr inbounds [10 x [120 x i8]], ptr %4, i64 0, i64 %322
  %324 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %317, ptr noundef nonnull dereferenceable(1) %323) #35
  %325 = call fastcc i32 @insert(ptr noundef nonnull %314) #36, !range !32
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %337, label %327

327:                                              ; preds = %321
  store i8 45, ptr %315, align 1, !tbaa !15
  %328 = call fastcc i32 @insert(ptr noundef nonnull %314) #36, !range !32
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %337, label %318

330:                                              ; preds = %318, %312
  %331 = add nuw nsw i64 %313, 1
  %332 = icmp eq i64 %331, %310
  br i1 %332, label %333, label %312, !llvm.loop !41

333:                                              ; preds = %330, %303, %299, %292
  %334 = getelementptr inbounds i8, ptr %293, i64 1
  %335 = load i8, ptr %334, align 1, !tbaa !15
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %292, !llvm.loop !42

337:                                              ; preds = %333, %327, %321, %284, %279
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(i64 121, ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %2) #38
  %338 = load i32, ptr @pcount, align 4, !tbaa !13
  br label %339

339:                                              ; preds = %337, %273, %224, %198, %171, %102
  %340 = phi i32 [ %338, %337 ], [ %274, %273 ], [ %225, %224 ], [ %199, %198 ], [ %103, %102 ], [ %172, %171 ]
  store i32 %340, ptr @easypossibilities, align 4, !tbaa !13
  %341 = icmp eq i32 %340, 0
  %342 = load i32, ptr @tryhardflag, align 4
  %343 = icmp ne i32 %342, 0
  %344 = select i1 %341, i1 true, i1 %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %339
  %346 = call i32 @good(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  br label %347

347:                                              ; preds = %345, %339
  %348 = load i32, ptr @sortit, align 4
  %349 = icmp eq i32 %348, 0
  %350 = load i32, ptr @pcount, align 4
  br i1 %349, label %351, label %356

351:                                              ; preds = %347
  %352 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %353 = icmp sgt i32 %350, %352
  %354 = icmp ne i32 %350, 0
  %355 = and i1 %354, %353
  br i1 %355, label %365, label %374

356:                                              ; preds = %347
  %357 = icmp eq i32 %350, 0
  br i1 %357, label %374, label %358

358:                                              ; preds = %356
  %359 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %360 = icmp sgt i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = zext i32 %359 to i64
  call void @qsort(ptr noundef nonnull @possibilities, i64 noundef %362, i64 noundef 120, ptr noundef nonnull @posscmp) #35
  %363 = load i32, ptr @pcount, align 4, !tbaa !13
  %364 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  br label %365

365:                                              ; preds = %361, %358, %351
  %366 = phi i32 [ %352, %351 ], [ %364, %361 ], [ %359, %358 ]
  %367 = phi i32 [ %350, %351 ], [ %363, %361 ], [ %350, %358 ]
  %368 = icmp sgt i32 %367, %366
  br i1 %368, label %369, label %374

369:                                              ; preds = %365
  %370 = sext i32 %366 to i64
  %371 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %370
  %372 = sub nsw i32 %367, %366
  %373 = zext i32 %372 to i64
  call void @qsort(ptr noundef nonnull %371, i64 noundef %373, i64 noundef 120, ptr noundef nonnull @posscmp) #35
  br label %374

374:                                              ; preds = %369, %365, %356, %351
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @show_line(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !7
  %5 = icmp eq i32 %2, 0
  %6 = load i32, ptr @sg, align 4
  %7 = shl i32 %6, 1
  %8 = select i1 %5, i32 0, i32 %7
  %9 = icmp ult ptr %0, %1
  %10 = load i32, ptr @co, align 4
  %11 = add nsw i32 %10, -1
  %12 = icmp slt i32 %8, %11
  %13 = select i1 %9, i1 %12, i1 false
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = ptrtoint ptr %1 to i64
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %0, %14 ], [ %24, %16 ]
  %18 = phi i32 [ %8, %14 ], [ %23, %16 ]
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %15, %19
  %21 = trunc i64 %20 to i32
  %22 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %18, i32 noundef 1, i32 noundef %21) #36
  %23 = add nsw i32 %22, %18
  %24 = load ptr, ptr %4, align 8, !tbaa !7
  %25 = icmp ult ptr %24, %1
  %26 = load i32, ptr @co, align 4
  %27 = add nsw i32 %26, -1
  %28 = icmp slt i32 %23, %27
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %16, label %30, !llvm.loop !43

30:                                               ; preds = %16, %3
  %31 = phi i32 [ %10, %3 ], [ %26, %16 ]
  %32 = phi ptr [ %0, %3 ], [ %24, %16 ]
  %33 = phi i32 [ %8, %3 ], [ %23, %16 ]
  br i1 %5, label %62, label %34

34:                                               ; preds = %30
  tail call void @inverse() #35
  %35 = sext i32 %2 to i64
  %36 = getelementptr inbounds i8, ptr %1, i64 %35
  %37 = icmp ult ptr %32, %36
  %38 = load i32, ptr @co, align 4
  %39 = add nsw i32 %38, -1
  %40 = icmp slt i32 %33, %39
  %41 = select i1 %37, i1 %40, i1 false
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = ptrtoint ptr %36 to i64
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi ptr [ %32, %42 ], [ %52, %44 ]
  %46 = phi i32 [ %33, %42 ], [ %51, %44 ]
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %43, %47
  %49 = trunc i64 %48 to i32
  %50 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %46, i32 noundef 1, i32 noundef %49) #36
  %51 = add nsw i32 %50, %46
  %52 = load ptr, ptr %4, align 8, !tbaa !7
  %53 = icmp ult ptr %52, %36
  %54 = load i32, ptr @co, align 4
  %55 = add nsw i32 %54, -1
  %56 = icmp slt i32 %51, %55
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %44, label %58, !llvm.loop !44

58:                                               ; preds = %44, %34
  %59 = phi ptr [ %32, %34 ], [ %52, %44 ]
  %60 = phi i32 [ %33, %34 ], [ %51, %44 ]
  tail call void @normal() #35
  %61 = load i32, ptr @co, align 4
  br label %62

62:                                               ; preds = %58, %30
  %63 = phi i32 [ %61, %58 ], [ %31, %30 ]
  %64 = phi ptr [ %59, %58 ], [ %32, %30 ]
  %65 = phi i32 [ %60, %58 ], [ %33, %30 ]
  %66 = load i8, ptr %64, align 1, !tbaa !15
  %67 = icmp ne i8 %66, 0
  %68 = add nsw i32 %63, -1
  %69 = icmp slt i32 %65, %68
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %82

71:                                               ; preds = %71, %62
  %72 = phi i32 [ %74, %71 ], [ %65, %62 ]
  %73 = call fastcc i32 @show_char(ptr noundef nonnull %4, i32 noundef %72, i32 noundef 1, i32 noundef 0) #36
  %74 = add nsw i32 %73, %72
  %75 = load ptr, ptr %4, align 8, !tbaa !7
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = icmp ne i8 %76, 0
  %78 = load i32, ptr @co, align 4
  %79 = add nsw i32 %78, -1
  %80 = icmp slt i32 %74, %79
  %81 = select i1 %77, i1 %80, i1 false
  br i1 %81, label %71, label %82, !llvm.loop !45

82:                                               ; preds = %71, %62
  %83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @line_size(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  %10 = load i8, ptr %8, align 1, !tbaa !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = ptrtoint ptr %8 to i64
  %14 = sub i64 %6, %13
  %15 = trunc i64 %14 to i32
  %16 = call fastcc i32 @show_char(ptr noundef nonnull %3, i32 noundef %9, i32 noundef 0, i32 noundef %15) #36
  %17 = add nsw i32 %16, %9
  %18 = load ptr, ptr %3, align 8, !tbaa !7
  %19 = icmp ult ptr %18, %1
  br i1 %19, label %7, label %20, !llvm.loop !46

20:                                               ; preds = %12, %7, %2
  %21 = phi i32 [ 0, %2 ], [ %17, %12 ], [ %9, %7 ]
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @getline_ispell(ptr noundef %0) unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  br label %3

3:                                                ; preds = %47, %1
  %4 = phi ptr [ %0, %1 ], [ %48, %47 ]
  %5 = ptrtoint ptr %4 to i64
  %6 = load ptr, ptr @stdout, align 8, !tbaa !7
  %7 = tail call i32 @fflush(ptr noundef %6) #36
  %8 = tail call i32 @getchar() #36
  %9 = and i32 %8, 127
  switch i32 %9, label %20 [
    i32 92, label %10
    i32 7, label %49
    i32 13, label %19
    i32 10, label %19
  ]

10:                                               ; preds = %3
  %11 = tail call i32 @putchar(i32 noundef 92) #36
  %12 = load ptr, ptr @stdout, align 8, !tbaa !7
  %13 = tail call i32 @fflush(ptr noundef %12) #36
  %14 = tail call i32 @getchar() #36
  %15 = and i32 %14, 127
  tail call void @backup() #35
  %16 = tail call i32 @putchar(i32 noundef %15) #36
  %17 = trunc i32 %15 to i8
  %18 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %17, ptr %4, align 1, !tbaa !15
  br label %47

19:                                               ; preds = %3, %3
  %.lcssa1 = phi ptr [ %4, %3 ], [ %4, %3 ]
  store i8 0, ptr %.lcssa1, align 1, !tbaa !15
  br label %49

20:                                               ; preds = %3
  %21 = load i32, ptr @uerasechar, align 4, !tbaa !13
  %22 = icmp eq i32 %9, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = icmp eq ptr %4, %0
  br i1 %24, label %47, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %4, i64 -1
  tail call void @backup() #35
  %27 = tail call i32 @putchar(i32 noundef 32) #36
  tail call void @backup() #35
  br label %47

28:                                               ; preds = %20
  %29 = load i32, ptr @ukillchar, align 4, !tbaa !13
  %30 = icmp eq i32 %9, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = icmp eq ptr %4, %0
  br i1 %32, label %47, label %33

33:                                               ; preds = %31
  %34 = sub i64 0, %5
  br label %35

35:                                               ; preds = %35, %33
  %36 = phi ptr [ %37, %35 ], [ %4, %33 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 -1
  tail call void @backup() #35
  %38 = tail call i32 @putchar(i32 noundef 32) #36
  tail call void @backup() #35
  %39 = icmp eq ptr %37, %0
  br i1 %39, label %44, label %35, !llvm.loop !47

40:                                               ; preds = %28
  %41 = trunc i32 %9 to i8
  %42 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 %41, ptr %4, align 1, !tbaa !15
  %43 = tail call i32 @putchar(i32 noundef %9) #36
  br label %47

44:                                               ; preds = %35
  %45 = getelementptr i8, ptr %4, i64 %2
  %46 = getelementptr i8, ptr %45, i64 %34
  br label %47

47:                                               ; preds = %44, %40, %31, %25, %23, %10
  %48 = phi ptr [ %18, %10 ], [ %26, %25 ], [ %0, %23 ], [ %42, %40 ], [ %0, %31 ], [ %46, %44 ]
  br label %3

49:                                               ; preds = %19, %3
  %50 = phi ptr [ %0, %19 ], [ null, %3 ]
  ret ptr %50
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @inserttoken(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %6) #38
  %7 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @contextbufs) #35
  %8 = icmp eq ptr %0, @contextbufs
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = sub i64 %5, ptrtoint (ptr @contextbufs to i64)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 @contextbufs, ptr nonnull align 16 %6, i64 %10, i1 false), !tbaa !15
  %11 = getelementptr i8, ptr @contextbufs, i64 %10
  %12 = getelementptr i8, ptr %6, i64 %10
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi ptr [ @contextbufs, %3 ], [ %11, %9 ]
  %15 = phi ptr [ %6, %3 ], [ %12, %9 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !7
  %17 = ptrtoint ptr %16 to i64
  %18 = sub i64 %17, %5
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = call ptr @skipoverword(ptr noundef %1) #35
  %21 = icmp ugt ptr %20, %1
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = ptrtoint ptr %20 to i64
  %24 = sub i64 %23, %4
  %25 = getelementptr i8, ptr %1, i64 %24
  br label %26

26:                                               ; preds = %26, %22
  %27 = phi ptr [ %29, %26 ], [ %1, %22 ]
  %28 = phi ptr [ %31, %26 ], [ %14, %22 ]
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  %30 = load i8, ptr %27, align 1, !tbaa !15
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %30, ptr %28, align 1, !tbaa !15
  %32 = icmp eq ptr %29, %25
  br i1 %32, label %33, label %26, !llvm.loop !48

33:                                               ; preds = %26, %13
  %34 = phi ptr [ %14, %13 ], [ %31, %26 ]
  %35 = phi ptr [ %1, %13 ], [ %25, %26 ]
  store ptr %34, ptr %2, align 8, !tbaa !7
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %33
  store i8 %36, ptr %34, align 1, !tbaa !15
  store i8 0, ptr %35, align 1, !tbaa !15
  %39 = getelementptr inbounds i8, ptr %34, i64 1
  %40 = getelementptr inbounds i8, ptr %35, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !15
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %43, %38
  %44 = phi i8 [ %49, %43 ], [ %41, %38 ]
  %45 = phi ptr [ %48, %43 ], [ %40, %38 ]
  %46 = phi ptr [ %47, %43 ], [ %39, %38 ]
  store i8 %44, ptr %46, align 1, !tbaa !15
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %43, !llvm.loop !49

51:                                               ; preds = %43, %38, %33
  %52 = phi ptr [ %39, %38 ], [ %34, %33 ], [ %47, %43 ]
  br label %53

53:                                               ; preds = %53, %51
  %54 = phi ptr [ %58, %53 ], [ %52, %51 ]
  %55 = phi ptr [ %56, %53 ], [ %19, %51 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %55, align 1, !tbaa !15
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  store i8 %57, ptr %54, align 1, !tbaa !15
  %59 = icmp eq i8 %57, 0
  br i1 %59, label %60, label %53, !llvm.loop !50

60:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %6) #38
  ret void
}

; Function Attrs: optsize
declare i32 @sleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @show_char(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !7
  %6 = load i8, ptr %5, align 1, !tbaa !15
  %7 = zext i8 %6 to i32
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = tail call i32 @stringcharlen(ptr noundef nonnull %5, i32 noundef 0) #35
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, ptr @laststringch, align 4, !tbaa !13
  %17 = trunc i32 %16 to i8
  %18 = xor i8 %17, -128
  br label %19

19:                                               ; preds = %15, %12, %4
  %20 = phi i32 [ %13, %15 ], [ 1, %12 ], [ 1, %4 ]
  %21 = phi i8 [ %18, %15 ], [ %6, %12 ], [ %6, %4 ]
  %22 = load i32, ptr @vflag, align 4, !tbaa !13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = zext i8 %21 to i64
  %26 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !15
  %28 = icmp ne i8 %27, 0
  %29 = icmp eq i32 %20, 1
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = icmp eq i32 %2, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %31
  %34 = tail call i32 @putchar(i32 noundef %7) #36
  br label %35

35:                                               ; preds = %33, %31
  %36 = load ptr, ptr %0, align 8, !tbaa !7
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %37, ptr %0, align 8, !tbaa !7
  br label %93

38:                                               ; preds = %24, %19
  %39 = icmp eq i8 %6, 9
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  %41 = icmp eq i32 %2, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %40
  %43 = tail call i32 @putchar(i32 noundef 9) #36
  br label %44

44:                                               ; preds = %42, %40
  %45 = load ptr, ptr %0, align 8, !tbaa !7
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %46, ptr %0, align 8, !tbaa !7
  %47 = and i32 %1, 7
  %48 = sub nuw nsw i32 8, %47
  br label %93

49:                                               ; preds = %38
  %50 = icmp ne i32 %3, 0
  %51 = icmp sgt i32 %20, %3
  %52 = and i1 %50, %51
  %53 = select i1 %52, i32 %3, i32 %20
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = icmp eq i32 %2, 0
  br label %57

57:                                               ; preds = %88, %55
  %58 = phi i32 [ 0, %55 ], [ %90, %88 ]
  %59 = phi i32 [ 0, %55 ], [ %91, %88 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !7
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %61, ptr %0, align 8, !tbaa !7
  %62 = load i8, ptr %60, align 1, !tbaa !15
  %63 = zext i8 %62 to i32
  %64 = icmp slt i8 %62, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  br i1 %56, label %69, label %66

66:                                               ; preds = %65
  %67 = tail call i32 @putchar(i32 noundef 77) #36
  %68 = tail call i32 @putchar(i32 noundef 45) #36
  br label %69

69:                                               ; preds = %66, %65
  %70 = add nsw i32 %58, 2
  %71 = and i32 %63, 127
  br label %72

72:                                               ; preds = %69, %57
  %73 = phi i32 [ %71, %69 ], [ %63, %57 ]
  %74 = phi i32 [ %70, %69 ], [ %58, %57 ]
  %75 = icmp ult i32 %73, 32
  %76 = icmp eq i32 %73, 127
  %77 = or i1 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  br i1 %56, label %88, label %79

79:                                               ; preds = %78
  %80 = tail call i32 @putchar(i32 noundef 94) #36
  %81 = add nuw nsw i32 %73, 64
  %82 = select i1 %76, i32 63, i32 %81
  br label %84

83:                                               ; preds = %72
  br i1 %56, label %88, label %84

84:                                               ; preds = %83, %79
  %85 = phi i32 [ %82, %79 ], [ %73, %83 ]
  %86 = phi i32 [ 2, %79 ], [ 1, %83 ]
  %87 = tail call i32 @putchar(i32 noundef %85) #36
  br label %88

88:                                               ; preds = %84, %83, %78
  %89 = phi i32 [ 2, %78 ], [ 1, %83 ], [ %86, %84 ]
  %90 = add nsw i32 %74, %89
  %91 = add nuw nsw i32 %59, 1
  %92 = icmp eq i32 %91, %53
  br i1 %92, label %93, label %57, !llvm.loop !51

93:                                               ; preds = %88, %49, %44, %35
  %94 = phi i32 [ %48, %44 ], [ 1, %35 ], [ 0, %49 ], [ %90, %88 ]
  ret i32 %94
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @ins_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [10 x [120 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %3) #38
  %4 = call fastcc i32 @save_cap(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #36
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = zext i32 %4 to i64
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %7
  br i1 %10, label %16, label %11, !llvm.loop !52

11:                                               ; preds = %8, %6
  %12 = phi i64 [ 0, %6 ], [ %9, %8 ]
  %13 = getelementptr inbounds [10 x [120 x i8]], ptr %3, i64 0, i64 %12
  %14 = call fastcc i32 @insert(ptr noundef nonnull %13) #36, !range !32
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %8

16:                                               ; preds = %11, %8, %2
  %17 = phi i32 [ 0, %2 ], [ 0, %8 ], [ -1, %11 ]
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %3) #38
  ret i32 %17
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @save_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38
  %5 = load i8, ptr %0, align 1, !tbaa !15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @numhits, align 4, !tbaa !13
  store i32 0, ptr %4, align 4, !tbaa !13
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
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.flagent, ptr %18, i64 0, i32 3
  %22 = load i16, ptr %21, align 2, !tbaa !55
  %23 = sext i16 %22 to i32
  %24 = getelementptr inbounds %struct.flagent, ptr %18, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !57
  %26 = sext i16 %25 to i32
  br label %27

27:                                               ; preds = %20, %12
  %28 = phi i32 [ %26, %20 ], [ 0, %12 ]
  %29 = phi i32 [ %23, %20 ], [ 0, %12 ]
  %30 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %15, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.flagent, ptr %31, i64 0, i32 3
  %35 = load i16, ptr %34, align 2, !tbaa !55
  %36 = sext i16 %35 to i32
  %37 = getelementptr inbounds %struct.flagent, ptr %31, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !57
  %39 = sext i16 %38 to i32
  br label %40

40:                                               ; preds = %33, %27
  %41 = phi i32 [ %39, %33 ], [ 0, %27 ]
  %42 = phi i32 [ %36, %33 ], [ 0, %27 ]
  %43 = load ptr, ptr %16, align 8, !tbaa !59
  call fastcc void @save_root_cap(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %29, i32 noundef %28, i32 noundef %42, i32 noundef %41, ptr noundef %43, ptr noundef %18, ptr noundef %31, ptr noundef %2, ptr noundef nonnull %4) #36
  %44 = icmp ugt i64 %13, 1
  %45 = load i32, ptr %4, align 4
  %46 = icmp slt i32 %45, 10
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %12, label %48, !llvm.loop !60

48:                                               ; preds = %40, %7, %3
  %49 = phi i32 [ 0, %3 ], [ 0, %7 ], [ %45, %40 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38
  ret i32 %49
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @insert(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @ichartosstr(ptr noundef %0, i32 noundef 0) #35
  %3 = load i32, ptr @pcount, align 4, !tbaa !13
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = zext i32 %3 to i64
  br label %10

7:                                                ; preds = %10
  %8 = add nuw nsw i64 %11, 1
  %9 = icmp eq i64 %8, %6
  br i1 %9, label %15, label %10, !llvm.loop !61

10:                                               ; preds = %7, %5
  %11 = phi i64 [ 0, %5 ], [ %8, %7 ]
  %12 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %11
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %2) #37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %28, label %7

15:                                               ; preds = %7, %1
  %16 = add nsw i32 %3, 1
  store i32 %16, ptr @pcount, align 4, !tbaa !13
  %17 = sext i32 %3 to i64
  %18 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %17
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %2) #35
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37
  %21 = trunc i64 %20 to i32
  %22 = load i32, ptr @maxposslen, align 4, !tbaa !13
  %23 = icmp slt i32 %22, %21
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 %21, ptr @maxposslen, align 4, !tbaa !13
  br label %25

25:                                               ; preds = %24, %15
  %26 = icmp sgt i32 %3, 98
  %27 = sext i1 %26 to i32
  br label %28

28:                                               ; preds = %25, %10
  %29 = phi i32 [ %27, %25 ], [ 0, %10 ]
  ret i32 %29
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @posscmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @casecmp(ptr noundef %0, ptr noundef %1, i32 noundef 0) #36, !range !62
  ret i32 %3
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal i32 @casecmp(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca [184 x i8], align 16
  %5 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %5) #38
  %6 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 184, i32 noundef %2) #35
  %7 = call i32 @strtoichar(ptr noundef nonnull %5, ptr noundef %1, i32 noundef 184, i32 noundef %2) #35
  %8 = load i8, ptr %4, align 16, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %68, label %10

10:                                               ; preds = %60, %3
  %11 = phi i8 [ %63, %60 ], [ %8, %3 ]
  %12 = phi ptr [ %62, %60 ], [ %5, %3 ]
  %13 = phi ptr [ %61, %60 ], [ %4, %3 ]
  %14 = load i8, ptr %12, align 1, !tbaa !15
  %15 = icmp eq i8 %11, %14
  br i1 %15, label %60, label %16

16:                                               ; preds = %10
  %17 = icmp eq i8 %14, 0
  %18 = zext i8 %11 to i64
  br i1 %17, label %19, label %23

19:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %18, %16 ]
  %20 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa2
  %21 = load i16, ptr %20, align 2, !tbaa !63
  %22 = zext i16 %21 to i32
  br label %100

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %18
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 0
  %27 = zext i8 %14 to i64
  br i1 %26, label %44, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %27
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %18
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = icmp eq i8 %34, %14
  br i1 %35, label %60, label %36

36:                                               ; preds = %32, %28
  %.lcssa5 = phi i64 [ %27, %32 ], [ %27, %28 ]
  %.lcssa3 = phi i64 [ %18, %32 ], [ %18, %28 ]
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa3
  %38 = load i16, ptr %37, align 2, !tbaa !63
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa5
  %41 = load i16, ptr %40, align 2, !tbaa !63
  %42 = zext i16 %41 to i32
  %43 = sub nsw i32 %39, %42
  br label %100

44:                                               ; preds = %23
  %45 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %27
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %18
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = icmp eq i8 %50, %14
  br i1 %51, label %60, label %52

52:                                               ; preds = %48, %44
  %.lcssa6 = phi i64 [ %27, %48 ], [ %27, %44 ]
  %.lcssa4 = phi i64 [ %18, %48 ], [ %18, %44 ]
  %53 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa4
  %54 = load i16, ptr %53, align 2, !tbaa !63
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %.lcssa6
  %57 = load i16, ptr %56, align 2, !tbaa !63
  %58 = zext i16 %57 to i32
  %59 = sub nsw i32 %55, %58
  br label %100

60:                                               ; preds = %48, %32, %10
  %61 = getelementptr inbounds i8, ptr %13, i64 1
  %62 = getelementptr inbounds i8, ptr %12, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %10, !llvm.loop !64

65:                                               ; preds = %60
  %.lcssa7 = phi ptr [ %62, %60 ]
  %66 = load i8, ptr %.lcssa7, align 1, !tbaa !15
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %72

68:                                               ; preds = %3
  %69 = load i8, ptr %5, align 16, !tbaa !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %100, label %72

71:                                               ; preds = %65
  br i1 %9, label %100, label %79

72:                                               ; preds = %68, %65
  %73 = phi i8 [ %69, %68 ], [ %66, %65 ]
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !63
  %77 = zext i16 %76 to i32
  %78 = sub nsw i32 0, %77
  br label %100

79:                                               ; preds = %95, %71
  %80 = phi i8 [ %98, %95 ], [ %8, %71 ]
  %81 = phi ptr [ %97, %95 ], [ %5, %71 ]
  %82 = phi ptr [ %96, %95 ], [ %4, %71 ]
  %83 = load i8, ptr %81, align 1, !tbaa !15
  %84 = icmp eq i8 %80, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %79
  %.lcssa1 = phi i8 [ %80, %79 ]
  %.lcssa = phi i8 [ %83, %79 ]
  %86 = zext i8 %.lcssa1 to i64
  %87 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !63
  %89 = zext i16 %88 to i32
  %90 = zext i8 %.lcssa to i64
  %91 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !63
  %93 = zext i16 %92 to i32
  %94 = sub nsw i32 %89, %93
  br label %100

95:                                               ; preds = %79
  %96 = getelementptr inbounds i8, ptr %82, i64 1
  %97 = getelementptr inbounds i8, ptr %81, i64 1
  %98 = load i8, ptr %96, align 1, !tbaa !15
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %79, !llvm.loop !65

100:                                              ; preds = %95, %85, %72, %71, %68, %52, %36, %19
  %101 = phi i32 [ %22, %19 ], [ %43, %36 ], [ %59, %52 ], [ %78, %72 ], [ %94, %85 ], [ 0, %71 ], [ 0, %68 ], [ 0, %95 ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %4) #38
  ret i32 %101
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @save_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef readonly %7, ptr noundef readonly %8, ptr noundef %9, ptr nocapture noundef %10) unnamed_addr #0 {
  %12 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %12) #38
  %13 = load i32, ptr %10, align 4, !tbaa !13
  %14 = icmp sgt i32 %13, 9
  br i1 %14, label %268, label %15

15:                                               ; preds = %11
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %0) #35
  %17 = load i8, ptr %1, align 1, !tbaa !15
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !66
  %23 = and i64 %22, 1879048192
  %24 = icmp eq i64 %23, 268435456
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = icmp eq i8 %17, 0
  br i1 %26, label %39, label %32

27:                                               ; preds = %15
  call void @upcase(ptr noundef nonnull %12) #35
  br label %261

28:                                               ; preds = %32
  %29 = getelementptr inbounds i8, ptr %34, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32, !llvm.loop !68

32:                                               ; preds = %28, %25
  %33 = phi i8 [ %30, %28 ], [ %17, %25 ]
  %34 = phi ptr [ %29, %28 ], [ %1, %25 ]
  %35 = zext i8 %33 to i64
  %36 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %28, label %40

39:                                               ; preds = %28, %25
  call void @upcase(ptr noundef nonnull %12) #35
  br label %261

40:                                               ; preds = %45, %32
  %41 = phi ptr [ %42, %45 ], [ %1, %32 ]
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = zext i8 %43 to i64
  %47 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %40, label %107, !llvm.loop !69

50:                                               ; preds = %40
  %51 = icmp eq i8 %20, 0
  %52 = and i64 %22, 805306368
  br i1 %51, label %59, label %53

53:                                               ; preds = %50
  switch i64 %52, label %62 [
    i64 536870912, label %54
    i64 0, label %54
  ]

54:                                               ; preds = %53, %53
  call void @lowcase(ptr noundef nonnull %12) #35
  %55 = load i8, ptr %12, align 16, !tbaa !15
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !15
  store i8 %58, ptr %12, align 16, !tbaa !15
  br label %261

59:                                               ; preds = %50
  %60 = icmp eq i64 %52, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  call void @lowcase(ptr noundef nonnull %12) #35
  br label %261

62:                                               ; preds = %59, %53
  %63 = and i64 %22, 1073741824
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %107, label %65

65:                                               ; preds = %62
  %66 = icmp eq ptr %7, null
  %67 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %68 = icmp eq ptr %8, null
  %69 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  br label %70

70:                                               ; preds = %93, %65
  %71 = phi ptr [ %6, %65 ], [ %72, %93 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !70
  %73 = getelementptr inbounds %struct.dent, ptr %72, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !66
  %75 = and i64 %74, 805306368
  %76 = icmp eq i64 %75, 805306368
  br i1 %76, label %93, label %77

77:                                               ; preds = %70
  br i1 %66, label %85, label %78

78:                                               ; preds = %77
  %79 = load i16, ptr %67, align 8, !tbaa !72
  %80 = sext i16 %79 to i64
  %81 = and i64 %80, 4294967295
  %82 = shl nuw i64 1, %81
  %83 = and i64 %82, %74
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %78, %77
  br i1 %68, label %96, label %86

86:                                               ; preds = %85
  %87 = load i16, ptr %69, align 8, !tbaa !72
  %88 = sext i16 %87 to i64
  %89 = and i64 %88, 4294967295
  %90 = shl nuw i64 1, %89
  %91 = and i64 %90, %74
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %104, %97, %86, %78, %70
  %94 = and i64 %74, 1073741824
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %107, label %70, !llvm.loop !73

96:                                               ; preds = %86, %85
  br i1 %51, label %104, label %97

97:                                               ; preds = %96
  %98 = icmp eq i64 %75, 536870912
  br i1 %98, label %99, label %93

99:                                               ; preds = %97
  call void @lowcase(ptr noundef nonnull %12) #35
  %100 = load i8, ptr %12, align 16, !tbaa !15
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !15
  store i8 %103, ptr %12, align 16, !tbaa !15
  br label %261

104:                                              ; preds = %96
  %105 = icmp eq i64 %75, 0
  br i1 %105, label %106, label %93

106:                                              ; preds = %104
  call void @lowcase(ptr noundef nonnull %12) #35
  br label %261

107:                                              ; preds = %93, %62, %45
  %108 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !74
  %110 = call ptr @strtosichar(ptr noundef %109, i32 noundef 1) #35
  %111 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %110) #37
  %112 = trunc i64 %111 to i32
  %113 = load i64, ptr %21, align 8, !tbaa !66
  %114 = and i64 %113, 1073741824
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %107
  %117 = load ptr, ptr %6, align 8, !tbaa !70
  br label %118

118:                                              ; preds = %116, %107
  %119 = phi ptr [ %117, %116 ], [ %6, %107 ]
  %120 = icmp eq ptr %7, null
  %121 = getelementptr inbounds %struct.flagent, ptr %7, i64 0, i32 2
  %122 = icmp eq ptr %8, null
  %123 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 2
  %124 = icmp eq i8 %20, 0
  %125 = sext i32 %2 to i64
  %126 = sext i32 %3 to i64
  %127 = getelementptr inbounds i8, ptr %12, i64 %126
  %128 = add i32 %4, %2
  %129 = sub i32 %112, %128
  %130 = sext i32 %129 to i64
  %131 = icmp sgt i32 %3, 0
  %132 = add nsw i32 %112, %3
  %133 = sub i32 %5, %128
  %134 = add i32 %133, %132
  %135 = sub i32 %132, %128
  %136 = xor i32 %4, -1
  %137 = add i32 %112, %136
  %138 = sext i32 %137 to i64
  %139 = sext i32 %135 to i64
  %140 = getelementptr inbounds i8, ptr %12, i64 %139
  %141 = icmp slt i32 %135, %134
  %142 = zext i32 %3 to i64
  %143 = zext i32 %3 to i64
  br label %144

144:                                              ; preds = %259, %118
  %145 = phi ptr [ %119, %118 ], [ %260, %259 ]
  br i1 %120, label %155, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.dent, ptr %145, i64 0, i32 2
  %148 = load i64, ptr %147, align 8, !tbaa !66
  %149 = load i16, ptr %121, align 8, !tbaa !72
  %150 = sext i16 %149 to i64
  %151 = and i64 %150, 4294967295
  %152 = shl nuw i64 1, %151
  %153 = and i64 %152, %148
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %254, label %155

155:                                              ; preds = %146, %144
  %156 = getelementptr inbounds %struct.dent, ptr %145, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !66
  br i1 %122, label %165, label %158

158:                                              ; preds = %155
  %159 = load i16, ptr %123, align 8, !tbaa !72
  %160 = sext i16 %159 to i64
  %161 = and i64 %160, 4294967295
  %162 = shl nuw i64 1, %161
  %163 = and i64 %162, %157
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %254, label %165

165:                                              ; preds = %158, %155
  %166 = getelementptr inbounds %struct.dent, ptr %145, i64 0, i32 2
  %167 = and i64 %157, 805306368
  %168 = icmp eq i64 %167, 805306368
  br i1 %168, label %187, label %169

169:                                              ; preds = %165
  call void @lowcase(ptr noundef nonnull %12) #35
  br i1 %124, label %170, label %174

170:                                              ; preds = %169
  %171 = load i64, ptr %166, align 8, !tbaa !66
  %172 = and i64 %171, 805306368
  %173 = icmp eq i64 %172, 536870912
  br i1 %173, label %174, label %179

174:                                              ; preds = %170, %169
  %175 = load i8, ptr %12, align 16, !tbaa !15
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !15
  store i8 %178, ptr %12, align 16, !tbaa !15
  br label %179

179:                                              ; preds = %174, %170
  %180 = load i32, ptr %10, align 4, !tbaa !13
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [120 x i8], ptr %9, i64 %181
  %183 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %182, ptr noundef nonnull dereferenceable(1) %12) #35
  %184 = load i32, ptr %10, align 4, !tbaa !13
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %10, align 4, !tbaa !13
  %186 = icmp sgt i32 %184, 8
  br i1 %186, label %268, label %254

187:                                              ; preds = %165
  %188 = getelementptr inbounds %struct.dent, ptr %145, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !74
  %190 = call ptr @strtosichar(ptr noundef %189, i32 noundef 1) #35
  %191 = getelementptr inbounds i8, ptr %190, i64 %125
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %127, ptr align 1 %191, i64 %130, i1 false)
  %192 = load i8, ptr %191, align 1, !tbaa !15
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !15
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %187
  br i1 %131, label %199, label %217

198:                                              ; preds = %187
  br i1 %131, label %208, label %217

199:                                              ; preds = %199, %197
  %200 = phi i64 [ %206, %199 ], [ 0, %197 ]
  %201 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !15
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %203
  %205 = load i8, ptr %204, align 1, !tbaa !15
  store i8 %205, ptr %201, align 1, !tbaa !15
  %206 = add nuw nsw i64 %200, 1
  %207 = icmp eq i64 %206, %142
  br i1 %207, label %217, label %199, !llvm.loop !75

208:                                              ; preds = %208, %198
  %209 = phi i64 [ %215, %208 ], [ 0, %198 ]
  %210 = getelementptr inbounds [184 x i8], ptr %12, i64 0, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !15
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !15
  store i8 %214, ptr %210, align 1, !tbaa !15
  %215 = add nuw nsw i64 %209, 1
  %216 = icmp eq i64 %215, %143
  br i1 %216, label %217, label %208, !llvm.loop !76

217:                                              ; preds = %208, %199, %198, %197
  %218 = getelementptr inbounds i8, ptr %190, i64 %138
  %219 = load i8, ptr %218, align 1, !tbaa !15
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !15
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %217
  br i1 %141, label %225, label %246

225:                                              ; preds = %225, %224
  %226 = phi i32 [ %232, %225 ], [ %135, %224 ]
  %227 = phi ptr [ %233, %225 ], [ %140, %224 ]
  %228 = load i8, ptr %227, align 1, !tbaa !15
  %229 = zext i8 %228 to i64
  %230 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !15
  store i8 %231, ptr %227, align 1, !tbaa !15
  %232 = add nsw i32 %226, 1
  %233 = getelementptr inbounds i8, ptr %227, i64 1
  %234 = icmp eq i32 %232, %134
  br i1 %234, label %246, label %225, !llvm.loop !77

235:                                              ; preds = %217
  br i1 %141, label %236, label %246

236:                                              ; preds = %236, %235
  %237 = phi i32 [ %243, %236 ], [ %135, %235 ]
  %238 = phi ptr [ %244, %236 ], [ %140, %235 ]
  %239 = load i8, ptr %238, align 1, !tbaa !15
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !15
  store i8 %242, ptr %238, align 1, !tbaa !15
  %243 = add nsw i32 %237, 1
  %244 = getelementptr inbounds i8, ptr %238, i64 1
  %245 = icmp eq i32 %243, %134
  br i1 %245, label %246, label %236, !llvm.loop !78

246:                                              ; preds = %236, %235, %225, %224
  %247 = load i32, ptr %10, align 4, !tbaa !13
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [120 x i8], ptr %9, i64 %248
  %250 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %249, ptr noundef nonnull dereferenceable(1) %12) #35
  %251 = load i32, ptr %10, align 4, !tbaa !13
  %252 = add nsw i32 %251, 1
  store i32 %252, ptr %10, align 4, !tbaa !13
  %253 = icmp sgt i32 %251, 8
  br i1 %253, label %268, label %254

254:                                              ; preds = %246, %179, %158, %146
  %255 = getelementptr inbounds %struct.dent, ptr %145, i64 0, i32 2
  %256 = load i64, ptr %255, align 8, !tbaa !66
  %257 = and i64 %256, 1073741824
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %268, label %259

259:                                              ; preds = %254
  %260 = load ptr, ptr %145, align 8, !tbaa !70
  br label %144

261:                                              ; preds = %106, %99, %61, %54, %39, %27
  %262 = load i32, ptr %10, align 4, !tbaa !13
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [120 x i8], ptr %9, i64 %263
  %265 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(1) %12) #35
  %266 = load i32, ptr %10, align 4, !tbaa !13
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr %10, align 4, !tbaa !13
  br label %268

268:                                              ; preds = %261, %254, %246, %179, %11
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %12) #38
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nounwind optsize uwtable
define internal i32 @ins_root_cap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef readonly %6, ptr noundef %7, ptr noundef %8) #0 {
  %10 = alloca [10 x [120 x i8]], align 16
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #38
  store i32 0, ptr %11, align 4, !tbaa !13
  call fastcc void @save_root_cap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %10, ptr noundef nonnull %11) #36
  %12 = load i32, ptr %11, align 4, !tbaa !13
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = zext i32 %12 to i64
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, %15
  br i1 %18, label %24, label %19, !llvm.loop !79

19:                                               ; preds = %16, %14
  %20 = phi i64 [ 0, %14 ], [ %17, %16 ]
  %21 = getelementptr inbounds [10 x [120 x i8]], ptr %10, i64 0, i64 %20
  %22 = call fastcc i32 @insert(ptr noundef nonnull %21) #36, !range !32
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %16

24:                                               ; preds = %19, %16, %9
  %25 = phi i32 [ 0, %9 ], [ 0, %16 ], [ -1, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %10) #38
  ret i32 %25
}

; Function Attrs: nounwind optsize uwtable
define internal void @askmode() #0 {
  %1 = load i32, ptr @fflag, align 4, !tbaa !13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %5 = load ptr, ptr @stdout, align 8, !tbaa !7
  %6 = tail call ptr @freopen(ptr noundef %4, ptr noundef nonnull @.str.38, ptr noundef %5) #35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.39, ptr noundef %10) #39
  tail call void @exit(i32 noundef 1) #40
  unreachable

12:                                               ; preds = %3, %0
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @.str.43)
  store i32 0, ptr @contextoffset, align 4, !tbaa !13
  br label %14

14:                                               ; preds = %130, %12
  %15 = load ptr, ptr @stdout, align 8, !tbaa !7
  %16 = tail call i32 @fflush(ptr noundef %15) #36
  %17 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr @stdin, align 8, !tbaa !7
  br i1 %18, label %20, label %23

20:                                               ; preds = %14
  %21 = tail call ptr @xgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %19) #35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %135, label %26

23:                                               ; preds = %14
  %24 = tail call ptr @fgets(ptr noundef nonnull @contextbufs, i32 noundef 4096, ptr noundef %19) #36
  %25 = icmp eq ptr %24, null
  br i1 %25, label %135, label %26

26:                                               ; preds = %23, %20
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #37
  %28 = trunc i64 %27 to i32
  %29 = shl i64 %27, 32
  %30 = add i64 %29, -4294967296
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !15
  %34 = icmp eq i8 %33, 10
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = add nsw i32 %28, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %37
  store i8 0, ptr %38, align 1, !tbaa !15
  br label %39

39:                                               ; preds = %35, %26
  %40 = phi i32 [ %36, %35 ], [ %28, %26 ]
  %41 = icmp eq i32 %40, 4095
  br i1 %41, label %42, label %75

42:                                               ; preds = %39
  %43 = load i8, ptr getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 4094), align 2, !tbaa !15
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %65, %42
  %46 = phi i64 [ 4095, %42 ], [ %67, %65 ]
  %47 = phi i32 [ %44, %42 ], [ %63, %65 ]
  %48 = and i32 %47, 255
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %49
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %49
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %57, %53, %45
  %62 = load ptr, ptr @stdin, align 8, !tbaa !7
  %63 = tail call i32 @getc(ptr noundef %62) #36
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = trunc i32 %63 to i8
  %67 = add nuw nsw i64 %46, 1
  %68 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %46
  store i8 %66, ptr %68, align 1, !tbaa !15
  %69 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %67
  store i8 0, ptr %69, align 1, !tbaa !15
  %70 = icmp eq i64 %67, 8191
  br i1 %70, label %75, label %45, !llvm.loop !80

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
  %77 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @checkline(ptr noundef %80) #35
  br label %120

81:                                               ; preds = %75
  %82 = load i8, ptr @contextbufs, align 16
  switch i8 %82, label %117 [
    i8 64, label %83
    i8 42, label %83
    i8 38, label %89
    i8 35, label %92
    i8 33, label %93
    i8 37, label %94
    i8 45, label %95
    i8 43, label %96
    i8 126, label %105
    i8 94, label %108
  ]

83:                                               ; preds = %81, %81
  %84 = tail call ptr @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #35
  %85 = tail call ptr @ichartosstr(ptr noundef %84, i32 noundef 1) #35
  %86 = load i8, ptr @contextbufs, align 16, !tbaa !15
  %87 = icmp eq i8 %86, 42
  %88 = zext i1 %87 to i32
  tail call void @treeinsert(ptr noundef %85, i32 noundef 184, i32 noundef %88) #35
  br label %120

89:                                               ; preds = %81
  %90 = tail call ptr @strtosichar(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 0) #35
  tail call void @lowcase(ptr noundef %90) #35
  %91 = tail call ptr @ichartosstr(ptr noundef %90, i32 noundef 1) #35
  tail call void @treeinsert(ptr noundef %91, i32 noundef 184, i32 noundef 1) #35
  br label %120

92:                                               ; preds = %81
  tail call void @treeoutput() #35
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %120

93:                                               ; preds = %81
  store i32 1, ptr @terse, align 4, !tbaa !13
  br label %120

94:                                               ; preds = %81
  store i32 0, ptr @terse, align 4, !tbaa !13
  br label %120

95:                                               ; preds = %81
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i32 0, ptr @tflag, align 4, !tbaa !13
  br label %120

96:                                               ; preds = %81
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  %97 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.41, i64 6)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(6) @.str.42, i64 6)
  %101 = icmp ne i32 %100, 0
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ false, %96 ], [ %101, %99 ]
  %104 = zext i1 %103 to i32
  store i32 %104, ptr @tflag, align 4, !tbaa !13
  br label %120

105:                                              ; preds = %81
  %106 = tail call i32 @findfiletype(ptr noundef nonnull getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), i32 noundef 1, ptr noundef null) #35
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 0)
  store i32 %107, ptr @defdupchar, align 4
  br label %120

108:                                              ; preds = %108, %81
  %109 = phi ptr [ %113, %108 ], [ @contextbufs, %81 ]
  %110 = phi ptr [ %111, %108 ], [ getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), %81 ]
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = load i8, ptr %110, align 1, !tbaa !15
  %113 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 %112, ptr %109, align 1, !tbaa !15
  %114 = icmp eq i8 %112, 0
  br i1 %114, label %115, label %108, !llvm.loop !81

115:                                              ; preds = %108
  store i32 1, ptr @contextoffset, align 4, !tbaa !13
  %116 = add nsw i32 %76, -1
  br label %117

117:                                              ; preds = %115, %81
  %118 = phi i32 [ %116, %115 ], [ %76, %81 ]
  %119 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @checkline(ptr noundef %119) #35
  br label %120

120:                                              ; preds = %117, %105, %102, %95, %94, %93, %92, %89, %83, %79
  %121 = phi i32 [ %76, %79 ], [ %76, %83 ], [ %76, %89 ], [ %76, %92 ], [ %76, %93 ], [ %76, %94 ], [ %76, %95 ], [ %76, %102 ], [ %76, %105 ], [ %118, %117 ]
  %122 = load i32, ptr @contextoffset, align 4
  %123 = add nsw i32 %122, %121
  %124 = select i1 %34, i32 0, i32 %123
  store i32 %124, ptr @contextoffset, align 4, !tbaa !13
  %125 = load i32, ptr @sflag, align 4, !tbaa !13
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %120
  tail call void @stop() #35
  %128 = load i32, ptr @fflag, align 4, !tbaa !13
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %131, %127, %120
  br label %14

131:                                              ; preds = %127
  %132 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @rewind(ptr noundef %132) #36
  %133 = load ptr, ptr @askfilename, align 8, !tbaa !7
  %134 = tail call i32 @creat(ptr noundef %133, i32 noundef 438) #35
  br label %130

135:                                              ; preds = %23, %20
  ret void
}

; Function Attrs: optsize
declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @creat(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @copyout(ptr nocapture noundef %0, i32 noundef %1) #12 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !7
  br label %6

6:                                                ; preds = %23, %4
  %7 = phi ptr [ %25, %23 ], [ %5, %4 ]
  %8 = phi i32 [ %9, %23 ], [ %1, %4 ]
  %9 = add nsw i32 %8, -1
  %10 = load i8, ptr %7, align 1, !tbaa !15
  %11 = sext i8 %10 to i32
  %12 = icmp eq i8 %10, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr @aflag, align 4, !tbaa !13
  %15 = icmp ne i32 %14, 0
  %16 = load i32, ptr @lflag, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @outfile, align 8, !tbaa !7
  %21 = tail call i32 @putc(i32 noundef %11, ptr noundef %20) #36
  %22 = load ptr, ptr %0, align 8, !tbaa !7
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %22, %19 ], [ %7, %13 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %25, ptr %0, align 8, !tbaa !7
  %26 = icmp ugt i32 %8, 1
  br i1 %26, label %6, label %27, !llvm.loop !82

27:                                               ; preds = %23, %6, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal ptr @skipoverword(ptr noundef %0) #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %41, %1
  %5 = phi ptr [ null, %1 ], [ %43, %41 ]
  %6 = phi ptr [ %0, %1 ], [ %44, %41 ]
  %7 = load i1, ptr @TeX_comment, align 4
  br i1 %7, label %8, label %47

8:                                                ; preds = %4
  %9 = load i32, ptr @save_math_mode, align 4, !tbaa !13
  store i32 %9, ptr @math_mode, align 4, !tbaa !13
  %10 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i8 %10, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 false, ptr @TeX_comment, align 4
  br label %47

11:                                               ; preds = %41, %1
  %12 = phi i8 [ %45, %41 ], [ %2, %1 ]
  %13 = phi ptr [ %44, %41 ], [ %0, %1 ]
  %14 = phi ptr [ %43, %41 ], [ null, %1 ]
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @stringcharlen(ptr noundef nonnull %13, i32 noundef 0) #35
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr %13, align 1, !tbaa !15
  %24 = zext i8 %23 to i64
  br label %27

25:                                               ; preds = %19
  %26 = zext i32 %20 to i64
  br label %41

27:                                               ; preds = %22, %11
  %28 = phi i64 [ %24, %22 ], [ %15, %11 ]
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %28
  %34 = load i8, ptr %33, align 1, !tbaa !15
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
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %4, label %11

47:                                               ; preds = %38, %32, %8, %4
  %48 = phi ptr [ %5, %4 ], [ %5, %8 ], [ %14, %38 ], [ %14, %32 ]
  %49 = phi ptr [ %6, %4 ], [ %6, %8 ], [ %13, %38 ], [ %13, %32 ]
  %50 = icmp eq ptr %48, null
  %51 = select i1 %50, ptr %49, ptr %48
  ret ptr %51
}

; Function Attrs: nounwind optsize uwtable
define internal void @checkline(ptr nocapture noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr @contextbufs, ptr @currentchar, align 8, !tbaa !7
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @contextbufs) #37
  %4 = shl i64 %3, 32
  %5 = add i64 %4, -4294967296
  %6 = ashr exact i64 %5, 32
  %7 = getelementptr inbounds [8192 x i8], ptr @contextbufs, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8 0, ptr %7, align 1, !tbaa !15
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i32, ptr @tflag, align 4, !tbaa !13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %123

14:                                               ; preds = %11
  %15 = load i8, ptr @contextbufs, align 16, !tbaa !15
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !15
  %17 = icmp eq i8 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str.5, i64 4)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) getelementptr inbounds ([10 x [8192 x i8]], ptr @contextbufs, i64 0, i64 0, i64 1), ptr noundef nonnull dereferenceable(4) @.str.1.6, i64 4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21, %18
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 5) #35
  %25 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %26 = load i8, ptr %25, align 1, !tbaa !15
  %27 = icmp sgt i8 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = tail call ptr @__ctype_b_loc() #41
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, ptr %30, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !63
  %34 = and i16 %33, 8192
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %47, label %43

36:                                               ; preds = %43
  %37 = load ptr, ptr %29, align 8, !tbaa !7
  %38 = zext i8 %45 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !63
  %41 = and i16 %40, 8192
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %43, !llvm.loop !83

43:                                               ; preds = %36, %28
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #35
  %44 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = icmp sgt i8 %45, 0
  br i1 %46, label %36, label %47, !llvm.loop !83

47:                                               ; preds = %43, %36, %28, %24, %21, %14
  %48 = phi i8 [ %26, %24 ], [ %15, %21 ], [ %15, %14 ], [ %26, %28 ], [ %45, %43 ], [ %45, %36 ]
  %49 = phi ptr [ %25, %24 ], [ @contextbufs, %21 ], [ @contextbufs, %14 ], [ %25, %28 ], [ %44, %43 ], [ %44, %36 ]
  %50 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2, !tbaa !15
  %51 = icmp eq i8 %48, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %47
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(4) @.str.2.7, i64 noundef 3) #37
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(4) @.str.3.8, i64 noundef 3) #37
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(4) @.str.4.9, i64 noundef 3) #37
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %115

62:                                               ; preds = %59, %56, %52
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 4) #35
  %63 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %64 = load i8, ptr %63, align 1, !tbaa !15
  %65 = icmp sgt i8 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = tail call ptr @__ctype_b_loc() #41
  %68 = load ptr, ptr %67, align 8, !tbaa !7
  %69 = zext i8 %64 to i64
  %70 = getelementptr inbounds i16, ptr %68, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !63
  %72 = and i16 %71, 8192
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %89, label %81

74:                                               ; preds = %81
  %75 = load ptr, ptr %67, align 8, !tbaa !7
  %76 = zext i8 %83 to i64
  %77 = getelementptr inbounds i16, ptr %75, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !63
  %79 = and i16 %78, 8192
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %89, label %81, !llvm.loop !84

81:                                               ; preds = %74, %66
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #35
  %82 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = icmp sgt i8 %83, 0
  br i1 %84, label %74, label %85, !llvm.loop !84

85:                                               ; preds = %81, %62
  %86 = phi i8 [ %64, %62 ], [ %83, %81 ]
  %87 = phi ptr [ %63, %62 ], [ %82, %81 ]
  %88 = icmp eq i8 %86, 0
  br i1 %88, label %108, label %89

89:                                               ; preds = %85, %74, %66
  %90 = phi ptr [ %63, %66 ], [ %87, %85 ], [ %82, %74 ]
  %91 = phi i8 [ %64, %66 ], [ %86, %85 ], [ %83, %74 ]
  br label %92

92:                                               ; preds = %104, %89
  %93 = phi ptr [ %105, %104 ], [ %90, %89 ]
  %94 = phi i8 [ %106, %104 ], [ %91, %89 ]
  %95 = icmp sgt i8 %94, -1
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = tail call ptr @__ctype_b_loc() #41
  %98 = load ptr, ptr %97, align 8, !tbaa !7
  %99 = zext i8 %94 to i64
  %100 = getelementptr inbounds i16, ptr %98, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !63
  %102 = and i16 %101, 8192
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %96, %92
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef 1) #35
  %105 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %106 = load i8, ptr %105, align 1, !tbaa !15
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %92, !llvm.loop !85

108:                                              ; preds = %104, %85
  %109 = load i32, ptr @lflag, align 4, !tbaa !13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %917

111:                                              ; preds = %108
  %112 = load i32, ptr @aflag, align 4, !tbaa !13
  %113 = icmp ne i32 %112, 0
  %114 = or i1 %9, %113
  br i1 %114, label %915, label %917

115:                                              ; preds = %96, %59, %47
  %116 = phi i8 [ %48, %47 ], [ %48, %59 ], [ %94, %96 ]
  %117 = phi ptr [ %49, %47 ], [ %49, %59 ], [ %93, %96 ]
  %118 = load i32, ptr @tflag, align 4, !tbaa !13
  %119 = icmp eq i32 %118, 0
  %120 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 2), align 2
  %121 = icmp eq i8 %116, %120
  %122 = select i1 %119, i1 %121, i1 false
  br i1 %122, label %125, label %123

123:                                              ; preds = %131, %115, %11
  %124 = phi ptr [ %117, %115 ], [ @contextbufs, %11 ], [ %128, %131 ]
  br label %161

125:                                              ; preds = %115
  %126 = icmp eq i8 %116, 0
  br i1 %126, label %154, label %127

127:                                              ; preds = %149, %125
  %128 = phi ptr [ %151, %149 ], [ %117, %125 ]
  %129 = phi i8 [ %152, %149 ], [ %116, %125 ]
  %130 = icmp sgt i8 %129, -1
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = tail call ptr @__ctype_b_loc() #41
  %133 = load ptr, ptr %132, align 8, !tbaa !7
  %134 = zext i8 %129 to i64
  %135 = getelementptr inbounds i16, ptr %133, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !63
  %137 = and i16 %136, 8192
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %123

139:                                              ; preds = %131, %127
  %140 = load i32, ptr @aflag, align 4, !tbaa !13
  %141 = icmp ne i32 %140, 0
  %142 = load i32, ptr @lflag, align 4
  %143 = icmp ne i32 %142, 0
  %144 = select i1 %141, i1 true, i1 %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %139
  %146 = sext i8 %129 to i32
  %147 = tail call i32 @putc(i32 noundef %146, ptr noundef %0) #36
  %148 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %149

149:                                              ; preds = %145, %139
  %150 = phi ptr [ %148, %145 ], [ %128, %139 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  store ptr %151, ptr @currentchar, align 8, !tbaa !7
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %127, !llvm.loop !86

154:                                              ; preds = %149, %125
  %155 = load i32, ptr @lflag, align 4, !tbaa !13
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %917

157:                                              ; preds = %154
  %158 = load i32, ptr @aflag, align 4, !tbaa !13
  %159 = icmp ne i32 %158, 0
  %160 = or i1 %9, %159
  br i1 %160, label %915, label %917

161:                                              ; preds = %827, %123
  %162 = phi ptr [ %828, %827 ], [ %124, %123 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %162, ptr %2, align 8, !tbaa !7
  %163 = load i8, ptr %162, align 1, !tbaa !15
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %755, label %165

165:                                              ; preds = %690, %161
  %166 = phi i8 [ %692, %690 ], [ %163, %161 ]
  %167 = phi ptr [ %691, %690 ], [ %162, %161 ]
  %168 = zext i8 %166 to i64
  %169 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !15
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %180, label %172

172:                                              ; preds = %165
  %173 = tail call i32 @stringcharlen(ptr noundef nonnull %167, i32 noundef 0) #35
  %174 = icmp sgt i32 %173, 0
  %175 = load i8, ptr %167, align 1, !tbaa !15
  br i1 %174, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, ptr @tflag, align 4, !tbaa !13
  br label %187

178:                                              ; preds = %172
  %179 = zext i8 %175 to i64
  br label %180

180:                                              ; preds = %178, %165
  %181 = phi i64 [ %179, %178 ], [ %168, %165 ]
  %182 = phi i8 [ %175, %178 ], [ %166, %165 ]
  %183 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %181
  %184 = load i8, ptr %183, align 1, !tbaa !15
  %185 = icmp eq i8 %184, 0
  %186 = load i32, ptr @tflag, align 4, !tbaa !13
  br i1 %185, label %200, label %187

187:                                              ; preds = %180, %176
  %188 = phi i32 [ %186, %180 ], [ %177, %176 ]
  %189 = phi i8 [ %182, %180 ], [ %175, %176 ]
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !15
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = icmp ne i32 %188, 0
  %196 = load i32, ptr @math_mode, align 4
  %197 = and i32 %196, 1
  %198 = icmp ne i32 %197, 0
  %199 = select i1 %195, i1 %198, i1 false
  br i1 %199, label %204, label %755

200:                                              ; preds = %187, %180
  %201 = phi i8 [ %189, %187 ], [ %182, %180 ]
  %202 = phi i32 [ %188, %187 ], [ %186, %180 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %676, label %204

204:                                              ; preds = %200, %194
  %205 = phi i8 [ %201, %200 ], [ %189, %194 ]
  %206 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1, !tbaa !15
  %207 = icmp eq i8 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i1, ptr @TeX_comment, align 4
  br i1 %209, label %672, label %210

210:                                              ; preds = %208
  %211 = load i32, ptr @math_mode, align 4, !tbaa !13
  store i32 %211, ptr @save_math_mode, align 4, !tbaa !13
  %212 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i8 %212, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 true, ptr @TeX_comment, align 4
  br label %672

213:                                              ; preds = %204
  %214 = load i32, ptr @math_mode, align 4, !tbaa !13
  %215 = and i32 %214, 1
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %366, label %217

217:                                              ; preds = %213
  %218 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  %219 = icmp eq i8 %218, 101
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %2) #36, !range !22
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %220
  %224 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %225

225:                                              ; preds = %223, %217
  %226 = phi i8 [ %224, %223 ], [ %218, %217 ]
  %227 = icmp eq i8 %226, 109
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %2) #36, !range !22
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228, %220
  %232 = load i32, ptr @math_mode, align 4, !tbaa !13
  %233 = add nsw i32 %232, -1
  store i32 %233, ptr @math_mode, align 4, !tbaa !13
  br label %360

234:                                              ; preds = %228, %225
  %235 = load ptr, ptr %2, align 8, !tbaa !7
  %236 = load i8, ptr %235, align 1, !tbaa !15
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %755, label %238

238:                                              ; preds = %234
  %239 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !15
  %240 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %241 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 12), align 1
  br label %242

242:                                              ; preds = %250, %238
  %243 = phi i8 [ %236, %238 ], [ %252, %250 ]
  %244 = phi ptr [ %235, %238 ], [ %251, %250 ]
  %245 = icmp eq i8 %243, %239
  %246 = icmp eq i8 %243, %240
  %247 = select i1 %245, i1 true, i1 %246
  %248 = icmp eq i8 %243, %241
  %249 = select i1 %247, i1 true, i1 %248
  br i1 %249, label %254, label %250

250:                                              ; preds = %242
  %251 = getelementptr inbounds i8, ptr %244, i64 1
  %252 = load i8, ptr %251, align 1, !tbaa !15
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %755, label %242, !llvm.loop !87

254:                                              ; preds = %242
  %.lcssa2 = phi ptr [ %244, %242 ]
  %.lcssa1 = phi i1 [ %246, %242 ]
  %.lcssa = phi i1 [ %248, %242 ]
  store ptr %.lcssa2, ptr %2, align 8, !tbaa !7
  br i1 %.lcssa1, label %255, label %260

255:                                              ; preds = %254
  %256 = getelementptr inbounds i8, ptr %.lcssa2, i64 1
  %257 = load i8, ptr %256, align 1, !tbaa !15
  %258 = icmp eq i8 %257, %240
  br i1 %258, label %259, label %355

259:                                              ; preds = %255
  store ptr %256, ptr %2, align 8, !tbaa !7
  br label %355

260:                                              ; preds = %254
  br i1 %.lcssa, label %261, label %266

261:                                              ; preds = %260
  %262 = load i1, ptr @TeX_comment, align 4
  br i1 %262, label %358, label %263

263:                                              ; preds = %261
  %264 = load i32, ptr @math_mode, align 4, !tbaa !13
  store i32 %264, ptr @save_math_mode, align 4, !tbaa !13
  %265 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i8 %265, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 true, ptr @TeX_comment, align 4
  br label %358

266:                                              ; preds = %260
  %267 = getelementptr inbounds i8, ptr %.lcssa2, i64 1
  store ptr %267, ptr %2, align 8, !tbaa !7
  %268 = load i8, ptr %267, align 1, !tbaa !15
  %269 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 1), align 2, !tbaa !15
  %270 = icmp eq i8 %268, %269
  %271 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4
  %272 = icmp eq i8 %268, %271
  %273 = select i1 %270, i1 true, i1 %272
  br i1 %273, label %355, label %274

274:                                              ; preds = %266
  %275 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %267, ptr noundef nonnull @.str.28.10, i32 noundef 4) #36
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %274
  %278 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %267, ptr noundef nonnull @.str.29, i32 noundef 7) #36
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %267, ptr noundef nonnull @.str.30.11, i32 noundef 4) #36
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %267, ptr noundef nonnull @.str.31, i32 noundef 8) #36
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283, %280, %277, %274
  %287 = load i32, ptr @math_mode, align 4, !tbaa !13
  %288 = add nsw i32 %287, 2
  store i32 %288, ptr @math_mode, align 4, !tbaa !13
  br label %324

289:                                              ; preds = %283
  %290 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %267, ptr noundef nonnull @.str.32.12, i32 noundef 6) #36
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %267, ptr noundef nonnull @.str.33.13, i32 noundef 8) #36
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %321

295:                                              ; preds = %292, %289
  %296 = load i32, ptr @math_mode, align 4, !tbaa !13
  %297 = add nsw i32 %296, 2
  store i32 %297, ptr @math_mode, align 4, !tbaa !13
  %298 = load i8, ptr %267, align 1, !tbaa !15
  %299 = icmp eq i8 %298, 0
  %300 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %301 = icmp eq i8 %298, %300
  %302 = select i1 %299, i1 true, i1 %301
  %303 = icmp eq i8 %298, %240
  %304 = select i1 %302, i1 true, i1 %303
  br i1 %304, label %314, label %305

305:                                              ; preds = %305, %295
  %306 = phi ptr [ %307, %305 ], [ %267, %295 ]
  %307 = getelementptr inbounds i8, ptr %306, i64 1
  store ptr %307, ptr %2, align 8, !tbaa !7
  %308 = load i8, ptr %307, align 1, !tbaa !15
  %309 = icmp eq i8 %308, 0
  %310 = icmp eq i8 %308, %300
  %311 = select i1 %309, i1 true, i1 %310
  %312 = icmp eq i8 %308, %240
  %313 = select i1 %311, i1 true, i1 %312
  br i1 %313, label %314, label %305, !llvm.loop !88

314:                                              ; preds = %305, %295
  %315 = phi i8 [ %298, %295 ], [ %308, %305 ]
  %316 = phi ptr [ %267, %295 ], [ %307, %305 ]
  %317 = icmp eq i8 %315, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds i8, ptr %316, i64 1
  store ptr %319, ptr %2, align 8, !tbaa !7
  br label %324

320:                                              ; preds = %314
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %324

321:                                              ; preds = %292
  %322 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %267, ptr noundef nonnull @.str.34.14, i32 noundef 5) #36
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %342, label %347

324:                                              ; preds = %320, %318, %286
  %325 = phi ptr [ %316, %320 ], [ %319, %318 ], [ %267, %286 ]
  %326 = load i8, ptr %325, align 1, !tbaa !15
  %327 = icmp eq i8 %326, 0
  %328 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %329 = icmp eq i8 %326, %328
  %330 = select i1 %327, i1 true, i1 %329
  %331 = icmp eq i8 %326, %240
  %332 = or i1 %331, %330
  br i1 %332, label %355, label %333

333:                                              ; preds = %333, %324
  %334 = phi ptr [ %335, %333 ], [ %325, %324 ]
  %335 = getelementptr inbounds i8, ptr %334, i64 1
  %336 = load i8, ptr %335, align 1, !tbaa !15
  %337 = icmp eq i8 %336, 0
  %338 = icmp eq i8 %336, %328
  %339 = select i1 %337, i1 true, i1 %338
  %340 = icmp eq i8 %336, %240
  %341 = or i1 %340, %339
  br i1 %341, label %354, label %333, !llvm.loop !88

342:                                              ; preds = %321
  %343 = call fastcc i32 @TeX_LR_check(i32 noundef 1, ptr noundef nonnull %2) #36, !range !22
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %355

345:                                              ; preds = %342
  %346 = load ptr, ptr %2, align 8, !tbaa !7
  br label %347

347:                                              ; preds = %345, %321
  %348 = phi ptr [ %346, %345 ], [ %267, %321 ]
  %349 = tail call fastcc i32 @TeX_strncmp(ptr noundef %348, ptr noundef nonnull @.str.27.15, i32 noundef 3) #36
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %358

351:                                              ; preds = %347
  %352 = call fastcc i32 @TeX_math_check(i32 noundef 101, ptr noundef nonnull %2) #36, !range !22
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %358, label %355

354:                                              ; preds = %333
  %.lcssa3 = phi ptr [ %335, %333 ]
  store ptr %.lcssa3, ptr %2, align 8, !tbaa !7
  br label %355

355:                                              ; preds = %354, %351, %342, %324, %266, %259, %255
  %356 = load i32, ptr @math_mode, align 4, !tbaa !13
  %357 = add nsw i32 %356, -1
  store i32 %357, ptr @math_mode, align 4, !tbaa !13
  br label %360

358:                                              ; preds = %351, %347, %263, %261
  %359 = load i32, ptr @math_mode, align 4, !tbaa !13
  br label %360

360:                                              ; preds = %358, %355, %231
  %361 = phi i32 [ %359, %358 ], [ %357, %355 ], [ %233, %231 ]
  %362 = icmp slt i32 %361, 0
  br i1 %362, label %363, label %672

363:                                              ; preds = %360
  %364 = load ptr, ptr @stderr, align 8, !tbaa !7
  %365 = tail call i64 @fwrite(ptr nonnull @.str.16.16, i64 37, i64 1, ptr %364) #42
  store i32 0, ptr @math_mode, align 4, !tbaa !13
  br label %672

366:                                              ; preds = %213
  %367 = icmp sgt i32 %214, 1
  %368 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %369 = icmp eq i8 %205, %368
  %370 = select i1 %367, i1 %369, i1 false
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = shl i32 %214, 7
  %373 = and i32 %372, 16256
  %374 = icmp ult i32 %214, %373
  br i1 %374, label %375, label %377

375:                                              ; preds = %371
  %376 = add nsw i32 %214, -1
  store i32 %376, ptr @math_mode, align 4, !tbaa !13
  br label %672

377:                                              ; preds = %371, %366
  %378 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  %379 = icmp eq i8 %378, 109
  br i1 %379, label %389, label %380

380:                                              ; preds = %377
  %381 = icmp eq i32 %214, 0
  br i1 %381, label %395, label %382

382:                                              ; preds = %380
  %383 = shl i32 %214, 7
  %384 = and i32 %383, 16256
  %385 = icmp slt i32 %214, %384
  br i1 %385, label %395, label %386

386:                                              ; preds = %382
  %387 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %167, ptr noundef nonnull @.str.17.17, i32 noundef 4) #36
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %386, %377
  %390 = call fastcc i32 @TeX_LR_check(i32 noundef 0, ptr noundef nonnull %2) #36, !range !22
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %672, label %392

392:                                              ; preds = %389
  %393 = load i32, ptr @math_mode, align 4, !tbaa !13
  %394 = add nsw i32 %393, -1
  store i32 %394, ptr @math_mode, align 4, !tbaa !13
  br label %672

395:                                              ; preds = %386, %382, %380
  %396 = icmp eq i8 %378, 98
  br i1 %396, label %397, label %407

397:                                              ; preds = %395
  %398 = call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %2) #36, !range !22
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %404

400:                                              ; preds = %397
  %401 = load i8, ptr @LaTeX_Mode, align 1, !tbaa !15
  %402 = load ptr, ptr %2, align 8, !tbaa !7
  %403 = load i8, ptr %402, align 1, !tbaa !15
  br label %407

404:                                              ; preds = %397
  %405 = load i32, ptr @math_mode, align 4, !tbaa !13
  %406 = add nsw i32 %405, 1
  store i32 %406, ptr @math_mode, align 4, !tbaa !13
  br label %672

407:                                              ; preds = %400, %395
  %408 = phi i8 [ %403, %400 ], [ %205, %395 ]
  %409 = phi ptr [ %402, %400 ], [ %167, %395 ]
  %410 = phi i8 [ %401, %400 ], [ %378, %395 ]
  %411 = icmp eq i8 %410, 114
  br i1 %411, label %412, label %431

412:                                              ; preds = %407
  %413 = icmp eq i8 %408, 0
  %414 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %415 = icmp eq i8 %408, %414
  %416 = select i1 %413, i1 true, i1 %415
  %417 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %418 = icmp eq i8 %408, %417
  %419 = select i1 %416, i1 true, i1 %418
  br i1 %419, label %430, label %420

420:                                              ; preds = %420, %412
  %421 = phi ptr [ %422, %420 ], [ %409, %412 ]
  %422 = getelementptr inbounds i8, ptr %421, i64 1
  %423 = load i8, ptr %422, align 1, !tbaa !15
  %424 = icmp eq i8 %423, 0
  %425 = icmp eq i8 %423, %414
  %426 = select i1 %424, i1 true, i1 %425
  %427 = icmp eq i8 %423, %417
  %428 = select i1 %426, i1 true, i1 %427
  br i1 %428, label %429, label %420, !llvm.loop !89

429:                                              ; preds = %420
  %.lcssa11 = phi ptr [ %422, %420 ]
  store ptr %.lcssa11, ptr %2, align 8, !tbaa !7
  br label %430

430:                                              ; preds = %429, %412
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %672

431:                                              ; preds = %407
  %432 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2, !tbaa !15
  %433 = icmp eq i8 %408, %432
  br i1 %433, label %449, label %434

434:                                              ; preds = %431
  %435 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !15
  %436 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1
  br label %440

437:                                              ; preds = %663
  %.lcssa9 = phi ptr [ %659, %663 ]
  %.lcssa8 = phi i8 [ %662, %663 ]
  %438 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2, !tbaa !15
  %439 = icmp eq i8 %.lcssa8, %438
  br i1 %439, label %449, label %440

440:                                              ; preds = %437, %434
  %441 = phi i8 [ %636, %437 ], [ %436, %434 ]
  %442 = phi i8 [ %638, %437 ], [ %435, %434 ]
  %443 = phi i8 [ %639, %437 ], [ %435, %434 ]
  %444 = phi i8 [ %.lcssa8, %437 ], [ %408, %434 ]
  %445 = phi ptr [ %.lcssa9, %437 ], [ %409, %434 ]
  %446 = icmp eq i8 %444, %443
  br i1 %446, label %447, label %635

447:                                              ; preds = %440
  %448 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16), align 1, !tbaa !15
  br label %456

449:                                              ; preds = %437, %431
  %450 = phi ptr [ %409, %431 ], [ %.lcssa9, %437 ]
  %451 = phi i8 [ %408, %431 ], [ %.lcssa8, %437 ]
  %452 = getelementptr inbounds i8, ptr %450, i64 1
  %453 = load i8, ptr %452, align 1, !tbaa !15
  %454 = icmp eq i8 %453, %451
  br i1 %454, label %455, label %669

455:                                              ; preds = %449
  store ptr %452, ptr %2, align 8, !tbaa !7
  br label %669

456:                                              ; preds = %479, %447
  %457 = phi i8 [ %480, %479 ], [ %441, %447 ]
  %458 = phi i8 [ %481, %479 ], [ %442, %447 ]
  %459 = phi i8 [ %482, %479 ], [ %441, %447 ]
  %460 = phi i8 [ %483, %479 ], [ %448, %447 ]
  %461 = phi ptr [ %484, %479 ], [ %445, %447 ]
  %462 = getelementptr inbounds i8, ptr %461, i64 1
  store ptr %462, ptr %2, align 8, !tbaa !7
  %463 = load i8, ptr %462, align 1, !tbaa !15
  %464 = icmp eq i8 %463, %460
  %465 = icmp eq i8 %463, %459
  %466 = select i1 %464, i1 true, i1 %465
  br i1 %466, label %669, label %467

467:                                              ; preds = %456
  %468 = tail call ptr @__ctype_b_loc() #41
  %469 = load ptr, ptr %468, align 8, !tbaa !7
  %470 = sext i8 %463 to i64
  %471 = getelementptr inbounds i16, ptr %469, i64 %470
  %472 = load i16, ptr %471, align 2, !tbaa !63
  %473 = and i16 %472, 1024
  %474 = icmp ne i16 %473, 0
  %475 = icmp eq i8 %463, 64
  %476 = or i1 %475, %474
  br i1 %476, label %487, label %477

477:                                              ; preds = %467
  %478 = getelementptr inbounds i8, ptr %461, i64 2
  br label %479

479:                                              ; preds = %493, %477
  %480 = phi i8 [ %457, %477 ], [ %494, %493 ]
  %481 = phi i8 [ %458, %477 ], [ %498, %493 ]
  %482 = phi i8 [ %459, %477 ], [ %494, %493 ]
  %483 = phi i8 [ %460, %477 ], [ %495, %493 ]
  %484 = phi ptr [ %478, %477 ], [ %497, %493 ]
  store ptr %484, ptr %2, align 8, !tbaa !7
  %485 = load i8, ptr %484, align 1, !tbaa !15
  %486 = icmp eq i8 %485, %481
  br i1 %486, label %456, label %635, !llvm.loop !90

487:                                              ; preds = %467
  %488 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %462, ptr noundef nonnull @.str.34.14, i32 noundef 5) #36
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %499

490:                                              ; preds = %487
  %491 = call fastcc i32 @TeX_math_check(i32 noundef 98, ptr noundef nonnull %2) #36, !range !22
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %669

493:                                              ; preds = %490
  %494 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 2), align 1
  %495 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16), align 1, !tbaa !15
  %496 = load ptr, ptr %2, align 8, !tbaa !7
  %497 = getelementptr inbounds i8, ptr %496, i64 -1
  %498 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 8), align 1, !tbaa !15
  br label %479

499:                                              ; preds = %487
  %.lcssa7 = phi ptr [ %469, %487 ]
  %.lcssa6 = phi ptr [ %461, %487 ]
  %.lcssa5 = phi ptr [ %462, %487 ]
  %.lcssa4 = phi i8 [ %463, %487 ]
  %500 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.27.15, i32 noundef 3) #36
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %559, label %502

502:                                              ; preds = %499
  %503 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.35.18, i32 noundef 6) #36
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %559, label %505

505:                                              ; preds = %502
  %506 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.36.19, i32 noundef 6) #36
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %559, label %508

508:                                              ; preds = %505
  %509 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.37.20, i32 noundef 4) #36
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %559, label %511

511:                                              ; preds = %508
  %512 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.38.21, i32 noundef 3) #36
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %559, label %514

514:                                              ; preds = %511
  %515 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.32.12, i32 noundef 6) #36
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %559, label %517

517:                                              ; preds = %514
  %518 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.39.22, i32 noundef 5) #36
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %559, label %520

520:                                              ; preds = %517
  %521 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.40, i32 noundef 5) #36
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %559, label %523

523:                                              ; preds = %520
  %524 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.41.23, i32 noundef 6) #36
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %559, label %526

526:                                              ; preds = %523
  %527 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.42.24, i32 noundef 7) #36
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %559, label %529

529:                                              ; preds = %526
  %530 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.43.25, i32 noundef 11) #36
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %559, label %532

532:                                              ; preds = %529
  %533 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.44, i32 noundef 13) #36
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %559, label %535

535:                                              ; preds = %532
  %536 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.45, i32 noundef 13) #36
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %559, label %538

538:                                              ; preds = %535
  %539 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.46, i32 noundef 10) #36
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %559, label %541

541:                                              ; preds = %538
  %542 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.47, i32 noundef 9) #36
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %559, label %544

544:                                              ; preds = %541
  %545 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.48, i32 noundef 13) #36
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %559, label %547

547:                                              ; preds = %544
  %548 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.49, i32 noundef 12) #36
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %559, label %550

550:                                              ; preds = %547
  %551 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.50, i32 noundef 7) #36
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %559, label %553

553:                                              ; preds = %550
  %554 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.51, i32 noundef 11) #36
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %559, label %556

556:                                              ; preds = %553
  %557 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.52, i32 noundef 7) #36
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %580

559:                                              ; preds = %556, %553, %550, %547, %544, %541, %538, %535, %532, %529, %526, %523, %520, %517, %514, %511, %508, %505, %502, %499
  %560 = icmp eq i8 %.lcssa4, 0
  %561 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %562 = icmp eq i8 %.lcssa4, %561
  %563 = select i1 %560, i1 true, i1 %562
  %564 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %565 = icmp eq i8 %.lcssa4, %564
  %566 = select i1 %563, i1 true, i1 %565
  br i1 %566, label %576, label %567

567:                                              ; preds = %567, %559
  %568 = phi ptr [ %569, %567 ], [ %.lcssa5, %559 ]
  %569 = getelementptr inbounds i8, ptr %568, i64 1
  store ptr %569, ptr %2, align 8, !tbaa !7
  %570 = load i8, ptr %569, align 1, !tbaa !15
  %571 = icmp eq i8 %570, 0
  %572 = icmp eq i8 %570, %561
  %573 = select i1 %571, i1 true, i1 %572
  %574 = icmp eq i8 %570, %564
  %575 = select i1 %573, i1 true, i1 %574
  br i1 %575, label %576, label %567, !llvm.loop !89

576:                                              ; preds = %567, %559
  %577 = phi i8 [ %.lcssa4, %559 ], [ %570, %567 ]
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %579, label %672

579:                                              ; preds = %576
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %672

580:                                              ; preds = %556
  %581 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.53, i32 noundef 4) #36
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %598, label %583

583:                                              ; preds = %580
  %584 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.54, i32 noundef 10) #36
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %598, label %586

586:                                              ; preds = %583
  %587 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.55, i32 noundef 12) #36
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %598, label %589

589:                                              ; preds = %586
  %590 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.56, i32 noundef 9) #36
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %598, label %592

592:                                              ; preds = %589
  %593 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.57, i32 noundef 11) #36
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %598, label %595

595:                                              ; preds = %592
  %596 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.58, i32 noundef 10) #36
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %609

598:                                              ; preds = %595, %592, %589, %586, %583, %580
  call fastcc void @TeX_skip_parens(ptr noundef nonnull %2) #36
  %599 = load ptr, ptr %2, align 8, !tbaa !7
  %600 = load i8, ptr %599, align 1, !tbaa !15
  %601 = icmp eq i8 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %598
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %672

603:                                              ; preds = %598
  %604 = getelementptr inbounds i8, ptr %599, i64 1
  store ptr %604, ptr %2, align 8, !tbaa !7
  call fastcc void @TeX_skip_parens(ptr noundef nonnull %2) #36
  %605 = load ptr, ptr %2, align 8, !tbaa !7
  %606 = load i8, ptr %605, align 1, !tbaa !15
  %607 = icmp eq i8 %606, 0
  br i1 %607, label %608, label %672

608:                                              ; preds = %603
  store i8 114, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %672

609:                                              ; preds = %595
  %610 = tail call fastcc i32 @TeX_strncmp(ptr noundef nonnull %.lcssa5, ptr noundef nonnull @.str.59, i32 noundef 4) #36
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %623

612:                                              ; preds = %609
  %613 = getelementptr inbounds i8, ptr %.lcssa6, i64 5
  %614 = load i8, ptr %613, align 1, !tbaa !15
  %615 = getelementptr inbounds i8, ptr %.lcssa6, i64 6
  br label %616

616:                                              ; preds = %616, %612
  %617 = phi ptr [ %615, %612 ], [ %622, %616 ]
  store ptr %617, ptr %2, align 8, !tbaa !7
  %618 = load i8, ptr %617, align 1, !tbaa !15
  %619 = icmp eq i8 %618, %614
  %620 = icmp eq i8 %618, 0
  %621 = or i1 %619, %620
  %622 = getelementptr inbounds i8, ptr %617, i64 1
  br i1 %621, label %672, label %616, !llvm.loop !91

623:                                              ; preds = %623, %609
  %624 = phi ptr [ %625, %623 ], [ %.lcssa5, %609 ]
  %625 = getelementptr inbounds i8, ptr %624, i64 1
  store ptr %625, ptr %2, align 8, !tbaa !7
  %626 = load i8, ptr %625, align 1, !tbaa !15
  %627 = sext i8 %626 to i64
  %628 = getelementptr inbounds i16, ptr %.lcssa7, i64 %627
  %629 = load i16, ptr %628, align 2, !tbaa !63
  %630 = and i16 %629, 1024
  %631 = icmp ne i16 %630, 0
  %632 = icmp eq i8 %626, 64
  %633 = or i1 %632, %631
  br i1 %633, label %623, label %634, !llvm.loop !92

634:                                              ; preds = %623
  %.lcssa10 = phi ptr [ %624, %623 ]
  store ptr %.lcssa10, ptr %2, align 8, !tbaa !7
  br label %672

635:                                              ; preds = %479, %440
  %636 = phi i8 [ %441, %440 ], [ %480, %479 ]
  %637 = phi i8 [ %441, %440 ], [ %482, %479 ]
  %638 = phi i8 [ %442, %440 ], [ %481, %479 ]
  %639 = phi i8 [ %443, %440 ], [ %481, %479 ]
  %640 = phi ptr [ %445, %440 ], [ %484, %479 ]
  %641 = phi i8 [ %444, %440 ], [ %485, %479 ]
  %642 = icmp eq i8 %641, %637
  %643 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 6), align 1
  %644 = icmp eq i8 %641, %643
  %645 = select i1 %642, i1 true, i1 %644
  br i1 %645, label %646, label %672

646:                                              ; preds = %635
  %647 = getelementptr inbounds i8, ptr %640, i64 1
  %648 = load i8, ptr %647, align 1, !tbaa !15
  %649 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 11), align 4, !tbaa !15
  %650 = icmp eq i8 %648, %649
  br i1 %650, label %651, label %672

651:                                              ; preds = %646
  store ptr %647, ptr %2, align 8, !tbaa !7
  %652 = load i8, ptr %647, align 1, !tbaa !15
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %672, label %654

654:                                              ; preds = %651
  %655 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 3), align 4
  %656 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 7), align 4
  br label %657

657:                                              ; preds = %667, %654
  %658 = phi ptr [ %659, %667 ], [ %647, %654 ]
  %659 = getelementptr inbounds i8, ptr %658, i64 1
  store ptr %659, ptr %2, align 8, !tbaa !7
  %660 = load i8, ptr %658, align 1, !tbaa !15
  %661 = icmp eq i8 %660, %648
  %662 = load i8, ptr %659, align 1, !tbaa !15
  br i1 %661, label %663, label %667

663:                                              ; preds = %657
  %664 = icmp eq i8 %662, %655
  %665 = icmp eq i8 %662, %656
  %666 = select i1 %664, i1 true, i1 %665
  br i1 %666, label %437, label %667

667:                                              ; preds = %663, %657
  %668 = icmp eq i8 %662, 0
  br i1 %668, label %672, label %657, !llvm.loop !93

669:                                              ; preds = %490, %456, %455, %449
  %670 = load i32, ptr @math_mode, align 4, !tbaa !13
  %671 = add nsw i32 %670, 1
  store i32 %671, ptr @math_mode, align 4, !tbaa !13
  br label %672

672:                                              ; preds = %669, %667, %651, %646, %635, %634, %616, %608, %603, %602, %579, %576, %430, %404, %392, %389, %375, %363, %360, %210, %208
  %673 = load ptr, ptr %2, align 8, !tbaa !7
  %674 = load i8, ptr %673, align 1, !tbaa !15
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %755, label %726

676:                                              ; preds = %200
  %677 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 3), align 1, !tbaa !15
  %678 = icmp eq i8 %201, %677
  br i1 %678, label %679, label %726

679:                                              ; preds = %676
  %680 = getelementptr inbounds i8, ptr %167, i64 1
  %681 = load i8, ptr %680, align 1, !tbaa !15
  %682 = sext i8 %681 to i32
  switch i32 %682, label %712 [
    i32 102, label %683
    i32 115, label %694
  ]

683:                                              ; preds = %679
  %684 = getelementptr inbounds i8, ptr %167, i64 2
  %685 = load i8, ptr %684, align 1, !tbaa !15
  %686 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !15
  %687 = icmp eq i8 %685, %686
  %688 = select i1 %687, i64 5, i64 3
  %689 = getelementptr inbounds i8, ptr %167, i64 %688
  store ptr %689, ptr %2, align 8, !tbaa !7
  br label %690

690:                                              ; preds = %754, %752, %720, %715, %710, %699, %683
  %691 = phi ptr [ %753, %752 ], [ %.lcssa12, %754 ], [ %701, %699 ], [ %711, %710 ], [ %689, %683 ], [ %716, %715 ], [ %725, %720 ]
  %692 = load i8, ptr %691, align 1, !tbaa !15
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %755, label %165, !llvm.loop !94

694:                                              ; preds = %679
  %695 = getelementptr inbounds i8, ptr %167, i64 2
  store ptr %695, ptr %2, align 8, !tbaa !7
  %696 = load i8, ptr %695, align 1, !tbaa !15
  switch i8 %696, label %699 [
    i8 43, label %697
    i8 45, label %697
  ]

697:                                              ; preds = %694, %694
  %698 = getelementptr inbounds i8, ptr %167, i64 3
  br label %699

699:                                              ; preds = %697, %694
  %700 = phi ptr [ %695, %694 ], [ %698, %697 ]
  %701 = getelementptr inbounds i8, ptr %700, i64 1
  store ptr %701, ptr %2, align 8, !tbaa !7
  %702 = tail call ptr @__ctype_b_loc() #41
  %703 = load ptr, ptr %702, align 8, !tbaa !7
  %704 = load i8, ptr %701, align 1, !tbaa !15
  %705 = sext i8 %704 to i64
  %706 = getelementptr inbounds i16, ptr %703, i64 %705
  %707 = load i16, ptr %706, align 2, !tbaa !63
  %708 = and i16 %707, 2048
  %709 = icmp eq i16 %708, 0
  br i1 %709, label %690, label %710

710:                                              ; preds = %699
  %711 = getelementptr inbounds i8, ptr %700, i64 2
  store ptr %711, ptr %2, align 8, !tbaa !7
  br label %690

712:                                              ; preds = %679
  %713 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15), align 4, !tbaa !15
  %714 = icmp eq i8 %681, %713
  br i1 %714, label %715, label %717

715:                                              ; preds = %712
  %716 = getelementptr inbounds i8, ptr %167, i64 4
  store ptr %716, ptr %2, align 8, !tbaa !7
  br label %690

717:                                              ; preds = %712
  %718 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 15, i64 4), align 4, !tbaa !15
  %719 = icmp eq i8 %681, %718
  br i1 %719, label %720, label %726

720:                                              ; preds = %717
  %721 = getelementptr inbounds i8, ptr %167, i64 2
  %722 = load i8, ptr %721, align 1, !tbaa !15
  %723 = icmp eq i8 %722, %713
  %724 = select i1 %723, i64 5, i64 3
  %725 = getelementptr inbounds i8, ptr %167, i64 %724
  store ptr %725, ptr %2, align 8, !tbaa !7
  br label %690

726:                                              ; preds = %717, %676, %672
  %727 = phi i8 [ %201, %676 ], [ %201, %717 ], [ %674, %672 ]
  %728 = phi ptr [ %167, %676 ], [ %167, %717 ], [ %673, %672 ]
  %729 = icmp eq i8 %727, 48
  br i1 %729, label %730, label %752

730:                                              ; preds = %726
  %731 = getelementptr inbounds i8, ptr %728, i64 1
  %732 = load i8, ptr %731, align 1, !tbaa !15
  switch i8 %732, label %752 [
    i8 120, label %733
    i8 88, label %733
  ]

733:                                              ; preds = %730, %730
  %734 = load i32, ptr @terse, align 4, !tbaa !13
  %735 = icmp eq i32 %734, 0
  %736 = load i32, ptr @aflag, align 4
  %737 = icmp ne i32 %736, 0
  %738 = select i1 %735, i1 %737, i1 false
  br i1 %738, label %752, label %739

739:                                              ; preds = %733
  %740 = getelementptr inbounds i8, ptr %728, i64 2
  %741 = tail call ptr @__ctype_b_loc() #41
  %742 = load ptr, ptr %741, align 8, !tbaa !7
  br label %743

743:                                              ; preds = %743, %739
  %744 = phi ptr [ %740, %739 ], [ %751, %743 ]
  %745 = load i8, ptr %744, align 1, !tbaa !15
  %746 = sext i8 %745 to i64
  %747 = getelementptr inbounds i16, ptr %742, i64 %746
  %748 = load i16, ptr %747, align 2, !tbaa !63
  %749 = and i16 %748, 4096
  %750 = icmp eq i16 %749, 0
  %751 = getelementptr inbounds i8, ptr %744, i64 1
  br i1 %750, label %754, label %743, !llvm.loop !95

752:                                              ; preds = %733, %730, %726
  %753 = getelementptr inbounds i8, ptr %728, i64 1
  store ptr %753, ptr %2, align 8, !tbaa !7
  br label %690

754:                                              ; preds = %743
  %.lcssa12 = phi ptr [ %744, %743 ]
  store ptr %.lcssa12, ptr %2, align 8, !tbaa !7
  br label %690

755:                                              ; preds = %690, %672, %250, %234, %194, %161
  %756 = phi i8 [ 0, %161 ], [ 0, %250 ], [ 0, %690 ], [ 0, %672 ], [ %189, %194 ], [ 0, %234 ]
  %757 = phi ptr [ %162, %161 ], [ %251, %250 ], [ %691, %690 ], [ %673, %672 ], [ %167, %194 ], [ %235, %234 ]
  %758 = icmp eq i8 %756, 0
  %759 = load i1, ptr @TeX_comment, align 4
  %760 = select i1 %758, i1 %759, i1 false
  br i1 %760, label %761, label %764

761:                                              ; preds = %755
  %762 = load i32, ptr @save_math_mode, align 4, !tbaa !13
  store i32 %762, ptr @math_mode, align 4, !tbaa !13
  %763 = load i8, ptr @save_LaTeX_Mode, align 1, !tbaa !15
  store i8 %763, ptr @LaTeX_Mode, align 1, !tbaa !15
  store i1 false, ptr @TeX_comment, align 4
  br label %764

764:                                              ; preds = %761, %755
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %765 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %766 = icmp eq ptr %757, %765
  br i1 %766, label %773, label %767

767:                                              ; preds = %764
  %768 = ptrtoint ptr %757 to i64
  %769 = ptrtoint ptr %765 to i64
  %770 = sub i64 %768, %769
  %771 = trunc i64 %770 to i32
  tail call void @copyout(ptr noundef nonnull @currentchar, i32 noundef %771) #35
  %772 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %773

773:                                              ; preds = %767, %764
  %774 = phi ptr [ %772, %767 ], [ %757, %764 ]
  %775 = load i8, ptr %774, align 1, !tbaa !15
  %776 = icmp eq i8 %775, 0
  br i1 %776, label %908, label %777

777:                                              ; preds = %773
  %778 = tail call ptr @skipoverword(ptr noundef nonnull %774) #36
  %779 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %780 = icmp ult ptr %779, %778
  br i1 %780, label %781, label %790

781:                                              ; preds = %781, %777
  %782 = phi ptr [ %786, %781 ], [ @ctoken, %777 ]
  %783 = phi ptr [ %784, %781 ], [ %779, %777 ]
  %784 = getelementptr inbounds i8, ptr %783, i64 1
  store ptr %784, ptr @currentchar, align 8, !tbaa !7
  %785 = load i8, ptr %783, align 1, !tbaa !15
  %786 = getelementptr inbounds i8, ptr %782, i64 1
  store i8 %785, ptr %782, align 1, !tbaa !15
  %787 = icmp ult ptr %784, %778
  %788 = icmp ult ptr %786, getelementptr inbounds ([120 x i8], ptr @ctoken, i64 0, i64 119)
  %789 = select i1 %787, i1 %788, i1 false
  br i1 %789, label %781, label %790, !llvm.loop !96

790:                                              ; preds = %781, %777
  %791 = phi ptr [ @ctoken, %777 ], [ %786, %781 ]
  store i8 0, ptr %791, align 1, !tbaa !15
  %792 = tail call i32 @strtoichar(ptr noundef nonnull @itoken, ptr noundef nonnull @ctoken, i32 noundef 100, i32 noundef 0) #35
  %793 = icmp eq i32 %792, 0
  br i1 %793, label %797, label %794

794:                                              ; preds = %790
  %795 = load ptr, ptr @stderr, align 8, !tbaa !7
  %796 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %795, ptr noundef nonnull @.str.5.26, ptr noundef nonnull @ctoken, i32 noundef 466, ptr noundef nonnull @.str.6.27) #39
  br label %797

797:                                              ; preds = %794, %790
  %798 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @itoken) #37
  %799 = trunc i64 %798 to i32
  %800 = load i32, ptr @lflag, align 4, !tbaa !13
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %816, label %802

802:                                              ; preds = %797
  %803 = load i32, ptr @minword, align 4, !tbaa !13
  %804 = icmp slt i32 %803, %799
  br i1 %804, label %805, label %900

805:                                              ; preds = %802
  %806 = tail call i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  %807 = icmp ne i32 %806, 0
  %808 = load i32, ptr @cflag, align 4
  %809 = icmp ne i32 %808, 0
  %810 = select i1 %807, i1 true, i1 %809
  br i1 %810, label %900, label %811

811:                                              ; preds = %805
  %812 = tail call i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #35
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %814, label %900

814:                                              ; preds = %811
  %815 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7.28, ptr noundef nonnull @ctoken) #36
  br label %900

816:                                              ; preds = %797
  %817 = load i32, ptr @aflag, align 4, !tbaa !13
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %896, label %819

819:                                              ; preds = %816
  %820 = load i32, ptr @minword, align 4, !tbaa !13
  %821 = icmp slt i32 %820, %799
  br i1 %821, label %829, label %822

822:                                              ; preds = %819
  %823 = load i32, ptr @terse, align 4, !tbaa !13
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %825, label %827

825:                                              ; preds = %822
  %826 = tail call i64 @fwrite(ptr nonnull @.str.8.29, i64 2, i64 1, ptr %0)
  br label %827

827:                                              ; preds = %906, %900, %825, %822
  %828 = load ptr, ptr @currentchar, align 8, !tbaa !7
  br label %161

829:                                              ; preds = %819
  %830 = tail call i32 @good(ptr noundef nonnull @itoken, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #35
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %849, label %832

832:                                              ; preds = %829
  %833 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), align 8, !tbaa !53
  %834 = icmp eq ptr %833, null
  %835 = load ptr, ptr getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 2), align 16
  %836 = icmp eq ptr %835, null
  %837 = select i1 %834, i1 %836, i1 false
  %838 = load i32, ptr @terse, align 4, !tbaa !13
  %839 = icmp eq i32 %838, 0
  br i1 %837, label %840, label %843

840:                                              ; preds = %832
  br i1 %839, label %841, label %900

841:                                              ; preds = %840
  %842 = tail call i64 @fwrite(ptr nonnull @.str.8.29, i64 2, i64 1, ptr %0)
  br label %900

843:                                              ; preds = %832
  br i1 %839, label %844, label %900

844:                                              ; preds = %843
  %845 = load ptr, ptr @hits, align 16, !tbaa !59
  %846 = getelementptr inbounds %struct.dent, ptr %845, i64 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !74
  %848 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9.30, ptr noundef %847) #36
  br label %900

849:                                              ; preds = %829
  %850 = tail call i32 @compoundgood(ptr noundef nonnull @itoken, i32 noundef 0) #35
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %857, label %852

852:                                              ; preds = %849
  %853 = load i32, ptr @terse, align 4, !tbaa !13
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %900

855:                                              ; preds = %852
  %856 = tail call i64 @fwrite(ptr nonnull @.str.10.31, i64 2, i64 1, ptr %0)
  br label %900

857:                                              ; preds = %849
  tail call void @makepossibilities(ptr noundef nonnull @itoken) #35
  %858 = load i32, ptr @pcount, align 4, !tbaa !13
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %886, label %860

860:                                              ; preds = %857
  %861 = load i32, ptr @easypossibilities, align 4, !tbaa !13
  %862 = icmp eq i32 %861, 0
  %863 = select i1 %862, i32 63, i32 38
  %864 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %865 = ptrtoint ptr %864 to i64
  %866 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #37
  %867 = add i64 %866, ptrtoint (ptr @contextbufs to i64)
  %868 = sub i64 %865, %867
  %869 = trunc i64 %868 to i32
  %870 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %871 = add nsw i32 %870, %869
  %872 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11.32, i32 noundef %863, ptr noundef nonnull @ctoken, i32 noundef %861, i32 noundef %871) #36
  br label %873

873:                                              ; preds = %878, %860
  %874 = phi i64 [ 0, %860 ], [ %882, %878 ]
  %875 = getelementptr inbounds [100 x [120 x i8]], ptr @possibilities, i64 0, i64 %874
  %876 = load i8, ptr %875, align 8, !tbaa !15
  %877 = icmp eq i8 %876, 0
  br i1 %877, label %884, label %878

878:                                              ; preds = %873
  %879 = icmp eq i64 %874, 0
  %880 = select i1 %879, i32 58, i32 44
  %881 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12.33, i32 noundef %880, ptr noundef nonnull %875) #36
  %882 = add nuw nsw i64 %874, 1
  %883 = icmp eq i64 %882, 100
  br i1 %883, label %884, label %873, !llvm.loop !97

884:                                              ; preds = %878, %873
  %885 = tail call i32 @fputc(i32 10, ptr %0)
  br label %900

886:                                              ; preds = %857
  %887 = load ptr, ptr @currentchar, align 8, !tbaa !7
  %888 = ptrtoint ptr %887 to i64
  %889 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @ctoken) #37
  %890 = add i64 %889, ptrtoint (ptr @contextbufs to i64)
  %891 = sub i64 %888, %890
  %892 = trunc i64 %891 to i32
  %893 = load i32, ptr @contextoffset, align 4, !tbaa !13
  %894 = add nsw i32 %893, %892
  %895 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14.34, ptr noundef nonnull @ctoken, i32 noundef %894) #36
  br label %900

896:                                              ; preds = %816
  %897 = load i32, ptr @quit, align 4, !tbaa !13
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %900

899:                                              ; preds = %896
  tail call void @correct(ptr noundef nonnull @ctoken, i32 noundef 120, ptr noundef nonnull @itoken, i32 noundef 120, ptr noundef nonnull @currentchar) #35
  br label %900

900:                                              ; preds = %899, %896, %886, %884, %855, %852, %844, %843, %841, %840, %814, %811, %805, %802
  %901 = load i32, ptr @aflag, align 4, !tbaa !13
  %902 = icmp ne i32 %901, 0
  %903 = load i32, ptr @lflag, align 4
  %904 = icmp ne i32 %903, 0
  %905 = select i1 %902, i1 true, i1 %904
  br i1 %905, label %827, label %906

906:                                              ; preds = %900
  %907 = tail call i32 @fputs(ptr nonnull @ctoken, ptr %0)
  br label %827

908:                                              ; preds = %773
  %909 = load i32, ptr @lflag, align 4, !tbaa !13
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %917

911:                                              ; preds = %908
  %912 = load i32, ptr @aflag, align 4, !tbaa !13
  %913 = icmp ne i32 %912, 0
  %914 = or i1 %9, %913
  br i1 %914, label %915, label %917

915:                                              ; preds = %911, %157, %111
  %916 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #36
  br label %917

917:                                              ; preds = %915, %911, %908, %157, %154, %111, %108
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_math_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  tail call fastcc void @TeX_open_paren(ptr noundef %1) #36
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = trunc i32 %0 to i8
  store i8 %7, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %56

8:                                                ; preds = %2
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  %9 = load ptr, ptr %1, align 8, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %10, ptr %1, align 8, !tbaa !7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(9) @.str.18.37, i64 noundef 8) #37
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(9) @.str.19.38, i64 noundef 8) #37
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(12) @.str.20.39, i64 noundef 11) #37
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(8) @.str.21.40, i64 noundef 7) #37
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(5) @.str.22.41, i64 noundef 4) #37
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %13, %8
  store ptr %9, ptr %1, align 8, !tbaa !7
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #36
  br label %56

26:                                               ; preds = %22
  %27 = icmp eq i32 %0, 98
  br i1 %27, label %28, label %55

28:                                               ; preds = %26
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(8) @.str.23.42, i64 noundef 7) #37
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(9) @.str.24.35, i64 noundef 8) #37
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %31
  %36 = phi i32 [ 1, %34 ], [ 0, %31 ]
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(9) @.str.25.43, i64 noundef 8) #37
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = add nuw nsw i32 %36, %39
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #36
  %41 = load ptr, ptr %1, align 8, !tbaa !7
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %45, ptr %1, align 8, !tbaa !7
  %46 = icmp eq i32 %40, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #36
  %48 = load ptr, ptr %1, align 8, !tbaa !7
  %49 = load i8, ptr %48, align 1, !tbaa !15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %52, ptr %1, align 8, !tbaa !7
  %53 = icmp eq i32 %40, 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #36
  br label %56

55:                                               ; preds = %26
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #36
  br label %56

56:                                               ; preds = %55, %54, %51, %47, %44, %35, %25, %6
  %57 = phi i32 [ 0, %6 ], [ 1, %25 ], [ 0, %55 ], [ 0, %35 ], [ 0, %44 ], [ 0, %47 ], [ 0, %51 ], [ 0, %54 ]
  ret i32 %57
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @TeX_LR_check(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  tail call fastcc void @TeX_open_paren(ptr noundef %1) #36
  %3 = load ptr, ptr %1, align 8, !tbaa !7
  %4 = load i8, ptr %3, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 109, ptr @LaTeX_Mode, align 1, !tbaa !15
  br label %37

7:                                                ; preds = %2
  store i8 80, ptr @LaTeX_Mode, align 1, !tbaa !15
  %8 = load ptr, ptr %1, align 8, !tbaa !7
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr %1, align 8, !tbaa !7
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.24.35, i64 noundef 8) #37
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %7
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #36
  %13 = load ptr, ptr %1, align 8, !tbaa !7
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %17, ptr %1, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %16, %12
  %19 = icmp eq i32 %0, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  tail call fastcc void @TeX_skip_parens(ptr noundef nonnull %1) #36
  %21 = load i32, ptr @math_mode, align 4, !tbaa !13
  %22 = shl i32 %21, 7
  %23 = add i32 %22, 256
  %24 = and i32 %23, 16256
  %25 = add i32 %21, -126
  %26 = add i32 %25, %24
  store i32 %26, ptr @math_mode, align 4, !tbaa !13
  br label %37

27:                                               ; preds = %18
  %28 = load i32, ptr @math_mode, align 4, !tbaa !13
  %29 = shl i32 %28, 7
  %30 = and i32 %29, 16256
  %31 = sub nsw i32 %28, %30
  store i32 %31, ptr @math_mode, align 4, !tbaa !13
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load ptr, ptr @stderr, align 8, !tbaa !7
  %35 = tail call i64 @fwrite(ptr nonnull @.str.26.36, i64 36, i64 1, ptr %34) #42
  store i32 1, ptr @math_mode, align 4, !tbaa !13
  br label %37

36:                                               ; preds = %7
  store ptr %8, ptr %1, align 8, !tbaa !7
  br label %37

37:                                               ; preds = %36, %33, %27, %20, %6
  %38 = phi i32 [ 0, %6 ], [ 0, %36 ], [ 1, %27 ], [ 1, %33 ], [ 1, %20 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @TeX_strncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #15 {
  %4 = zext i32 %2 to i64
  %5 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %4) #37
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %0, i64 %4
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = icmp sgt i8 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call ptr @__ctype_b_loc() #41
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = zext i8 %9 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !63
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
define internal fastcc void @TeX_skip_parens(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !15
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
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = icmp eq i8 %14, 0
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 5), align 2
  %17 = icmp eq i8 %14, %16
  %18 = select i1 %15, i1 true, i1 %17
  %19 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %20 = icmp eq i8 %14, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11, !llvm.loop !89

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @TeX_open_paren(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !15
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
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = icmp eq i8 %14, 0
  %16 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 4), align 1
  %17 = icmp eq i8 %14, %16
  %18 = select i1 %15, i1 true, i1 %17
  %19 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 16, i64 9), align 2
  %20 = icmp eq i8 %14, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11, !llvm.loop !88

22:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @dumpmode() #0 {
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
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %2) #36
  br label %13

5:                                                ; preds = %0
  %6 = add i8 %1, -127
  %7 = icmp ult i8 %6, -95
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = and i32 %2, 255
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.61, i32 noundef %9) #36
  br label %13

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.62, i32 noundef %2) #36
  br label %13

13:                                               ; preds = %11, %8, %3
  %14 = load i32, ptr @numpflags, align 4, !tbaa !13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14)
  %18 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %19 = load i32, ptr @numpflags, align 4, !tbaa !13
  tail call fastcc void @tbldump(ptr noundef %18, i32 noundef %19) #36
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, ptr @numsflags, align 4, !tbaa !13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  %25 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %26 = load i32, ptr @numsflags, align 4, !tbaa !13
  tail call fastcc void @tbldump(ptr noundef %25, i32 noundef %26) #36
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @tbldump(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %94

4:                                                ; preds = %90, %2
  %5 = phi i32 [ %7, %90 ], [ %1, %2 ]
  %6 = phi ptr [ %8, %90 ], [ %0, %2 ]
  %7 = add nsw i32 %5, -1
  %8 = getelementptr inbounds %struct.flagent, ptr %6, i64 1
  %9 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 6
  %10 = load i16, ptr %9, align 8, !tbaa !98
  %11 = and i16 %10, 1
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, ptr @.str.7.64, ptr @.str.6.65
  %14 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 2
  %15 = load i16, ptr %14, align 8, !tbaa !72
  %16 = sext i16 %15 to i32
  %17 = add nsw i32 %16, 65
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.66, ptr noundef nonnull %13, i32 noundef %17) #36
  %19 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 5
  %20 = load i16, ptr %19, align 2, !tbaa !99
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
  %33 = load i8, ptr %32, align 1, !tbaa !15
  %34 = sext i8 %33 to i32
  %35 = and i32 %26, %34
  %36 = icmp ne i32 %35, 0
  %37 = trunc i64 %31 to i32
  %38 = select i1 %36, i32 %37, i32 %30
  %39 = zext i1 %36 to i32
  %40 = add nuw nsw i32 %29, %39
  %41 = icmp ugt i64 %28, 1
  br i1 %41, label %27, label %42, !llvm.loop !100

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
  %47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12.67) #36
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef 0) #36
  br label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr @stdout, align 8, !tbaa !7
  %50 = tail call i32 @putc(i32 noundef 91, ptr noundef %49) #36
  tail call fastcc void @subsetdump(ptr noundef nonnull %23, i32 noundef %26, i32 noundef %26) #36
  br label %51

51:                                               ; preds = %48, %46, %43, %42
  %52 = phi i32 [ 46, %43 ], [ 93, %48 ], [ 93, %46 ], [ %.lcssa1, %42 ]
  %53 = load ptr, ptr @stdout, align 8, !tbaa !7
  %54 = tail call i32 @putc(i32 noundef %52, ptr noundef %53) #36
  %55 = load i16, ptr %19, align 2, !tbaa !99
  %56 = sext i16 %55 to i32
  %57 = add nsw i32 %56, -1
  %58 = icmp slt i32 %25, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load ptr, ptr @stdout, align 8, !tbaa !7
  %61 = tail call i32 @putc(i32 noundef 32, ptr noundef %60) #36
  %62 = load i16, ptr %19, align 2, !tbaa !99
  %63 = sext i16 %62 to i32
  br label %64

64:                                               ; preds = %59, %51
  %65 = phi i32 [ %56, %51 ], [ %63, %59 ]
  %66 = add nuw nsw i32 %25, 1
  %67 = icmp slt i32 %66, %65
  br i1 %67, label %24, label %71, !llvm.loop !101

68:                                               ; preds = %4
  %69 = load ptr, ptr @stdout, align 8, !tbaa !7
  %70 = tail call i32 @putc(i32 noundef 46, ptr noundef %69) #36
  br label %71

71:                                               ; preds = %68, %64
  %72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.68) #36
  %73 = load ptr, ptr @stdout, align 8, !tbaa !7
  %74 = tail call i32 @putc(i32 noundef 9, ptr noundef %73) #36
  %75 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 3
  %76 = load i16, ptr %75, align 2, !tbaa !55
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %6, align 8, !tbaa !102
  %80 = tail call ptr @ichartosstr(ptr noundef %79, i32 noundef 1) #35
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.69, ptr noundef %80) #36
  br label %82

82:                                               ; preds = %78, %71
  %83 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 4
  %84 = load i16, ptr %83, align 4, !tbaa !57
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.flagent, ptr %6, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !103
  %89 = tail call ptr @ichartosstr(ptr noundef %88, i32 noundef 1) #35
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi ptr [ %89, %86 ], [ @.str.11.70, %82 ]
  %92 = tail call i32 @puts(ptr nonnull dereferenceable(1) %91)
  %93 = icmp sgt i32 %5, 1
  br i1 %93, label %4, label %94, !llvm.loop !104

94:                                               ; preds = %90, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @subsetdump(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  br label %4

4:                                                ; preds = %51, %3
  %5 = phi i32 [ 0, %3 ], [ %55, %51 ]
  %6 = phi ptr [ %0, %3 ], [ %54, %51 ]
  %7 = load i8, ptr %6, align 1, !tbaa !15
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
  %20 = load i8, ptr %19, align 1, !tbaa !15
  %21 = sext i8 %20 to i32
  %22 = xor i32 %21, %2
  %23 = and i32 %22, %1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = add i32 %18, 1
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %17, !llvm.loop !105

29:                                               ; preds = %25, %17
  %30 = phi ptr [ %16, %25 ], [ %19, %17 ]
  %31 = phi i32 [ 128, %25 ], [ %18, %17 ]
  %32 = add nsw i32 %5, 1
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load ptr, ptr @stdout, align 8, !tbaa !7
  %36 = tail call i32 @putc(i32 noundef %5, ptr noundef %35) #36
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
  %45 = tail call i32 @putc(i32 noundef %43, ptr noundef %44) #36
  %46 = add i32 %43, 1
  %47 = icmp eq i32 %46, %31
  br i1 %47, label %51, label %42, !llvm.loop !106

48:                                               ; preds = %37
  %49 = add nsw i32 %31, -1
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13.71, i32 noundef %5, i32 noundef %49) #36
  br label %51

51:                                               ; preds = %48, %42, %40, %34, %4
  %52 = phi ptr [ %30, %34 ], [ %30, %48 ], [ %6, %4 ], [ %30, %40 ], [ %30, %42 ]
  %53 = phi i32 [ %31, %34 ], [ %31, %48 ], [ %5, %4 ], [ %31, %40 ], [ %31, %42 ]
  %54 = getelementptr inbounds i8, ptr %52, i64 1
  %55 = add nsw i32 %53, 1
  %56 = icmp slt i32 %53, 127
  br i1 %56, label %4, label %57, !llvm.loop !107

57:                                               ; preds = %51
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @good(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #38
  %7 = load i8, ptr %0, align 1, !tbaa !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %9, %5
  %10 = phi i8 [ %18, %9 ], [ %7, %5 ]
  %11 = phi ptr [ %13, %9 ], [ %0, %5 ]
  %12 = phi ptr [ %17, %9 ], [ %6, %5 ]
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %16, ptr %12, align 1, !tbaa !15
  %18 = load i8, ptr %13, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !108

20:                                               ; preds = %9, %5
  %21 = phi ptr [ %6, %5 ], [ %17, %9 ]
  store i8 0, ptr %21, align 1, !tbaa !15
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %6 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 0, ptr @numhits, align 4, !tbaa !13
  %26 = load i32, ptr @cflag, align 4, !tbaa !13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = call ptr @ichartosstr(ptr noundef nonnull %0, i32 noundef 0) #35
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef %29) #36
  store ptr %0, ptr @orig_word, align 8, !tbaa !7
  br label %58

31:                                               ; preds = %20
  %32 = call ptr @lookup(ptr noundef nonnull %6, i32 noundef 1) #35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %31
  store ptr %32, ptr @hits, align 16, !tbaa !59
  %35 = icmp eq i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds ([10 x %struct.success], ptr @hits, i64 0, i64 0, i32 1), i8 0, i64 16, i1 false)
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = call i32 @cap_ok(ptr noundef nonnull %0, ptr noundef nonnull @hits, i32 noundef %25) #36, !range !22
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %34
  store i32 1, ptr @numhits, align 4, !tbaa !13
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = or i32 %4, %3
  %45 = and i32 %44, 2
  %46 = icmp ne i32 %45, 0
  %47 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 5), align 2
  %48 = icmp sgt i16 %47, -1
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = zext i16 %47 to i64
  %52 = getelementptr inbounds %struct.dent, ptr %32, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !66
  %54 = shl nuw i64 1, %51
  %55 = and i64 %53, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, ptr @numhits, align 4, !tbaa !13
  br label %58

58:                                               ; preds = %57, %50, %43, %40, %31, %28
  %59 = load i32, ptr @numhits, align 4, !tbaa !13
  %60 = icmp eq i32 %59, 0
  %61 = icmp ne i32 %2, 0
  %62 = or i1 %61, %60
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  call void @chk_aff(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %25, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #35
  %64 = load i32, ptr @cflag, align 4, !tbaa !13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 @putchar(i32 noundef 10) #36
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, ptr @numhits, align 4, !tbaa !13
  br label %70

70:                                               ; preds = %68, %58
  %71 = phi i32 [ %69, %68 ], [ 1, %58 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #38
  ret i32 %71
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nounwind optsize uwtable
define internal i32 @cap_ok(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #38
  %5 = tail call i64 @whatcap(ptr noundef %0) #35
  switch i64 %5, label %27 [
    i64 268435456, label %142
    i64 805306368, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 4
  %12 = load i16, ptr %11, align 4, !tbaa !57
  %13 = sext i16 %12 to i64
  %14 = getelementptr inbounds %struct.flagent, ptr %8, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !55
  %16 = sext i16 %15 to i64
  br label %17

17:                                               ; preds = %10, %6
  %18 = phi i64 [ %13, %10 ], [ 0, %6 ]
  %19 = phi i64 [ %16, %10 ], [ 0, %6 ]
  %20 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.flagent, ptr %21, i64 0, i32 4
  %25 = load i16, ptr %24, align 4, !tbaa !57
  %26 = sext i16 %25 to i64
  br label %27

27:                                               ; preds = %23, %17, %3
  %28 = phi i64 [ 0, %3 ], [ %18, %17 ], [ %18, %23 ]
  %29 = phi i64 [ 0, %3 ], [ %19, %17 ], [ %19, %23 ]
  %30 = phi i64 [ 0, %3 ], [ 0, %17 ], [ %26, %23 ]
  %31 = icmp eq i64 %5, 536870912
  %32 = icmp eq i64 %5, 805306368
  %33 = getelementptr inbounds i8, ptr %0, i64 %28
  %34 = getelementptr inbounds i8, ptr %4, i64 %29
  %35 = icmp sgt i64 %28, 0
  %36 = sext i32 %2 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  %38 = sub nsw i64 0, %28
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = sub nsw i64 0, %30
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = getelementptr inbounds i8, ptr %41, i64 -1
  br label %43

43:                                               ; preds = %138, %27
  %44 = phi ptr [ %1, %27 ], [ %45, %138 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !7
  %46 = getelementptr inbounds %struct.dent, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = and i64 %47, 805306368
  %49 = icmp eq i64 %48, %5
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = icmp eq i64 %48, 0
  %52 = and i1 %31, %51
  br i1 %52, label %53, label %138

53:                                               ; preds = %50
  %54 = call fastcc i32 @entryhasaffixes(ptr noundef nonnull %45, ptr noundef %1) #36, !range !22
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %138, label %142

56:                                               ; preds = %43
  br i1 %32, label %60, label %57

57:                                               ; preds = %56
  %58 = call fastcc i32 @entryhasaffixes(ptr noundef nonnull %45, ptr noundef %1) #36, !range !22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %138, label %142

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.dent, ptr %45, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !74
  %63 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %62, i32 noundef 100, i32 noundef 1) #35
  %64 = load i8, ptr %34, align 1, !tbaa !15
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  br i1 %35, label %71, label %91

70:                                               ; preds = %60
  br i1 %35, label %81, label %91

71:                                               ; preds = %78, %69
  %72 = phi ptr [ %79, %78 ], [ %0, %69 ]
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %71
  %79 = getelementptr inbounds i8, ptr %72, i64 1
  %80 = icmp ult ptr %79, %33
  br i1 %80, label %71, label %91, !llvm.loop !109

81:                                               ; preds = %88, %70
  %82 = phi ptr [ %89, %88 ], [ %0, %70 ]
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %138

88:                                               ; preds = %81
  %89 = getelementptr inbounds i8, ptr %82, i64 1
  %90 = icmp ult ptr %89, %33
  br i1 %90, label %81, label %91, !llvm.loop !110

91:                                               ; preds = %88, %78, %70, %69
  %92 = phi ptr [ %0, %69 ], [ %0, %70 ], [ %89, %88 ], [ %79, %78 ]
  br label %93

93:                                               ; preds = %97, %91
  %94 = phi ptr [ %100, %97 ], [ %92, %91 ]
  %95 = phi ptr [ %98, %97 ], [ %34, %91 ]
  %96 = icmp ult ptr %95, %41
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %95, i64 1
  %99 = load i8, ptr %95, align 1, !tbaa !15
  %100 = getelementptr inbounds i8, ptr %94, i64 1
  %101 = load i8, ptr %94, align 1, !tbaa !15
  %102 = icmp eq i8 %99, %101
  br i1 %102, label %93, label %138, !llvm.loop !111

103:                                              ; preds = %93
  %.lcssa = phi ptr [ %94, %93 ]
  %104 = load i8, ptr %42, align 1, !tbaa !15
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = icmp eq i8 %107, 0
  %109 = load i8, ptr %.lcssa, align 1, !tbaa !15
  %110 = icmp eq i8 %109, 0
  br i1 %108, label %112, label %111

111:                                              ; preds = %103
  br i1 %110, label %135, label %117

112:                                              ; preds = %103
  br i1 %110, label %135, label %128

113:                                              ; preds = %117
  %114 = getelementptr inbounds i8, ptr %119, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %135, label %117, !llvm.loop !112

117:                                              ; preds = %113, %111
  %118 = phi i8 [ %115, %113 ], [ %109, %111 ]
  %119 = phi ptr [ %114, %113 ], [ %.lcssa, %111 ]
  %120 = zext i8 %118 to i64
  %121 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !15
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %113, label %138

124:                                              ; preds = %128
  %125 = getelementptr inbounds i8, ptr %130, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !15
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %135, label %128, !llvm.loop !113

128:                                              ; preds = %124, %112
  %129 = phi i8 [ %126, %124 ], [ %109, %112 ]
  %130 = phi ptr [ %125, %124 ], [ %.lcssa, %112 ]
  %131 = zext i8 %129 to i64
  %132 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !15
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %124, label %138

135:                                              ; preds = %124, %113, %112, %111
  %136 = call fastcc i32 @entryhasaffixes(ptr noundef %45, ptr noundef %1) #36, !range !22
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %135, %128, %117, %97, %81, %71, %57, %53, %50
  %139 = load i64, ptr %46, align 8, !tbaa !66
  %140 = and i64 %139, 1073741824
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %43

142:                                              ; preds = %138, %135, %57, %53, %3
  %143 = phi i32 [ 1, %3 ], [ 0, %138 ], [ 1, %135 ], [ 1, %57 ], [ 1, %53 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #38
  ret i32 %143
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @entryhasaffixes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #18 {
  %3 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.flagent, ptr %4, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !72
  %11 = sext i16 %10 to i64
  %12 = and i64 %11, 4294967295
  %13 = shl nuw i64 1, %12
  %14 = and i64 %13, %8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %6, %2
  %17 = getelementptr inbounds %struct.success, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !66
  %23 = getelementptr inbounds %struct.flagent, ptr %18, i64 0, i32 2
  %24 = load i16, ptr %23, align 8, !tbaa !72
  %25 = sext i16 %24 to i64
  %26 = and i64 %25, 4294967295
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %22
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20, %16
  br label %31

31:                                               ; preds = %30, %20, %6
  %32 = phi i32 [ 1, %30 ], [ 0, %6 ], [ 0, %20 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal void @flagpr(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #37
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %6
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
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
  br i1 %24, label %25, label %42, !llvm.loop !114

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %23, %22 ], [ %7, %20 ]
  %27 = load i8, ptr %26, align 1, !tbaa !15
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %22, label %180

32:                                               ; preds = %35
  %33 = getelementptr inbounds i8, ptr %36, i64 1
  %34 = icmp ult ptr %33, %13
  br i1 %34, label %35, label %42, !llvm.loop !115

35:                                               ; preds = %32, %21
  %36 = phi ptr [ %33, %32 ], [ %7, %21 ]
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %32, label %180

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
  %52 = load i8, ptr %51, align 1, !tbaa !15
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = icmp eq i8 %55, 0
  %57 = load i8, ptr %50, align 1, !tbaa !15
  %58 = icmp eq i8 %57, 0
  br i1 %56, label %60, label %59

59:                                               ; preds = %44
  br i1 %58, label %83, label %65

60:                                               ; preds = %44
  br i1 %58, label %83, label %76

61:                                               ; preds = %65
  %62 = getelementptr inbounds i8, ptr %67, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %83, label %65, !llvm.loop !116

65:                                               ; preds = %61, %59
  %66 = phi i8 [ %63, %61 ], [ %57, %59 ]
  %67 = phi ptr [ %62, %61 ], [ %50, %59 ]
  %68 = zext i8 %66 to i64
  %69 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !15
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %61, label %180

72:                                               ; preds = %76
  %73 = getelementptr inbounds i8, ptr %78, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76, !llvm.loop !117

76:                                               ; preds = %72, %60
  %77 = phi i8 [ %74, %72 ], [ %57, %60 ]
  %78 = phi ptr [ %73, %72 ], [ %50, %60 ]
  %79 = zext i8 %77 to i64
  %80 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %72, label %180

83:                                               ; preds = %72, %61, %60, %59, %42
  %84 = tail call i32 @putchar(i32 noundef 32) #36
  %85 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %86 = sext i32 %3 to i64
  %87 = getelementptr inbounds i8, ptr %85, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !15
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = icmp eq i8 %91, 0
  %93 = icmp sgt i32 %2, 0
  br i1 %92, label %95, label %94

94:                                               ; preds = %83
  br i1 %93, label %96, label %121

95:                                               ; preds = %83
  br i1 %93, label %107, label %121

96:                                               ; preds = %96, %94
  %97 = phi ptr [ %100, %96 ], [ %0, %94 ]
  %98 = phi i32 [ %99, %96 ], [ %2, %94 ]
  %99 = add nsw i32 %98, -1
  %100 = getelementptr inbounds i8, ptr %97, i64 1
  %101 = load i8, ptr %97, align 1, !tbaa !15
  %102 = zext i8 %101 to i32
  %103 = tail call ptr @printichar(i32 noundef %102) #35
  %104 = load ptr, ptr @stdout, align 8, !tbaa !7
  %105 = tail call i32 @fputs(ptr noundef %103, ptr noundef %104) #36
  %106 = icmp ugt i32 %98, 1
  br i1 %106, label %96, label %121, !llvm.loop !118

107:                                              ; preds = %107, %95
  %108 = phi ptr [ %111, %107 ], [ %0, %95 ]
  %109 = phi i32 [ %110, %107 ], [ %2, %95 ]
  %110 = add nsw i32 %109, -1
  %111 = getelementptr inbounds i8, ptr %108, i64 1
  %112 = load i8, ptr %108, align 1, !tbaa !15
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !15
  %116 = zext i8 %115 to i32
  %117 = tail call ptr @printichar(i32 noundef %116) #35
  %118 = load ptr, ptr @stdout, align 8, !tbaa !7
  %119 = tail call i32 @fputs(ptr noundef %117, ptr noundef %118) #36
  %120 = icmp ugt i32 %109, 1
  br i1 %120, label %107, label %121, !llvm.loop !119

121:                                              ; preds = %107, %96, %95, %94
  %122 = phi ptr [ %0, %95 ], [ %0, %94 ], [ %111, %107 ], [ %100, %96 ]
  %123 = add i32 %5, %3
  %124 = sub i32 %9, %123
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %126, %121
  %127 = phi ptr [ %137, %126 ], [ %122, %121 ]
  %128 = phi ptr [ %131, %126 ], [ %87, %121 ]
  %129 = phi i32 [ %130, %126 ], [ %124, %121 ]
  %130 = add nsw i32 %129, -1
  %131 = getelementptr inbounds i8, ptr %128, i64 1
  %132 = load i8, ptr %128, align 1, !tbaa !15
  %133 = zext i8 %132 to i32
  %134 = tail call ptr @printichar(i32 noundef %133) #35
  %135 = load ptr, ptr @stdout, align 8, !tbaa !7
  %136 = tail call i32 @fputs(ptr noundef %134, ptr noundef %135) #36
  %137 = getelementptr inbounds i8, ptr %127, i64 1
  %138 = icmp ugt i32 %129, 1
  br i1 %138, label %126, label %139, !llvm.loop !120

139:                                              ; preds = %126, %121
  %140 = phi ptr [ %87, %121 ], [ %131, %126 ]
  %141 = phi ptr [ %122, %121 ], [ %137, %126 ]
  %142 = load ptr, ptr @orig_word, align 8, !tbaa !7
  %143 = icmp ugt ptr %140, %142
  %144 = sext i1 %143 to i64
  %145 = getelementptr inbounds i8, ptr %140, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !15
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !15
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load i8, ptr %141, align 1, !tbaa !15
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %171, label %158

154:                                              ; preds = %139
  %155 = tail call ptr @ichartosstr(ptr noundef %141, i32 noundef 0) #35
  %156 = load ptr, ptr @stdout, align 8, !tbaa !7
  %157 = tail call i32 @fputs(ptr noundef %155, ptr noundef %156) #36
  br label %171

158:                                              ; preds = %158, %151
  %159 = phi i8 [ %169, %158 ], [ %152, %151 ]
  %160 = phi ptr [ %161, %158 ], [ %141, %151 ]
  %161 = getelementptr inbounds i8, ptr %160, i64 1
  %162 = zext i8 %159 to i64
  %163 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !15
  %165 = zext i8 %164 to i32
  %166 = tail call ptr @printichar(i32 noundef %165) #35
  %167 = load ptr, ptr @stdout, align 8, !tbaa !7
  %168 = tail call i32 @fputs(ptr noundef %166, ptr noundef %167) #36
  %169 = load i8, ptr %161, align 1, !tbaa !15
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %158, !llvm.loop !121

171:                                              ; preds = %158, %154, %151
  %172 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !122
  %173 = sext i8 %172 to i32
  %174 = tail call i32 @putchar(i32 noundef %173) #36
  br i1 %10, label %175, label %177

175:                                              ; preds = %171
  %176 = tail call i32 @putchar(i32 noundef %1) #36
  br label %177

177:                                              ; preds = %175, %171
  br i1 %43, label %178, label %180

178:                                              ; preds = %177
  %179 = tail call i32 @putchar(i32 noundef %4) #36
  br label %180

180:                                              ; preds = %178, %177, %76, %65, %35, %25
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @hash(ptr nocapture noundef readonly %0, i32 noundef %1) #19 {
  %3 = getelementptr i8, ptr %0, i64 4
  br label %4

4:                                                ; preds = %10, %2
  %5 = phi i32 [ 3, %2 ], [ %18, %10 ]
  %6 = phi i64 [ 0, %2 ], [ %17, %10 ]
  %7 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %4
  %11 = shl i64 %6, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = zext i8 %8 to i64
  %14 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = zext i8 %15 to i64
  %17 = or i64 %11, %16
  %18 = add nsw i32 %5, -1
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %20, label %4, !llvm.loop !123

20:                                               ; preds = %10
  %.lcssa = phi i64 [ %17, %10 ]
  %21 = load i8, ptr %3, align 1, !tbaa !15
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
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = zext i8 %34 to i64
  %36 = xor i64 %30, %35
  %37 = load i8, ptr %31, align 1, !tbaa !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %23, !llvm.loop !124

39:                                               ; preds = %23, %20, %4
  %40 = phi i64 [ %.lcssa, %20 ], [ %36, %23 ], [ %6, %4 ]
  %41 = sext i32 %1 to i64
  %42 = urem i64 %40, %41
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca %struct.stat, align 8
  %5 = alloca [4 x i8], align 4
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  store ptr %6, ptr @Cmd, align 8, !tbaa !7
  store i32 0, ptr @Trynum, align 4, !tbaa !13
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.77) #35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @index(ptr noundef nonnull %7, i32 noundef 47) #37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %7) #35
  br label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1.78, ptr noundef nonnull @.str.2.79, ptr noundef nonnull %7) #35
  br label %16

16:                                               ; preds = %14, %12
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @main.libdictname, ptr noundef nonnull dereferenceable(1) %7) #35
  %18 = tail call ptr @rindex(ptr noundef nonnull %7, i32 noundef 46) #37
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(6) @.str.3.80) #37
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %16
  %24 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %25 = getelementptr inbounds i8, ptr @hashname, i64 %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %25, ptr noundef nonnull align 1 dereferenceable(6) @.str.3.80, i64 6, i1 false)
  br label %26

26:                                               ; preds = %23, %20
  %27 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 47) #37
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  %30 = select i1 %28, ptr @main.libdictname, ptr %29
  store ptr %30, ptr @LibDict, align 8, !tbaa !7
  %31 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #37
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  store i8 0, ptr %31, align 1, !tbaa !15
  br label %36

34:                                               ; preds = %2
  %35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1.78, ptr noundef nonnull @.str.2.79, ptr noundef nonnull @.str.4.81) #35
  br label %36

36:                                               ; preds = %34, %33, %26
  %37 = getelementptr inbounds ptr, ptr %1, i64 1
  %38 = add nsw i32 %0, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %421, label %40

40:                                               ; preds = %412, %36
  %41 = phi i32 [ %419, %412 ], [ %38, %36 ]
  %42 = phi ptr [ %418, %412 ], [ %37, %36 ]
  %43 = phi i32 [ %417, %412 ], [ %0, %36 ]
  %44 = phi ptr [ %416, %412 ], [ null, %36 ]
  %45 = phi ptr [ %415, %412 ], [ null, %36 ]
  %46 = phi ptr [ %414, %412 ], [ null, %36 ]
  %47 = phi ptr [ %413, %412 ], [ %1, %36 ]
  %48 = load ptr, ptr %42, align 8, !tbaa !7
  %49 = load i8, ptr %48, align 1, !tbaa !15
  %50 = icmp ne i8 %49, 45
  br i1 %50, label %421, label %51

51:                                               ; preds = %40
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #37
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds i8, ptr %48, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = sext i8 %55 to i32
  switch i32 %56, label %411 [
    i32 118, label %57
    i32 110, label %163
    i32 116, label %169
    i32 84, label %175
    i32 65, label %186
    i32 97, label %190
    i32 68, label %196
    i32 101, label %204
    i32 99, label %225
    i32 98, label %235
    i32 120, label %239
    i32 102, label %243
    i32 76, label %263
    i32 108, label %279
    i32 115, label %285
    i32 83, label %291
    i32 66, label %295
    i32 67, label %299
    i32 80, label %303
    i32 109, label %307
    i32 78, label %311
    i32 77, label %315
    i32 112, label %319
    i32 100, label %337
    i32 86, label %382
    i32 119, label %386
    i32 87, label %397
  ]

57:                                               ; preds = %51
  %.lcssa30 = phi i32 [ %53, %51 ]
  %.lcssa1 = phi ptr [ %42, %51 ]
  %58 = icmp sgt i32 %.lcssa30, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  tail call fastcc void @usage() #36
  unreachable

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %69, %60 ], [ @.str.139, %57 ]
  %62 = phi ptr [ %63, %60 ], [ @Version_ID, %57 ]
  %63 = getelementptr inbounds ptr, ptr %62, i64 1
  %64 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(5) @.str.5.82, i64 noundef 5) #37
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i64 5, i64 0
  %67 = getelementptr inbounds i8, ptr %61, i64 %66
  %68 = tail call i32 @puts(ptr nonnull dereferenceable(1) %67)
  %69 = load ptr, ptr %63, align 8, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %60, !llvm.loop !125

71:                                               ; preds = %60
  %72 = load ptr, ptr %.lcssa1, align 8, !tbaa !7
  %73 = getelementptr inbounds i8, ptr %72, i64 2
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = icmp eq i8 %74, 118
  br i1 %75, label %76, label %162

76:                                               ; preds = %71
  %77 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.83)
  %78 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.190)
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.84, ptr noundef nonnull @.str.10.85) #36
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.86, ptr noundef nonnull @.str.12.87) #36
  %81 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.191)
  %82 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.192)
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15.88, ptr noundef nonnull @.str.16.89) #36
  %84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17.90, ptr noundef nonnull @.str.18.91) #36
  %85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.193)
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.194)
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21.92, i32 noundef 10) #36
  %88 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22.93, ptr noundef nonnull @.str.23.94) #36
  %89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24.95, ptr noundef nonnull @.str.4.81) #36
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25.96, ptr noundef nonnull @.str.26.97) #36
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27.98, ptr noundef nonnull @.str.28.99) #36
  %92 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29.100, i32 noundef 0) #36
  %93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30.101, ptr noundef nonnull @.str.31.102) #36
  %94 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32.103, ptr noundef nonnull @.str.33.104) #36
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34.105, i32 noundef 0) #36
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35.106, ptr noundef nonnull @.str.36.107) #36
  %97 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37.108, ptr noundef nonnull @.str.38.109) #36
  %98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39.110, ptr noundef nonnull @.str.40.111) #36
  %99 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.195)
  %100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.196)
  %101 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.197)
  %102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.112, ptr noundef nonnull @.str.3.80) #36
  %103 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45.113, ptr noundef nonnull @.str.46.114) #36
  %104 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.198)
  %105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48.115, ptr noundef nonnull @.str.49.116) #36
  %106 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50.117, i32 noundef 100) #36
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51.118, ptr noundef nonnull @.str.52.119) #36
  %108 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53.120, ptr noundef nonnull @.str.2.79) #36
  %109 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54.121, ptr noundef nonnull @.str.55.122) #36
  %110 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56.123, ptr noundef nonnull @.str.57.124) #36
  %111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58.125, ptr noundef nonnull @.str.55.122) #36
  %112 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59.126, ptr noundef nonnull @.str.60.127) #36
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, ptr noundef nonnull @.str.62) #36
  %114 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef 4088) #36
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef nonnull @.str.65) #36
  %116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef nonnull @.str.67) #36
  %117 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68, ptr noundef nonnull @.str.69) #36
  %118 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, ptr noundef nonnull @.str.71) #36
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef 32) #36
  %120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, ptr noundef nonnull @.str.74.128) #36
  %121 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef 32) #36
  %122 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76, ptr noundef nonnull @.str.77.129) #36
  %123 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef 20) #36
  %124 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef 10) #36
  %125 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80.130, i32 noundef 5) #36
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81.131, i32 noundef 255) #36
  %127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82.132, i32 noundef 4096) #36
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83.133, i32 noundef 70) #36
  %129 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84.134, i32 noundef 4) #36
  %130 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85.135, i32 noundef 10) #36
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef 100) #36
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef 10) #36
  %133 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i32 noundef 10) #36
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.89, i32 noundef 0) #36
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef 2) #36
  %136 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.199)
  %137 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, i32 noundef 1) #36
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef 0) #36
  %139 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.94, ptr noundef nonnull @.str.95) #36
  %140 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.200)
  %141 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.201)
  %142 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.202)
  %143 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, ptr noundef nonnull @.str.100) #36
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull @.str.31.102) #36
  %145 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull @.str.33.104) #36
  %146 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.203)
  %147 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, ptr noundef nonnull @.str.105) #36
  %148 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.204)
  %149 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.205)
  %150 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef nonnull @.str.55.122) #36
  %151 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef nonnull @.str.110) #36
  %152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.111, i32 noundef 1000) #36
  %153 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, ptr noundef nonnull @.str.113) #36
  %154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, ptr noundef nonnull @.str.115) #36
  %155 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, ptr noundef nonnull @.str.55.122) #36
  %156 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, ptr noundef nonnull @.str.118) #36
  %157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.119, ptr noundef nonnull @.str.120) #36
  %158 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.206)
  %159 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.207)
  %160 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.123, ptr noundef nonnull @.str.124) #36
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.125, ptr noundef nonnull @.str.126) #36
  br label %162

162:                                              ; preds = %76, %71
  tail call void @exit(i32 noundef 0) #40
  unreachable

163:                                              ; preds = %51
  %164 = icmp sgt i32 %53, 2
  br i1 %164, label %165, label %166

165:                                              ; preds = %163
  tail call fastcc void @usage() #36
  unreachable

166:                                              ; preds = %163
  store i32 0, ptr @tflag, align 4, !tbaa !13
  store i32 0, ptr @deftflag, align 4, !tbaa !13
  %167 = icmp eq ptr %44, null
  %168 = select i1 %167, ptr @.str.127, ptr %44
  br label %412

169:                                              ; preds = %51
  %170 = icmp sgt i32 %53, 2
  br i1 %170, label %171, label %172

171:                                              ; preds = %169
  tail call fastcc void @usage() #36
  unreachable

172:                                              ; preds = %169
  store i32 1, ptr @tflag, align 4, !tbaa !13
  store i32 1, ptr @deftflag, align 4, !tbaa !13
  %173 = icmp eq ptr %44, null
  %174 = select i1 %173, ptr @.str.128, ptr %44
  br label %412

175:                                              ; preds = %51
  %176 = getelementptr inbounds i8, ptr %48, i64 2
  %177 = load i8, ptr %176, align 1, !tbaa !15
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %412

179:                                              ; preds = %175
  %180 = add nsw i32 %43, -2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  tail call fastcc void @usage() #36
  unreachable

183:                                              ; preds = %179
  %184 = getelementptr inbounds ptr, ptr %47, i64 2
  %185 = load ptr, ptr %184, align 8, !tbaa !7
  br label %412

186:                                              ; preds = %51
  %187 = icmp sgt i32 %53, 2
  br i1 %187, label %188, label %189

188:                                              ; preds = %186
  tail call fastcc void @usage() #36
  unreachable

189:                                              ; preds = %186
  store i32 1, ptr @incfileflag, align 4, !tbaa !13
  store i32 1, ptr @aflag, align 4, !tbaa !13
  br label %412

190:                                              ; preds = %51
  %191 = icmp sgt i32 %53, 2
  br i1 %191, label %192, label %193

192:                                              ; preds = %190
  tail call fastcc void @usage() #36
  unreachable

193:                                              ; preds = %190
  %194 = load i32, ptr @aflag, align 4, !tbaa !13
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr @aflag, align 4, !tbaa !13
  br label %412

196:                                              ; preds = %51
  %197 = icmp sgt i32 %53, 2
  br i1 %197, label %198, label %199

198:                                              ; preds = %196
  tail call fastcc void @usage() #36
  unreachable

199:                                              ; preds = %196
  %200 = load i32, ptr @dumpflag, align 4, !tbaa !13
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr @dumpflag, align 4, !tbaa !13
  %202 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr @nodictflag, align 4, !tbaa !13
  br label %412

204:                                              ; preds = %51
  %205 = icmp sgt i32 %53, 3
  br i1 %205, label %206, label %207

206:                                              ; preds = %204
  tail call fastcc void @usage() #36
  unreachable

207:                                              ; preds = %204
  store i32 1, ptr @eflag, align 4, !tbaa !13
  %208 = getelementptr inbounds i8, ptr %48, i64 2
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = sext i8 %209 to i32
  %211 = icmp eq i8 %209, 101
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = add i8 %209, -49
  %214 = icmp ult i8 %213, 4
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = add nsw i32 %210, -48
  br label %220

217:                                              ; preds = %212
  %218 = icmp eq i8 %209, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %217
  tail call fastcc void @usage() #36
  unreachable

220:                                              ; preds = %215, %207
  %221 = phi i32 [ %216, %215 ], [ 2, %207 ]
  store i32 %221, ptr @eflag, align 4, !tbaa !13
  br label %222

222:                                              ; preds = %220, %217
  %223 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr @nodictflag, align 4, !tbaa !13
  br label %412

225:                                              ; preds = %51
  %226 = icmp sgt i32 %53, 2
  br i1 %226, label %227, label %228

227:                                              ; preds = %225
  tail call fastcc void @usage() #36
  unreachable

228:                                              ; preds = %225
  %229 = load i32, ptr @cflag, align 4, !tbaa !13
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr @cflag, align 4, !tbaa !13
  %231 = load i32, ptr @lflag, align 4, !tbaa !13
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr @lflag, align 4, !tbaa !13
  %233 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr @nodictflag, align 4, !tbaa !13
  br label %412

235:                                              ; preds = %51
  %236 = icmp sgt i32 %53, 2
  br i1 %236, label %237, label %238

237:                                              ; preds = %235
  tail call fastcc void @usage() #36
  unreachable

238:                                              ; preds = %235
  store i32 0, ptr @xflag, align 4, !tbaa !13
  br label %412

239:                                              ; preds = %51
  %240 = icmp sgt i32 %53, 2
  br i1 %240, label %241, label %242

241:                                              ; preds = %239
  tail call fastcc void @usage() #36
  unreachable

242:                                              ; preds = %239
  store i32 1, ptr @xflag, align 4, !tbaa !13
  br label %412

243:                                              ; preds = %51
  %244 = load i32, ptr @fflag, align 4, !tbaa !13
  %245 = add nsw i32 %244, 1
  store i32 %245, ptr @fflag, align 4, !tbaa !13
  %246 = getelementptr inbounds i8, ptr %48, i64 2
  %247 = load i8, ptr %246, align 1, !tbaa !15
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %243
  %250 = add nsw i32 %43, -2
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  tail call fastcc void @usage() #36
  unreachable

253:                                              ; preds = %249
  %254 = getelementptr inbounds ptr, ptr %47, i64 2
  %255 = load ptr, ptr %254, align 8, !tbaa !7
  br label %256

256:                                              ; preds = %253, %243
  %257 = phi ptr [ %254, %253 ], [ %42, %243 ]
  %258 = phi ptr [ %255, %253 ], [ %246, %243 ]
  %259 = phi i32 [ %250, %253 ], [ %41, %243 ]
  store ptr %258, ptr @askfilename, align 8, !tbaa !7
  %260 = load i8, ptr %258, align 1, !tbaa !15
  %261 = icmp eq i8 %260, 0
  %262 = select i1 %261, ptr null, ptr %258
  store ptr %262, ptr @askfilename, align 8
  br label %412

263:                                              ; preds = %51
  %264 = getelementptr inbounds i8, ptr %48, i64 2
  %265 = load i8, ptr %264, align 1, !tbaa !15
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %274

267:                                              ; preds = %263
  %268 = add nsw i32 %43, -2
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  tail call fastcc void @usage() #36
  unreachable

271:                                              ; preds = %267
  %272 = getelementptr inbounds ptr, ptr %47, i64 2
  %273 = load ptr, ptr %272, align 8, !tbaa !7
  br label %274

274:                                              ; preds = %271, %263
  %275 = phi ptr [ %272, %271 ], [ %42, %263 ]
  %276 = phi ptr [ %273, %271 ], [ %264, %263 ]
  %277 = phi i32 [ %268, %271 ], [ %41, %263 ]
  %278 = tail call i32 @atoi(ptr nocapture noundef %276) #37
  store i32 %278, ptr @contextsize, align 4, !tbaa !13
  br label %412

279:                                              ; preds = %51
  %280 = icmp sgt i32 %53, 2
  br i1 %280, label %281, label %282

281:                                              ; preds = %279
  tail call fastcc void @usage() #36
  unreachable

282:                                              ; preds = %279
  %283 = load i32, ptr @lflag, align 4, !tbaa !13
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr @lflag, align 4, !tbaa !13
  br label %412

285:                                              ; preds = %51
  %286 = icmp sgt i32 %53, 2
  br i1 %286, label %287, label %288

287:                                              ; preds = %285
  tail call fastcc void @usage() #36
  unreachable

288:                                              ; preds = %285
  %289 = load i32, ptr @sflag, align 4, !tbaa !13
  %290 = add nsw i32 %289, 1
  store i32 %290, ptr @sflag, align 4, !tbaa !13
  br label %412

291:                                              ; preds = %51
  %292 = icmp sgt i32 %53, 2
  br i1 %292, label %293, label %294

293:                                              ; preds = %291
  tail call fastcc void @usage() #36
  unreachable

294:                                              ; preds = %291
  store i32 0, ptr @sortit, align 4, !tbaa !13
  br label %412

295:                                              ; preds = %51
  %296 = icmp sgt i32 %53, 2
  br i1 %296, label %297, label %298

297:                                              ; preds = %295
  tail call fastcc void @usage() #36
  unreachable

298:                                              ; preds = %295
  store i32 0, ptr @compoundflag, align 4, !tbaa !13
  br label %412

299:                                              ; preds = %51
  %300 = icmp sgt i32 %53, 2
  br i1 %300, label %301, label %302

301:                                              ; preds = %299
  tail call fastcc void @usage() #36
  unreachable

302:                                              ; preds = %299
  store i32 1, ptr @compoundflag, align 4, !tbaa !13
  br label %412

303:                                              ; preds = %51
  %304 = icmp sgt i32 %53, 2
  br i1 %304, label %305, label %306

305:                                              ; preds = %303
  tail call fastcc void @usage() #36
  unreachable

306:                                              ; preds = %303
  store i32 0, ptr @tryhardflag, align 4, !tbaa !13
  br label %412

307:                                              ; preds = %51
  %308 = icmp sgt i32 %53, 2
  br i1 %308, label %309, label %310

309:                                              ; preds = %307
  tail call fastcc void @usage() #36
  unreachable

310:                                              ; preds = %307
  store i32 1, ptr @tryhardflag, align 4, !tbaa !13
  br label %412

311:                                              ; preds = %51
  %312 = icmp sgt i32 %53, 2
  br i1 %312, label %313, label %314

313:                                              ; preds = %311
  tail call fastcc void @usage() #36
  unreachable

314:                                              ; preds = %311
  store i32 0, ptr @minimenusize, align 4, !tbaa !13
  br label %412

315:                                              ; preds = %51
  %316 = icmp sgt i32 %53, 2
  br i1 %316, label %317, label %318

317:                                              ; preds = %315
  tail call fastcc void @usage() #36
  unreachable

318:                                              ; preds = %315
  store i32 2, ptr @minimenusize, align 4, !tbaa !13
  br label %412

319:                                              ; preds = %51
  %320 = getelementptr inbounds i8, ptr %48, i64 2
  %321 = load i8, ptr %320, align 1, !tbaa !15
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %323, label %333

323:                                              ; preds = %319
  %324 = add nsw i32 %43, -2
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %323
  tail call fastcc void @usage() #36
  unreachable

327:                                              ; preds = %323
  %328 = getelementptr inbounds ptr, ptr %47, i64 2
  %329 = load ptr, ptr %328, align 8, !tbaa !7
  %330 = load i8, ptr %329, align 1, !tbaa !15
  %331 = icmp eq i8 %330, 0
  %332 = select i1 %331, ptr null, ptr %329
  br label %333

333:                                              ; preds = %327, %319
  %334 = phi ptr [ %328, %327 ], [ %42, %319 ]
  %335 = phi ptr [ %332, %327 ], [ %320, %319 ]
  %336 = phi i32 [ %324, %327 ], [ %41, %319 ]
  store ptr null, ptr @LibDict, align 8, !tbaa !7
  br label %412

337:                                              ; preds = %51
  %338 = getelementptr inbounds i8, ptr %48, i64 2
  %339 = load i8, ptr %338, align 1, !tbaa !15
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %337
  %342 = add nsw i32 %43, -2
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  tail call fastcc void @usage() #36
  unreachable

345:                                              ; preds = %341
  %346 = getelementptr inbounds ptr, ptr %47, i64 2
  %347 = load ptr, ptr %346, align 8, !tbaa !7
  br label %348

348:                                              ; preds = %345, %337
  %349 = phi ptr [ %346, %345 ], [ %42, %337 ]
  %350 = phi ptr [ %347, %345 ], [ %338, %337 ]
  %351 = phi i32 [ %342, %345 ], [ %41, %337 ]
  %352 = tail call ptr @index(ptr noundef %350, i32 noundef 47) #37
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354

354:                                              ; preds = %348
  %355 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) %350) #35
  br label %358

356:                                              ; preds = %348
  %357 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @hashname, ptr noundef nonnull dereferenceable(1) @.str.1.78, ptr noundef nonnull @.str.2.79, ptr noundef %350) #35
  br label %358

358:                                              ; preds = %356, %354
  %359 = icmp eq ptr %46, null
  br i1 %359, label %360, label %364

360:                                              ; preds = %358
  %361 = load i8, ptr %350, align 1, !tbaa !15
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %364, label %363

363:                                              ; preds = %360
  store ptr %350, ptr @LibDict, align 8, !tbaa !7
  br label %364

364:                                              ; preds = %363, %360, %358
  %365 = tail call ptr @rindex(ptr noundef %350, i32 noundef 46) #37
  %366 = icmp eq ptr %365, null
  br i1 %366, label %371, label %367

367:                                              ; preds = %364
  %368 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %365, ptr noundef nonnull dereferenceable(6) @.str.3.80) #37
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  store i8 0, ptr %365, align 1, !tbaa !15
  br label %374

371:                                              ; preds = %367, %364
  %372 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @hashname)
  %373 = getelementptr inbounds i8, ptr @hashname, i64 %372
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %373, ptr noundef nonnull align 1 dereferenceable(6) @.str.3.80, i64 6, i1 false)
  br label %374

374:                                              ; preds = %371, %370
  %375 = load ptr, ptr @LibDict, align 8, !tbaa !7
  %376 = icmp eq ptr %375, null
  br i1 %376, label %412, label %377

377:                                              ; preds = %374
  %378 = tail call ptr @rindex(ptr noundef nonnull %375, i32 noundef 47) #37
  %379 = icmp eq ptr %378, null
  br i1 %379, label %412, label %380

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, ptr %378, i64 1
  store ptr %381, ptr @LibDict, align 8, !tbaa !7
  br label %412

382:                                              ; preds = %51
  %383 = icmp sgt i32 %53, 2
  br i1 %383, label %384, label %385

384:                                              ; preds = %382
  tail call fastcc void @usage() #36
  unreachable

385:                                              ; preds = %382
  store i32 1, ptr @vflag, align 4, !tbaa !13
  br label %412

386:                                              ; preds = %51
  %387 = getelementptr inbounds i8, ptr %48, i64 2
  %388 = load i8, ptr %387, align 1, !tbaa !15
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %412

390:                                              ; preds = %386
  %391 = add nsw i32 %43, -2
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  tail call fastcc void @usage() #36
  unreachable

394:                                              ; preds = %390
  %395 = getelementptr inbounds ptr, ptr %47, i64 2
  %396 = load ptr, ptr %395, align 8, !tbaa !7
  br label %412

397:                                              ; preds = %51
  %398 = getelementptr inbounds i8, ptr %48, i64 2
  %399 = load i8, ptr %398, align 1, !tbaa !15
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %397
  %402 = add nsw i32 %43, -2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  tail call fastcc void @usage() #36
  unreachable

405:                                              ; preds = %401
  %406 = getelementptr inbounds ptr, ptr %47, i64 2
  %407 = load ptr, ptr %406, align 8, !tbaa !7
  %408 = tail call i32 @atoi(ptr nocapture noundef %407) #37
  store i32 %408, ptr @minword, align 4, !tbaa !13
  br label %412

409:                                              ; preds = %397
  %410 = tail call i32 @atoi(ptr nocapture noundef nonnull %398) #37
  store i32 %410, ptr @minword, align 4, !tbaa !13
  br label %412

411:                                              ; preds = %51
  tail call fastcc void @usage() #36
  unreachable

412:                                              ; preds = %409, %405, %394, %386, %385, %380, %377, %374, %333, %318, %314, %310, %306, %302, %298, %294, %288, %282, %274, %256, %242, %238, %228, %222, %199, %193, %189, %183, %175, %172, %166
  %413 = phi ptr [ %406, %405 ], [ %42, %409 ], [ %395, %394 ], [ %42, %386 ], [ %42, %385 ], [ %349, %380 ], [ %349, %377 ], [ %349, %374 ], [ %334, %333 ], [ %42, %318 ], [ %42, %314 ], [ %42, %310 ], [ %42, %306 ], [ %42, %302 ], [ %42, %298 ], [ %42, %294 ], [ %42, %288 ], [ %42, %282 ], [ %275, %274 ], [ %257, %256 ], [ %42, %242 ], [ %42, %238 ], [ %42, %228 ], [ %42, %222 ], [ %42, %199 ], [ %42, %193 ], [ %42, %189 ], [ %42, %172 ], [ %42, %166 ], [ %184, %183 ], [ %42, %175 ]
  %414 = phi ptr [ %46, %405 ], [ %46, %409 ], [ %46, %394 ], [ %46, %386 ], [ %46, %385 ], [ %46, %380 ], [ %46, %377 ], [ %46, %374 ], [ %335, %333 ], [ %46, %318 ], [ %46, %314 ], [ %46, %310 ], [ %46, %306 ], [ %46, %302 ], [ %46, %298 ], [ %46, %294 ], [ %46, %288 ], [ %46, %282 ], [ %46, %274 ], [ %46, %256 ], [ %46, %242 ], [ %46, %238 ], [ %46, %228 ], [ %46, %222 ], [ %46, %199 ], [ %46, %193 ], [ %46, %189 ], [ %46, %172 ], [ %46, %166 ], [ %46, %183 ], [ %46, %175 ]
  %415 = phi ptr [ %45, %405 ], [ %45, %409 ], [ %396, %394 ], [ %387, %386 ], [ %45, %385 ], [ %45, %380 ], [ %45, %377 ], [ %45, %374 ], [ %45, %333 ], [ %45, %318 ], [ %45, %314 ], [ %45, %310 ], [ %45, %306 ], [ %45, %302 ], [ %45, %298 ], [ %45, %294 ], [ %45, %288 ], [ %45, %282 ], [ %45, %274 ], [ %45, %256 ], [ %45, %242 ], [ %45, %238 ], [ %45, %228 ], [ %45, %222 ], [ %45, %199 ], [ %45, %193 ], [ %45, %189 ], [ %45, %172 ], [ %45, %166 ], [ %45, %183 ], [ %45, %175 ]
  %416 = phi ptr [ %44, %405 ], [ %44, %409 ], [ %44, %394 ], [ %44, %386 ], [ %44, %385 ], [ %44, %380 ], [ %44, %377 ], [ %44, %374 ], [ %44, %333 ], [ %44, %318 ], [ %44, %314 ], [ %44, %310 ], [ %44, %306 ], [ %44, %302 ], [ %44, %298 ], [ %44, %294 ], [ %44, %288 ], [ %44, %282 ], [ %44, %274 ], [ %44, %256 ], [ %44, %242 ], [ %44, %238 ], [ %44, %228 ], [ %44, %222 ], [ %44, %199 ], [ %44, %193 ], [ %44, %189 ], [ %174, %172 ], [ %168, %166 ], [ %185, %183 ], [ %176, %175 ]
  %417 = phi i32 [ %402, %405 ], [ %41, %409 ], [ %391, %394 ], [ %41, %386 ], [ %41, %385 ], [ %351, %380 ], [ %351, %377 ], [ %351, %374 ], [ %336, %333 ], [ %41, %318 ], [ %41, %314 ], [ %41, %310 ], [ %41, %306 ], [ %41, %302 ], [ %41, %298 ], [ %41, %294 ], [ %41, %288 ], [ %41, %282 ], [ %277, %274 ], [ %259, %256 ], [ %41, %242 ], [ %41, %238 ], [ %41, %228 ], [ %41, %222 ], [ %41, %199 ], [ %41, %193 ], [ %41, %189 ], [ %41, %172 ], [ %41, %166 ], [ %180, %183 ], [ %41, %175 ]
  %418 = getelementptr inbounds ptr, ptr %413, i64 1
  %419 = add nsw i32 %417, -1
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %40, !llvm.loop !126

421:                                              ; preds = %412, %40, %36
  %422 = phi ptr [ null, %36 ], [ %414, %412 ], [ %46, %40 ]
  %423 = phi ptr [ null, %36 ], [ %415, %412 ], [ %45, %40 ]
  %424 = phi ptr [ null, %36 ], [ %416, %412 ], [ %44, %40 ]
  %425 = phi ptr [ %37, %36 ], [ %418, %412 ], [ %42, %40 ]
  %426 = phi i32 [ 0, %36 ], [ 0, %412 ], [ %41, %40 ]
  %427 = phi i1 [ false, %36 ], [ %50, %412 ], [ %50, %40 ]
  %428 = load i32, ptr @lflag, align 4
  %429 = icmp ne i32 %428, 0
  %430 = select i1 %427, i1 true, i1 %429
  %431 = load i32, ptr @aflag, align 4
  %432 = icmp ne i32 %431, 0
  %433 = select i1 %430, i1 true, i1 %432
  %434 = load i32, ptr @eflag, align 4
  %435 = icmp ne i32 %434, 0
  %436 = select i1 %433, i1 true, i1 %435
  %437 = load i32, ptr @dumpflag, align 4
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %436, i1 true, i1 %438
  br i1 %439, label %440, label %445

440:                                              ; preds = %421
  %441 = icmp sgt i32 %426, 0
  br i1 %441, label %442, label %463

442:                                              ; preds = %440
  %443 = zext i32 %426 to i64
  %444 = zext i32 %426 to i64
  br label %450

445:                                              ; preds = %421
  tail call fastcc void @usage() #36
  unreachable

446:                                              ; preds = %450
  %447 = add nuw nsw i64 %451, 1
  %448 = icmp ult i64 %447, %443
  %449 = icmp eq i64 %447, %444
  br i1 %449, label %457, label %450, !llvm.loop !127

450:                                              ; preds = %446, %442
  %451 = phi i64 [ 0, %442 ], [ %447, %446 ]
  %452 = phi i1 [ true, %442 ], [ %448, %446 ]
  %453 = getelementptr inbounds ptr, ptr %425, i64 %451
  %454 = load ptr, ptr %453, align 8, !tbaa !7
  %455 = tail call i32 @access(ptr noundef %454, i32 noundef 4) #35
  %456 = icmp sgt i32 %455, -1
  br i1 %456, label %457, label %446

457:                                              ; preds = %450, %446
  %458 = phi i1 [ %448, %446 ], [ %452, %450 ]
  %459 = load i32, ptr @lflag, align 4
  %460 = load i32, ptr @aflag, align 4
  %461 = load i32, ptr @eflag, align 4
  %462 = load i32, ptr @dumpflag, align 4
  br label %463

463:                                              ; preds = %457, %440
  %464 = phi i32 [ %437, %440 ], [ %462, %457 ]
  %465 = phi i32 [ %434, %440 ], [ %461, %457 ]
  %466 = phi i32 [ %431, %440 ], [ %460, %457 ]
  %467 = phi i32 [ %428, %440 ], [ %459, %457 ]
  %468 = phi i1 [ false, %440 ], [ %458, %457 ]
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
  %479 = icmp eq i32 %426, 1
  %480 = select i1 %479, ptr @.str.129, ptr @.str.130
  %481 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %478, ptr noundef nonnull %480) #39
  tail call void @exit(i32 noundef 1) #40
  unreachable

482:                                              ; preds = %463
  %483 = tail call i32 @linit() #35
  %484 = icmp slt i32 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %482
  tail call void @exit(i32 noundef 1) #40
  unreachable

486:                                              ; preds = %482
  %487 = icmp eq ptr %424, null
  br i1 %487, label %488, label %490

488:                                              ; preds = %486
  %489 = load i32, ptr @prefstringchar, align 4, !tbaa !13
  br label %505

490:                                              ; preds = %486
  %491 = load i32, ptr @deftflag, align 4, !tbaa !13
  %492 = icmp slt i32 %491, 0
  %493 = select i1 %492, ptr @deftflag, ptr null
  %494 = tail call i32 @findfiletype(ptr noundef nonnull %424, i32 noundef 1, ptr noundef %493) #35
  store i32 %494, ptr @prefstringchar, align 4, !tbaa !13
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %496, label %505

496:                                              ; preds = %490
  %497 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %424, ptr noundef nonnull dereferenceable(4) @.str.128) #37
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %505, label %499

499:                                              ; preds = %496
  %500 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %424, ptr noundef nonnull dereferenceable(6) @.str.127) #37
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %505, label %502

502:                                              ; preds = %499
  %503 = load ptr, ptr @stderr, align 8, !tbaa !7
  %504 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %503, ptr noundef nonnull @.str.131, ptr noundef nonnull %424) #39
  tail call void @exit(i32 noundef 1) #40
  unreachable

505:                                              ; preds = %499, %496, %490, %488
  %506 = phi i32 [ %489, %488 ], [ %494, %490 ], [ %494, %496 ], [ %494, %499 ]
  %507 = tail call i32 @llvm.smax.i32(i32 %506, i32 0)
  store i32 %507, ptr @defdupchar, align 4, !tbaa !13
  %508 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %509 = icmp slt i32 %508, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %505
  %511 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 17), align 2, !tbaa !128
  %512 = sext i8 %511 to i32
  store i32 %512, ptr @compoundflag, align 4, !tbaa !13
  br label %513

513:                                              ; preds = %510, %505
  %514 = load i32, ptr @tryhardflag, align 4, !tbaa !13
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %516, label %519

516:                                              ; preds = %513
  %517 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 18), align 1, !tbaa !129
  %518 = sext i8 %517 to i32
  store i32 %518, ptr @tryhardflag, align 4, !tbaa !13
  br label %519

519:                                              ; preds = %516, %513
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #38
  %520 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !130
  %521 = and i32 %520, 255
  %522 = xor i32 %521, 128
  %523 = load i32, ptr @Trynum, align 4
  %524 = icmp eq i32 %522, 0
  br i1 %524, label %550, label %525

525:                                              ; preds = %519
  %526 = zext i32 %522 to i64
  br label %527

527:                                              ; preds = %546, %525
  %528 = phi i64 [ 0, %525 ], [ %548, %546 ]
  %529 = phi i32 [ %523, %525 ], [ %547, %546 ]
  %530 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %528
  %531 = load i8, ptr %530, align 1, !tbaa !15
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %537, label %533

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %528
  %535 = load i8, ptr %534, align 1, !tbaa !15
  %536 = icmp eq i8 %535, 0
  br i1 %536, label %541, label %546

537:                                              ; preds = %527
  %538 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %528
  %539 = load i8, ptr %538, align 1, !tbaa !15
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %546, label %541

541:                                              ; preds = %537, %533
  %542 = sext i32 %529 to i64
  %543 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %542
  %544 = trunc i64 %528 to i8
  store i8 %544, ptr %543, align 1, !tbaa !15
  %545 = add nsw i32 %529, 1
  store i32 %545, ptr @Trynum, align 4, !tbaa !13
  br label %546

546:                                              ; preds = %541, %537, %533
  %547 = phi i32 [ %529, %533 ], [ %529, %537 ], [ %545, %541 ]
  %548 = add nuw nsw i64 %528, 1
  %549 = icmp eq i64 %548, %526
  br i1 %549, label %550, label %527, !llvm.loop !131

550:                                              ; preds = %546, %519
  %551 = phi i32 [ %523, %519 ], [ %547, %546 ]
  %552 = icmp ne ptr %423, null
  %553 = icmp slt i32 %551, 128
  %554 = select i1 %552, i1 %553, i1 false
  br i1 %554, label %555, label %637

555:                                              ; preds = %550
  %556 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !132
  %557 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1
  %558 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2
  br label %559

559:                                              ; preds = %633, %555
  %560 = phi i32 [ %634, %633 ], [ %556, %555 ]
  %561 = phi i32 [ %635, %633 ], [ %551, %555 ]
  %562 = phi ptr [ %619, %633 ], [ %423, %555 ]
  %563 = load i8, ptr %562, align 1, !tbaa !15
  switch i8 %563, label %564 [
    i8 0, label %637
    i8 110, label %566
    i8 92, label %566
  ]

564:                                              ; preds = %559
  %565 = getelementptr inbounds i8, ptr %562, i64 1
  br label %618

566:                                              ; preds = %559, %559
  %567 = getelementptr inbounds i8, ptr %562, i64 1
  %568 = tail call ptr @__ctype_b_loc() #41
  store i32 0, ptr %5, align 4
  %569 = load ptr, ptr %568, align 8, !tbaa !7
  %570 = load i8, ptr %567, align 1, !tbaa !15
  %571 = sext i8 %570 to i64
  %572 = getelementptr inbounds i16, ptr %569, i64 %571
  %573 = load i16, ptr %572, align 2, !tbaa !63
  %574 = and i16 %573, 2048
  %575 = icmp eq i16 %574, 0
  br i1 %575, label %593, label %576

576:                                              ; preds = %566
  store i8 %570, ptr %5, align 4, !tbaa !15
  %577 = getelementptr inbounds i8, ptr %562, i64 2
  %578 = load i8, ptr %577, align 1, !tbaa !15
  %579 = sext i8 %578 to i64
  %580 = getelementptr inbounds i16, ptr %569, i64 %579
  %581 = load i16, ptr %580, align 2, !tbaa !63
  %582 = and i16 %581, 2048
  %583 = icmp eq i16 %582, 0
  br i1 %583, label %593, label %584

584:                                              ; preds = %576
  store i8 %578, ptr %557, align 1, !tbaa !15
  %585 = getelementptr inbounds i8, ptr %562, i64 3
  %586 = load i8, ptr %585, align 1, !tbaa !15
  %587 = sext i8 %586 to i64
  %588 = getelementptr inbounds i16, ptr %569, i64 %587
  %589 = load i16, ptr %588, align 2, !tbaa !63
  %590 = and i16 %589, 2048
  %591 = icmp eq i16 %590, 0
  br i1 %591, label %593, label %592

592:                                              ; preds = %584
  store i8 %586, ptr %558, align 2, !tbaa !15
  br label %593

593:                                              ; preds = %592, %584, %576, %566
  %594 = phi i8 [ 0, %576 ], [ %586, %592 ], [ 0, %584 ], [ 0, %566 ]
  %595 = phi i8 [ 0, %576 ], [ %578, %592 ], [ %578, %584 ], [ 0, %566 ]
  %596 = phi i8 [ %570, %576 ], [ %570, %592 ], [ %570, %584 ], [ 0, %566 ]
  %597 = load i8, ptr %562, align 1, !tbaa !15
  %598 = icmp eq i8 %597, 110
  %599 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #37
  %600 = getelementptr inbounds i8, ptr %567, i64 %599
  br i1 %598, label %601, label %604

601:                                              ; preds = %593
  %602 = call i32 @atoi(ptr nocapture noundef nonnull %5) #37
  %603 = trunc i32 %602 to i8
  br label %618

604:                                              ; preds = %593
  %605 = icmp eq i8 %596, 0
  %606 = add i8 %596, -48
  %607 = select i1 %605, i8 0, i8 %606
  %608 = icmp eq i8 %595, 0
  %609 = shl i8 %607, 3
  %610 = add i8 %595, -48
  %611 = add i8 %610, %609
  %612 = select i1 %608, i8 %607, i8 %611
  %613 = icmp eq i8 %594, 0
  br i1 %613, label %618, label %614

614:                                              ; preds = %604
  %615 = shl i8 %612, 3
  %616 = add i8 %594, -48
  %617 = add i8 %616, %615
  br label %618

618:                                              ; preds = %614, %604, %601, %564
  %619 = phi ptr [ %565, %564 ], [ %600, %601 ], [ %600, %614 ], [ %600, %604 ]
  %620 = phi i8 [ %563, %564 ], [ %603, %601 ], [ %617, %614 ], [ %612, %604 ]
  %621 = and i8 %620, 127
  %622 = zext i8 %621 to i64
  %623 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !15
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %626, label %633

626:                                              ; preds = %618
  store i8 1, ptr %623, align 1, !tbaa !15
  %627 = add nsw i32 %560, 1
  store i32 %627, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 11), align 4, !tbaa !132
  %628 = trunc i32 %560 to i16
  %629 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 20, i64 %622
  store i16 %628, ptr %629, align 2, !tbaa !63
  %630 = sext i32 %561 to i64
  %631 = getelementptr inbounds [228 x i8], ptr @Try, i64 0, i64 %630
  store i8 %621, ptr %631, align 1, !tbaa !15
  %632 = add nsw i32 %561, 1
  store i32 %632, ptr @Trynum, align 4, !tbaa !13
  br label %633

633:                                              ; preds = %626, %618
  %634 = phi i32 [ %627, %626 ], [ %560, %618 ]
  %635 = phi i32 [ %632, %626 ], [ %561, %618 ]
  %636 = icmp slt i32 %635, 128
  br i1 %636, label %559, label %637

637:                                              ; preds = %633, %559, %550
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #38
  %638 = load ptr, ptr @LibDict, align 8, !tbaa !7
  %639 = icmp eq ptr %638, null
  br i1 %639, label %640, label %647

640:                                              ; preds = %637
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) @main.libdictname, ptr noundef nonnull align 1 dereferenceable(13) @.str.4.81, i64 13, i1 false) #35
  store ptr @main.libdictname, ptr @LibDict, align 8, !tbaa !7
  %641 = tail call ptr @rindex(ptr noundef nonnull @main.libdictname, i32 noundef 46) #37
  %642 = icmp eq ptr %641, null
  br i1 %642, label %647, label %643

643:                                              ; preds = %640
  %644 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %641, ptr noundef nonnull dereferenceable(6) @.str.3.80) #37
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %647

646:                                              ; preds = %643
  store i8 0, ptr %641, align 1, !tbaa !15
  br label %647

647:                                              ; preds = %646, %643, %640, %637
  %648 = phi ptr [ @main.libdictname, %640 ], [ @main.libdictname, %643 ], [ @main.libdictname, %646 ], [ %638, %637 ]
  %649 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %647
  tail call void @treeinit(ptr noundef %422, ptr noundef %648) #35
  br label %652

652:                                              ; preds = %651, %647
  %653 = load i32, ptr @aflag, align 4, !tbaa !13
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %656, label %655

655:                                              ; preds = %652
  tail call void @askmode() #35
  tail call void @treeoutput() #35
  tail call void @exit(i32 noundef 0) #40
  unreachable

656:                                              ; preds = %652
  %657 = load i32, ptr @eflag, align 4, !tbaa !13
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %660, label %659

659:                                              ; preds = %656
  tail call fastcc void @expandmode(i32 noundef %657) #36
  tail call void @exit(i32 noundef 0) #40
  unreachable

660:                                              ; preds = %656
  %661 = load i32, ptr @dumpflag, align 4, !tbaa !13
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %664, label %663

663:                                              ; preds = %660
  tail call void @dumpmode() #35
  tail call void @exit(i32 noundef 0) #40
  unreachable

664:                                              ; preds = %660
  %665 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @setbuf(ptr noundef %665, ptr noundef nonnull @main.outbuf) #35
  %666 = load i32, ptr @lflag, align 4, !tbaa !13
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %671, label %668

668:                                              ; preds = %664
  %669 = load ptr, ptr @stdin, align 8, !tbaa !7
  store ptr %669, ptr @infile, align 8, !tbaa !7
  %670 = load ptr, ptr @stdout, align 8, !tbaa !7
  store ptr %670, ptr @outfile, align 8, !tbaa !7
  tail call void @checkfile() #35
  tail call void @exit(i32 noundef 0) #40
  unreachable

671:                                              ; preds = %664
  tail call void @terminit() #35
  %672 = icmp eq i32 %426, 0
  br i1 %672, label %810, label %673

673:                                              ; preds = %671
  %674 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %675 = ptrtoint ptr %3 to i64
  br label %676

676:                                              ; preds = %808, %673
  %677 = phi i32 [ %426, %673 ], [ %679, %808 ]
  %678 = phi ptr [ %425, %673 ], [ %680, %808 ]
  %679 = add nsw i32 %677, -1
  %680 = getelementptr inbounds ptr, ptr %678, i64 1
  %681 = load ptr, ptr %678, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #38
  store ptr %681, ptr @currentfile, align 8, !tbaa !7
  %682 = load i32, ptr @deftflag, align 4, !tbaa !13
  store i32 %682, ptr @tflag, align 4, !tbaa !13
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %684, label %693

684:                                              ; preds = %676
  %685 = call ptr @rindex(ptr noundef %681, i32 noundef 46) #37
  %686 = icmp eq ptr %685, null
  br i1 %686, label %691, label %687

687:                                              ; preds = %684
  %688 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %685, ptr noundef nonnull dereferenceable(5) @.str.176) #37
  %689 = icmp eq i32 %688, 0
  %690 = zext i1 %689 to i32
  br label %691

691:                                              ; preds = %687, %684
  %692 = phi i32 [ 0, %684 ], [ %690, %687 ]
  store i32 %692, ptr @tflag, align 4, !tbaa !13
  br label %693

693:                                              ; preds = %691, %676
  %694 = load i32, ptr @prefstringchar, align 4, !tbaa !13
  %695 = icmp slt i32 %694, 0
  br i1 %695, label %696, label %700

696:                                              ; preds = %693
  %697 = select i1 %683, ptr @tflag, ptr null
  %698 = call i32 @findfiletype(ptr noundef %681, i32 noundef 0, ptr noundef %697) #35
  %699 = call i32 @llvm.smax.i32(i32 %698, i32 0)
  store i32 %699, ptr @defdupchar, align 4
  br label %700

700:                                              ; preds = %696, %693
  %701 = call noalias ptr @fopen(ptr noundef %681, ptr noundef nonnull @.str.177) #36
  store ptr %701, ptr @infile, align 8, !tbaa !7
  %702 = icmp eq ptr %701, null
  br i1 %702, label %703, label %707

703:                                              ; preds = %700
  %704 = load ptr, ptr @stderr, align 8, !tbaa !7
  %705 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %704, ptr noundef nonnull @.str.178, ptr noundef %681) #39
  %706 = call i32 @sleep(i32 noundef 2) #35
  br label %808

707:                                              ; preds = %700
  %708 = call i32 @access(ptr noundef %681, i32 noundef 2) #35
  %709 = icmp slt i32 %708, 0
  %710 = lshr i32 %708, 31
  store i32 %710, ptr @readonly, align 4, !tbaa !13
  br i1 %709, label %711, label %715

711:                                              ; preds = %707
  %712 = load ptr, ptr @stderr, align 8, !tbaa !7
  %713 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %712, ptr noundef nonnull @.str.179, ptr noundef %681) #39
  %714 = call i32 @sleep(i32 noundef 2) #35
  br label %715

715:                                              ; preds = %711, %707
  %716 = load ptr, ptr @infile, align 8, !tbaa !7
  %717 = call i32 @fileno(ptr noundef %716) #35
  %718 = call i32 @fstat(i32 noundef %717, ptr noundef nonnull %4) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) @tempfile, ptr noundef nonnull align 1 dereferenceable(18) @.str.115, i64 18, i1 false) #35
  %719 = call ptr @mktemp(ptr noundef nonnull @tempfile) #35
  %720 = icmp eq ptr %719, null
  %721 = load i8, ptr @tempfile, align 16
  %722 = icmp eq i8 %721, 0
  %723 = select i1 %720, i1 true, i1 %722
  br i1 %723, label %729, label %724

724:                                              ; preds = %715
  %725 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.180) #36
  store ptr %725, ptr @outfile, align 8, !tbaa !7
  %726 = icmp eq ptr %725, null
  br i1 %726, label %727, label %736

727:                                              ; preds = %724
  %728 = load i8, ptr @tempfile, align 16, !tbaa !15
  br label %729

729:                                              ; preds = %727, %715
  %730 = phi i8 [ %728, %727 ], [ %721, %715 ]
  %731 = load ptr, ptr @stderr, align 8, !tbaa !7
  %732 = icmp eq i8 %730, 0
  %733 = select i1 %732, ptr @.str.182, ptr @tempfile
  %734 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %731, ptr noundef nonnull @.str.181, ptr noundef nonnull %733) #39
  %735 = call i32 @sleep(i32 noundef 2) #35
  br label %808

736:                                              ; preds = %724
  %737 = load i32, ptr %674, align 8, !tbaa !133
  %738 = call i32 @chmod(ptr noundef nonnull @tempfile, i32 noundef %737) #35
  store i32 0, ptr @quit, align 4, !tbaa !13
  store i32 0, ptr @changes, align 4, !tbaa !13
  call void @checkfile() #35
  %739 = load ptr, ptr @infile, align 8, !tbaa !7
  %740 = call i32 @fclose(ptr noundef %739) #36
  %741 = load ptr, ptr @outfile, align 8, !tbaa !7
  %742 = call i32 @fclose(ptr noundef %741) #36
  %743 = load i32, ptr @cflag, align 4, !tbaa !13
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %746

745:                                              ; preds = %736
  call void @treeoutput() #35
  br label %746

746:                                              ; preds = %745, %736
  %747 = load i32, ptr @changes, align 4, !tbaa !13
  %748 = icmp eq i32 %747, 0
  %749 = load i32, ptr @readonly, align 4
  %750 = icmp ne i32 %749, 0
  %751 = select i1 %748, i1 true, i1 %750
  br i1 %751, label %806, label %752

752:                                              ; preds = %746
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #38
  %753 = call noalias ptr @fopen(ptr noundef nonnull @tempfile, ptr noundef nonnull @.str.177) #36
  store ptr %753, ptr @infile, align 8, !tbaa !7
  %754 = icmp eq ptr %753, null
  br i1 %754, label %755, label %759

755:                                              ; preds = %752
  %756 = load ptr, ptr @stderr, align 8, !tbaa !7
  %757 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %756, ptr noundef nonnull @.str.183, ptr noundef nonnull @tempfile) #39
  %758 = call i32 @sleep(i32 noundef 2) #35
  br label %805

759:                                              ; preds = %752
  %760 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.184, i32 noundef 4091, ptr noundef %681, ptr noundef nonnull @.str.10.85) #35
  %761 = call ptr @rindex(ptr noundef nonnull %3, i32 noundef 47) #37
  %762 = icmp eq ptr %761, null
  %763 = getelementptr inbounds i8, ptr %761, i64 1
  %764 = select i1 %762, ptr %3, ptr %763
  %765 = ptrtoint ptr %764 to i64
  %766 = sub i64 %765, %675
  %767 = add nsw i64 %766, 255
  %768 = call i32 @strncmp(ptr noundef %681, ptr noundef nonnull %3, i64 noundef %767) #37
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %772, label %770

770:                                              ; preds = %759
  %771 = call i32 @unlink(ptr noundef nonnull %3) #35
  br label %772

772:                                              ; preds = %770, %759
  %773 = call i32 @link(ptr noundef %681, ptr noundef nonnull %3) #35
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %777

775:                                              ; preds = %772
  %776 = call i32 @unlink(ptr noundef %681) #35
  br label %777

777:                                              ; preds = %775, %772
  %778 = call noalias ptr @fopen(ptr noundef %681, ptr noundef nonnull @.str.180) #36
  store ptr %778, ptr @outfile, align 8, !tbaa !7
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %784

780:                                              ; preds = %777
  %781 = load ptr, ptr @stderr, align 8, !tbaa !7
  %782 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %781, ptr noundef nonnull @.str.181, ptr noundef %681) #39
  %783 = call i32 @sleep(i32 noundef 2) #35
  br label %805

784:                                              ; preds = %777
  %785 = call i32 @chmod(ptr noundef %681, i32 noundef %737) #35
  br label %786

786:                                              ; preds = %790, %784
  %787 = load ptr, ptr @infile, align 8, !tbaa !7
  %788 = call i32 @getc(ptr noundef %787) #36
  %789 = icmp eq i32 %788, -1
  br i1 %789, label %793, label %790

790:                                              ; preds = %786
  %791 = load ptr, ptr @outfile, align 8, !tbaa !7
  %792 = call i32 @putc(i32 noundef %788, ptr noundef %791) #36
  br label %786, !llvm.loop !136

793:                                              ; preds = %786
  %794 = load ptr, ptr @infile, align 8, !tbaa !7
  %795 = call i32 @fclose(ptr noundef %794) #36
  %796 = load ptr, ptr @outfile, align 8, !tbaa !7
  %797 = call i32 @fclose(ptr noundef %796) #36
  %798 = load i32, ptr @xflag, align 4, !tbaa !13
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %805, label %800

800:                                              ; preds = %793
  %801 = call i32 @strncmp(ptr noundef %681, ptr noundef nonnull %3, i64 noundef %767) #37
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %805, label %803

803:                                              ; preds = %800
  %804 = call i32 @unlink(ptr noundef nonnull %3) #35
  br label %805

805:                                              ; preds = %803, %800, %793, %780, %755
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #38
  br label %806

806:                                              ; preds = %805, %746
  %807 = call i32 @unlink(ptr noundef nonnull @tempfile) #35
  br label %808

808:                                              ; preds = %806, %729, %703
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #38
  %809 = icmp eq i32 %679, 0
  br i1 %809, label %810, label %676, !llvm.loop !137

810:                                              ; preds = %808, %671
  call void @done(i32 noundef 0) #35
  ret i32 0
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare ptr @rindex(ptr noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @usage() unnamed_addr #22 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef %2) #39
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.133, ptr noundef %5) #39
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.134, ptr noundef %8) #39
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.135, ptr noundef %11) #39
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.136, ptr noundef %14) #39
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.137, ptr noundef %17) #39
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = load ptr, ptr @Cmd, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.138, ptr noundef %20) #39
  tail call void @givehelp(i32 noundef 0) #35
  tail call void @exit(i32 noundef 1) #40
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @expandmode(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  %3 = alloca [8192 x i8], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #38
  %7 = ptrtoint ptr %2 to i64
  %8 = icmp eq i32 %0, 4
  %9 = add i32 %0, -2
  %10 = icmp ult i32 %9, 3
  %11 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 100
  br label %12

12:                                               ; preds = %107, %1
  %13 = load ptr, ptr @stdin, align 8, !tbaa !7
  %14 = call ptr @xgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %13) #35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %109, label %16

16:                                               ; preds = %12
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37
  %18 = trunc i64 %17 to i32
  %19 = shl i64 %17, 32
  %20 = add i64 %19, -4294967296
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !15
  %24 = icmp eq i8 %23, 10
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = add nsw i32 %18, -1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8192 x i8], ptr %2, i64 0, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !15
  br label %29

29:                                               ; preds = %25, %16
  %30 = phi i32 [ %26, %25 ], [ %18, %16 ]
  %31 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %2) #35
  %32 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !122
  %33 = sext i8 %32 to i32
  %34 = call ptr @index(ptr noundef nonnull %2, i32 noundef %33) #37
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = ptrtoint ptr %34 to i64
  %38 = sub i64 %37, %7
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds i8, ptr %34, i64 1
  store i8 0, ptr %34, align 1, !tbaa !15
  br label %41

41:                                               ; preds = %36, %29
  %42 = phi ptr [ %40, %36 ], [ null, %29 ]
  %43 = phi i32 [ %39, %36 ], [ %30, %29 ]
  br i1 %10, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.185, ptr noundef nonnull %5) #36
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
  store i8 0, ptr %11, align 4, !tbaa !15
  br label %61

53:                                               ; preds = %46
  %54 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 99
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8 0, ptr %11, align 4, !tbaa !15
  br label %58

58:                                               ; preds = %57, %53
  %59 = load ptr, ptr @stdout, align 8, !tbaa !7
  %60 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %59) #36
  br label %107

61:                                               ; preds = %52, %48
  %62 = load ptr, ptr @stdout, align 8, !tbaa !7
  %63 = call i32 @fputs(ptr noundef nonnull %2, ptr noundef %62) #36
  store i64 0, ptr %4, align 8
  br label %64

64:                                               ; preds = %80, %61
  %65 = phi ptr [ %42, %61 ], [ %86, %80 ]
  %66 = load i8, ptr %65, align 1, !tbaa !15
  switch i8 %66, label %67 [
    i8 0, label %87
    i8 10, label %87
  ]

67:                                               ; preds = %64
  %68 = zext i8 %66 to i32
  %69 = add i8 %66, -65
  %70 = icmp ult i8 %69, 27
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = add nsw i32 %68, -65
  %73 = zext i32 %72 to i64
  %74 = shl nuw nsw i64 1, %73
  %75 = load i64, ptr %4, align 8, !tbaa !66
  %76 = or i64 %75, %74
  store i64 %76, ptr %4, align 8, !tbaa !66
  br label %80

77:                                               ; preds = %67
  %78 = load ptr, ptr @stderr, align 8, !tbaa !7
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.186, i32 noundef %68) #39
  br label %80

80:                                               ; preds = %77, %71
  %81 = getelementptr inbounds i8, ptr %65, i64 1
  %82 = load i8, ptr %81, align 1, !tbaa !15
  %83 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !122
  %84 = icmp eq i8 %82, %83
  %85 = getelementptr inbounds i8, ptr %65, i64 2
  %86 = select i1 %84, ptr %85, ptr %81
  br label %64, !llvm.loop !138

87:                                               ; preds = %64, %64
  %88 = call i32 @strtoichar(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1) #35
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr @stderr, align 8, !tbaa !7
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.187, ptr noundef nonnull %2, i32 noundef 997, ptr noundef nonnull @.str.188) #39
  br label %93

93:                                               ; preds = %90, %87
  %94 = call i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %0, ptr noundef nonnull @.str.55.122) #35
  %95 = call i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %0, ptr noundef nonnull @.str.55.122) #35
  br i1 %8, label %96, label %107

96:                                               ; preds = %93
  %97 = add i32 %94, %43
  %98 = add i32 %97, %95
  %99 = sitofp i32 %98 to double
  %100 = sitofp i32 %43 to double
  %101 = fdiv double %99, %100
  %102 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.189, double noundef %101) #35
  %103 = load ptr, ptr @stdout, align 8, !tbaa !7
  %104 = call i32 @fputs(ptr noundef nonnull %6, ptr noundef %103) #36
  %105 = call i32 @expand_pre(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull %6) #35
  %106 = call i32 @expand_suf(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %6) #35
  br label %107

107:                                              ; preds = %96, %93, %58
  %108 = call i32 @putchar(i32 noundef 10) #36
  br label %12, !llvm.loop !139

109:                                              ; preds = %12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #38
  ret void
}

; Function Attrs: nofree nounwind optsize
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @mktemp(ptr noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize uwtable
define internal i32 @linit() #0 {
  %1 = load i1, ptr @inited, align 4
  br i1 %1, label %477, label %2

2:                                                ; preds = %0
  %3 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @hashname, i32 noundef 0) #35
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.232, ptr noundef nonnull @hashname) #39
  br label %477

8:                                                ; preds = %2
  %9 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) @hashname, i32 noundef 47) #37
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = select i1 %10, ptr @hashname, ptr %11
  %13 = tail call i64 @read(i32 noundef %3, ptr noundef nonnull @hashheader, i64 noundef 3928) #35
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr @hashsize, align 4, !tbaa !13
  %15 = icmp ult i32 %14, 3928
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = icmp eq i32 %14, 0
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  br i1 %17, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.2.233, ptr noundef nonnull %12) #39
  br label %477

21:                                               ; preds = %16
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.3.234, ptr noundef nonnull %12, i32 noundef %14, i32 noundef 3928) #39
  br label %477

23:                                               ; preds = %8
  %24 = load i16, ptr @hashheader, align 4, !tbaa !140
  %25 = icmp eq i16 %24, -27134
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = zext i16 %24 to i32
  %28 = load ptr, ptr @stderr, align 8, !tbaa !7
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.4.235, ptr noundef nonnull %12, i32 noundef 38402, i32 noundef %27) #39
  br label %477

30:                                               ; preds = %23
  %31 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 31), align 4, !tbaa !141
  %32 = icmp eq i16 %31, -27134
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = zext i16 %31 to i32
  %35 = load ptr, ptr @stderr, align 8, !tbaa !7
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.5.236, ptr noundef nonnull %12, i32 noundef 38402, i32 noundef %34) #39
  br label %477

37:                                               ; preds = %30
  %38 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 1), align 2, !tbaa !142
  %39 = icmp ne i16 %38, 3
  %40 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 2), align 4
  %41 = icmp ne i16 %40, 100
  %42 = select i1 %39, i1 true, i1 %41
  %43 = load i16, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 3), align 2
  %44 = icmp ne i16 %43, 10
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = sext i16 %43 to i32
  %48 = sext i16 %40 to i32
  %49 = zext i16 %38 to i32
  %50 = load ptr, ptr @stderr, align 8, !tbaa !7
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.6.237, i32 noundef %49, i32 noundef %48, i32 noundef %47, i32 noundef 3, i32 noundef 100, i32 noundef 10) #39
  br label %477

52:                                               ; preds = %37
  %53 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  store i32 1, ptr @hashsize, align 4, !tbaa !13
  %56 = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #43
  store ptr %56, ptr @hashtbl, align 8, !tbaa !7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load ptr, ptr @stderr, align 8, !tbaa !7
  %60 = tail call i64 @fwrite(ptr nonnull @.str.7.238, i64 40, i64 1, ptr %59) #42
  br label %477

61:                                               ; preds = %55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  br label %67

62:                                               ; preds = %52
  %63 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !143
  %64 = zext i32 %63 to i64
  %65 = mul nuw nsw i64 %64, 24
  %66 = tail call noalias ptr @malloc(i64 noundef %65) #44
  store ptr %66, ptr @hashtbl, align 8, !tbaa !7
  store i32 %63, ptr @hashsize, align 4, !tbaa !13
  br label %67

67:                                               ; preds = %62, %61
  %68 = phi ptr [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), %62 ], [ getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), %61 ]
  %69 = phi ptr [ %66, %62 ], [ %56, %61 ]
  %70 = load i32, ptr %68, align 4, !tbaa !13
  %71 = zext i32 %70 to i64
  %72 = tail call noalias ptr @malloc(i64 noundef %71) #44
  store ptr %72, ptr @hashstrings, align 8, !tbaa !7
  %73 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 9), align 4, !tbaa !144
  store i32 %73, ptr @numsflags, align 4, !tbaa !13
  %74 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 10), align 4, !tbaa !145
  store i32 %74, ptr @numpflags, align 4, !tbaa !13
  %75 = add nsw i32 %74, %73
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 8
  %78 = tail call noalias ptr @malloc(i64 noundef %77) #44
  store ptr %78, ptr @sflaglist, align 8, !tbaa !7
  %79 = icmp eq ptr %69, null
  %80 = icmp eq ptr %72, null
  %81 = or i1 %80, %79
  %82 = icmp eq ptr %78, null
  %83 = or i1 %82, %81
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  %85 = load ptr, ptr @stderr, align 8, !tbaa !7
  %86 = tail call i64 @fwrite(ptr nonnull @.str.7.238, i64 40, i64 1, ptr %85) #42
  br label %477

87:                                               ; preds = %67
  %88 = sext i32 %73 to i64
  %89 = getelementptr inbounds %struct.flagent, ptr %78, i64 %88
  store ptr %89, ptr @pflaglist, align 8, !tbaa !7
  br i1 %54, label %109, label %90

90:                                               ; preds = %87
  %91 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !146
  %92 = zext i32 %91 to i64
  %93 = tail call i64 @read(i32 noundef %3, ptr noundef nonnull %72, i64 noundef %92) #35
  %94 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 7), align 4, !tbaa !146
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr @stderr, align 8, !tbaa !7
  %99 = tail call i64 @fwrite(ptr nonnull @.str.8.239, i64 27, i64 1, ptr %98) #42
  br label %477

100:                                              ; preds = %90
  %101 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !147
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %93
  %104 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !143
  %105 = sext i32 %104 to i64
  %106 = mul nsw i64 %105, 24
  %107 = add nsw i64 %103, %106
  %108 = tail call i64 @lseek(i32 noundef %3, i64 noundef %107, i32 noundef 1) #35
  br label %129

109:                                              ; preds = %87
  %110 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !147
  %111 = zext i32 %110 to i64
  %112 = tail call i64 @read(i32 noundef %3, ptr noundef nonnull %72, i64 noundef %111) #35
  %113 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4, !tbaa !147
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %118 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !143
  %119 = zext i32 %118 to i64
  %120 = mul nuw nsw i64 %119, 24
  %121 = tail call i64 @read(i32 noundef %3, ptr noundef %117, i64 noundef %120) #35
  %122 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 8), align 4, !tbaa !143
  %123 = sext i32 %122 to i64
  %124 = mul nsw i64 %123, 24
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %116, %109
  %127 = load ptr, ptr @stderr, align 8, !tbaa !7
  %128 = tail call i64 @fwrite(ptr nonnull @.str.8.239, i64 27, i64 1, ptr %127) #42
  br label %477

129:                                              ; preds = %116, %100
  %130 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %131 = load i32, ptr @numsflags, align 4, !tbaa !13
  %132 = load i32, ptr @numpflags, align 4, !tbaa !13
  %133 = add nsw i32 %132, %131
  %134 = zext i32 %133 to i64
  %135 = shl nuw nsw i64 %134, 8
  %136 = tail call i64 @read(i32 noundef %3, ptr noundef %130, i64 noundef %135) #35
  %137 = load i32, ptr @numsflags, align 4, !tbaa !13
  %138 = load i32, ptr @numpflags, align 4, !tbaa !13
  %139 = add nsw i32 %138, %137
  %140 = sext i32 %139 to i64
  %141 = shl nsw i64 %140, 8
  %142 = icmp eq i64 %136, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %129
  %144 = load ptr, ptr @stderr, align 8, !tbaa !7
  %145 = tail call i64 @fwrite(ptr nonnull @.str.8.239, i64 27, i64 1, ptr %144) #42
  br label %477

146:                                              ; preds = %129
  %147 = tail call i32 @close(i32 noundef %3) #35
  %148 = load i32, ptr @nodictflag, align 4, !tbaa !13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %146
  %151 = load i32, ptr @hashsize, align 4, !tbaa !13
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  br label %155

155:                                              ; preds = %155, %153
  %156 = phi ptr [ %176, %155 ], [ %154, %153 ]
  %157 = phi i32 [ %158, %155 ], [ %151, %153 ]
  %158 = add nsw i32 %157, -1
  %159 = getelementptr inbounds %struct.dent, ptr %156, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !74
  %161 = icmp eq ptr %160, inttoptr (i64 -1 to ptr)
  %162 = load ptr, ptr @hashstrings, align 8
  %163 = ptrtoint ptr %160 to i64
  %164 = shl i64 %163, 32
  %165 = ashr exact i64 %164, 32
  %166 = getelementptr inbounds i8, ptr %162, i64 %165
  %167 = select i1 %161, ptr null, ptr %166
  store ptr %167, ptr %159, align 8, !tbaa !74
  %168 = load ptr, ptr %156, align 8, !tbaa !70
  %169 = icmp eq ptr %168, inttoptr (i64 -1 to ptr)
  %170 = load ptr, ptr @hashtbl, align 8
  %171 = ptrtoint ptr %168 to i64
  %172 = shl i64 %171, 32
  %173 = ashr exact i64 %172, 32
  %174 = getelementptr inbounds %struct.dent, ptr %170, i64 %173
  %175 = select i1 %169, ptr null, ptr %174
  store ptr %175, ptr %156, align 8, !tbaa !70
  %176 = getelementptr inbounds %struct.dent, ptr %156, i64 1
  %177 = icmp ugt i32 %157, 1
  br i1 %177, label %155, label %178, !llvm.loop !148

178:                                              ; preds = %155, %150, %146
  %179 = load i32, ptr @numsflags, align 4, !tbaa !13
  %180 = load i32, ptr @numpflags, align 4, !tbaa !13
  %181 = add nsw i32 %180, %179
  %182 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %183 = icmp sgt i32 %181, 0
  br i1 %183, label %184, label %218

184:                                              ; preds = %213, %178
  %185 = phi i32 [ %187, %213 ], [ %181, %178 ]
  %186 = phi ptr [ %214, %213 ], [ %182, %178 ]
  %187 = add nsw i32 %185, -1
  %188 = getelementptr inbounds %struct.flagent, ptr %186, i64 0, i32 3
  %189 = load i16, ptr %188, align 2, !tbaa !55
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %184
  %192 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %193 = load ptr, ptr %186, align 8, !tbaa !102
  %194 = ptrtoint ptr %193 to i64
  %195 = shl i64 %194, 32
  %196 = ashr exact i64 %195, 32
  %197 = getelementptr inbounds i8, ptr %192, i64 %196
  br label %198

198:                                              ; preds = %191, %184
  %199 = phi ptr [ %197, %191 ], [ null, %184 ]
  store ptr %199, ptr %186, align 8, !tbaa !102
  %200 = getelementptr inbounds %struct.flagent, ptr %186, i64 0, i32 4
  %201 = load i16, ptr %200, align 4, !tbaa !57
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %205 = getelementptr inbounds %struct.flagent, ptr %186, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !103
  %207 = ptrtoint ptr %206 to i64
  %208 = shl i64 %207, 32
  %209 = ashr exact i64 %208, 32
  %210 = getelementptr inbounds i8, ptr %204, i64 %209
  store ptr %210, ptr %205, align 8, !tbaa !103
  br label %213

211:                                              ; preds = %198
  %212 = getelementptr inbounds %struct.flagent, ptr %186, i64 0, i32 1
  store ptr null, ptr %212, align 8, !tbaa !103
  br label %213

213:                                              ; preds = %211, %203
  %214 = getelementptr inbounds %struct.flagent, ptr %186, i64 1
  %215 = icmp ugt i32 %185, 1
  br i1 %215, label %184, label %216, !llvm.loop !149

216:                                              ; preds = %213
  %217 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  br label %218

218:                                              ; preds = %216, %178
  %219 = phi ptr [ %217, %216 ], [ %182, %178 ]
  %220 = icmp sgt i32 %179, 0
  br i1 %220, label %221, label %313

221:                                              ; preds = %305, %218
  %222 = phi ptr [ %309, %305 ], [ %219, %218 ]
  %223 = phi i32 [ %308, %305 ], [ %179, %218 ]
  %224 = getelementptr inbounds %struct.flagent, ptr %222, i64 0, i32 4
  %225 = load i16, ptr %224, align 4, !tbaa !57
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %261, label %227

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.flagent, ptr %222, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !103
  %230 = sext i16 %225 to i64
  %231 = getelementptr inbounds i8, ptr %229, i64 %230
  %232 = getelementptr inbounds i8, ptr %231, i64 -1
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %234
  %236 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %234, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !150
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %261

239:                                              ; preds = %227
  %240 = load ptr, ptr %235, align 16, !tbaa !15
  %241 = icmp eq ptr %240, null
  br i1 %241, label %261, label %245

242:                                              ; preds = %254
  %243 = load ptr, ptr %255, align 8, !tbaa !15
  %244 = icmp eq ptr %243, null
  br i1 %244, label %261, label %245, !llvm.loop !152

245:                                              ; preds = %242, %239
  %246 = phi ptr [ %243, %242 ], [ %240, %239 ]
  %247 = phi ptr [ %257, %242 ], [ %232, %239 ]
  %248 = icmp eq ptr %247, %229
  br i1 %248, label %254, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds i8, ptr %247, i64 -1
  %251 = load i8, ptr %250, align 1, !tbaa !15
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds %struct.flagptr, ptr %246, i64 %252
  br label %254

254:                                              ; preds = %249, %245
  %255 = phi ptr [ %253, %249 ], [ %246, %245 ]
  %256 = phi i32 [ 0, %249 ], [ 1, %245 ]
  %257 = phi ptr [ %250, %249 ], [ %229, %245 ]
  %258 = getelementptr inbounds %struct.flagptr, ptr %255, i64 0, i32 1
  %259 = load i32, ptr %258, align 8, !tbaa !150
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %242, label %261, !llvm.loop !152

261:                                              ; preds = %254, %242, %239, %227, %221
  %262 = phi ptr [ @sflagindex, %221 ], [ %235, %227 ], [ %235, %239 ], [ %255, %254 ], [ %255, %242 ]
  %263 = phi i32 [ 1, %221 ], [ 0, %227 ], [ 0, %239 ], [ %256, %254 ], [ %256, %242 ]
  %264 = getelementptr inbounds %struct.flagptr, ptr %262, i64 0, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !150
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %261
  store ptr %222, ptr %262, align 8, !tbaa !15
  %268 = add nuw nsw i32 %265, 1
  br label %301

269:                                              ; preds = %261
  %270 = add nsw i32 %265, 1
  store i32 %270, ptr %264, align 8, !tbaa !150
  %271 = icmp eq i32 %263, 0
  %272 = icmp sgt i32 %265, 2
  %273 = and i1 %271, %272
  br i1 %273, label %274, label %305

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.flagent, ptr %222, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !103
  %277 = load ptr, ptr %262, align 8, !tbaa !15
  %278 = getelementptr inbounds %struct.flagent, ptr %277, i64 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !103
  %280 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %276, ptr noundef nonnull dereferenceable(1) %279) #37
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %305, label %282

282:                                              ; preds = %274
  %283 = load i32, ptr @numsflags, align 4, !tbaa !13
  %284 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %285 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !130
  %286 = add nsw i32 %285, 128
  %287 = zext i32 %286 to i64
  %288 = tail call noalias ptr @calloc(i64 noundef %287, i64 noundef 16) #43
  store ptr %288, ptr %262, align 8, !tbaa !15
  %289 = icmp eq ptr %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %282
  %291 = load ptr, ptr @stderr, align 8, !tbaa !7
  %292 = tail call i64 @fwrite(ptr nonnull @.str.9.240, i64 45, i64 1, ptr %291) #42
  br label %477

293:                                              ; preds = %282
  %294 = getelementptr inbounds %struct.flagent, ptr %277, i64 -1
  %295 = ptrtoint ptr %294 to i64
  %296 = ptrtoint ptr %284 to i64
  %297 = sub i64 %295, %296
  %298 = lshr exact i64 %297, 8
  %299 = trunc i64 %298 to i32
  %300 = sub i32 %283, %299
  br label %301

301:                                              ; preds = %293, %267
  %302 = phi i32 [ %268, %267 ], [ 0, %293 ]
  %303 = phi i32 [ %223, %267 ], [ %300, %293 ]
  %304 = phi ptr [ %222, %267 ], [ %294, %293 ]
  store i32 %302, ptr %264, align 8, !tbaa !150
  br label %305

305:                                              ; preds = %301, %274, %269
  %306 = phi i32 [ %223, %269 ], [ %223, %274 ], [ %303, %301 ]
  %307 = phi ptr [ %222, %269 ], [ %222, %274 ], [ %304, %301 ]
  %308 = add nsw i32 %306, -1
  %309 = getelementptr inbounds %struct.flagent, ptr %307, i64 1
  %310 = icmp sgt i32 %306, 1
  br i1 %310, label %221, label %311, !llvm.loop !153

311:                                              ; preds = %305
  %312 = load i32, ptr @numpflags, align 4, !tbaa !13
  br label %313

313:                                              ; preds = %311, %218
  %314 = phi i32 [ %312, %311 ], [ %180, %218 ]
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %408

316:                                              ; preds = %313
  %317 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  br label %318

318:                                              ; preds = %402, %316
  %319 = phi ptr [ %406, %402 ], [ %317, %316 ]
  %320 = phi i32 [ %405, %402 ], [ %314, %316 ]
  %321 = getelementptr inbounds %struct.flagent, ptr %319, i64 0, i32 4
  %322 = load i16, ptr %321, align 4, !tbaa !57
  %323 = icmp eq i16 %322, 0
  br i1 %323, label %358, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.flagent, ptr %319, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !103
  %327 = load i8, ptr %326, align 1, !tbaa !15
  %328 = zext i8 %327 to i64
  %329 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %328
  %330 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %328, i32 1
  %331 = load i32, ptr %330, align 8, !tbaa !150
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %358

333:                                              ; preds = %324
  %334 = load ptr, ptr %329, align 16, !tbaa !15
  %335 = icmp eq ptr %334, null
  br i1 %335, label %354, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds i8, ptr %326, i64 1
  br label %344

338:                                              ; preds = %344
  %339 = xor i1 %348, true
  %340 = zext i1 %339 to i64
  %341 = getelementptr inbounds i8, ptr %346, i64 %340
  %342 = load ptr, ptr %350, align 8, !tbaa !15
  %343 = icmp eq ptr %342, null
  br i1 %343, label %354, label %344, !llvm.loop !154

344:                                              ; preds = %338, %336
  %345 = phi ptr [ %334, %336 ], [ %342, %338 ]
  %346 = phi ptr [ %337, %336 ], [ %341, %338 ]
  %347 = load i8, ptr %346, align 1, !tbaa !15
  %348 = icmp eq i8 %347, 0
  %349 = zext i8 %347 to i64
  %350 = getelementptr inbounds %struct.flagptr, ptr %345, i64 %349
  %351 = getelementptr inbounds %struct.flagptr, ptr %345, i64 %349, i32 1
  %352 = load i32, ptr %351, align 8, !tbaa !150
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %338, label %354, !llvm.loop !154

354:                                              ; preds = %344, %338, %333
  %355 = phi ptr [ %329, %333 ], [ %350, %338 ], [ %350, %344 ]
  %356 = phi i1 [ false, %333 ], [ %348, %338 ], [ %348, %344 ]
  %357 = zext i1 %356 to i32
  br label %358

358:                                              ; preds = %354, %324, %318
  %359 = phi ptr [ @pflagindex, %318 ], [ %329, %324 ], [ %355, %354 ]
  %360 = phi i32 [ 1, %318 ], [ 0, %324 ], [ %357, %354 ]
  %361 = getelementptr inbounds %struct.flagptr, ptr %359, i64 0, i32 1
  %362 = load i32, ptr %361, align 8, !tbaa !150
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %358
  store ptr %319, ptr %359, align 8, !tbaa !15
  %365 = add nuw nsw i32 %362, 1
  br label %398

366:                                              ; preds = %358
  %367 = add nsw i32 %362, 1
  store i32 %367, ptr %361, align 8, !tbaa !150
  %368 = icmp eq i32 %360, 0
  %369 = icmp sgt i32 %362, 2
  %370 = and i1 %368, %369
  br i1 %370, label %371, label %402

371:                                              ; preds = %366
  %372 = getelementptr inbounds %struct.flagent, ptr %319, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !103
  %374 = load ptr, ptr %359, align 8, !tbaa !15
  %375 = getelementptr inbounds %struct.flagent, ptr %374, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !103
  %377 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %373, ptr noundef nonnull dereferenceable(1) %376) #37
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %402, label %379

379:                                              ; preds = %371
  %380 = load i32, ptr @numpflags, align 4, !tbaa !13
  %381 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %382 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !130
  %383 = add nsw i32 %382, 128
  %384 = sext i32 %383 to i64
  %385 = tail call noalias ptr @calloc(i64 noundef %384, i64 noundef 16) #43
  store ptr %385, ptr %359, align 8, !tbaa !15
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %379
  %388 = load ptr, ptr @stderr, align 8, !tbaa !7
  %389 = tail call i64 @fwrite(ptr nonnull @.str.9.240, i64 45, i64 1, ptr %388) #42
  br label %477

390:                                              ; preds = %379
  %391 = getelementptr inbounds %struct.flagent, ptr %374, i64 -1
  %392 = ptrtoint ptr %391 to i64
  %393 = ptrtoint ptr %381 to i64
  %394 = sub i64 %392, %393
  %395 = lshr exact i64 %394, 8
  %396 = trunc i64 %395 to i32
  %397 = sub i32 %380, %396
  br label %398

398:                                              ; preds = %390, %364
  %399 = phi i32 [ %365, %364 ], [ 0, %390 ]
  %400 = phi i32 [ %320, %364 ], [ %397, %390 ]
  %401 = phi ptr [ %319, %364 ], [ %391, %390 ]
  store i32 %399, ptr %361, align 8, !tbaa !150
  br label %402

402:                                              ; preds = %398, %371, %366
  %403 = phi i32 [ %320, %366 ], [ %320, %371 ], [ %400, %398 ]
  %404 = phi ptr [ %319, %366 ], [ %319, %371 ], [ %401, %398 ]
  %405 = add nsw i32 %403, -1
  %406 = getelementptr inbounds %struct.flagent, ptr %404, i64 1
  %407 = icmp sgt i32 %403, 1
  br i1 %407, label %318, label %408, !llvm.loop !155

408:                                              ; preds = %402, %313
  %409 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !156
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  store ptr null, ptr @chartypes, align 8, !tbaa !7
  br label %476

412:                                              ; preds = %408
  %413 = sext i32 %409 to i64
  %414 = mul nsw i64 %413, 24
  %415 = tail call noalias ptr @malloc(i64 noundef %414) #44
  store ptr %415, ptr @chartypes, align 8, !tbaa !7
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %420

417:                                              ; preds = %412
  %418 = load ptr, ptr @stderr, align 8, !tbaa !7
  %419 = tail call i64 @fwrite(ptr nonnull @.str.9.240, i64 45, i64 1, ptr %418) #42
  br label %477

420:                                              ; preds = %412
  %421 = icmp sgt i32 %409, 0
  br i1 %421, label %422, label %476

422:                                              ; preds = %420
  %423 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 14), align 4, !tbaa !157
  %424 = zext i32 %409 to i64
  %425 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  br label %426

426:                                              ; preds = %471, %422
  %427 = phi ptr [ %425, %422 ], [ %456, %471 ]
  %428 = phi i64 [ 0, %422 ], [ %474, %471 ]
  %429 = phi i32 [ %423, %422 ], [ %473, %471 ]
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, ptr %427, i64 %430
  %432 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %433 = getelementptr inbounds %struct.success, ptr %432, i64 %428
  store ptr %431, ptr %433, align 8, !tbaa !158
  %434 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %435 = getelementptr inbounds %struct.success, ptr %434, i64 %428
  %436 = load ptr, ptr %435, align 8, !tbaa !158
  %437 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %436) #37
  %438 = trunc i64 %437 to i32
  %439 = add i32 %429, 1
  %440 = add i32 %439, %438
  %441 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %442 = sext i32 %440 to i64
  %443 = getelementptr inbounds i8, ptr %441, i64 %442
  %444 = getelementptr inbounds %struct.success, ptr %434, i64 %428, i32 1
  store ptr %443, ptr %444, align 8, !tbaa !160
  %445 = load ptr, ptr @chartypes, align 8, !tbaa !7
  %446 = getelementptr inbounds %struct.success, ptr %445, i64 %428, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !160
  %448 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %447) #37
  %449 = trunc i64 %448 to i32
  %450 = add i32 %440, 1
  %451 = add i32 %450, %449
  %452 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds i8, ptr %452, i64 %453
  %455 = getelementptr inbounds %struct.success, ptr %445, i64 %428, i32 2
  store ptr %454, ptr %455, align 8, !tbaa !161
  %456 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %457 = getelementptr inbounds i8, ptr %456, i64 %453
  %458 = load i8, ptr %457, align 1, !tbaa !15
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %471, label %460

460:                                              ; preds = %460, %426
  %461 = phi ptr [ %468, %460 ], [ %457, %426 ]
  %462 = phi i32 [ %466, %460 ], [ %451, %426 ]
  %463 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %461) #37
  %464 = trunc i64 %463 to i32
  %465 = add i32 %462, 1
  %466 = add i32 %465, %464
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, ptr %456, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !15
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %471, label %460, !llvm.loop !162

471:                                              ; preds = %460, %426
  %472 = phi i32 [ %451, %426 ], [ %466, %460 ]
  %473 = add nsw i32 %472, 1
  %474 = add nuw nsw i64 %428, 1
  %475 = icmp eq i64 %474, %424
  br i1 %475, label %476, label %426, !llvm.loop !163

476:                                              ; preds = %471, %420, %411
  store i1 true, ptr @inited, align 4
  br label %477

477:                                              ; preds = %476, %417, %387, %290, %143, %126, %97, %84, %58, %46, %33, %26, %21, %19, %5, %0
  %478 = phi i32 [ -1, %5 ], [ -1, %26 ], [ -1, %33 ], [ -1, %46 ], [ -1, %58 ], [ -1, %84 ], [ -1, %97 ], [ -1, %143 ], [ -1, %290 ], [ -1, %387 ], [ 0, %476 ], [ -1, %417 ], [ -1, %126 ], [ 0, %0 ], [ -1, %19 ], [ -1, %21 ]
  ret i32 %478
}

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #25

; Function Attrs: nounwind optsize
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal ptr @lookup(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #38
  %4 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %5 = load i32, ptr @hashsize, align 4, !tbaa !13
  %6 = tail call i32 @hash(ptr noundef %0, i32 noundef %5) #35
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.dent, ptr %4, i64 %7
  %9 = call i32 @ichartostr(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 120, i32 noundef 1) #35
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.10.243, ptr noundef nonnull %3, i32 noundef 475, ptr noundef nonnull @.str.11.244) #39
  br label %14

14:                                               ; preds = %11, %2
  %15 = icmp eq ptr %4, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %14
  %17 = load i8, ptr %3, align 16
  %18 = getelementptr inbounds i8, ptr %3, i64 1
  br label %19

19:                                               ; preds = %43, %16
  %20 = phi ptr [ %8, %16 ], [ %45, %43 ]
  %21 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load i8, ptr %22, align 1, !tbaa !15
  %26 = icmp eq i8 %25, %17
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %22, i64 1
  %29 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %18) #37
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %27, %24, %19
  %32 = getelementptr inbounds %struct.dent, ptr %20, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !66
  %34 = and i64 %33, 1073741824
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %36, %31
  %37 = phi ptr [ %38, %36 ], [ %20, %31 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  %39 = getelementptr inbounds %struct.dent, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !66
  %41 = and i64 %40, 1073741824
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %36, !llvm.loop !164

43:                                               ; preds = %36, %31
  %44 = phi ptr [ %20, %31 ], [ %38, %36 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !70
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %19, !llvm.loop !165

47:                                               ; preds = %43, %14
  %48 = icmp eq i32 %1, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = call ptr @treelookup(ptr noundef %0) #35
  br label %51

51:                                               ; preds = %49, %47, %27
  %52 = phi ptr [ %50, %49 ], [ null, %47 ], [ %20, %27 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #38
  ret ptr %52
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @makedent(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #38
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %6 = shl i64 %5, 32
  %7 = add i64 %6, -4294967296
  %8 = ashr exact i64 %7, 32
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !15
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i8 0, ptr %9, align 1, !tbaa !15
  br label %13

13:                                               ; preds = %12, %3
  store ptr null, ptr %2, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  store i64 67108864, ptr %14, align 8, !tbaa !66
  %15 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !122
  %16 = sext i8 %15 to i32
  %17 = tail call ptr @index(ptr noundef nonnull %0, i32 noundef %16) #37
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i8 0, ptr %17, align 1, !tbaa !15
  br label %20

20:                                               ; preds = %19, %13
  %21 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 100, i32 noundef 1) #36, !range !22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = call i32 @ichartostr(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %1, i32 noundef 1) #36, !range !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8, ptr %4, align 16, !tbaa !15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %59, label %32

29:                                               ; preds = %23, %20
  %30 = load ptr, ptr @stderr, align 8, !tbaa !7
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.249, ptr noundef nonnull %0, i32 noundef 158, ptr noundef nonnull @.str.1.250) #39
  br label %110

32:                                               ; preds = %55, %26
  %33 = phi i8 [ %56, %55 ], [ %27, %26 ]
  %34 = phi ptr [ %57, %55 ], [ %4, %26 ]
  %35 = zext i8 %33 to i64
  %36 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 23, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds i8, ptr %34, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !15
  br label %55

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 26, i64 %35
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = icmp eq i8 %44, 0
  %46 = icmp eq ptr %34, %4
  %47 = or i1 %46, %45
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, ptr %34, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %42
  %53 = load ptr, ptr @stderr, align 8, !tbaa !7
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.2.251, ptr noundef %0) #39
  br label %110

55:                                               ; preds = %48, %39
  %56 = phi i8 [ %41, %39 ], [ %50, %48 ]
  %57 = getelementptr inbounds i8, ptr %34, i64 1
  %58 = icmp eq i8 %56, 0
  br i1 %58, label %59, label %32, !llvm.loop !166

59:                                               ; preds = %55, %26
  %60 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %61 = trunc i64 %60 to i32
  %62 = call i64 @whatcap(ptr noundef nonnull %4) #36, !range !167
  %63 = load i64, ptr %14, align 8, !tbaa !66
  %64 = or i64 %63, %62
  store i64 %64, ptr %14, align 8, !tbaa !66
  %65 = icmp sgt i32 %61, 99
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load ptr, ptr @stderr, align 8, !tbaa !7
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.249, ptr noundef %0, i32 noundef 188, ptr noundef nonnull @.str.1.250) #39
  br label %110

69:                                               ; preds = %59
  %70 = add nsw i32 %61, 1
  %71 = call ptr @mymalloc(i32 noundef %70) #35
  %72 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  store ptr %71, ptr %72, align 8, !tbaa !74
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load ptr, ptr @stderr, align 8, !tbaa !7
  %76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.3.254, ptr noundef %0) #39
  br label %110

77:                                               ; preds = %69
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %0) #35
  %79 = load i64, ptr %14, align 8, !tbaa !66
  %80 = and i64 %79, 805306368
  %81 = icmp eq i64 %80, 805306368
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %72, align 8, !tbaa !74
  call void @chupcase(ptr noundef %83) #36
  br label %84

84:                                               ; preds = %82, %77
  br i1 %18, label %110, label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds i8, ptr %17, i64 1
  br label %87

87:                                               ; preds = %103, %85
  %88 = phi ptr [ %86, %85 ], [ %109, %103 ]
  %89 = load i8, ptr %88, align 1, !tbaa !15
  switch i8 %89, label %90 [
    i8 0, label %110
    i8 10, label %110
  ]

90:                                               ; preds = %87
  %91 = zext i8 %89 to i32
  %92 = add i8 %89, -65
  %93 = icmp ult i8 %92, 27
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = add nsw i32 %91, -65
  %96 = zext i32 %95 to i64
  %97 = shl nuw nsw i64 1, %96
  %98 = load i64, ptr %14, align 8, !tbaa !66
  %99 = or i64 %98, %97
  store i64 %99, ptr %14, align 8, !tbaa !66
  br label %103

100:                                              ; preds = %90
  %101 = load ptr, ptr @stderr, align 8, !tbaa !7
  %102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.4.255, i32 noundef %91) #39
  br label %103

103:                                              ; preds = %100, %94
  %104 = getelementptr inbounds i8, ptr %88, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !122
  %107 = icmp eq i8 %105, %106
  %108 = getelementptr inbounds i8, ptr %88, i64 2
  %109 = select i1 %107, ptr %108, ptr %104
  br label %87, !llvm.loop !168

110:                                              ; preds = %87, %87, %84, %74, %66, %52, %29
  %111 = phi i32 [ -1, %29 ], [ -1, %52 ], [ -1, %66 ], [ -1, %74 ], [ 0, %84 ], [ 0, %87 ], [ 0, %87 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #38
  ret i32 %111
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @strtoichar(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #26 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %37

6:                                                ; preds = %30, %4
  %7 = phi ptr [ %33, %30 ], [ %0, %4 ]
  %8 = phi i32 [ %10, %30 ], [ %2, %4 ]
  %9 = phi ptr [ %35, %30 ], [ %1, %4 ]
  %10 = add nsw i32 %8, -1
  %11 = load i8, ptr %9, align 1, !tbaa !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %6
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 27, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @stringcharlen(ptr noundef nonnull %9, i32 noundef %3) #36
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i8, ptr %9, align 1, !tbaa !15
  br label %27

23:                                               ; preds = %18
  %24 = load i32, ptr @laststringch, align 4, !tbaa !13
  %25 = trunc i32 %24 to i8
  %26 = xor i8 %25, -128
  br label %30

27:                                               ; preds = %21, %13
  %28 = phi i8 [ %22, %21 ], [ %11, %13 ]
  %29 = and i8 %28, 127
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i8 [ %29, %27 ], [ %26, %23 ]
  %32 = phi i32 [ 1, %27 ], [ %19, %23 ]
  %33 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %31, ptr %7, align 1, !tbaa !15
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds i8, ptr %9, i64 %34
  %36 = icmp ugt i32 %8, 2
  br i1 %36, label %6, label %37, !llvm.loop !169

37:                                               ; preds = %30, %6, %4
  %38 = phi i32 [ %2, %4 ], [ 1, %30 ], [ %8, %6 ]
  %39 = phi ptr [ %0, %4 ], [ %33, %30 ], [ %7, %6 ]
  store i8 0, ptr %39, align 1, !tbaa !15
  %40 = icmp slt i32 %38, 2
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @ichartostr(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #26 {
  %5 = icmp sgt i32 %2, 1
  br i1 %5, label %6, label %58

6:                                                ; preds = %4
  %7 = icmp eq i32 %3, 0
  br label %8

8:                                                ; preds = %55, %6
  %9 = phi ptr [ %0, %6 ], [ %56, %55 ]
  %10 = phi i32 [ %2, %6 ], [ %12, %55 ]
  %11 = phi ptr [ %1, %6 ], [ %13, %55 ]
  %12 = add nsw i32 %10, -1
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = load i8, ptr %11, align 1, !tbaa !15
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %8
  %18 = icmp sgt i8 %14, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 %14, ptr %9, align 1, !tbaa !15
  br label %55

21:                                               ; preds = %17
  %22 = add nsw i32 %15, -128
  br i1 %7, label %23, label %44

23:                                               ; preds = %21
  %24 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !130
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32, ptr @defdupchar, align 4, !tbaa !13
  %28 = zext i32 %24 to i64
  br label %29

29:                                               ; preds = %40, %26
  %30 = phi i64 [ %28, %26 ], [ %31, %40 ]
  %31 = add nsw i64 %30, -1
  %32 = and i64 %31, 4294967295
  %33 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !13
  %35 = icmp eq i32 %34, %27
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %32
  %38 = load i32, ptr %37, align 4, !tbaa !13
  %39 = icmp eq i32 %38, %22
  br i1 %39, label %42, label %40

40:                                               ; preds = %36, %29
  %41 = icmp ugt i64 %30, 1
  br i1 %41, label %29, label %44, !llvm.loop !170

42:                                               ; preds = %36
  %.lcssa = phi i64 [ %31, %36 ]
  %43 = trunc i64 %.lcssa to i32
  br label %44

44:                                               ; preds = %42, %40, %23, %21
  %45 = phi i32 [ %22, %21 ], [ %22, %23 ], [ %43, %42 ], [ %22, %40 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %46
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi ptr [ %9, %44 ], [ %53, %48 ]
  %50 = phi ptr [ %47, %44 ], [ %51, %48 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  %52 = load i8, ptr %50, align 1, !tbaa !15
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %52, ptr %49, align 1, !tbaa !15
  %54 = icmp eq i8 %52, 0
  br i1 %54, label %55, label %48, !llvm.loop !171

55:                                               ; preds = %48, %19
  %56 = phi ptr [ %20, %19 ], [ %49, %48 ]
  %57 = icmp sgt i32 %10, 2
  br i1 %57, label %8, label %58, !llvm.loop !172

58:                                               ; preds = %55, %8, %4
  %59 = phi i32 [ %2, %4 ], [ 1, %55 ], [ %10, %8 ]
  %60 = phi ptr [ %0, %4 ], [ %56, %55 ], [ %9, %8 ]
  store i8 0, ptr %60, align 1, !tbaa !15
  %61 = icmp slt i32 %59, 2
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i64 @whatcap(ptr nocapture noundef readonly %0) #19 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %41, label %4

4:                                                ; preds = %11, %1
  %5 = phi i8 [ %13, %11 ], [ %2, %1 ]
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 25, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %41, label %4, !llvm.loop !173

15:                                               ; preds = %19
  %16 = getelementptr inbounds i8, ptr %21, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19, !llvm.loop !174

19:                                               ; preds = %15, %4
  %20 = phi i8 [ %17, %15 ], [ %5, %4 ]
  %21 = phi ptr [ %16, %15 ], [ %6, %4 ]
  %22 = zext i8 %20 to i64
  %23 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %15, label %41

26:                                               ; preds = %15
  %27 = zext i8 %2 to i64
  %28 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %36, %26
  %32 = phi ptr [ %33, %36 ], [ %0, %26 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = zext i8 %34 to i64
  %38 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %31, label %41, !llvm.loop !175

41:                                               ; preds = %36, %31, %26, %19, %11, %1
  %42 = phi i64 [ 0, %26 ], [ 268435456, %1 ], [ 536870912, %31 ], [ 805306368, %36 ], [ 805306368, %19 ], [ 268435456, %11 ]
  ret i64 %42
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @chupcase(ptr noundef %0) #12 {
  %2 = tail call ptr @strtosichar(ptr noundef %0, i32 noundef 1) #36
  %3 = load i8, ptr @strtosichar.out, align 16, !tbaa !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %1
  %6 = phi i8 [ %12, %5 ], [ %3, %1 ]
  %7 = phi ptr [ %11, %5 ], [ @strtosichar.out, %1 ]
  %8 = zext i8 %6 to i64
  %9 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !15
  store i8 %10, ptr %7, align 1, !tbaa !15
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %5, !llvm.loop !176

14:                                               ; preds = %5, %1
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %16 = trunc i64 %15 to i32
  %17 = add i32 %16, 1
  %18 = tail call i32 @ichartostr(ptr noundef %0, ptr noundef nonnull @strtosichar.out, i32 noundef %17, i32 noundef 1) #36, !range !22
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal nonnull ptr @strtosichar(ptr noundef %0, i32 noundef %1) #12 {
  %3 = tail call i32 @strtoichar(ptr noundef nonnull @strtosichar.out, ptr noundef %0, i32 noundef 184, i32 noundef %1) #36, !range !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.249, ptr noundef %0, i32 noundef 944, ptr noundef nonnull @.str.1.250) #39
  br label %8

8:                                                ; preds = %5, %2
  ret ptr @strtosichar.out
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal i32 @stringcharlen(ptr nocapture noundef readonly %0, i32 noundef %1) #27 {
  %3 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 12), align 4, !tbaa !130
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
  %13 = add nsw i32 %11, %12
  %14 = ashr i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %28, %10
  %20 = phi i8 [ %30, %28 ], [ %17, %10 ]
  %21 = phi ptr [ %23, %28 ], [ %0, %10 ]
  %22 = phi ptr [ %29, %28 ], [ %16, %10 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %21, align 1, !tbaa !15
  %25 = xor i8 %24, %20
  %26 = and i8 %25, 127
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %19
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %19, !llvm.loop !177

32:                                               ; preds = %28, %10
  %33 = phi ptr [ %16, %10 ], [ %29, %28 ]
  %34 = phi ptr [ %0, %10 ], [ %23, %28 ]
  %35 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 30, i64 %15
  %36 = load i32, ptr %35, align 4, !tbaa !13
  %37 = icmp eq i32 %36, %6
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %.lcssa2 = phi ptr [ %33, %32 ]
  %.lcssa1 = phi i64 [ %15, %32 ]
  %.lcssa = phi ptr [ %16, %32 ]
  %39 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 29, i64 %.lcssa1
  %40 = load i32, ptr %39, align 4, !tbaa !13
  store i32 %40, ptr @laststringch, align 4, !tbaa !13
  %41 = ptrtoint ptr %.lcssa2 to i64
  %42 = ptrtoint ptr %.lcssa to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  br label %75

45:                                               ; preds = %32
  %46 = getelementptr inbounds i8, ptr %33, i64 -1
  %47 = load i8, ptr %46, align 1, !tbaa !15
  br label %48

48:                                               ; preds = %45, %19
  %49 = phi i8 [ %47, %45 ], [ %20, %19 ]
  %50 = phi ptr [ %34, %45 ], [ %23, %19 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 -1
  %52 = load i8, ptr %51, align 1, !tbaa !15
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
  %64 = load i32, ptr %63, align 4, !tbaa !13
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
  br i1 %73, label %74, label %10, !llvm.loop !178

74:                                               ; preds = %70, %2
  store i32 -1, ptr @laststringch, align 4, !tbaa !13
  br label %75

75:                                               ; preds = %74, %38
  %76 = phi i32 [ %44, %38 ], [ 0, %74 ]
  ret i32 %76
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @addvheader(ptr nocapture noundef %0) #0 {
  %2 = tail call ptr @mymalloc(i32 noundef 24) #35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @stderr, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.3.254, ptr noundef %7) #39
  br label %39

9:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !179
  %10 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !66
  %12 = and i64 %11, 805306368
  %13 = icmp eq i64 %12, 805306368
  %14 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  br i1 %13, label %16, label %15

15:                                               ; preds = %9
  store ptr null, ptr %14, align 8, !tbaa !74
  br label %32

16:                                               ; preds = %9
  %17 = load ptr, ptr %14, align 8, !tbaa !74
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #37
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = tail call ptr @mymalloc(i32 noundef %20) #35
  store ptr %21, ptr %14, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load ptr, ptr @stderr, align 8, !tbaa !7
  %25 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.3.254, ptr noundef %26) #39
  tail call void @myfree(ptr noundef nonnull %2) #35
  br label %39

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !74
  %31 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %30) #35
  br label %32

32:                                               ; preds = %28, %15
  %33 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  tail call void @chupcase(ptr noundef %34) #36
  store ptr %2, ptr %0, align 8, !tbaa !70
  %35 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !66
  %37 = and i64 %36, -1879048193
  %38 = or i64 %37, 1342177280
  store i64 %38, ptr %35, align 8, !tbaa !66
  br label %39

39:                                               ; preds = %32, %23, %4
  %40 = phi i32 [ -1, %4 ], [ 0, %32 ], [ -1, %23 ]
  ret i32 %40
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @combinecaps(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !66
  %5 = and i64 %4, 1879048192
  %6 = icmp eq i64 %5, 1342177280
  br i1 %6, label %7, label %17

7:                                                ; preds = %13, %2
  %8 = phi ptr [ %14, %13 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.dent, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !66
  %11 = and i64 %10, 1073741824
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 8, !tbaa !70
  %15 = tail call fastcc i32 @combine_two_entries(ptr noundef %0, ptr noundef %14, ptr noundef %1) #36, !range !22
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %7, label %69, !llvm.loop !180

17:                                               ; preds = %2
  %18 = tail call fastcc i32 @combine_two_entries(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %1) #36, !range !22
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %69

20:                                               ; preds = %17, %7
  %21 = phi ptr [ %0, %17 ], [ %8, %7 ]
  %22 = load i64, ptr %3, align 8, !tbaa !66
  %23 = and i64 %22, 1879048192
  switch i64 %23, label %32 [
    i64 268435456, label %24
    i64 1342177280, label %34
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dent, ptr %21, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !66
  %29 = xor i64 %28, %26
  %30 = and i64 %29, 134217728
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24, %20
  %33 = tail call i32 @addvheader(ptr noundef nonnull %0) #36, !range !32
  br label %34

34:                                               ; preds = %32, %24, %20
  %35 = tail call ptr @mymalloc(i32 noundef 24) #35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !7
  %39 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !74
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.3.254, ptr noundef %40) #39
  br label %69

42:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !179
  %43 = load ptr, ptr %0, align 8, !tbaa !70
  store ptr %43, ptr %35, align 8, !tbaa !70
  store ptr %35, ptr %0, align 8, !tbaa !70
  %44 = load i64, ptr %3, align 8, !tbaa !66
  %45 = and i64 %44, 1073741824
  %46 = getelementptr inbounds %struct.dent, ptr %35, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = or i64 %47, %45
  store i64 %48, ptr %46, align 8, !tbaa !66
  %49 = load i64, ptr %3, align 8, !tbaa !66
  %50 = or i64 %49, 1073741824
  store i64 %50, ptr %3, align 8, !tbaa !66
  %51 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !66
  %53 = and i64 %52, -2080374785
  %54 = or i64 %53, %50
  store i64 %54, ptr %3, align 8, !tbaa !66
  %55 = load i64, ptr %51, align 8, !tbaa !66
  %56 = and i64 %55, 134217728
  %57 = or i64 %56, %54
  store i64 %57, ptr %3, align 8, !tbaa !66
  %58 = load i64, ptr %51, align 8, !tbaa !66
  %59 = and i64 %58, 805306368
  %60 = icmp eq i64 %59, 805306368
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !74
  %64 = getelementptr inbounds %struct.dent, ptr %35, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !74
  br label %69

65:                                               ; preds = %42
  %66 = getelementptr inbounds %struct.dent, ptr %35, i64 0, i32 1
  store ptr null, ptr %66, align 8, !tbaa !74
  %67 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !74
  tail call void @myfree(ptr noundef %68) #35
  br label %69

69:                                               ; preds = %65, %61, %37, %17, %13
  %70 = phi i32 [ -1, %37 ], [ 0, %61 ], [ 0, %65 ], [ 1, %17 ], [ 1, %13 ]
  ret i32 %70
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @combine_two_entries(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @acoversb(ptr noundef %1, ptr noundef %2) #36, !range !22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !66
  %9 = and i64 %8, -2080374785
  %10 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !66
  %12 = or i64 %11, %9
  store i64 %12, ptr %10, align 8, !tbaa !66
  %13 = load i64, ptr %7, align 8, !tbaa !66
  %14 = and i64 %13, 134217728
  %15 = or i64 %14, %12
  store i64 %15, ptr %10, align 8, !tbaa !66
  %16 = load i64, ptr %7, align 8, !tbaa !66
  %17 = and i64 %16, 134217728
  %18 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !66
  %20 = or i64 %19, %17
  store i64 %20, ptr %18, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  tail call void @myfree(ptr noundef %22) #35
  br label %61

23:                                               ; preds = %3
  %24 = tail call fastcc i32 @acoversb(ptr noundef %2, ptr noundef %1) #36, !range !22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !66
  %29 = and i64 %28, -2080374785
  %30 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !66
  %32 = or i64 %31, %29
  store i64 %32, ptr %30, align 8, !tbaa !66
  %33 = load i64, ptr %27, align 8, !tbaa !66
  %34 = and i64 %33, 1207959552
  %35 = or i64 %34, %32
  store i64 %35, ptr %30, align 8, !tbaa !66
  %36 = and i64 %35, 134217728
  %37 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !66
  %39 = or i64 %36, %38
  store i64 %39, ptr %37, align 8, !tbaa !66
  %40 = load ptr, ptr %1, align 8, !tbaa !70
  store ptr %40, ptr %2, align 8, !tbaa !70
  %41 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !74
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !74
  %47 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %46) #35
  br label %48

48:                                               ; preds = %44, %26
  %49 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !74
  tail call void @myfree(ptr noundef %50) #35
  %51 = load ptr, ptr %41, align 8, !tbaa !74
  store ptr %51, ptr %49, align 8, !tbaa !74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !179
  %52 = load i64, ptr %30, align 8, !tbaa !66
  %53 = and i64 %52, 805306368
  %54 = icmp eq i64 %53, 805306368
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i64, ptr %37, align 8, !tbaa !66
  %57 = and i64 %56, 1879048192
  %58 = icmp eq i64 %57, 1342177280
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = tail call i32 @addvheader(ptr noundef nonnull %0) #36, !range !32
  br label %61

61:                                               ; preds = %59, %55, %48, %23, %6
  %62 = phi i32 [ 1, %6 ], [ 1, %59 ], [ 1, %55 ], [ 1, %48 ], [ 0, %23 ]
  ret i32 %62
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @acoversb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.dent, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !66
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
  %29 = load ptr, ptr %28, align 8, !tbaa !74
  %30 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %31) #37
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

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @upcase(ptr nocapture noundef %0) #26 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !15
  store i8 %9, ptr %6, align 1, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !176

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @lowcase(ptr nocapture noundef %0) #26 {
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %11, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !15
  store i8 %9, ptr %6, align 1, !tbaa !15
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %4, !llvm.loop !181

13:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @toutent(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) #12 {
  %4 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #38
  %5 = getelementptr inbounds %struct.dent, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %6, i32 noundef 100, i32 noundef 1) #36, !range !22
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = load ptr, ptr %5, align 8, !tbaa !74
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.249, ptr noundef %11, i32 noundef 700, ptr noundef nonnull @.str.1.250) #39
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp ne i32 %2, 0
  br label %15

15:                                               ; preds = %87, %13
  %16 = phi ptr [ %1, %13 ], [ %88, %87 ]
  %17 = getelementptr inbounds %struct.dent, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !66
  %19 = and i64 %18, 134217728
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %14, i1 %20, i1 false
  br i1 %21, label %82, label %22

22:                                               ; preds = %15
  %23 = lshr i64 %18, 28
  %24 = and i64 %23, 3
  switch i64 %24, label %81 [
    i64 0, label %25
    i64 1, label %39
    i64 2, label %58
    i64 3, label %78
  ]

25:                                               ; preds = %22
  %26 = load i8, ptr %4, align 16, !tbaa !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %28, %25
  %29 = phi i8 [ %35, %28 ], [ %26, %25 ]
  %30 = phi ptr [ %34, %28 ], [ %4, %25 ]
  %31 = zext i8 %29 to i64
  %32 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !15
  store i8 %33, ptr %30, align 1, !tbaa !15
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %28, !llvm.loop !181

37:                                               ; preds = %28, %25
  %38 = call ptr @ichartosstr(ptr noundef nonnull %4, i32 noundef 1) #36
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef nonnull @ichartosstr.out, ptr noundef %16) #36
  br label %82

39:                                               ; preds = %22
  %40 = and i64 %18, 1073741824
  %41 = icmp ne i64 %40, 0
  %42 = icmp eq ptr %16, %1
  %43 = and i1 %41, %42
  br i1 %43, label %82, label %44

44:                                               ; preds = %39
  %45 = load i8, ptr %4, align 16, !tbaa !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %47, %44
  %48 = phi i8 [ %54, %47 ], [ %45, %44 ]
  %49 = phi ptr [ %53, %47 ], [ %4, %44 ]
  %50 = zext i8 %48 to i64
  %51 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !15
  store i8 %52, ptr %49, align 1, !tbaa !15
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %47, !llvm.loop !176

56:                                               ; preds = %47, %44
  %57 = call ptr @ichartosstr(ptr noundef nonnull %4, i32 noundef 1) #36
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef nonnull @ichartosstr.out, ptr noundef %16) #36
  br label %82

58:                                               ; preds = %22
  %59 = load i8, ptr %4, align 16, !tbaa !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %61, %58
  %62 = phi i8 [ %68, %61 ], [ %59, %58 ]
  %63 = phi ptr [ %67, %61 ], [ %4, %58 ]
  %64 = zext i8 %62 to i64
  %65 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !15
  store i8 %66, ptr %63, align 1, !tbaa !15
  %67 = getelementptr inbounds i8, ptr %63, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !15
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %61, !llvm.loop !181

70:                                               ; preds = %61
  %71 = load i8, ptr %4, align 16, !tbaa !15
  br label %72

72:                                               ; preds = %70, %58
  %73 = phi i8 [ %71, %70 ], [ 0, %58 ]
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !15
  store i8 %76, ptr %4, align 16, !tbaa !15
  %77 = call ptr @ichartosstr(ptr noundef nonnull %4, i32 noundef 1) #36
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef nonnull @ichartosstr.out, ptr noundef %16) #36
  br label %82

78:                                               ; preds = %22
  %79 = getelementptr inbounds %struct.dent, ptr %16, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !74
  tail call fastcc void @toutword(ptr noundef %0, ptr noundef %80, ptr noundef nonnull %16) #36
  br label %82

81:                                               ; preds = %22
  unreachable

82:                                               ; preds = %78, %72, %56, %39, %37, %15
  %83 = getelementptr inbounds %struct.dent, ptr %16, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !66
  %85 = and i64 %84, 1073741824
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = load ptr, ptr %16, align 8, !tbaa !70
  br label %15

89:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #38
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal nonnull ptr @ichartosstr(ptr nocapture noundef readonly %0, i32 noundef %1) #12 {
  %3 = tail call i32 @ichartostr(ptr noundef nonnull @ichartosstr.out, ptr noundef %0, i32 noundef 184, i32 noundef %1) #36, !range !22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.249, ptr noundef nonnull @ichartosstr.out, i32 noundef 958, ptr noundef nonnull @.str.1.250) #39
  br label %8

8:                                                ; preds = %5, %2
  ret ptr @ichartosstr.out
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @toutword(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 {
  store i1 false, ptr @has_marker, align 4
  %4 = tail call i32 @fputs(ptr %1, ptr %0)
  %5 = getelementptr inbounds %struct.dent, ptr %2, i64 0, i32 2
  br label %6

6:                                                ; preds = %22, %3
  %7 = phi i64 [ 0, %3 ], [ %23, %22 ]
  %8 = load i64, ptr %5, align 8, !tbaa !66
  %9 = shl nuw nsw i64 1, %7
  %10 = and i64 %8, %9
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %6
  %13 = load i1, ptr @has_marker, align 4
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = load i8, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 19), align 4, !tbaa !122
  %16 = sext i8 %15 to i32
  %17 = tail call i32 @putc(i32 noundef %16, ptr noundef %0) #36
  br label %18

18:                                               ; preds = %14, %12
  store i1 true, ptr @has_marker, align 4
  %19 = trunc i64 %7 to i32
  %20 = add i32 %19, 65
  %21 = tail call i32 @putc(i32 noundef %20, ptr noundef %0) #36
  br label %22

22:                                               ; preds = %18, %6
  %23 = add nuw nsw i64 %7, 1
  %24 = icmp eq i64 %23, 26
  br i1 %24, label %25, label %6, !llvm.loop !182

25:                                               ; preds = %22
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal nonnull ptr @printichar(i32 noundef %0) #28 {
  %2 = icmp slt i32 %0, 128
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = trunc i32 %0 to i8
  store i8 %4, ptr @printichar.out, align 1, !tbaa !15
  store i8 0, ptr getelementptr inbounds ([11 x i8], ptr @printichar.out, i64 0, i64 1), align 1, !tbaa !15
  br label %10

5:                                                ; preds = %1
  %6 = add nsw i32 %0, -128
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 28, i64 %7
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @printichar.out, ptr noundef nonnull dereferenceable(1) %8) #35
  br label %10

10:                                               ; preds = %5, %3
  ret ptr @printichar.out
}

; Function Attrs: nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @findfiletype(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #29 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37
  %5 = trunc i64 %4 to i32
  %6 = icmp eq i32 %1, 0
  %7 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 13), align 4, !tbaa !156
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
  %16 = load ptr, ptr %15, align 8, !tbaa !158
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %16) #37
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
  br i1 %26, label %27, label %13, !llvm.loop !183

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
  %35 = load ptr, ptr %34, align 8, !tbaa !161
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %55, %32
  %39 = phi ptr [ %59, %55 ], [ %35, %32 ]
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #37
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %5, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %38
  %44 = sub i64 %4, %40
  %45 = shl i64 %44, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %39) #37
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
  %60 = load i8, ptr %59, align 1, !tbaa !15
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %38, !llvm.loop !184

62:                                               ; preds = %55, %32
  %63 = add nuw nsw i64 %33, 1
  %64 = icmp eq i64 %63, %31
  br i1 %64, label %72, label %32, !llvm.loop !185

65:                                               ; preds = %53, %22
  %66 = phi ptr [ %54, %53 ], [ %23, %22 ]
  %67 = phi i32 [ %51, %53 ], [ %20, %22 ]
  %68 = load ptr, ptr %66, align 8, !tbaa !160
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(4) @.str.5.270) #37
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, ptr %2, align 4, !tbaa !13
  br label %72

72:                                               ; preds = %65, %62, %50, %27, %19, %8
  %73 = phi i32 [ %20, %19 ], [ %51, %50 ], [ -1, %27 ], [ -1, %8 ], [ %67, %65 ], [ -1, %62 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @erase() #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @move(i32 noundef %0, i32 noundef %1) #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @inverse() #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @normal() #30 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @backup() #30 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @terminit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.winsize, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #38
  %3 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21523, ptr noundef nonnull %2) #35
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.winsize, ptr %2, i64 0, i32 1
  %7 = load i16, ptr %6, align 2, !tbaa !186
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = zext i16 %7 to i32
  store i32 %10, ptr @co, align 4, !tbaa !13
  br label %11

11:                                               ; preds = %9, %5
  %12 = load i16, ptr %2, align 2, !tbaa !188
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = zext i16 %12 to i32
  store i32 %15, ptr @li, align 4, !tbaa !13
  br label %16

16:                                               ; preds = %14, %11, %0
  %17 = call ptr @getenv(ptr noundef nonnull @.str.283) #35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 @atoi(ptr nocapture noundef nonnull %17) #37
  store i32 %20, ptr @co, align 4, !tbaa !13
  br label %21

21:                                               ; preds = %19, %16
  %22 = call ptr @getenv(ptr noundef nonnull @.str.1.284) #35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @atoi(ptr nocapture noundef nonnull %22) #37
  store i32 %25, ptr @li, align 4, !tbaa !13
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, ptr @contextsize, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, ptr @li, align 4, !tbaa !13
  %31 = sdiv i32 %30, 10
  store i32 %31, ptr @contextsize, align 4, !tbaa !13
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i32 [ %31, %29 ], [ %27, %26 ]
  %34 = icmp sgt i32 %33, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 10, ptr @contextsize, align 4, !tbaa !13
  br label %40

36:                                               ; preds = %32
  %37 = icmp slt i32 %33, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  store i32 2, ptr @contextsize, align 4, !tbaa !13
  %39 = load i32, ptr @li, align 4, !tbaa !13
  br label %50

40:                                               ; preds = %36, %35
  %41 = phi i32 [ %33, %36 ], [ 10, %35 ]
  %42 = load i32, ptr @li, align 4, !tbaa !13
  %43 = add nuw nsw i32 %41, 8
  %44 = icmp slt i32 %42, %43
  %45 = icmp ugt i32 %41, 2
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 @llvm.smax.i32(i32 %42, i32 10)
  %49 = add nsw i32 %48, -8
  store i32 %49, ptr @contextsize, align 4
  br label %50

50:                                               ; preds = %47, %40, %38
  %51 = phi i32 [ %39, %38 ], [ %42, %47 ], [ %42, %40 ]
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load ptr, ptr @stderr, align 8, !tbaa !7
  %55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.2.285, i32 noundef 10) #39
  br label %56

56:                                               ; preds = %53, %50
  %57 = call i32 @isatty(i32 noundef 0) #35
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load ptr, ptr @stderr, align 8, !tbaa !7
  %61 = call i64 @fwrite(ptr nonnull @.str.3.286, i64 41, i64 1, ptr %60) #42
  call void @exit(i32 noundef 1) #40
  unreachable

62:                                               ; preds = %56
  %63 = call i32 @tcgetattr(i32 noundef 0, ptr noundef nonnull @osbuf) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) @sbuf, ptr noundef nonnull align 4 dereferenceable(60) @osbuf, i64 60, i1 false), !tbaa.struct !189
  %64 = load i32, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !190
  %65 = and i32 %64, -107
  store i32 %65, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 3), align 4, !tbaa !190
  %66 = load <2 x i32>, ptr @sbuf, align 8, !tbaa !13
  %67 = and <2 x i32> %66, <i32 -449, i32 -2>
  store <2 x i32> %67, ptr @sbuf, align 8, !tbaa !13
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 6), align 1, !tbaa !15
  store i8 1, ptr getelementptr inbounds (%struct.termios, ptr @sbuf, i64 0, i32 5, i64 5), align 2, !tbaa !15
  %68 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #35
  %69 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 2), align 1, !tbaa !15
  %70 = zext i8 %69 to i32
  store i32 %70, ptr @uerasechar, align 4, !tbaa !13
  %71 = load i8, ptr getelementptr inbounds (%struct.termios, ptr @osbuf, i64 0, i32 5, i64 3), align 4, !tbaa !15
  %72 = zext i8 %71 to i32
  store i32 %72, ptr @ukillchar, align 4, !tbaa !13
  %73 = call i32 (i32, i64, ...) @ioctl(i32 noundef 0, i64 noundef 21519, ptr noundef nonnull %1) #35
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load ptr, ptr @stderr, align 8, !tbaa !7
  %77 = call i64 @fwrite(ptr nonnull @.str.3.286, i64 41, i64 1, ptr %76) #42
  call void @exit(i32 noundef 1) #40
  unreachable

78:                                               ; preds = %62
  %79 = call ptr @signal(i32 noundef 2, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %79, ptr @oldint, align 8, !tbaa !7
  %80 = icmp eq ptr %79, inttoptr (i64 1 to ptr)
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #35
  br label %83

83:                                               ; preds = %81, %78
  %84 = call ptr @signal(i32 noundef 15, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %84, ptr @oldterm, align 8, !tbaa !7
  %85 = icmp eq ptr %84, inttoptr (i64 1 to ptr)
  br i1 %85, label %88, label %86

86:                                               ; preds = %83
  %87 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #35
  br label %88

88:                                               ; preds = %86, %83
  %89 = call ptr @signal(i32 noundef 21, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %89, ptr @oldttin, align 8, !tbaa !7
  %90 = icmp eq ptr %89, inttoptr (i64 1 to ptr)
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #35
  br label %93

93:                                               ; preds = %91, %88
  %94 = call ptr @signal(i32 noundef 22, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %94, ptr @oldttou, align 8, !tbaa !7
  %95 = icmp eq ptr %94, inttoptr (i64 1 to ptr)
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #35
  br label %98

98:                                               ; preds = %96, %93
  %99 = call ptr @signal(i32 noundef 20, ptr noundef nonnull inttoptr (i64 1 to ptr)) #35
  store ptr %99, ptr @oldtstp, align 8, !tbaa !7
  %100 = icmp eq ptr %99, inttoptr (i64 1 to ptr)
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  %102 = call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #35
  br label %103

103:                                              ; preds = %101, %98
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #38
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #23

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @done(i32 %0) #22 {
  %2 = load i8, ptr @tempfile, align 16, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @unlink(ptr noundef nonnull @tempfile) #35
  br label %6

6:                                                ; preds = %4, %1
  tail call void @exit(i32 noundef 0) #40
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @onstop(i32 noundef %0) #0 {
  %2 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #35
  %3 = tail call ptr @signal(i32 noundef %0, ptr noundef null) #35
  %4 = tail call i32 @kill(i32 noundef 0, i32 noundef %0) #35
  %5 = tail call ptr @signal(i32 noundef %0, ptr noundef nonnull @onstop) #35
  %6 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #35
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize uwtable
define internal void @stop() #0 {
  tail call void @onstop(i32 noundef 20) #36
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @shellescape(ptr noundef %0) #0 {
  %2 = alloca [100 x ptr], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38
  %4 = load i8, ptr %0, align 1, !tbaa !15
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
  %15 = load i8, ptr %14, align 1, !tbaa !15
  br label %10, !llvm.loop !192

16:                                               ; preds = %10
  %.lcssa = phi ptr [ %12, %10 ]
  %17 = add nuw i64 %7, 1
  %18 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %7
  store ptr %.lcssa, ptr %18, align 8, !tbaa !7
  br label %19

19:                                               ; preds = %22, %16
  %20 = phi ptr [ %.lcssa, %16 ], [ %23, %22 ]
  %21 = load i8, ptr %20, align 1, !tbaa !15
  switch i8 %21, label %22 [
    i8 0, label %28
    i8 9, label %24
    i8 32, label %24
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  br label %19, !llvm.loop !193

24:                                               ; preds = %19, %19
  %.lcssa1 = phi ptr [ %20, %19 ], [ %20, %19 ]
  %25 = getelementptr inbounds i8, ptr %.lcssa1, i64 1
  store i8 0, ptr %.lcssa1, align 1, !tbaa !15
  %26 = load i8, ptr %25, align 1, !tbaa !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %6, !llvm.loop !194

28:                                               ; preds = %24, %19, %10, %1
  %29 = phi i64 [ 0, %1 ], [ %17, %19 ], [ %7, %10 ], [ %17, %24 ]
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds [100 x ptr], ptr %2, i64 0, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !7
  %32 = tail call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @osbuf) #35
  %33 = load ptr, ptr @oldint, align 8, !tbaa !7
  %34 = tail call ptr @signal(i32 noundef 2, ptr noundef %33) #35
  %35 = load ptr, ptr @oldterm, align 8, !tbaa !7
  %36 = tail call ptr @signal(i32 noundef 15, ptr noundef %35) #35
  %37 = load ptr, ptr @oldttin, align 8, !tbaa !7
  %38 = tail call ptr @signal(i32 noundef 21, ptr noundef %37) #35
  %39 = load ptr, ptr @oldttou, align 8, !tbaa !7
  %40 = tail call ptr @signal(i32 noundef 22, ptr noundef %39) #35
  %41 = load ptr, ptr @oldtstp, align 8, !tbaa !7
  %42 = tail call ptr @signal(i32 noundef 20, ptr noundef %41) #35
  %43 = tail call i32 @fork() #35
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load ptr, ptr %2, align 16, !tbaa !7
  %47 = call i32 @execvp(ptr noundef %46, ptr noundef nonnull %2) #35
  call void @_exit(i32 noundef 123) #40
  unreachable

48:                                               ; preds = %28
  %49 = icmp sgt i32 %43, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %50, %48
  %51 = call i32 (ptr, ...) @wait(ptr noundef nonnull %3) #35
  %52 = icmp eq i32 %51, %43
  br i1 %52, label %53, label %50, !llvm.loop !195

53:                                               ; preds = %50
  %54 = load i32, ptr %3, align 4, !tbaa !13
  %55 = icmp ne i32 %54, 31488
  %56 = sext i1 %55 to i32
  br label %59

57:                                               ; preds = %48
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.293)
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ -1, %57 ], [ %56, %53 ]
  store i32 %60, ptr %3, align 4, !tbaa !13
  %61 = load ptr, ptr @oldint, align 8, !tbaa !7
  %62 = icmp eq ptr %61, inttoptr (i64 1 to ptr)
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @done) #35
  br label %65

65:                                               ; preds = %63, %59
  %66 = load ptr, ptr @oldterm, align 8, !tbaa !7
  %67 = icmp eq ptr %66, inttoptr (i64 1 to ptr)
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call ptr @signal(i32 noundef 15, ptr noundef nonnull @done) #35
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr @oldttin, align 8, !tbaa !7
  %72 = icmp eq ptr %71, inttoptr (i64 1 to ptr)
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call ptr @signal(i32 noundef 21, ptr noundef nonnull @onstop) #35
  br label %75

75:                                               ; preds = %73, %70
  %76 = load ptr, ptr @oldttou, align 8, !tbaa !7
  %77 = icmp eq ptr %76, inttoptr (i64 1 to ptr)
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = call ptr @signal(i32 noundef 22, ptr noundef nonnull @onstop) #35
  br label %80

80:                                               ; preds = %78, %75
  %81 = load ptr, ptr @oldtstp, align 8, !tbaa !7
  %82 = icmp eq ptr %81, inttoptr (i64 1 to ptr)
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call ptr @signal(i32 noundef 20, ptr noundef nonnull @onstop) #35
  br label %85

85:                                               ; preds = %83, %80
  %86 = call i32 @tcsetattr(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @sbuf) #35
  %87 = load i32, ptr %3, align 4, !tbaa !13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.294) #36
  %91 = load ptr, ptr @stdout, align 8, !tbaa !7
  %92 = call i32 @fflush(ptr noundef %91) #36
  br label %93

93:                                               ; preds = %93, %89
  %94 = call i32 @getchar() #36
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %93, !llvm.loop !196

96:                                               ; preds = %93
  %97 = load i32, ptr %3, align 4, !tbaa !13
  br label %98

98:                                               ; preds = %96, %85
  %99 = phi i32 [ %97, %96 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %2) #38
  ret i32 %99
}

; Function Attrs: nofree nounwind optsize
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #31

; Function Attrs: optsize
declare i32 @wait(...) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @chk_aff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @pflagindex, i32 noundef %3, i32 noundef %4) #36
  %8 = load i8, ptr %1, align 1, !tbaa !15
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %9
  %11 = getelementptr inbounds [228 x %struct.flagptr], ptr @pflagindex, i64 0, i64 %9, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !150
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %7
  %15 = icmp ne i32 %4, 0
  br label %16

16:                                               ; preds = %40, %14
  %17 = phi ptr [ %1, %14 ], [ %19, %40 ]
  %18 = phi ptr [ %10, %14 ], [ %44, %40 ]
  %19 = getelementptr inbounds i8, ptr %17, i64 1
  %20 = load ptr, ptr %18, align 8, !tbaa !15
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %16
  %23 = load i8, ptr %19, align 1, !tbaa !15
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %59, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.flagptr, ptr %20, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !150
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %20, i32 noundef %3, i32 noundef %4) #36
  %30 = load i32, ptr @numhits, align 4, !tbaa !13
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %15, %31
  %33 = load i32, ptr @cflag, align 4
  %34 = or i32 %33, %3
  %35 = icmp ne i32 %34, 0
  %36 = select i1 %32, i1 true, i1 %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load ptr, ptr %18, align 8, !tbaa !15
  %39 = load i8, ptr %19, align 1, !tbaa !15
  br label %40

40:                                               ; preds = %37, %25
  %41 = phi i8 [ %39, %37 ], [ %23, %25 ]
  %42 = phi ptr [ %38, %37 ], [ %20, %25 ]
  %43 = zext i8 %41 to i64
  %44 = getelementptr inbounds %struct.flagptr, ptr %42, i64 %43
  %45 = getelementptr inbounds %struct.flagptr, ptr %42, i64 %43, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !150
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %16, label %48, !llvm.loop !197

48:                                               ; preds = %40, %16, %7
  %49 = phi ptr [ %10, %7 ], [ %44, %40 ], [ %18, %16 ]
  tail call fastcc void @pfx_list_chk(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %49, i32 noundef %3, i32 noundef %4) #36
  %50 = load i32, ptr @numhits, align 4, !tbaa !13
  %51 = icmp eq i32 %50, 0
  %52 = icmp ne i32 %4, 0
  %53 = or i1 %52, %51
  %54 = load i32, ptr @cflag, align 4
  %55 = or i32 %54, %3
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %53, i1 true, i1 %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  tail call fastcc void @chk_suf(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %6, ptr noundef null, i32 noundef %3, i32 noundef %4) #36
  br label %59

59:                                               ; preds = %58, %48, %29, %22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @pfx_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #38
  %11 = getelementptr inbounds %struct.flagptr, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !150
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %181

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !tbaa !15
  %16 = and i32 %3, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp eq i32 %6, 0
  %19 = ptrtoint ptr %10 to i64
  %20 = icmp eq i32 %7, 0
  %21 = or i32 %4, 1
  br label %22

22:                                               ; preds = %177, %14
  %23 = phi ptr [ %15, %14 ], [ %178, %177 ]
  %24 = phi i32 [ %12, %14 ], [ %179, %177 ]
  %25 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 6
  %26 = load i16, ptr %25, align 8, !tbaa !98
  %27 = and i16 %26, 2
  %28 = icmp ne i16 %27, 0
  %29 = and i1 %17, %28
  br i1 %29, label %177, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = zext i16 %26 to i32
  %35 = xor i32 %34, %3
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %177

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 4
  %40 = load i16, ptr %39, align 4, !tbaa !57
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %2, %41
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %177

44:                                               ; preds = %38
  %45 = icmp eq i16 %40, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !103
  %49 = sext i16 %40 to i64
  %50 = call i32 @strncmp(ptr noundef %48, ptr noundef %1, i64 noundef %49) #37
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %177

52:                                               ; preds = %46, %44
  %53 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !55
  %55 = sext i16 %54 to i32
  %56 = add nsw i32 %42, %55
  %57 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 5
  %58 = load i16, ptr %57, align 2, !tbaa !99
  %59 = sext i16 %58 to i32
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %177, label %61

61:                                               ; preds = %52
  %62 = icmp eq i16 %54, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %23, align 8, !tbaa !102
  %65 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %64) #35
  %66 = load i16, ptr %53, align 2, !tbaa !55
  %67 = load i16, ptr %39, align 4, !tbaa !57
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i16 [ %67, %63 ], [ %40, %61 ]
  %70 = phi i16 [ %66, %63 ], [ 0, %61 ]
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds i8, ptr %9, i64 %71
  %73 = sext i16 %69 to i64
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  %75 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(1) %74) #35
  %76 = load i16, ptr %57, align 2, !tbaa !99
  %77 = sext i16 %76 to i32
  %78 = icmp sgt i16 %76, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %90, %68
  %80 = phi i32 [ %92, %90 ], [ 0, %68 ]
  %81 = phi ptr [ %91, %90 ], [ %9, %68 ]
  %82 = load i8, ptr %81, align 1, !tbaa !15
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 7, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !15
  %86 = sext i8 %85 to i32
  %87 = shl nuw i32 1, %80
  %88 = and i32 %87, %86
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %177, label %90

90:                                               ; preds = %79
  %91 = getelementptr inbounds i8, ptr %81, i64 1
  %92 = add nuw nsw i32 %80, 1
  %93 = icmp eq i32 %92, %77
  br i1 %93, label %94, label %79, !llvm.loop !198

94:                                               ; preds = %90, %68
  %95 = load i16, ptr %53, align 2, !tbaa !55
  %96 = sext i16 %95 to i32
  %97 = add nsw i32 %42, %96
  %98 = load i32, ptr @cflag, align 4, !tbaa !13
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %102 = load i16, ptr %101, align 8, !tbaa !72
  %103 = sext i16 %102 to i32
  %104 = add nsw i32 %103, 65
  %105 = load i16, ptr %39, align 4, !tbaa !57
  %106 = sext i16 %105 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef %104, i32 noundef %96, i32 noundef %106, i32 noundef -1, i32 noundef 0) #35
  br label %172

107:                                              ; preds = %94
  %108 = call ptr @lookup(ptr noundef nonnull %9, i32 noundef 1) #35
  %109 = icmp eq ptr %108, null
  br i1 %18, label %147, label %110

110:                                              ; preds = %107
  br i1 %109, label %172, label %111

111:                                              ; preds = %110
  %112 = load i16, ptr %39, align 4, !tbaa !57
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !103
  %117 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %116) #35
  %118 = load i16, ptr %39, align 4, !tbaa !57
  %119 = sext i16 %118 to i64
  %120 = getelementptr inbounds i8, ptr %10, i64 %119
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  store i8 43, ptr %120, align 1, !tbaa !15
  %122 = ptrtoint ptr %121 to i64
  br label %123

123:                                              ; preds = %114, %111
  %124 = phi i64 [ %122, %114 ], [ %19, %111 ]
  %125 = phi ptr [ %121, %114 ], [ %10, %111 ]
  %126 = sub i64 %124, %19
  %127 = trunc i64 %126 to i32
  %128 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %125, ptr noundef nonnull dereferenceable(1) %9) #35
  %129 = sext i32 %97 to i64
  %130 = getelementptr inbounds i8, ptr %125, i64 %129
  %131 = load i16, ptr %53, align 2, !tbaa !55
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %123
  %134 = getelementptr inbounds i8, ptr %130, i64 1
  store i8 45, ptr %130, align 1, !tbaa !15
  %135 = load ptr, ptr %23, align 8, !tbaa !102
  %136 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %134, ptr noundef nonnull dereferenceable(1) %135) #35
  %137 = load i16, ptr %53, align 2, !tbaa !55
  br label %138

138:                                              ; preds = %133, %123
  %139 = phi i16 [ %137, %133 ], [ 0, %123 ]
  %140 = phi ptr [ %134, %133 ], [ %130, %123 ]
  %141 = sext i16 %139 to i32
  %142 = ptrtoint ptr %140 to i64
  %143 = add i64 %124, %129
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  %146 = call i32 @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %141, i32 noundef %127, i32 noundef 0, i32 noundef %145, ptr noundef nonnull %108, ptr noundef nonnull %23, ptr noundef null) #35
  br label %172

147:                                              ; preds = %107
  br i1 %109, label %172, label %148

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.dent, ptr %108, i64 0, i32 2
  %150 = load i64, ptr %149, align 8, !tbaa !66
  %151 = getelementptr inbounds %struct.flagent, ptr %23, i64 0, i32 2
  %152 = load i16, ptr %151, align 8, !tbaa !72
  %153 = sext i16 %152 to i64
  %154 = and i64 %153, 4294967295
  %155 = shl nuw i64 1, %154
  %156 = and i64 %155, %150
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %148
  %159 = load i32, ptr @numhits, align 4, !tbaa !13
  %160 = icmp slt i32 %159, 10
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = sext i32 %159 to i64
  %163 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %162
  store ptr %108, ptr %163, align 8, !tbaa !59
  %164 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %162, i32 1
  store ptr %23, ptr %164, align 8, !tbaa !53
  %165 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %162, i32 2
  store ptr null, ptr %165, align 8, !tbaa !58
  %166 = add nsw i32 %159, 1
  store i32 %166, ptr @numhits, align 4, !tbaa !13
  br label %167

167:                                              ; preds = %161, %158
  br i1 %20, label %168, label %172

168:                                              ; preds = %167
  %169 = call i32 @cap_ok(ptr noundef %0, ptr noundef nonnull @hits, i32 noundef %2) #35
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  store i32 0, ptr @numhits, align 4, !tbaa !13
  br label %172

172:                                              ; preds = %171, %167, %148, %147, %138, %110, %100
  %173 = load i16, ptr %25, align 8, !tbaa !98
  %174 = and i16 %173, 1
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %172
  call fastcc void @chk_suf(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %97, i32 noundef %21, ptr noundef nonnull %23, i32 noundef %6, i32 noundef %7) #36
  br label %177

177:                                              ; preds = %176, %172, %79, %52, %46, %38, %33, %22
  %178 = getelementptr inbounds %struct.flagent, ptr %23, i64 1
  %179 = add nsw i32 %24, -1
  %180 = icmp sgt i32 %24, 1
  br i1 %180, label %22, label %181, !llvm.loop !199

181:                                              ; preds = %177, %168, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @chk_suf(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @sflagindex, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #36
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 -1
  %11 = load i8, ptr %10, align 1, !tbaa !15
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12
  %14 = getelementptr inbounds [228 x %struct.flagptr], ptr @sflagindex, i64 0, i64 %12, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !150
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %7
  %18 = icmp ne i32 %6, 0
  br label %19

19:                                               ; preds = %40, %17
  %20 = phi ptr [ %13, %17 ], [ %45, %40 ]
  %21 = phi ptr [ %10, %17 ], [ %42, %40 ]
  %22 = load ptr, ptr %20, align 8, !tbaa !15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %21, %1
  br i1 %25, label %51, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.flagptr, ptr %22, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !150
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %22, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #36
  %31 = load i32, ptr @numhits, align 4, !tbaa !13
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %18, %32
  %34 = load i32, ptr @cflag, align 4
  %35 = or i32 %34, %5
  %36 = icmp ne i32 %35, 0
  %37 = select i1 %33, i1 true, i1 %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %30
  %39 = load ptr, ptr %20, align 8, !tbaa !15
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi ptr [ %39, %38 ], [ %22, %26 ]
  %42 = getelementptr inbounds i8, ptr %21, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !15
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds %struct.flagptr, ptr %41, i64 %44
  %46 = getelementptr inbounds %struct.flagptr, ptr %41, i64 %44, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !150
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %19, label %49, !llvm.loop !200

49:                                               ; preds = %40, %19, %7
  %50 = phi ptr [ %13, %7 ], [ %45, %40 ], [ %20, %19 ]
  tail call fastcc void @suf_list_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %50, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) #36
  br label %51

51:                                               ; preds = %49, %30, %24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @suf_list_chk(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = alloca [184 x i8], align 16
  %10 = alloca [184 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %10) #38
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #35
  %12 = getelementptr inbounds %struct.flagptr, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !150
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %244

15:                                               ; preds = %8
  %16 = load ptr, ptr %3, align 8, !tbaa !15
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

28:                                               ; preds = %240, %15
  %29 = phi ptr [ %16, %15 ], [ %241, %240 ]
  %30 = phi i32 [ %13, %15 ], [ %242, %240 ]
  %31 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 6
  %32 = load i16, ptr %31, align 8, !tbaa !98
  %33 = and i16 %32, 1
  %34 = icmp eq i16 %33, 0
  %35 = select i1 %18, i1 %34, i1 false
  br i1 %35, label %240, label %36

36:                                               ; preds = %28
  %37 = and i16 %32, 2
  %38 = icmp ne i16 %37, 0
  %39 = and i1 %20, %38
  br i1 %39, label %240, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr @compoundflag, align 4, !tbaa !13
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = zext i16 %32 to i32
  %45 = xor i32 %44, %4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %240

48:                                               ; preds = %43, %40
  %49 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !57
  %51 = sext i16 %50 to i32
  %52 = sub nsw i32 %2, %51
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %240

54:                                               ; preds = %48
  %55 = icmp eq i16 %50, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = zext i32 %52 to i64
  %60 = getelementptr inbounds i8, ptr %1, i64 %59
  %61 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(1) %60) #37
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %240

63:                                               ; preds = %56, %54
  %64 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 3
  %65 = load i16, ptr %64, align 2, !tbaa !55
  %66 = sext i16 %65 to i32
  %67 = add nsw i32 %52, %66
  %68 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 5
  %69 = load i16, ptr %68, align 2, !tbaa !99
  %70 = sext i16 %69 to i32
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %240, label %72

72:                                               ; preds = %63
  %73 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #35
  %74 = zext i32 %52 to i64
  %75 = getelementptr inbounds i8, ptr %9, i64 %74
  %76 = load i16, ptr %64, align 2, !tbaa !55
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %29, align 8, !tbaa !102
  %80 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(1) %79) #35
  %81 = load i16, ptr %64, align 2, !tbaa !55
  %82 = sext i16 %81 to i32
  %83 = add nsw i32 %52, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %9, i64 %84
  br label %87

86:                                               ; preds = %72
  store i8 0, ptr %75, align 1, !tbaa !15
  br label %87

87:                                               ; preds = %86, %78
  %88 = phi ptr [ %85, %78 ], [ %75, %86 ]
  %89 = phi i32 [ %83, %78 ], [ %52, %86 ]
  %90 = load i16, ptr %68, align 2, !tbaa !99
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
  %99 = load i8, ptr %98, align 1, !tbaa !15
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 7, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !15
  %103 = sext i8 %102 to i32
  %104 = shl nuw i32 1, %97
  %105 = and i32 %104, %103
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %240, label %92, !llvm.loop !201

107:                                              ; preds = %92
  %108 = load i32, ptr @cflag, align 4, !tbaa !13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %107
  br i1 %18, label %111, label %125

111:                                              ; preds = %110
  %112 = load i16, ptr %21, align 8, !tbaa !72
  %113 = sext i16 %112 to i32
  %114 = add nsw i32 %113, 65
  %115 = load i16, ptr %22, align 2, !tbaa !55
  %116 = sext i16 %115 to i32
  %117 = load i16, ptr %23, align 4, !tbaa !57
  %118 = sext i16 %117 to i32
  %119 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 2
  %120 = load i16, ptr %119, align 8, !tbaa !72
  %121 = sext i16 %120 to i32
  %122 = add nsw i32 %121, 65
  %123 = load i16, ptr %49, align 4, !tbaa !57
  %124 = sext i16 %123 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef %114, i32 noundef %116, i32 noundef %118, i32 noundef %122, i32 noundef %124) #35
  br label %240

125:                                              ; preds = %110
  %126 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 2
  %127 = load i16, ptr %126, align 8, !tbaa !72
  %128 = sext i16 %127 to i32
  %129 = add nsw i32 %128, 65
  %130 = load i16, ptr %49, align 4, !tbaa !57
  %131 = sext i16 %130 to i32
  call void @flagpr(ptr noundef nonnull %9, i32 noundef -1, i32 noundef 0, i32 noundef 0, i32 noundef %129, i32 noundef %131) #35
  br label %240

132:                                              ; preds = %107
  %133 = call ptr @lookup(ptr noundef nonnull %9, i32 noundef 1) #35
  %134 = icmp eq ptr %133, null
  br i1 %24, label %207, label %135

135:                                              ; preds = %132
  br i1 %134, label %240, label %136

136:                                              ; preds = %135
  br i1 %18, label %137, label %147

137:                                              ; preds = %136
  %138 = load i16, ptr %23, align 4, !tbaa !57
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %25, align 8, !tbaa !103
  %142 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %141) #35
  %143 = sext i16 %138 to i64
  %144 = getelementptr inbounds i8, ptr %10, i64 %143
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  store i8 43, ptr %144, align 1, !tbaa !15
  %146 = ptrtoint ptr %145 to i64
  br label %151

147:                                              ; preds = %136
  %148 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %9) #35
  %149 = sext i32 %89 to i64
  %150 = getelementptr inbounds i8, ptr %10, i64 %149
  br label %166

151:                                              ; preds = %140, %137
  %152 = phi i64 [ %146, %140 ], [ %26, %137 ]
  %153 = phi ptr [ %145, %140 ], [ %10, %137 ]
  %154 = sub i64 %152, %26
  %155 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %153, ptr noundef nonnull dereferenceable(1) %9) #35
  %156 = sext i32 %89 to i64
  %157 = getelementptr inbounds i8, ptr %153, i64 %156
  %158 = load i16, ptr %22, align 2, !tbaa !55
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %151
  %161 = getelementptr inbounds i8, ptr %157, i64 1
  store i8 45, ptr %157, align 1, !tbaa !15
  %162 = load ptr, ptr %5, align 8, !tbaa !102
  %163 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull dereferenceable(1) %162) #35
  %164 = sext i16 %158 to i64
  %165 = getelementptr inbounds i8, ptr %161, i64 %164
  br label %166

166:                                              ; preds = %160, %151, %147
  %167 = phi i64 [ %156, %160 ], [ %156, %151 ], [ %149, %147 ]
  %168 = phi i64 [ %154, %160 ], [ %154, %151 ], [ 0, %147 ]
  %169 = phi i64 [ %152, %160 ], [ %152, %151 ], [ %26, %147 ]
  %170 = phi ptr [ %165, %160 ], [ %157, %151 ], [ %150, %147 ]
  %171 = trunc i64 %168 to i32
  %172 = load i16, ptr %64, align 2, !tbaa !55
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %166
  %175 = getelementptr inbounds i8, ptr %170, i64 1
  store i8 45, ptr %170, align 1, !tbaa !15
  %176 = load ptr, ptr %29, align 8, !tbaa !102
  %177 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %175, ptr noundef nonnull dereferenceable(1) %176) #35
  %178 = load i16, ptr %64, align 2, !tbaa !55
  %179 = sext i16 %178 to i64
  %180 = getelementptr inbounds i8, ptr %175, i64 %179
  br label %181

181:                                              ; preds = %174, %166
  %182 = phi ptr [ %180, %174 ], [ %170, %166 ]
  %183 = load i16, ptr %49, align 4, !tbaa !57
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, ptr %182, i64 1
  store i8 43, ptr %182, align 1, !tbaa !15
  %187 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !103
  %189 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(1) %188) #35
  %190 = load i16, ptr %49, align 4, !tbaa !57
  %191 = sext i16 %190 to i64
  %192 = getelementptr inbounds i8, ptr %186, i64 %191
  br label %193

193:                                              ; preds = %185, %181
  %194 = phi ptr [ %192, %185 ], [ %182, %181 ]
  br i1 %18, label %195, label %198

195:                                              ; preds = %193
  %196 = load i16, ptr %22, align 2, !tbaa !55
  %197 = sext i16 %196 to i32
  br label %198

198:                                              ; preds = %195, %193
  %199 = phi i32 [ %197, %195 ], [ 0, %193 ]
  %200 = load i16, ptr %64, align 2, !tbaa !55
  %201 = sext i16 %200 to i32
  %202 = ptrtoint ptr %194 to i64
  %203 = add i64 %169, %167
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = call i32 @ins_root_cap(ptr noundef nonnull %10, ptr noundef %0, i32 noundef %199, i32 noundef %171, i32 noundef %201, i32 noundef %205, ptr noundef nonnull %133, ptr noundef %5, ptr noundef nonnull %29) #35
  br label %240

207:                                              ; preds = %132
  br i1 %134, label %240, label %208

208:                                              ; preds = %207
  %209 = getelementptr inbounds %struct.dent, ptr %133, i64 0, i32 2
  %210 = load i64, ptr %209, align 8, !tbaa !66
  %211 = getelementptr inbounds %struct.flagent, ptr %29, i64 0, i32 2
  %212 = load i16, ptr %211, align 8, !tbaa !72
  %213 = sext i16 %212 to i64
  %214 = and i64 %213, 4294967295
  %215 = shl nuw i64 1, %214
  %216 = and i64 %215, %210
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %240, label %218

218:                                              ; preds = %208
  br i1 %18, label %219, label %226

219:                                              ; preds = %218
  %220 = load i16, ptr %21, align 8, !tbaa !72
  %221 = sext i16 %220 to i64
  %222 = and i64 %221, 4294967295
  %223 = shl nuw i64 1, %222
  %224 = and i64 %223, %210
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %240, label %226

226:                                              ; preds = %219, %218
  %227 = load i32, ptr @numhits, align 4, !tbaa !13
  %228 = icmp slt i32 %227, 10
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = sext i32 %227 to i64
  %231 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230
  store ptr %133, ptr %231, align 8, !tbaa !59
  %232 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230, i32 1
  store ptr %5, ptr %232, align 8, !tbaa !53
  %233 = getelementptr inbounds [10 x %struct.success], ptr @hits, i64 0, i64 %230, i32 2
  store ptr %29, ptr %233, align 8, !tbaa !58
  %234 = add nsw i32 %227, 1
  store i32 %234, ptr @numhits, align 4, !tbaa !13
  br label %235

235:                                              ; preds = %229, %226
  br i1 %27, label %236, label %240

236:                                              ; preds = %235
  %237 = call i32 @cap_ok(ptr noundef %0, ptr noundef nonnull @hits, i32 noundef %2) #35
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  store i32 0, ptr @numhits, align 4, !tbaa !13
  br label %240

240:                                              ; preds = %239, %235, %219, %208, %207, %198, %135, %125, %111, %96, %63, %56, %48, %43, %36, %28
  %241 = getelementptr inbounds %struct.flagent, ptr %29, i64 1
  %242 = add nsw i32 %30, -1
  %243 = icmp sgt i32 %30, 1
  br i1 %243, label %28, label %244, !llvm.loop !202

244:                                              ; preds = %240, %236, %8
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %9) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @expand_pre(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = alloca [120 x i8], align 16
  %7 = load i32, ptr @numpflags, align 4, !tbaa !13
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %189

9:                                                ; preds = %5
  %10 = load ptr, ptr @pflaglist, align 8, !tbaa !7
  %11 = getelementptr inbounds i8, ptr %6, i64 1
  br label %12

12:                                               ; preds = %184, %9
  %13 = phi ptr [ %10, %9 ], [ %186, %184 ]
  %14 = phi i32 [ 0, %9 ], [ %185, %184 ]
  %15 = phi i32 [ %7, %9 ], [ %187, %184 ]
  %16 = load i64, ptr %2, align 8, !tbaa !66
  %17 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 2
  %18 = load i16, ptr %17, align 8, !tbaa !72
  %19 = sext i16 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = and i64 %21, %16
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %184, label %24

24:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #38
  %25 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 5
  %28 = load i16, ptr %27, align 2, !tbaa !99
  %29 = sext i16 %28 to i32
  %30 = icmp sgt i32 %29, %26
  br i1 %30, label %181, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 3
  %33 = load i16, ptr %32, align 2, !tbaa !55
  %34 = sext i16 %33 to i32
  %35 = sub nsw i32 %26, %34
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %181, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 4
  %39 = load i16, ptr %38, align 4, !tbaa !57
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
  %49 = load i8, ptr %47, align 1, !tbaa !15
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !15
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 7, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = sext i8 %55 to i32
  %57 = shl nuw i32 1, %48
  %58 = and i32 %57, %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %181, label %60

60:                                               ; preds = %46
  %61 = getelementptr inbounds i8, ptr %47, i64 1
  %62 = add nuw nsw i32 %48, 1
  %63 = icmp eq i32 %62, %29
  br i1 %63, label %64, label %46, !llvm.loop !203

64:                                               ; preds = %60, %37
  %65 = phi ptr [ %1, %37 ], [ %45, %60 ]
  %66 = icmp eq i16 %39, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !103
  %70 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %69) #35
  %71 = sext i16 %39 to i64
  %72 = getelementptr inbounds i8, ptr %6, i64 %71
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi ptr [ %72, %67 ], [ %65, %64 ]
  %75 = sext i16 %33 to i64
  %76 = getelementptr inbounds i8, ptr %1, i64 %75
  %77 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull dereferenceable(1) %76) #35
  %78 = load i8, ptr %1, align 1, !tbaa !15
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %145, label %83

83:                                               ; preds = %88, %73
  %84 = phi ptr [ %85, %88 ], [ %1, %73 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %167, label %88

88:                                               ; preds = %83
  %89 = zext i8 %86 to i64
  %90 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %83, !llvm.loop !204

93:                                               ; preds = %97
  %94 = getelementptr inbounds i8, ptr %99, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %128, label %97, !llvm.loop !205

97:                                               ; preds = %93, %88
  %98 = phi i8 [ %95, %93 ], [ %86, %88 ]
  %99 = phi ptr [ %94, %93 ], [ %85, %88 ]
  %100 = zext i8 %98 to i64
  %101 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !15
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %93, label %104

104:                                              ; preds = %97
  %105 = load i16, ptr %38, align 4, !tbaa !57
  %106 = sext i16 %105 to i64
  %107 = getelementptr inbounds [120 x i8], ptr %6, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !15
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !15
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
  %122 = load i8, ptr %121, align 1, !tbaa !15
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !15
  store i8 %125, ptr %121, align 1, !tbaa !15
  %126 = getelementptr inbounds i8, ptr %121, i64 1
  %127 = icmp eq ptr %121, %119
  br i1 %127, label %167, label %120, !llvm.loop !206

128:                                              ; preds = %93
  %129 = icmp sgt i32 %41, 1
  br i1 %129, label %130, label %167

130:                                              ; preds = %128
  %131 = add i32 %26, -2
  %132 = sub i32 %131, %34
  %133 = add i32 %132, %40
  %134 = zext i32 %133 to i64
  %135 = add nuw nsw i64 %134, 1
  %136 = getelementptr i8, ptr %6, i64 %135
  br label %137

137:                                              ; preds = %137, %130
  %138 = phi ptr [ %143, %137 ], [ %11, %130 ]
  %139 = load i8, ptr %138, align 1, !tbaa !15
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !15
  store i8 %142, ptr %138, align 1, !tbaa !15
  %143 = getelementptr inbounds i8, ptr %138, i64 1
  %144 = icmp eq ptr %138, %136
  br i1 %144, label %167, label %137, !llvm.loop !206

145:                                              ; preds = %73
  %146 = load i8, ptr %74, align 1, !tbaa !15
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !15
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %145
  %152 = load i16, ptr %38, align 4, !tbaa !57
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
  %161 = load i8, ptr %160, align 1, !tbaa !15
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !15
  store i8 %164, ptr %160, align 1, !tbaa !15
  %165 = getelementptr inbounds i8, ptr %160, i64 1
  %166 = icmp eq ptr %160, %158
  br i1 %166, label %167, label %159, !llvm.loop !206

167:                                              ; preds = %159, %151, %145, %137, %128, %120, %104, %83
  switch i32 %3, label %170 [
    i32 3, label %168
    i32 4, label %173
  ]

168:                                              ; preds = %167
  %169 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, ptr noundef %0) #36
  br label %170

170:                                              ; preds = %168, %167
  %171 = call ptr @ichartosstr(ptr noundef nonnull %6, i32 noundef 1) #35
  %172 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.300, ptr noundef %171, ptr noundef %4) #36
  br label %173

173:                                              ; preds = %170, %167
  %174 = getelementptr inbounds %struct.flagent, ptr %13, i64 0, i32 6
  %175 = load i16, ptr %174, align 8, !tbaa !98
  %176 = and i16 %175, 1
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %173
  %179 = call i32 @expand_suf(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %3, ptr noundef %4) #36
  %180 = add nsw i32 %179, %41
  br label %181

181:                                              ; preds = %178, %173, %46, %31, %24
  %182 = phi i32 [ %180, %178 ], [ 0, %24 ], [ 0, %31 ], [ %41, %173 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #38
  %183 = add nsw i32 %182, %14
  br label %184

184:                                              ; preds = %181, %12
  %185 = phi i32 [ %183, %181 ], [ %14, %12 ]
  %186 = getelementptr inbounds %struct.flagent, ptr %13, i64 1
  %187 = add nsw i32 %15, -1
  %188 = icmp sgt i32 %15, 1
  br i1 %188, label %12, label %189, !llvm.loop !207

189:                                              ; preds = %184, %5
  %190 = phi i32 [ 0, %5 ], [ %185, %184 ]
  ret i32 %190
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @expand_suf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = alloca [120 x i8], align 16
  %8 = load i32, ptr @numsflags, align 4, !tbaa !13
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %123

10:                                               ; preds = %6
  %11 = load ptr, ptr @sflaglist, align 8, !tbaa !7
  %12 = and i32 %3, 1
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %118, %10
  %15 = phi ptr [ %11, %10 ], [ %120, %118 ]
  %16 = phi i32 [ 0, %10 ], [ %119, %118 ]
  %17 = phi i32 [ %8, %10 ], [ %121, %118 ]
  %18 = load i64, ptr %2, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 2
  %20 = load i16, ptr %19, align 8, !tbaa !72
  %21 = sext i16 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = shl nuw i64 1, %22
  %24 = and i64 %23, %18
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %118, label %26

26:                                               ; preds = %14
  br i1 %13, label %32, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 6
  %29 = load i16, ptr %28, align 8, !tbaa !98
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %118, label %32

32:                                               ; preds = %27, %26
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %7) #38
  %33 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #37
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 5
  %36 = load i16, ptr %35, align 2, !tbaa !99
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i32 %37, %34
  br i1 %38, label %115, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 3
  %41 = load i16, ptr %40, align 2, !tbaa !55
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %34, %42
  br i1 %43, label %44, label %115

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
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = zext i8 %55 to i64
  %57 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 7, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = sext i8 %61 to i32
  %63 = shl nuw i32 1, %53
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %115, label %48, !llvm.loop !208

66:                                               ; preds = %48
  %67 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %1) #35
  %68 = getelementptr inbounds i8, ptr %7, i64 %46
  %69 = sext i16 %41 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %68, i64 %70
  %72 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 4
  %73 = load i16, ptr %72, align 4, !tbaa !57
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.flagent, ptr %15, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !103
  %78 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %77) #35
  %79 = getelementptr inbounds i8, ptr %71, i64 -1
  %80 = load i8, ptr %79, align 1, !tbaa !15
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 24, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !15
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
  %93 = load i8, ptr %91, align 1, !tbaa !15
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 21, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !15
  store i8 %96, ptr %91, align 1, !tbaa !15
  %97 = getelementptr inbounds i8, ptr %91, i64 1
  %98 = icmp ugt i32 %90, 1
  br i1 %98, label %89, label %100, !llvm.loop !206

99:                                               ; preds = %66
  store i8 0, ptr %71, align 1, !tbaa !15
  br label %100

100:                                              ; preds = %99, %89, %75
  switch i32 %4, label %103 [
    i32 3, label %101
    i32 4, label %109
  ]

101:                                              ; preds = %100
  %102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.299, ptr noundef %0) #36
  br label %103

103:                                              ; preds = %101, %100
  %104 = call ptr @ichartosstr(ptr noundef nonnull %7, i32 noundef 1) #35
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.300, ptr noundef %104, ptr noundef %5) #36
  %106 = load i16, ptr %72, align 4, !tbaa !57
  %107 = load i16, ptr %40, align 2, !tbaa !55
  %108 = sext i16 %107 to i32
  br label %109

109:                                              ; preds = %103, %100
  %110 = phi i32 [ %42, %100 ], [ %108, %103 ]
  %111 = phi i16 [ %73, %100 ], [ %106, %103 ]
  %112 = sext i16 %111 to i32
  %113 = sub i32 %34, %110
  %114 = add i32 %113, %112
  br label %115

115:                                              ; preds = %109, %52, %39, %32
  %116 = phi i32 [ %114, %109 ], [ 0, %32 ], [ 0, %39 ], [ 0, %52 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %7) #38
  %117 = add nsw i32 %116, %16
  br label %118

118:                                              ; preds = %115, %27, %14
  %119 = phi i32 [ %117, %115 ], [ %16, %27 ], [ %16, %14 ]
  %120 = getelementptr inbounds %struct.flagent, ptr %15, i64 1
  %121 = add nsw i32 %17, -1
  %122 = icmp sgt i32 %17, 1
  br i1 %122, label %14, label %123, !llvm.loop !209

123:                                              ; preds = %118, %6
  %124 = phi i32 [ 0, %6 ], [ %119, %118 ]
  ret i32 %124
}

; Function Attrs: nounwind optsize uwtable
define internal void @treeinit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #38
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.305) #35
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %0, %2 ]
  %9 = tail call ptr @getenv(ptr noundef nonnull @.str.1.306) #35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %114, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %8, null
  br i1 %12, label %13, label %64

13:                                               ; preds = %11
  %14 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef %1) #36
  store ptr %14, ptr @dictf, align 8, !tbaa !7
  %15 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %1) #36
  %16 = load ptr, ptr @dictf, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  %18 = icmp eq ptr %15, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef nonnull @.str.3.307) #36
  store ptr %21, ptr @dictf, align 8, !tbaa !7
  %22 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull @.str.3.307) #36
  %23 = load ptr, ptr @dictf, align 8, !tbaa !7
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi ptr [ %23, %20 ], [ %16, %13 ]
  %26 = phi ptr [ %22, %20 ], [ %15, %13 ]
  %27 = icmp eq ptr %25, null
  %28 = icmp eq ptr %26, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef %1) #36
  store ptr %31, ptr @dictf, align 8, !tbaa !7
  %32 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef %1) #36
  %33 = load ptr, ptr @dictf, align 8, !tbaa !7
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %33, %30 ], [ %25, %24 ]
  %36 = phi ptr [ %32, %30 ], [ %26, %24 ]
  %37 = icmp eq ptr %35, null
  %38 = icmp eq ptr %36, null
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = tail call fastcc ptr @trydict(ptr noundef nonnull @personaldict, ptr noundef null, ptr noundef nonnull @.str.3.307) #36
  store ptr %41, ptr @dictf, align 8, !tbaa !7
  %42 = call fastcc ptr @trydict(ptr noundef nonnull %3, ptr noundef nonnull %9, ptr noundef nonnull @.str.3.307) #36
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi ptr [ %42, %40 ], [ %36, %34 ]
  %45 = load i8, ptr @personaldict, align 16, !tbaa !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i8, ptr %3, align 16, !tbaa !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %3) #35
  br label %54

52:                                               ; preds = %47
  %53 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.4.308, ptr noundef nonnull %9, ptr noundef nonnull @.str.2.309, ptr noundef %1) #35
  br label %54

54:                                               ; preds = %52, %50, %43
  %55 = load ptr, ptr @dictf, align 8, !tbaa !7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  tail call fastcc void @treeload(ptr noundef nonnull %55) #36
  %58 = load ptr, ptr @dictf, align 8, !tbaa !7
  %59 = tail call i32 @fclose(ptr noundef %58) #36
  br label %60

60:                                               ; preds = %57, %54
  %61 = icmp eq ptr %44, null
  br i1 %61, label %97, label %62

62:                                               ; preds = %60
  tail call fastcc void @treeload(ptr noundef nonnull %44) #36
  %63 = tail call i32 @fclose(ptr noundef nonnull %44) #36
  br label %97

64:                                               ; preds = %11
  %65 = load i8, ptr %8, align 1, !tbaa !15
  %66 = icmp eq i8 %65, 47
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(3) @.str.5.310, i64 noundef 2) #37
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.6.311, i64 noundef 3) #37
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70, %67, %64
  %74 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %8) #35
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312) #36
  store ptr %75, ptr @dictf, align 8, !tbaa !7
  %76 = icmp eq ptr %75, null
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  tail call fastcc void @treeload(ptr noundef nonnull %75) #36
  %78 = load ptr, ptr @dictf, align 8, !tbaa !7
  %79 = tail call i32 @fclose(ptr noundef %78) #36
  br label %97

80:                                               ; preds = %70
  %81 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) %8) #35
  %82 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312) #36
  store ptr %82, ptr @dictf, align 8, !tbaa !7
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @personaldict, ptr noundef nonnull dereferenceable(1) @.str.8.313, ptr noundef nonnull %9, ptr noundef nonnull %8) #35
  %86 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.7.312) #36
  store ptr %86, ptr @dictf, align 8, !tbaa !7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %84, %80
  %89 = phi ptr [ %82, %80 ], [ %86, %84 ]
  tail call fastcc void @treeload(ptr noundef nonnull %89) #36
  %90 = load ptr, ptr @dictf, align 8, !tbaa !7
  %91 = tail call i32 @fclose(ptr noundef %90) #36
  %92 = load ptr, ptr @dictf, align 8, !tbaa !7
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %84
  %95 = load ptr, ptr @stderr, align 8, !tbaa !7
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.9.314, ptr noundef nonnull %8) #39
  tail call void @perror(ptr noundef nonnull @.str.10.315) #39
  br label %114

97:                                               ; preds = %88, %77, %73, %62, %60
  %98 = load i32, ptr @lflag, align 4, !tbaa !13
  %99 = icmp ne i32 %98, 0
  %100 = load i32, ptr @aflag, align 4
  %101 = icmp ne i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  br i1 %102, label %114, label %103

103:                                              ; preds = %97
  %104 = tail call i32 @access(ptr noundef nonnull @personaldict, i32 noundef 2) #35
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = tail call ptr @__errno_location() #41
  %108 = load i32, ptr %107, align 4, !tbaa !13
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr @stderr, align 8, !tbaa !7
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.11.316, ptr noundef nonnull @personaldict) #39
  %113 = tail call i32 @sleep(i32 noundef 2) #35
  br label %114

114:                                              ; preds = %110, %106, %103, %97, %94, %7
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #38
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @trydict(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.16.323, ptr noundef nonnull @.str.2.309, ptr noundef %2) #35
  br label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.4.308, ptr noundef nonnull %1, ptr noundef nonnull @.str.2.309, ptr noundef %2) #35
  br label %9

9:                                                ; preds = %7, %5
  %10 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.7.312) #36
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i8 0, ptr %0, align 1, !tbaa !15
  br label %13

13:                                               ; preds = %12, %9
  ret ptr %10
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @treeload(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %2) #38
  br label %3

3:                                                ; preds = %6, %1
  %4 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 8192, ptr noundef %0) #36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  call void @treeinsert(ptr noundef nonnull %2, i32 noundef 8192, i32 noundef 1) #36
  br label %3, !llvm.loop !210

7:                                                ; preds = %3
  store i32 0, ptr @newwords, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %2) #38
  ret void
}

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @treeinsert(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [120 x i8], align 16
  %5 = alloca %struct.dent, align 8
  %6 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %6) #38
  %7 = load i1, ptr @cantexpand, align 4
  br i1 %7, label %40, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr @pershsize, align 4, !tbaa !13
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load ptr, ptr @pershtab, align 8, !tbaa !7
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, 4
  br i1 %15, label %21, label %16, !llvm.loop !211

16:                                               ; preds = %13, %11
  %17 = phi i64 [ 0, %11 ], [ %14, %13 ]
  %18 = getelementptr inbounds [4 x i32], ptr @goodsizes, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !13
  %20 = icmp sgt i32 %19, %9
  br i1 %20, label %24, label %13

21:                                               ; preds = %13
  %22 = shl i32 %9, 1
  %23 = or i32 %22, 1
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %23, %21 ], [ %19, %16 ]
  store i32 %25, ptr @pershsize, align 4, !tbaa !13
  %26 = zext i32 %25 to i64
  %27 = tail call noalias ptr @calloc(i64 noundef %26, i64 noundef 24) #43
  store ptr %27, ptr @pershtab, align 8, !tbaa !7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load ptr, ptr @stderr, align 8, !tbaa !7
  %31 = tail call i64 @fwrite(ptr nonnull @.str.12.319, i64 42, i64 1, ptr %30) #42
  %32 = icmp eq ptr %12, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void @exit(i32 noundef 1) #40
  unreachable

34:                                               ; preds = %29
  %35 = load ptr, ptr @stderr, align 8, !tbaa !7
  %36 = tail call i64 @fwrite(ptr nonnull @.str.13.320, i64 47, i64 1, ptr %35) #42
  store i1 true, ptr @cantexpand, align 4
  store i32 %9, ptr @pershsize, align 4, !tbaa !13
  store ptr %12, ptr @pershtab, align 8, !tbaa !7
  store i32 1, ptr @newwords, align 4, !tbaa !13
  br label %40

37:                                               ; preds = %24
  %38 = icmp eq ptr %12, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @free(ptr noundef nonnull %12) #35
  br label %40

40:                                               ; preds = %39, %37, %34, %8, %3
  %41 = call i32 @makedent(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #35
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %101, label %43

43:                                               ; preds = %40
  %44 = icmp eq i32 %2, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = or i64 %47, 134217728
  store i64 %48, ptr %46, align 8, !tbaa !66
  br label %49

49:                                               ; preds = %45, %43
  %50 = call i32 @strtoichar(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 120, i32 noundef 1) #35
  call void @upcase(ptr noundef nonnull %6) #35
  %51 = call ptr @lookup(ptr noundef nonnull %6, i32 noundef 1) #35
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = call i32 @combinecaps(ptr noundef nonnull %51, ptr noundef nonnull %5) #35
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !74
  call void @free(ptr noundef %58) #35
  br label %101

59:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %4) #38
  %60 = getelementptr inbounds %struct.dent, ptr %5, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !74
  %62 = call i32 @strtoichar(ptr noundef nonnull %4, ptr noundef %61, i32 noundef 120, i32 noundef 1) #35
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr @stderr, align 8, !tbaa !7
  %66 = load ptr, ptr %60, align 8, !tbaa !74
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.17.321, ptr noundef %66, i32 noundef 449, ptr noundef nonnull @.str.18.322) #39
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, ptr @pershsize, align 4, !tbaa !13
  %70 = call i32 @hash(ptr noundef nonnull %4, i32 noundef %69) #35
  %71 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds %struct.dent, ptr %71, i64 %72
  %74 = getelementptr inbounds %struct.dent, ptr %71, i64 %72, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !66
  %76 = and i64 %75, 67108864
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !179
  br label %90

79:                                               ; preds = %79, %68
  %80 = phi ptr [ %81, %79 ], [ %73, %68 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !70
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %79, !llvm.loop !212

83:                                               ; preds = %79
  %.lcssa = phi ptr [ %80, %79 ]
  %84 = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #43
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load ptr, ptr @stderr, align 8, !tbaa !7
  %88 = call i64 @fwrite(ptr nonnull @.str.12.319, i64 42, i64 1, ptr %87) #42
  call void @exit(i32 noundef 1) #40
  unreachable

89:                                               ; preds = %83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %84, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !179
  store ptr %84, ptr %.lcssa, align 8, !tbaa !70
  br label %90

90:                                               ; preds = %89, %78
  %91 = phi ptr [ %73, %78 ], [ %84, %89 ]
  store ptr null, ptr %91, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %4) #38
  %92 = getelementptr inbounds %struct.dent, ptr %91, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !66
  %94 = and i64 %93, 805306368
  %95 = icmp eq i64 %94, 805306368
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @addvheader(ptr noundef nonnull %91) #35
  br label %98

98:                                               ; preds = %96, %90, %53
  %99 = load i32, ptr @newwords, align 4, !tbaa !13
  %100 = or i32 %99, %2
  store i32 %100, ptr @newwords, align 4, !tbaa !13
  br label %101

101:                                              ; preds = %98, %56, %40
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #32

; Function Attrs: nounwind optsize uwtable
define internal ptr @treelookup(ptr noundef %0) #0 {
  %2 = alloca [120 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %2) #38
  %3 = load i32, ptr @pershsize, align 4, !tbaa !13
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = call i32 @ichartostr(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 120, i32 noundef 1) #35
  %7 = load i32, ptr @pershsize, align 4, !tbaa !13
  %8 = call i32 @hash(ptr noundef %0, i32 noundef %7) #35
  %9 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %5
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds %struct.dent, ptr %9, i64 %12
  br label %14

14:                                               ; preds = %35, %11
  %15 = phi ptr [ %37, %35 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !66
  %18 = and i64 %17, 67108864
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.dent, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %22) #37
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = and i64 %17, 1073741824
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %30, %28 ], [ %15, %25 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = getelementptr inbounds %struct.dent, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !66
  %33 = and i64 %32, 1073741824
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %28, !llvm.loop !213

35:                                               ; preds = %28, %25
  %36 = phi ptr [ %15, %25 ], [ %30, %28 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !70
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %14, !llvm.loop !214

39:                                               ; preds = %35, %20, %14, %5, %1
  %40 = phi ptr [ null, %1 ], [ null, %5 ], [ %15, %20 ], [ null, %35 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %2) #38
  ret ptr %40
}

; Function Attrs: nounwind optsize uwtable
define internal void @treeoutput() #0 {
  %1 = load i32, ptr @newwords, align 4, !tbaa !13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %207, label %3

3:                                                ; preds = %0
  %4 = tail call noalias ptr @fopen(ptr noundef nonnull @personaldict, ptr noundef nonnull @.str.14.328) #36
  store ptr %4, ptr @dictf, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.15.329, ptr noundef nonnull @personaldict) #39
  br label %207

9:                                                ; preds = %3
  %10 = load ptr, ptr @pershtab, align 8, !tbaa !7
  %11 = load i32, ptr @pershsize, align 4, !tbaa !13
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.dent, ptr %10, i64 %12
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %41, %9
  %16 = phi i32 [ %42, %41 ], [ 0, %9 ]
  %17 = phi ptr [ %43, %41 ], [ %10, %9 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %37, %15
  %20 = phi i32 [ %27, %37 ], [ %16, %15 ]
  %21 = phi ptr [ %39, %37 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.dent, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !66
  %24 = and i64 %23, 201326592
  %25 = icmp eq i64 %24, 201326592
  %26 = zext i1 %25 to i32
  %27 = add nsw i32 %20, %26
  %28 = and i64 %23, 1073741824
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %30, %19
  %31 = phi ptr [ %32, %30 ], [ %21, %19 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = getelementptr inbounds %struct.dent, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !66
  %35 = and i64 %34, 1073741824
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %30, !llvm.loop !215

37:                                               ; preds = %30, %19
  %38 = phi ptr [ %21, %19 ], [ %32, %30 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !70
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %19, !llvm.loop !216

41:                                               ; preds = %37, %15
  %42 = phi i32 [ %16, %15 ], [ %27, %37 ]
  %43 = getelementptr inbounds %struct.dent, ptr %17, i64 1
  %44 = icmp ult ptr %43, %13
  br i1 %44, label %15, label %45, !llvm.loop !217

45:                                               ; preds = %41, %9
  %46 = phi i32 [ 0, %9 ], [ %42, %41 ]
  %47 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %48 = load i32, ptr @hashsize, align 4, !tbaa !13
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dent, ptr %47, i64 %49
  %51 = icmp sgt i32 %48, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %68, %45
  %53 = phi i32 [ %69, %68 ], [ %46, %45 ]
  %54 = phi ptr [ %70, %68 ], [ %47, %45 ]
  %55 = getelementptr inbounds %struct.dent, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !66
  %57 = and i64 %56, 201326592
  %58 = icmp ne i64 %57, 201326592
  %59 = and i64 %56, 805306368
  %60 = icmp eq i64 %59, 805306368
  %61 = or i1 %58, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.dent, ptr %54, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !74
  %65 = icmp ne ptr %64, null
  %66 = zext i1 %65 to i32
  %67 = add nsw i32 %53, %66
  br label %68

68:                                               ; preds = %62, %52
  %69 = phi i32 [ %53, %52 ], [ %67, %62 ]
  %70 = getelementptr inbounds %struct.dent, ptr %54, i64 1
  %71 = icmp ult ptr %70, %50
  br i1 %71, label %52, label %72, !llvm.loop !218

72:                                               ; preds = %68, %45
  %73 = phi i32 [ %46, %45 ], [ %69, %68 ]
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, 24
  %76 = tail call noalias ptr @malloc(i64 noundef %75) #44
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br i1 %14, label %136, label %169

79:                                               ; preds = %72
  br i1 %14, label %80, label %112

80:                                               ; preds = %105, %79
  %81 = phi ptr [ %106, %105 ], [ %10, %79 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %105, label %83

83:                                               ; preds = %101, %80
  %84 = phi ptr [ %103, %101 ], [ %81, %80 ]
  %85 = getelementptr inbounds %struct.dent, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !66
  %87 = and i64 %86, 201326592
  %88 = icmp eq i64 %87, 201326592
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  %90 = load ptr, ptr @dictf, align 8, !tbaa !7
  tail call void @toutent(ptr noundef %90, ptr noundef nonnull %84, i32 noundef 1) #35
  %91 = load i64, ptr %85, align 8, !tbaa !66
  %92 = and i64 %91, 1073741824
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %94, %89
  %95 = phi ptr [ %96, %94 ], [ %84, %89 ]
  %96 = load ptr, ptr %95, align 8, !tbaa !70
  %97 = getelementptr inbounds %struct.dent, ptr %96, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !66
  %99 = and i64 %98, 1073741824
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %94, !llvm.loop !219

101:                                              ; preds = %94, %89, %83
  %102 = phi ptr [ %84, %83 ], [ %84, %89 ], [ %96, %94 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !70
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %83, !llvm.loop !220

105:                                              ; preds = %101, %80
  %106 = getelementptr inbounds %struct.dent, ptr %81, i64 1
  %107 = icmp ult ptr %106, %13
  br i1 %107, label %80, label %108, !llvm.loop !221

108:                                              ; preds = %105
  %109 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  %110 = load i32, ptr @hashsize, align 4, !tbaa !13
  %111 = sext i32 %110 to i64
  br label %112

112:                                              ; preds = %108, %79
  %113 = phi i64 [ %111, %108 ], [ %49, %79 ]
  %114 = phi i32 [ %110, %108 ], [ %48, %79 ]
  %115 = phi ptr [ %109, %108 ], [ %47, %79 ]
  %116 = getelementptr inbounds %struct.dent, ptr %115, i64 %113
  %117 = icmp sgt i32 %114, 0
  br i1 %117, label %118, label %207

118:                                              ; preds = %133, %112
  %119 = phi ptr [ %134, %133 ], [ %115, %112 ]
  %120 = getelementptr inbounds %struct.dent, ptr %119, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !66
  %122 = and i64 %121, 201326592
  %123 = icmp ne i64 %122, 201326592
  %124 = and i64 %121, 805306368
  %125 = icmp eq i64 %124, 805306368
  %126 = or i1 %123, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.dent, ptr %119, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !74
  %130 = icmp eq ptr %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr @dictf, align 8, !tbaa !7
  tail call void @toutent(ptr noundef %132, ptr noundef nonnull %119, i32 noundef 1) #35
  br label %133

133:                                              ; preds = %131, %127, %118
  %134 = getelementptr inbounds %struct.dent, ptr %119, i64 1
  %135 = icmp ult ptr %134, %116
  br i1 %135, label %118, label %207, !llvm.loop !222

136:                                              ; preds = %163, %78
  %137 = phi ptr [ %164, %163 ], [ %76, %78 ]
  %138 = phi ptr [ %165, %163 ], [ %10, %78 ]
  %139 = icmp eq ptr %138, null
  br i1 %139, label %163, label %140

140:                                              ; preds = %158, %136
  %141 = phi ptr [ %160, %158 ], [ %137, %136 ]
  %142 = phi ptr [ %161, %158 ], [ %138, %136 ]
  %143 = getelementptr inbounds %struct.dent, ptr %142, i64 0, i32 2
  %144 = load i64, ptr %143, align 8, !tbaa !66
  %145 = and i64 %144, 201326592
  %146 = icmp eq i64 %145, 201326592
  br i1 %146, label %147, label %158

147:                                              ; preds = %140
  %148 = getelementptr inbounds ptr, ptr %141, i64 1
  store ptr %142, ptr %141, align 8, !tbaa !7
  %149 = and i64 %144, 1073741824
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %151, %147
  %152 = phi ptr [ %153, %151 ], [ %142, %147 ]
  %153 = load ptr, ptr %152, align 8, !tbaa !70
  %154 = getelementptr inbounds %struct.dent, ptr %153, i64 0, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !66
  %156 = and i64 %155, 1073741824
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %151, !llvm.loop !223

158:                                              ; preds = %151, %147, %140
  %159 = phi ptr [ %142, %140 ], [ %142, %147 ], [ %153, %151 ]
  %160 = phi ptr [ %141, %140 ], [ %148, %147 ], [ %148, %151 ]
  %161 = load ptr, ptr %159, align 8, !tbaa !70
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %140, !llvm.loop !224

163:                                              ; preds = %158, %136
  %164 = phi ptr [ %137, %136 ], [ %160, %158 ]
  %165 = getelementptr inbounds %struct.dent, ptr %138, i64 1
  %166 = icmp ult ptr %165, %13
  br i1 %166, label %136, label %167, !llvm.loop !225

167:                                              ; preds = %163
  %.lcssa = phi ptr [ %164, %163 ]
  %168 = load ptr, ptr @hashtbl, align 8, !tbaa !7
  br label %169

169:                                              ; preds = %167, %78
  %170 = phi ptr [ %47, %78 ], [ %168, %167 ]
  %171 = phi ptr [ %76, %78 ], [ %.lcssa, %167 ]
  %172 = getelementptr inbounds %struct.dent, ptr %170, i64 %49
  br i1 %51, label %173, label %193

173:                                              ; preds = %189, %169
  %174 = phi ptr [ %190, %189 ], [ %171, %169 ]
  %175 = phi ptr [ %191, %189 ], [ %170, %169 ]
  %176 = getelementptr inbounds %struct.dent, ptr %175, i64 0, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !66
  %178 = and i64 %177, 201326592
  %179 = icmp ne i64 %178, 201326592
  %180 = and i64 %177, 805306368
  %181 = icmp eq i64 %180, 805306368
  %182 = or i1 %179, %181
  br i1 %182, label %189, label %183

183:                                              ; preds = %173
  %184 = getelementptr inbounds %struct.dent, ptr %175, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !74
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds ptr, ptr %174, i64 1
  store ptr %175, ptr %174, align 8, !tbaa !7
  br label %189

189:                                              ; preds = %187, %183, %173
  %190 = phi ptr [ %188, %187 ], [ %174, %183 ], [ %174, %173 ]
  %191 = getelementptr inbounds %struct.dent, ptr %175, i64 1
  %192 = icmp ult ptr %191, %172
  br i1 %192, label %173, label %193, !llvm.loop !226

193:                                              ; preds = %189, %169
  %194 = zext i32 %73 to i64
  tail call void @qsort(ptr noundef nonnull %76, i64 noundef %194, i64 noundef 8, ptr noundef nonnull @pdictcmp) #35
  %195 = icmp sgt i32 %73, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %196, %193
  %197 = phi ptr [ %201, %196 ], [ %76, %193 ]
  %198 = phi i32 [ %199, %196 ], [ %73, %193 ]
  %199 = add nsw i32 %198, -1
  %200 = load ptr, ptr @dictf, align 8, !tbaa !7
  %201 = getelementptr inbounds ptr, ptr %197, i64 1
  %202 = load ptr, ptr %197, align 8, !tbaa !7
  tail call void @toutent(ptr noundef %200, ptr noundef %202, i32 noundef 1) #35
  %203 = icmp ugt i32 %198, 1
  br i1 %203, label %196, label %204, !llvm.loop !227

204:                                              ; preds = %196, %193
  tail call void @free(ptr noundef %76) #35
  store i32 0, ptr @newwords, align 4, !tbaa !13
  %205 = load ptr, ptr @dictf, align 8, !tbaa !7
  %206 = tail call i32 @fclose(ptr noundef %205) #36
  br label %207

207:                                              ; preds = %204, %133, %112, %6, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @pdictcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.dent, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.dent, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call i32 @casecmp(ptr noundef %5, ptr noundef %8, i32 noundef 1) #35
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable
define internal noalias ptr @mymalloc(i32 noundef %0) #33 {
  %2 = zext i32 %0 to i64
  %3 = tail call noalias ptr @malloc(i64 noundef %2) #44
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @myfree(ptr noundef %0) #34 {
  %2 = load ptr, ptr @hashstrings, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  %4 = icmp ugt ptr %2, %0
  %5 = or i1 %3, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.hashheader, ptr @hashheader, i64 0, i32 6), align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %2, i64 %7
  %9 = icmp ult ptr %8, %0
  %10 = select i1 %5, i1 true, i1 %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void @free(ptr noundef %0) #35
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal ptr @xgets(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12 {
  %4 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.1.336) #35
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
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #37
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr @xgets.Include_Len, align 4, !tbaa !13
  %16 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  store ptr %2, ptr %16, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %12, %3
  %18 = ptrtoint ptr %0 to i64
  %19 = sext i32 %1 to i64
  br label %20

20:                                               ; preds = %62, %17
  %21 = phi ptr [ %0, %17 ], [ %63, %62 ]
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %22, %18
  %24 = add i64 %23, 1
  %25 = icmp slt i64 %24, %19
  %26 = icmp eq ptr %21, %0
  br i1 %25, label %27, label %36

27:                                               ; preds = %42, %20
  %28 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = tail call i32 @getc(ptr noundef %29) #36
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %.lcssa = phi i32 [ %30, %27 ]
  %33 = trunc i32 %.lcssa to i8
  %34 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 %33, ptr %21, align 1, !tbaa !15
  %35 = icmp eq i32 %.lcssa, 10
  br i1 %35, label %36, label %62

36:                                               ; preds = %32, %20
  %37 = phi ptr [ %34, %32 ], [ %21, %20 ]
  store i8 0, ptr %37, align 1, !tbaa !15
  br label %46

38:                                               ; preds = %27
  store i8 0, ptr %21, align 1, !tbaa !15
  %39 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %40 = icmp eq ptr %39, @xgets.F
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br i1 %26, label %73, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds ptr, ptr %39, i64 -1
  store ptr %43, ptr @xgets.current_F, align 8, !tbaa !7
  %44 = load ptr, ptr %39, align 8, !tbaa !7
  %45 = tail call i32 @fclose(ptr noundef %44) #36
  br i1 %26, label %27, label %46

46:                                               ; preds = %42, %41, %36
  %47 = load i32, ptr @incfileflag, align 4, !tbaa !13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @xgets.Include_File, align 8, !tbaa !7
  %51 = load i32, ptr @xgets.Include_Len, align 4, !tbaa !13
  %52 = zext i32 %51 to i64
  %53 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %50, i64 noundef %52) #37
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds i8, ptr %0, i64 %56
  %58 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %59 = ptrtoint ptr %58 to i64
  %60 = sub i64 %59, ptrtoint (ptr @xgets.F to i64)
  %61 = icmp slt i64 %60, 40
  br i1 %61, label %64, label %62

62:                                               ; preds = %70, %67, %64, %55, %32
  %63 = phi ptr [ %34, %32 ], [ %0, %67 ], [ %0, %70 ], [ %0, %64 ], [ %0, %55 ]
  br label %20

64:                                               ; preds = %55
  %65 = load i8, ptr %57, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %62, label %67

67:                                               ; preds = %64
  %68 = tail call noalias ptr @fopen(ptr noundef nonnull %57, ptr noundef nonnull @.str.2.337) #36
  %69 = icmp eq ptr %68, null
  br i1 %69, label %62, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @xgets.current_F, align 8, !tbaa !7
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  store ptr %72, ptr @xgets.current_F, align 8, !tbaa !7
  store ptr %68, ptr %72, align 8, !tbaa !7
  br label %62

73:                                               ; preds = %49, %46, %41
  %74 = phi ptr [ null, %41 ], [ %0, %46 ], [ %0, %49 ]
  ret ptr %74
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind optsize }
attributes #36 = { optsize }
attributes #37 = { nounwind optsize willreturn memory(read) }
attributes #38 = { nounwind }
attributes #39 = { cold optsize }
attributes #40 = { noreturn nounwind optsize }
attributes #41 = { nounwind optsize willreturn memory(none) }
attributes #42 = { cold }
attributes #43 = { nounwind optsize allocsize(0,1) }
attributes #44 = { nounwind optsize allocsize(0) }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !12, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{i32 0, i32 2}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = !{!28, !29, i64 8}
!28 = !{!"hashheader", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6, !29, i64 8, !29, i64 10, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !9, i64 48, !9, i64 53, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 70, !9, i64 526, !9, i64 754, !9, i64 982, !9, i64 1210, !9, i64 1438, !9, i64 1666, !9, i64 1894, !9, i64 2022, !9, i64 3124, !9, i64 3524, !29, i64 3924}
!29 = !{!"short", !9, i64 0}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12, !17, !18}
!32 = !{i32 -1, i32 1}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = !{!54, !8, i64 8}
!54 = !{!"success", !8, i64 0, !8, i64 8, !8, i64 16}
!55 = !{!56, !29, i64 18}
!56 = !{!"flagent", !8, i64 0, !8, i64 8, !29, i64 16, !29, i64 18, !29, i64 20, !29, i64 22, !29, i64 24, !9, i64 26}
!57 = !{!56, !29, i64 20}
!58 = !{!54, !8, i64 16}
!59 = !{!54, !8, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = !{i32 -65535, i32 65536}
!63 = !{!29, !29, i64 0}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = !{!67, !67, i64 0}
!67 = !{!"long", !9, i64 0}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = !{!71, !8, i64 0}
!71 = !{!"dent", !8, i64 0, !8, i64 8, !9, i64 16}
!72 = !{!56, !29, i64 16}
!73 = distinct !{!73, !12}
!74 = !{!71, !8, i64 8}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = !{!56, !29, i64 24}
!99 = !{!56, !29, i64 22}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = !{!56, !8, i64 0}
!103 = !{!56, !8, i64 8}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = !{!28, !9, i64 68}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = distinct !{!127, !12}
!128 = !{!28, !9, i64 66}
!129 = !{!28, !9, i64 67}
!130 = !{!28, !14, i64 36}
!131 = distinct !{!131, !12}
!132 = !{!28, !14, i64 32}
!133 = !{!134, !14, i64 24}
!134 = !{!"stat", !67, i64 0, !67, i64 8, !67, i64 16, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !67, i64 40, !67, i64 48, !67, i64 56, !67, i64 64, !135, i64 72, !135, i64 88, !135, i64 104, !9, i64 120}
!135 = !{!"timespec", !67, i64 0, !67, i64 8}
!136 = distinct !{!136, !12}
!137 = distinct !{!137, !12}
!138 = distinct !{!138, !12}
!139 = distinct !{!139, !12}
!140 = !{!28, !29, i64 0}
!141 = !{!28, !29, i64 3924}
!142 = !{!28, !29, i64 2}
!143 = !{!28, !14, i64 20}
!144 = !{!28, !14, i64 24}
!145 = !{!28, !14, i64 28}
!146 = !{!28, !14, i64 16}
!147 = !{!28, !14, i64 12}
!148 = distinct !{!148, !12}
!149 = distinct !{!149, !12}
!150 = !{!151, !14, i64 8}
!151 = !{!"flagptr", !9, i64 0, !14, i64 8}
!152 = distinct !{!152, !12}
!153 = distinct !{!153, !12}
!154 = distinct !{!154, !12}
!155 = distinct !{!155, !12}
!156 = !{!28, !14, i64 40}
!157 = !{!28, !14, i64 44}
!158 = !{!159, !8, i64 0}
!159 = !{!"strchartype", !8, i64 0, !8, i64 8, !8, i64 16}
!160 = !{!159, !8, i64 8}
!161 = !{!159, !8, i64 16}
!162 = distinct !{!162, !12}
!163 = distinct !{!163, !12}
!164 = distinct !{!164, !12}
!165 = distinct !{!165, !12}
!166 = distinct !{!166, !12}
!167 = !{i64 0, i64 805306369}
!168 = distinct !{!168, !12}
!169 = distinct !{!169, !12}
!170 = distinct !{!170, !12}
!171 = distinct !{!171, !12}
!172 = distinct !{!172, !12}
!173 = distinct !{!173, !12}
!174 = distinct !{!174, !12}
!175 = distinct !{!175, !12}
!176 = distinct !{!176, !12}
!177 = distinct !{!177, !12}
!178 = distinct !{!178, !12}
!179 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !15}
!180 = distinct !{!180, !12}
!181 = distinct !{!181, !12}
!182 = distinct !{!182, !12}
!183 = distinct !{!183, !12}
!184 = distinct !{!184, !12}
!185 = distinct !{!185, !12}
!186 = !{!187, !29, i64 2}
!187 = !{!"winsize", !29, i64 0, !29, i64 2, !29, i64 4, !29, i64 6}
!188 = !{!187, !29, i64 0}
!189 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 1, !15, i64 17, i64 32, !15, i64 52, i64 4, !13, i64 56, i64 4, !13}
!190 = !{!191, !14, i64 12}
!191 = !{!"termios", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !9, i64 16, !9, i64 17, !14, i64 52, !14, i64 56}
!192 = distinct !{!192, !12}
!193 = distinct !{!193, !12}
!194 = distinct !{!194, !12}
!195 = distinct !{!195, !12}
!196 = distinct !{!196, !12}
!197 = distinct !{!197, !12}
!198 = distinct !{!198, !12}
!199 = distinct !{!199, !12}
!200 = distinct !{!200, !12}
!201 = distinct !{!201, !12}
!202 = distinct !{!202, !12}
!203 = distinct !{!203, !12}
!204 = distinct !{!204, !12}
!205 = distinct !{!205, !12}
!206 = distinct !{!206, !12}
!207 = distinct !{!207, !12}
!208 = distinct !{!208, !12}
!209 = distinct !{!209, !12}
!210 = distinct !{!210, !12}
!211 = distinct !{!211, !12}
!212 = distinct !{!212, !12}
!213 = distinct !{!213, !12}
!214 = distinct !{!214, !12}
!215 = distinct !{!215, !12}
!216 = distinct !{!216, !12}
!217 = distinct !{!217, !12}
!218 = distinct !{!218, !12}
!219 = distinct !{!219, !12}
!220 = distinct !{!220, !12}
!221 = distinct !{!221, !12}
!222 = distinct !{!222, !12}
!223 = distinct !{!223, !12}
!224 = distinct !{!224, !12}
!225 = distinct !{!225, !12}
!226 = distinct !{!226, !12}
!227 = distinct !{!227, !12}
