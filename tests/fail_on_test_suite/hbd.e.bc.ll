; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/hbd/hbd.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Exp_ = type { i32, i32, i32, i32, ptr }
%struct.Classfile = type { ptr, ptr, i32, i32, i32, %struct.ClassVersion, %struct.ConstPool, %struct.AccessFlags, i16, ptr, ptr, i16, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, i16, ptr, ptr }
%struct.ClassVersion = type { i16, i16 }
%struct.ConstPool = type { i16, ptr }
%struct.AccessFlags = type { i16 }
%struct.field_info = type <{ %struct.AccessFlags, [6 x i8], ptr, ptr, i32, i16, [2 x i8] }>
%struct.cp_info = type { i8, %union.anon }
%union.anon = type { i64 }
%struct.method_info = type { %struct.AccessFlags, ptr, ptr, i8, i8, i32, ptr, i16, ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.Block = type { i32, i16, i16, %union.anon.0, i16, ptr }
%union.anon.0 = type { i32 }
%struct.LocalVariableTableEntry = type { i16, i16, i16, i16, i16 }
%struct.Id = type { ptr, i32, i32, i32, %union.anon.3 }
%union.anon.3 = type { [2 x i64] }
%struct.Exp = type { ptr, i32, i32, i32, ptr, ptr, %union.anon.7, %union.anon.0, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.Case = type { i64, i64 }
%struct.looplist = type { ptr, ptr }
%struct.Loop = type <{ i32, i32, i32, [4 x i8], ptr, i32, [4 x i8] }>
%struct.intnode = type { i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN3ExpC2EjPc4Type3Loci = comdat any

@.str = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"private \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"final \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"synchronized \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"threadsafe \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"transient \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"native \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"interface \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"abstract \00", align 1
@flag2str = internal global [11 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], align 16
@flag2strlen = internal global [11 x i32] [i32 7, i32 8, i32 10, i32 7, i32 6, i32 13, i32 11, i32 10, i32 7, i32 10, i32 9], align 16
@progname = internal global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"hbt\00", align 1
@.str.1.12 = private unnamed_addr constant [18 x i8] c"Unknown flag: %s\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.3.14 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4.16 = private unnamed_addr constant [24 x i8] c"Could not open file %s\0A\00", align 1
@.str.5.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6.17 = private unnamed_addr constant [25 x i8] c"Classfile version %d.%d\0A\00", align 1
@.str.7.18 = private unnamed_addr constant [14 x i8] c"ConstantValue\00", align 1
@.str.8.19 = private unnamed_addr constant [52 x i8] c"Bad size on ConstantValue Attribute - should be 2!\0A\00", align 1
@.str.9.20 = private unnamed_addr constant [49 x i8] c"Skipping Unknown Field Attribute: %s (size %ld)\0A\00", align 1
@.str.10.21 = private unnamed_addr constant [11 x i8] c"java/lang/\00", align 1
@.str.11.22 = private unnamed_addr constant [5 x i8] c"Code\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"LineNumberTable\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"LocalVariableTable\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Skipping Unknown Code Attribute: %s (size %ld)\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Exceptions\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"Skipping Unknown Method Attribute: %s (size %ld)\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"SourceFile\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"Bad size on SourceFile Attribute - should be 2!\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Skipping Unknown Attribute: %s (size %ld)\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Compiled from %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [196 x i8] c"/*\0A** Compiled from %s - COPYRIGHT UNKNOWN.\0A**\0A** Decompiled using the HomeBrew Decompiler\0A** Copyright (c) 1994-2003 Widget (aka Pete Ryland).\0A** Available under GPL from http://pdr.cx/hbd/\0A*/\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"package %s;\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"import %s;\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"%sclass %s \00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"extends %s \00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"implements \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"\0A  %s\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"0x%lX\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"0x%lX%08lXL\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"0x%lXL\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"%#.100Gf\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"%#.100Gd\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"Bad type for constant\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"/* Decompilation Error.  Continuing... */\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"\0Apos: 0x%05X\09index: %4d\09\00", align 1
@.str.1.33 = private unnamed_addr constant [10 x i8] c"UTF8: %s\09\00", align 1
@.str.2.34 = private unnamed_addr constant [9 x i8] c"Unicode\09\00", align 1
@.str.3.35 = private unnamed_addr constant [20 x i8] c"32-bit int: 0x%8lX\09\00", align 1
@.str.4.36 = private unnamed_addr constant [21 x i8] c"32-bit float: %.25G\09\00", align 1
@.str.5.37 = private unnamed_addr constant [23 x i8] c"64-bit int: 0x%lX%08lX\00", align 1
@.str.6.38 = private unnamed_addr constant [18 x i8] c"64-bit int: 0x%lX\00", align 1
@.str.7.39 = private unnamed_addr constant [21 x i8] c"64-bit float: %.25G\09\00", align 1
@.str.8.40 = private unnamed_addr constant [24 x i8] c"Class: name = index %d\09\00", align 1
@.str.9.41 = private unnamed_addr constant [18 x i8] c"String: index %d\09\00", align 1
@.str.10.42 = private unnamed_addr constant [35 x i8] c"Ref: class_index %d, n&t_index %d\09\00", align 1
@.str.11.43 = private unnamed_addr constant [40 x i8] c"Name&Type: name_index %d, sig_index %d\09\00", align 1
@.str.12.44 = private unnamed_addr constant [64 x i8] c"Error reading constant pool entry %d of %d at file pos 0x%08x!\0A\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1.46 = private unnamed_addr constant [6 x i8] c"0x%lX\00", align 1
@.str.2.47 = private unnamed_addr constant [12 x i8] c"0x%lX%08lXL\00", align 1
@.str.3.48 = private unnamed_addr constant [7 x i8] c"0x%lXL\00", align 1
@.str.4.49 = private unnamed_addr constant [7 x i8] c"%.25Gf\00", align 1
@.str.5.50 = private unnamed_addr constant [7 x i8] c"%.25Gd\00", align 1
@.str.6.51 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.7.52 = private unnamed_addr constant [27 x i8] c"Unkown tag %d on constant\0A\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"Error in code: local used before defined.\0A\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"var%d\00", align 1
@.str.2.55 = private unnamed_addr constant [51 x i8] c"Incrementation of local var%d of type %d i.e. %s.\0A\00", align 1
@.str.3.56 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@str = private unnamed_addr constant [31 x i8] c"Local int used before defined.\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"Multi\00", align 1
@.str.1.58 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"Can't handle recursive conditional operators!\0A\00", align 1
@.str.1.60 = private unnamed_addr constant [32 x i8] c"Error in conditional operator!\0A\00", align 1
@.str.2.61 = private unnamed_addr constant [58 x i8] c"Use of comma operator in conditionals not yet supported.\0A\00", align 1
@.str.3.62 = private unnamed_addr constant [8 x i8] c"label%i\00", align 1
@.str.4.63 = private unnamed_addr constant [34 x i8] c"Error in pushing unary operation\0A\00", align 1
@cond_e = internal global ptr null, align 8
@cond_e2 = internal global ptr null, align 8
@cond_donestkptr = internal global ptr null, align 8
@cond_stkptr = internal global ptr null, align 8
@.str.64 = private unnamed_addr constant [13 x i8] c"doif1 error\0A\00", align 1
@.str.1.69 = private unnamed_addr constant [12 x i8] c"Error cond\0A\00", align 1
@.str.2.72 = private unnamed_addr constant [25 x i8] c"Can't not a non-boolean\0A\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"/* void */\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.79 = private unnamed_addr constant [61 x i8] c"Error in interface method invocation - nargs doesn't match.\0A\00", align 1
@.str.1.80 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.2.81 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.3.82 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@ch = internal global i32 0, align 4
@inbuff = internal global ptr null, align 8
@bufflength = internal global i32 0, align 4
@currpc = internal global i32 0, align 4
@lastaction = internal global i32 0, align 4
@miptr = internal global ptr null, align 8
@stack = internal global [8 x ptr] zeroinitializer, align 16
@stkptr = internal global ptr null, align 8
@donestack = internal global [256 x ptr] zeroinitializer, align 16
@donestkptr = internal global ptr null, align 8
@indentlevel = internal global i32 0, align 4
@actions = internal global <{ [200 x i8], [56 x i8] }> <{ [200 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\0F\00\00\00\0F\00\00\00\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\00\00\00\00\12\00\00\00\15\00\0D\19\00\00\00\00\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\06\06\06\06\06\06\06\06\06\06\06\06\10\07\07\07\07\07\07\07\07\07\07\07\07\07\07\00\16\16\16\16\16\0C\0C\0C\0C\0C\0C\17\17\17\17\17\17\17\17\07\00\00\1B\18\0A\0A\0A\0A\0A\0A\08\09\08\09\0B\0B\0B\0B\07\07\00\13\0E\07\11\1A\00\00\00\14\0C\0C", [56 x i8] zeroinitializer }>, align 16
@actiontable = internal global [28 x ptr] [ptr null, ptr @_Z7pushimpP9Classfile, ptr @_Z7pushimmP9Classfile, ptr @_Z9pushconstP9Classfile, ptr @_Z9pushlocalP9Classfile, ptr @_Z10storelocalP9Classfile, ptr @_Z9pushbinopP9Classfile, ptr @_Z8pushunopP9Classfile, ptr @_Z5dogetP9Classfile, ptr @_Z5doputP9Classfile, ptr @_Z8doreturnP9Classfile, ptr @_Z10invokefuncP9Classfile, ptr @_Z5doif1P9Classfile, ptr @_Z5dodupP9Classfile, ptr @_Z13doarraylengthP9Classfile, ptr @_Z10doarraygetP9Classfile, ptr @_Z9iinclocalP9Classfile, ptr @_Z11docheckcastP9Classfile, ptr @_Z10doarrayputP9Classfile, ptr @_Z9anewarrayP9Classfile, ptr @_Z14multianewarrayP9Classfile, ptr @_Z5dopopP9Classfile, ptr @_Z5docmpP9Classfile, ptr @_Z5doif2P9Classfile, ptr @_Z10doluswitchP9Classfile, ptr @_Z8dodup_x1P9Classfile, ptr @_Z12doinstanceofP9Classfile, ptr @_Z13dotableswitchP9Classfile], align 16
@cond_pcend = internal global i32 0, align 4
@.str.5.87 = private unnamed_addr constant [6 x i8] c"\0A  %s\00", align 1
@.str.6.88 = private unnamed_addr constant [11 x i8] c" throws %s\00", align 1
@.str.7.105 = private unnamed_addr constant [29 x i8] c"//    unknown opcode 0x%02X\0A\00", align 1
@.str.8.106 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.9.107 = private unnamed_addr constant [10 x i8] c"    do {\0A\00", align 1
@.str.10.108 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11.109 = private unnamed_addr constant [18 x i8] c"    while (%s) {\0A\00", align 1
@.str.12.110 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1
@.str.13.111 = private unnamed_addr constant [25 x i8] c"  } while(true);\09/*%d*/\0A\00", align 1
@.str.14.112 = private unnamed_addr constant [23 x i8] c"  } while(%s);\09/*%d*/\0A\00", align 1
@.str.15.113 = private unnamed_addr constant [12 x i8] c"  }\09/*%d*/\0A\00", align 1
@.str.16.114 = private unnamed_addr constant [19 x i8] c"    break;\09/*%d*/\0A\00", align 1
@.str.17.115 = private unnamed_addr constant [19 x i8] c"  } else {\09/*%d*/\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"    %s;\09/*%d*/\0A\00", align 1
@.str.19.117 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.20.116 = private unnamed_addr constant [8 x i8] c"    %s;\00", align 1
@.str.21.118 = private unnamed_addr constant [8 x i8] c"\09/*%d*/\00", align 1
@.str.23.119 = private unnamed_addr constant [4 x i8] c"  }\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"Unknown error.\00", align 1
@.str.1.123 = private unnamed_addr constant [21 x i8] c"Out of memory error.\00", align 1
@.str.2.124 = private unnamed_addr constant [49 x i8] c"Usage: %s [-O] [-D] InFile.class [OutFile.java]\0A\00", align 1
@.str.3.125 = private unnamed_addr constant [40 x i8] c"Usage: %s [-D] -Ifuncname InFile.class\0A\00", align 1
@.str.4.126 = private unnamed_addr constant [13 x i8] c"Not a class.\00", align 1
@.str.5.127 = private unnamed_addr constant [27 x i8] c"Unsupported Class Version.\00", align 1
@.str.6.128 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@errmsgs = internal global [7 x ptr] [ptr @.str.122, ptr @.str.1.123, ptr @.str.2.124, ptr @.str.3.125, ptr @.str.4.126, ptr @.str.5.127, ptr @.str.6.128], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_exp.cpp, ptr null }]
@std_exps = internal global [19 x %struct.Exp_] zeroinitializer, align 16
@.str.135 = private unnamed_addr constant [25 x i8] c"Can't not a non-boolean\0A\00", align 1
@.str.1.138 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.2.139 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.3.140 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4.141 = private unnamed_addr constant [7 x i8] c"(%s)%s\00", align 1
@.str.5.143 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.6.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7.144 = private unnamed_addr constant [11 x i8] c"%s%s%s%s%s\00", align 1
@.str.8.145 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.9.146 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11.147 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str.12.148 = private unnamed_addr constant [10 x i8] c"if (%s) {\00", align 1
@.str.13.149 = private unnamed_addr constant [29 x i8] c"switch (%s) default: label%d\00", align 1
@.str.14.150 = private unnamed_addr constant [45 x i8] c"Error converting expressions to strings. %d\0A\00", align 1
@debugon = internal global i32 0, align 4
@.str.151 = private unnamed_addr constant [60 x i8] c"HomeBrew Decompiler.  Copyright (c) 1994-2003 Pete Ryland.\0A\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@idnull = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.156, i32 8, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.1.159 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@idneg1 = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.1.159, i32 4, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.2.162 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@id0i = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.2.162, i32 4, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.3.165 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@id1i = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.3.165, i32 4, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.4.168 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@id2i = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.4.168, i32 4, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.5.171 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@id3i = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.5.171, i32 4, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.6.174 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@id4i = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.6.174, i32 4, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.7.177 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@id5i = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.7.177, i32 4, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.8.180 = private unnamed_addr constant [3 x i8] c"0L\00", align 1
@id0L = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.8.180, i32 5, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.9.183 = private unnamed_addr constant [3 x i8] c"1L\00", align 1
@id1L = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.9.183, i32 5, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.10.186 = private unnamed_addr constant [5 x i8] c"0.0f\00", align 1
@id0f = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.10.186, i32 6, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.11.189 = private unnamed_addr constant [5 x i8] c"1.0f\00", align 1
@id1f = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.11.189, i32 6, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.12.192 = private unnamed_addr constant [5 x i8] c"2.0f\00", align 1
@id2f = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.12.192, i32 6, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.13.195 = private unnamed_addr constant [5 x i8] c"0.0d\00", align 1
@id0d = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.13.195, i32 7, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.14.198 = private unnamed_addr constant [5 x i8] c"1.0d\00", align 1
@id1d = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.14.198, i32 7, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.15.201 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@idfalse = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.15.201, i32 10, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.16.204 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@idtrue = internal global { ptr, i32, i32, i32, { i64, [8 x i8] } } { ptr @.str.16.204, i32 10, i32 1, i32 0, { i64, [8 x i8] } { i64 0, [8 x i8] undef } }, align 8
@.str.207 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.1.208 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.2.209 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.3.210 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.4.211 = private unnamed_addr constant [5 x i8] c" %% \00", align 1
@.str.5.212 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6.213 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.7.214 = private unnamed_addr constant [5 x i8] c" << \00", align 1
@.str.8.215 = private unnamed_addr constant [5 x i8] c" >> \00", align 1
@.str.9.216 = private unnamed_addr constant [6 x i8] c" >>> \00", align 1
@.str.10.217 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.11.218 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.12.219 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.13.220 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.14.221 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.15.222 = private unnamed_addr constant [7 x i8] c"(cast)\00", align 1
@.str.16.223 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.17.224 = private unnamed_addr constant [7 x i8] c"throw \00", align 1
@.str.18.225 = private unnamed_addr constant [5 x i8] c"new \00", align 1
@.str.19.226 = private unnamed_addr constant [6 x i8] c"goto \00", align 1
@.str.20.227 = private unnamed_addr constant [5 x i8] c" += \00", align 1
@.str.21.228 = private unnamed_addr constant [5 x i8] c" -= \00", align 1
@.str.22.229 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.23.230 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.24.231 = private unnamed_addr constant [4 x i8] c" ? \00", align 1
@.str.25.232 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.26.233 = private unnamed_addr constant [8 x i8] c" error \00", align 1
@.str.27.234 = private unnamed_addr constant [6 x i8] c" cmp \00", align 1
@.str.28.235 = private unnamed_addr constant [5 x i8] c" == \00", align 1
@.str.29.236 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.30.237 = private unnamed_addr constant [4 x i8] c" < \00", align 1
@.str.31.238 = private unnamed_addr constant [5 x i8] c" >= \00", align 1
@.str.32.239 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.33.240 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@.str.34.241 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.35.242 = private unnamed_addr constant [5 x i8] c" && \00", align 1
@.str.36.243 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.37.244 = private unnamed_addr constant [13 x i8] c" instanceof \00", align 1
@.str.38.245 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.39.246 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@op2str = internal global [40 x ptr] [ptr @.str.207, ptr @.str.1.208, ptr @.str.2.209, ptr @.str.3.210, ptr @.str.4.211, ptr @.str.5.212, ptr @.str.6.213, ptr @.str.7.214, ptr @.str.8.215, ptr @.str.9.216, ptr @.str.10.217, ptr @.str.11.218, ptr @.str.12.219, ptr @.str.13.220, ptr @.str.14.221, ptr @.str.15.222, ptr @.str.16.223, ptr @.str.17.224, ptr @.str.18.225, ptr @.str.19.226, ptr @.str.20.227, ptr @.str.21.228, ptr @.str.22.229, ptr @.str.23.230, ptr @.str.24.231, ptr @.str.25.232, ptr @.str.26.233, ptr @.str.27.234, ptr @.str.28.235, ptr @.str.29.236, ptr @.str.30.237, ptr @.str.31.238, ptr @.str.32.239, ptr @.str.33.240, ptr @.str.34.241, ptr @.str.35.242, ptr @.str.36.243, ptr @.str.37.244, ptr @.str.38.245, ptr @.str.39.246], align 16
@op_prec = internal global [40 x i32] [i32 27, i32 27, i32 29, i32 29, i32 29, i32 39, i32 2, i32 26, i32 26, i32 26, i32 19, i32 17, i32 18, i32 32, i32 32, i32 39, i32 38, i32 38, i32 38, i32 38, i32 2, i32 2, i32 32, i32 32, i32 14, i32 14, i32 39, i32 20, i32 20, i32 20, i32 22, i32 22, i32 22, i32 22, i32 32, i32 16, i32 15, i32 32, i32 1, i32 39], align 16
@.str.278 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.1.279 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.2.280 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.3.281 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.4.282 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5.283 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.6.284 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.7.285 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.8.286 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@type2str = internal global [9 x ptr] [ptr @.str.278, ptr @.str.1.279, ptr @.str.2.280, ptr @.str.3.281, ptr @.str.4.282, ptr @.str.5.283, ptr @.str.6.284, ptr @.str.7.285, ptr @.str.8.286], align 16
@.str.9.251 = private unnamed_addr constant [39 x i8] c"Error converting signature to a type.\0A\00", align 1
@.str.10.254 = private unnamed_addr constant [8 x i8] c"byte %s\00", align 1
@.str.11.255 = private unnamed_addr constant [8 x i8] c"char %s\00", align 1
@.str.12.256 = private unnamed_addr constant [10 x i8] c"double %s\00", align 1
@.str.13.257 = private unnamed_addr constant [9 x i8] c"float %s\00", align 1
@.str.14.258 = private unnamed_addr constant [7 x i8] c"int %s\00", align 1
@.str.15.259 = private unnamed_addr constant [8 x i8] c"long %s\00", align 1
@.str.16.260 = private unnamed_addr constant [11 x i8] c"java/lang/\00", align 1
@.str.17.261 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.18.262 = private unnamed_addr constant [9 x i8] c"short %s\00", align 1
@.str.19.263 = private unnamed_addr constant [11 x i8] c"boolean %s\00", align 1
@.str.20.264 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.21.265 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.22.266 = private unnamed_addr constant [33 x i8] c"Non-function with function sig!\0A\00", align 1
@.str.23.267 = private unnamed_addr constant [9 x i8] c"<clinit>\00", align 1
@.str.24.268 = private unnamed_addr constant [7 x i8] c"<init>\00", align 1
@.str.27.269 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.28.270 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.29.271 = private unnamed_addr constant [34 x i8] c"Function Parameter type mismatch\0A\00", align 1
@.str.30.272 = private unnamed_addr constant [6 x i8] c"var%d\00", align 1
@.str.31.273 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.33.274 = private unnamed_addr constant [8 x i8] c"void %s\00", align 1
@.str.34.275 = private unnamed_addr constant [31 x i8] c"Error reading type signature!\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.289 = private unnamed_addr constant [63 x i8] c"Warning: Class Version 45.%d. (Program designed for ver 45.3)\0A\00", align 1

@_ZN9ClassfileC1EiPPc = internal unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN9ClassfileC2EiPPc

; Function Attrs: mustprogress nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @_ZN11AccessFlags8toStringEPc(ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %0, ptr noundef returned %1) #0 align 2 {
  store i8 0, ptr %1, align 1, !tbaa !7
  %3 = load i16, ptr %0, align 2, !tbaa !10
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %14, %2
  %6 = phi i64 [ %16, %14 ], [ 0, %2 ]
  %7 = phi i16 [ %15, %14 ], [ %3, %2 ]
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds [11 x ptr], ptr @flag2str, i64 0, i64 %6
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #25
  br label %14

14:                                               ; preds = %10, %5
  %15 = lshr i16 %7, 1
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp ult i16 %7, 2
  br i1 %17, label %18, label %5, !llvm.loop !15

18:                                               ; preds = %14, %2
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i16 @_ZN11AccessFlags6strlenEv(ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %0) #2 align 2 {
  %2 = load i16, ptr %0, align 2, !tbaa !10
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %15, %1
  %5 = phi i64 [ %18, %15 ], [ 0, %1 ]
  %6 = phi i16 [ %17, %15 ], [ %2, %1 ]
  %7 = phi i16 [ %16, %15 ], [ 0, %1 ]
  %8 = and i16 %6, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds [11 x i32], ptr @flag2strlen, i64 0, i64 %5
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = trunc i32 %12 to i16
  %14 = add i16 %7, %13
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i16 [ %14, %10 ], [ %7, %4 ]
  %17 = lshr i16 %6, 1
  %18 = add nuw nsw i64 %5, 1
  %19 = icmp ult i16 %6, 2
  br i1 %19, label %20, label %4, !llvm.loop !19

20:                                               ; preds = %15, %1
  %21 = phi i16 [ 0, %1 ], [ %16, %15 ]
  ret i16 %21
}

; Function Attrs: optsize uwtable
define internal void @_ZN9ClassfileC2EiPPc(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 7
  store i16 0, ptr %4, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 22
  store ptr null, ptr %5, align 8, !tbaa !20
  %6 = load ptr, ptr @stdout, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !25
  %8 = load ptr, ptr @stdin, align 8, !tbaa !13
  store ptr %8, ptr %0, align 8, !tbaa !26
  %9 = getelementptr inbounds ptr, ptr %2, i64 1
  %10 = load ptr, ptr %2, align 8, !tbaa !13
  store ptr %10, ptr @progname, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 8, !tbaa !27
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #26
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  %14 = getelementptr inbounds i8, ptr %13, i64 -3
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.11) #26
  %16 = icmp eq i32 %15, 0
  %17 = add nsw i32 %1, -1
  %18 = icmp eq i32 %17, 0
  br i1 %16, label %24, label %19

19:                                               ; preds = %3
  br i1 %18, label %126, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %9, align 8, !tbaa !13
  %22 = load i8, ptr %21, align 1, !tbaa !7
  %23 = icmp eq i8 %22, 45
  br i1 %23, label %87, label %106

24:                                               ; preds = %3
  br i1 %18, label %73, label %25

25:                                               ; preds = %45, %24
  %26 = phi i32 [ %47, %45 ], [ %17, %24 ]
  %27 = phi ptr [ %46, %45 ], [ %9, %24 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = load i8, ptr %28, align 1, !tbaa !7
  %30 = icmp eq i8 %29, 45
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  store i32 0, ptr %11, align 8, !tbaa !27
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = sext i8 %33 to i32
  %35 = tail call i32 @toupper(i32 noundef %34) #26
  switch i32 %35, label %39 [
    i32 68, label %36
    i32 73, label %37
  ]

36:                                               ; preds = %31
  store i32 1, ptr %11, align 8, !tbaa !17
  br label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %28, i64 2
  store ptr %38, ptr %5, align 8, !tbaa !20
  br label %45

39:                                               ; preds = %31
  %40 = load ptr, ptr @stderr, align 8, !tbaa !13
  %41 = getelementptr inbounds ptr, ptr %27, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.1.12, ptr noundef %42) #27
  %44 = load ptr, ptr @progname, align 8, !tbaa !13
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 3, ptr noundef %44) #28
  br label %45

45:                                               ; preds = %39, %37, %36
  %46 = getelementptr inbounds ptr, ptr %27, i64 1
  %47 = add nsw i32 %26, -1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %73, label %25, !llvm.loop !28

49:                                               ; preds = %25
  %.lcssa2 = phi i32 [ %26, %25 ]
  %.lcssa1 = phi ptr [ %27, %25 ]
  %.lcssa = phi ptr [ %28, %25 ]
  %50 = icmp eq i32 %.lcssa2, 1
  br i1 %50, label %51, label %73

51:                                               ; preds = %49
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa) #26
  %53 = add i64 %52, 5
  %54 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %53) #29
  %55 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) %.lcssa) #25
  %56 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %54)
  %57 = getelementptr inbounds i8, ptr %54, i64 %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %57, ptr noundef nonnull align 1 dereferenceable(5) @.str.2.13, i64 5, i1 false)
  %58 = tail call i32 @rename(ptr noundef nonnull %.lcssa, ptr noundef nonnull %54) #25
  %59 = tail call noalias ptr @fopen(ptr noundef nonnull %54, ptr noundef nonnull @.str.3.14) #28
  store ptr %59, ptr %0, align 8, !tbaa !26
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %51
  %62 = load ptr, ptr %.lcssa1, align 8, !tbaa !13
  %63 = tail call noalias ptr @fopen(ptr noundef %62, ptr noundef nonnull @.str.5.15) #28
  store ptr %63, ptr %7, align 8, !tbaa !25
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = getelementptr inbounds ptr, ptr %.lcssa1, i64 1
  br label %68

67:                                               ; preds = %61
  tail call void @_ZdaPv(ptr noundef nonnull %54) #30
  br label %75

68:                                               ; preds = %65, %51
  %69 = phi ptr [ %66, %65 ], [ %.lcssa1, %51 ]
  %70 = load ptr, ptr @stderr, align 8, !tbaa !13
  %71 = load ptr, ptr %69, align 8, !tbaa !13
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.4.16, ptr noundef %71) #27
  br label %73

73:                                               ; preds = %68, %49, %45, %24
  %74 = load ptr, ptr @progname, align 8, !tbaa !13
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 3, ptr noundef %74) #28
  br label %75

75:                                               ; preds = %73, %67
  %76 = load ptr, ptr %5, align 8, !tbaa !20
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load ptr, ptr @progname, align 8, !tbaa !13
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 3, ptr noundef %79) #28
  br label %80

80:                                               ; preds = %78, %75
  %81 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 3
  store i32 0, ptr %81, align 4, !tbaa !29
  br label %128

82:                                               ; preds = %103
  %83 = getelementptr inbounds ptr, ptr %89, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = load i8, ptr %84, align 1, !tbaa !7
  %86 = icmp eq i8 %85, 45
  br i1 %86, label %87, label %106, !llvm.loop !30

87:                                               ; preds = %82, %20
  %88 = phi ptr [ %84, %82 ], [ %21, %20 ]
  %89 = phi ptr [ %83, %82 ], [ %9, %20 ]
  %90 = phi i32 [ %104, %82 ], [ %17, %20 ]
  store i32 0, ptr %11, align 8, !tbaa !27
  %91 = getelementptr inbounds i8, ptr %88, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !7
  %93 = sext i8 %92 to i32
  %94 = tail call i32 @toupper(i32 noundef %93) #26
  switch i32 %94, label %97 [
    i32 79, label %95
    i32 68, label %96
  ]

95:                                               ; preds = %87
  store i32 2, ptr %11, align 8, !tbaa !17
  br label %103

96:                                               ; preds = %87
  store i32 1, ptr %11, align 8, !tbaa !17
  br label %103

97:                                               ; preds = %87
  %98 = load ptr, ptr @stderr, align 8, !tbaa !13
  %99 = getelementptr inbounds ptr, ptr %89, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !13
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.1.12, ptr noundef %100) #27
  %102 = load ptr, ptr @progname, align 8, !tbaa !13
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 2, ptr noundef %102) #28
  br label %103

103:                                              ; preds = %97, %96, %95
  %104 = add nsw i32 %90, -1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %126, label %82, !llvm.loop !30

106:                                              ; preds = %82, %20
  %107 = phi i32 [ %1, %20 ], [ %90, %82 ]
  %108 = phi ptr [ %9, %20 ], [ %83, %82 ]
  %109 = phi ptr [ %21, %20 ], [ %84, %82 ]
  switch i32 %107, label %126 [
    i32 3, label %110
    i32 2, label %117
  ]

110:                                              ; preds = %106
  %111 = getelementptr inbounds ptr, ptr %108, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !13
  %113 = tail call noalias ptr @fopen(ptr noundef %112, ptr noundef nonnull @.str.5.15) #28
  store ptr %113, ptr %7, align 8, !tbaa !25
  %114 = icmp eq ptr %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load ptr, ptr %108, align 8, !tbaa !13
  br label %117

117:                                              ; preds = %115, %106
  %118 = phi ptr [ %116, %115 ], [ %109, %106 ]
  %119 = tail call noalias ptr @fopen(ptr noundef %118, ptr noundef nonnull @.str.3.14) #28
  store ptr %119, ptr %0, align 8, !tbaa !26
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %117, %110
  %122 = phi ptr [ %111, %110 ], [ %108, %117 ]
  %123 = load ptr, ptr @stderr, align 8, !tbaa !13
  %124 = load ptr, ptr %122, align 8, !tbaa !13
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.4.16, ptr noundef %124) #27
  br label %126

126:                                              ; preds = %121, %106, %103, %19
  %127 = load ptr, ptr @progname, align 8, !tbaa !13
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 2, ptr noundef %127) #28
  br label %128

128:                                              ; preds = %126, %117, %80
  %129 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 2
  store i32 0, ptr %129, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize uwtable
define internal void @_ZN9Classfile4readEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #3 align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !26
  %3 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 2
  %4 = tail call i32 @getc(ptr noundef %2) #28
  %5 = zext i32 %4 to i64
  %6 = tail call i32 @getc(ptr noundef %2) #28
  %7 = shl nuw nsw i64 %5, 8
  %8 = and i32 %6, 255
  %9 = zext i32 %8 to i64
  %10 = and i64 %7, 65280
  %11 = or i64 %10, %9
  %12 = tail call i32 @getc(ptr noundef %2) #28
  %13 = zext i32 %12 to i64
  %14 = tail call i32 @getc(ptr noundef %2) #28
  %15 = shl nuw nsw i64 %13, 8
  %16 = and i32 %14, 255
  %17 = zext i32 %16 to i64
  %18 = and i64 %15, 65280
  %19 = or i64 %18, %17
  %20 = shl nuw nsw i64 %11, 16
  %21 = or i64 %19, %20
  %22 = icmp eq i64 %21, 3405691582
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 4) #28
  br label %24

24:                                               ; preds = %23, %1
  %25 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 5
  tail call void @_ZN12ClassVersion4readEP9Classfile(ptr noundef nonnull align 2 dereferenceable(4) %25, ptr noundef nonnull %0) #28
  %26 = load ptr, ptr @stderr, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 5, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !32
  %29 = zext i16 %28 to i32
  %30 = load i16, ptr %25, align 4, !tbaa !33
  %31 = zext i16 %30 to i32
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.6.17, i32 noundef %29, i32 noundef %31) #27
  %33 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 20
  store i16 0, ptr %33, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6
  tail call void @_ZN9ConstPool4readEP9ClassfilePt(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull %0, ptr noundef nonnull %33) #28
  %35 = load ptr, ptr %0, align 8, !tbaa !26
  %36 = tail call i32 @getc(ptr noundef %35) #28
  %37 = trunc i32 %36 to i16
  %38 = tail call i32 @getc(ptr noundef %35) #28
  %39 = trunc i32 %38 to i16
  %40 = shl i16 %37, 8
  %41 = and i16 %39, 255
  %42 = or i16 %41, %40
  %43 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 7
  store i16 %42, ptr %43, align 8, !tbaa !10
  %44 = load ptr, ptr %0, align 8, !tbaa !26
  %45 = tail call i32 @getc(ptr noundef %44) #28
  %46 = trunc i32 %45 to i16
  %47 = tail call i32 @getc(ptr noundef %44) #28
  %48 = trunc i32 %47 to i16
  %49 = shl i16 %46, 8
  %50 = and i16 %48, 255
  %51 = or i16 %50, %49
  %52 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 8
  store i16 %51, ptr %52, align 2, !tbaa !35
  %53 = load ptr, ptr %0, align 8, !tbaa !26
  %54 = tail call i32 @getc(ptr noundef %53) #28
  %55 = trunc i32 %54 to i16
  %56 = tail call i32 @getc(ptr noundef %53) #28
  %57 = trunc i32 %56 to i16
  %58 = shl i16 %55, 8
  %59 = and i16 %57, 255
  %60 = or i16 %59, %58
  %61 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 11
  store i16 %60, ptr %61, align 8, !tbaa !36
  %62 = load ptr, ptr %0, align 8, !tbaa !26
  %63 = tail call i32 @getc(ptr noundef %62) #28
  %64 = trunc i32 %63 to i16
  %65 = tail call i32 @getc(ptr noundef %62) #28
  %66 = trunc i32 %65 to i16
  %67 = shl i16 %64, 8
  %68 = and i16 %66, 255
  %69 = or i16 %68, %67
  %70 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 13
  store i16 %69, ptr %70, align 8, !tbaa !37
  %71 = zext i16 %69 to i64
  %72 = shl nuw nsw i64 %71, 1
  %73 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %72) #29
  %74 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 14
  store ptr %73, ptr %74, align 8, !tbaa !38
  %75 = icmp eq i16 %69, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %76, %24
  %77 = phi i64 [ %89, %76 ], [ 0, %24 ]
  %78 = phi i16 [ %79, %76 ], [ %69, %24 ]
  %79 = add i16 %78, -1
  %80 = load ptr, ptr %0, align 8, !tbaa !26
  %81 = tail call i32 @getc(ptr noundef %80) #28
  %82 = trunc i32 %81 to i16
  %83 = tail call i32 @getc(ptr noundef %80) #28
  %84 = trunc i32 %83 to i16
  %85 = shl i16 %82, 8
  %86 = and i16 %84, 255
  %87 = or i16 %86, %85
  %88 = load ptr, ptr %74, align 8, !tbaa !38
  %89 = add nuw nsw i64 %77, 1
  %90 = getelementptr inbounds i16, ptr %88, i64 %77
  store i16 %87, ptr %90, align 2, !tbaa !39
  %91 = icmp eq i16 %79, 0
  br i1 %91, label %92, label %76, !llvm.loop !40

92:                                               ; preds = %76, %24
  %93 = load ptr, ptr %0, align 8, !tbaa !26
  %94 = tail call i32 @getc(ptr noundef %93) #28
  %95 = trunc i32 %94 to i16
  %96 = tail call i32 @getc(ptr noundef %93) #28
  %97 = trunc i32 %96 to i16
  %98 = shl i16 %95, 8
  %99 = and i16 %97, 255
  %100 = or i16 %99, %98
  %101 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 15
  store i16 %100, ptr %101, align 8, !tbaa !41
  %102 = zext i16 %100 to i64
  %103 = shl nuw nsw i64 %102, 3
  %104 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %103) #29
  %105 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 16
  store ptr %104, ptr %105, align 8, !tbaa !42
  %106 = icmp eq i16 %100, 0
  br i1 %106, label %226, label %107

107:                                              ; preds = %92
  %108 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  br label %111

109:                                              ; preds = %224, %111
  %110 = icmp eq i16 %114, 0
  br i1 %110, label %226, label %111, !llvm.loop !43

111:                                              ; preds = %109, %107
  %112 = phi i64 [ 0, %107 ], [ %117, %109 ]
  %113 = phi i16 [ %100, %107 ], [ %114, %109 ]
  %114 = add i16 %113, -1
  %115 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
  store i16 0, ptr %115, align 8, !tbaa !10
  %116 = load ptr, ptr %105, align 8, !tbaa !42
  %117 = add nuw nsw i64 %112, 1
  %118 = getelementptr inbounds ptr, ptr %116, i64 %112
  store ptr %115, ptr %118, align 8, !tbaa !13
  %119 = getelementptr inbounds %struct.field_info, ptr %115, i64 0, i32 4
  store i32 0, ptr %119, align 8, !tbaa !44
  %120 = load ptr, ptr %0, align 8, !tbaa !26
  %121 = tail call i32 @getc(ptr noundef %120) #28
  %122 = trunc i32 %121 to i16
  %123 = tail call i32 @getc(ptr noundef %120) #28
  %124 = trunc i32 %123 to i16
  %125 = shl i16 %122, 8
  %126 = and i16 %124, 255
  %127 = or i16 %126, %125
  store i16 %127, ptr %115, align 2, !tbaa !10
  %128 = load ptr, ptr %0, align 8, !tbaa !26
  %129 = tail call i32 @getc(ptr noundef %128) #28
  %130 = zext i32 %129 to i64
  %131 = tail call i32 @getc(ptr noundef %128) #28
  %132 = shl nuw nsw i64 %130, 8
  %133 = and i32 %131, 255
  %134 = zext i32 %133 to i64
  %135 = load ptr, ptr %108, align 8, !tbaa !46
  %136 = and i64 %132, 65280
  %137 = or i64 %136, %134
  %138 = getelementptr inbounds %struct.cp_info, ptr %135, i64 %137, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !7
  %140 = getelementptr inbounds %struct.field_info, ptr %115, i64 0, i32 2
  store ptr %139, ptr %140, align 8, !tbaa !47
  %141 = load ptr, ptr %0, align 8, !tbaa !26
  %142 = tail call i32 @getc(ptr noundef %141) #28
  %143 = zext i32 %142 to i64
  %144 = tail call i32 @getc(ptr noundef %141) #28
  %145 = shl nuw nsw i64 %143, 8
  %146 = and i32 %144, 255
  %147 = zext i32 %146 to i64
  %148 = load ptr, ptr %108, align 8, !tbaa !46
  %149 = and i64 %145, 65280
  %150 = or i64 %149, %147
  %151 = getelementptr inbounds %struct.cp_info, ptr %148, i64 %150, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !7
  %153 = getelementptr inbounds %struct.field_info, ptr %115, i64 0, i32 3
  store ptr %152, ptr %153, align 8, !tbaa !48
  %154 = load ptr, ptr %0, align 8, !tbaa !26
  %155 = tail call i32 @getc(ptr noundef %154) #28
  %156 = tail call i32 @getc(ptr noundef %154) #28
  %157 = shl i32 %155, 8
  %158 = and i32 %156, 255
  %159 = and i32 %157, 65280
  %160 = or i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %109, label %162

162:                                              ; preds = %111
  %163 = getelementptr inbounds %struct.field_info, ptr %115, i64 0, i32 5
  br label %164

164:                                              ; preds = %224, %162
  %165 = phi i32 [ %160, %162 ], [ %166, %224 ]
  %166 = add nsw i32 %165, -1
  %167 = load ptr, ptr %0, align 8, !tbaa !26
  %168 = tail call i32 @getc(ptr noundef %167) #28
  %169 = zext i32 %168 to i64
  %170 = tail call i32 @getc(ptr noundef %167) #28
  %171 = shl nuw nsw i64 %169, 8
  %172 = and i32 %170, 255
  %173 = zext i32 %172 to i64
  %174 = load ptr, ptr %0, align 8, !tbaa !26
  %175 = tail call i32 @getc(ptr noundef %174) #28
  %176 = zext i32 %175 to i64
  %177 = tail call i32 @getc(ptr noundef %174) #28
  %178 = shl nuw nsw i64 %176, 8
  %179 = and i32 %177, 255
  %180 = zext i32 %179 to i64
  %181 = and i64 %178, 65280
  %182 = or i64 %181, %180
  %183 = tail call i32 @getc(ptr noundef %174) #28
  %184 = zext i32 %183 to i64
  %185 = tail call i32 @getc(ptr noundef %174) #28
  %186 = shl nuw nsw i64 %184, 8
  %187 = and i32 %185, 255
  %188 = zext i32 %187 to i64
  %189 = and i64 %186, 65280
  %190 = or i64 %189, %188
  %191 = shl nuw nsw i64 %182, 16
  %192 = or i64 %190, %191
  %193 = load ptr, ptr %108, align 8, !tbaa !46
  %194 = and i64 %171, 65280
  %195 = or i64 %194, %173
  %196 = getelementptr inbounds %struct.cp_info, ptr %193, i64 %195, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !7
  %198 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %197, ptr noundef nonnull dereferenceable(14) @.str.7.18) #26
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %164
  %201 = icmp eq i64 %192, 2
  br i1 %201, label %205, label %202

202:                                              ; preds = %200
  %203 = load ptr, ptr @stderr, align 8, !tbaa !13
  %204 = tail call i64 @fwrite(ptr nonnull @.str.8.19, i64 51, i64 1, ptr %203) #31
  tail call void @exit(i32 noundef 1) #32
  unreachable

205:                                              ; preds = %200
  store i32 1, ptr %119, align 8, !tbaa !44
  %206 = load ptr, ptr %0, align 8, !tbaa !26
  %207 = tail call i32 @getc(ptr noundef %206) #28
  %208 = trunc i32 %207 to i16
  %209 = tail call i32 @getc(ptr noundef %206) #28
  %210 = trunc i32 %209 to i16
  %211 = shl i16 %208, 8
  %212 = and i16 %210, 255
  %213 = or i16 %212, %211
  store i16 %213, ptr %163, align 4, !tbaa !49
  br label %224

214:                                              ; preds = %164
  %215 = load ptr, ptr @stderr, align 8, !tbaa !13
  %216 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef nonnull @.str.9.20, ptr noundef %197, i64 noundef %192) #27
  %217 = icmp eq i64 %192, 0
  br i1 %217, label %224, label %218

218:                                              ; preds = %218, %214
  %219 = phi i64 [ %220, %218 ], [ %192, %214 ]
  %220 = add nsw i64 %219, -1
  %221 = load ptr, ptr %0, align 8, !tbaa !26
  %222 = tail call i32 @getc(ptr noundef %221) #28
  %223 = icmp eq i64 %220, 0
  br i1 %223, label %224, label %218, !llvm.loop !50

224:                                              ; preds = %218, %214, %205
  %225 = icmp eq i32 %166, 0
  br i1 %225, label %109, label %164, !llvm.loop !51

226:                                              ; preds = %109, %92
  %227 = load ptr, ptr %0, align 8, !tbaa !26
  %228 = tail call i32 @getc(ptr noundef %227) #28
  %229 = trunc i32 %228 to i16
  %230 = tail call i32 @getc(ptr noundef %227) #28
  %231 = trunc i32 %230 to i16
  %232 = shl i16 %229, 8
  %233 = and i16 %231, 255
  %234 = or i16 %233, %232
  %235 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 17
  store i16 %234, ptr %235, align 8, !tbaa !52
  %236 = zext i16 %234 to i64
  %237 = shl nuw nsw i64 %236, 3
  %238 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %237) #29
  %239 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 18
  store ptr %238, ptr %239, align 8, !tbaa !53
  %240 = load i16, ptr %33, align 8, !tbaa !34
  %241 = add i16 %240, %234
  store i16 %241, ptr %33, align 8, !tbaa !34
  %242 = zext i16 %241 to i64
  %243 = shl nuw nsw i64 %242, 3
  %244 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %243) #29
  %245 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 21
  store ptr %244, ptr %245, align 8, !tbaa !54
  %246 = load i16, ptr %52, align 2, !tbaa !35
  %247 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !46
  %249 = zext i16 %246 to i64
  %250 = getelementptr inbounds %struct.cp_info, ptr %248, i64 %249, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !7
  %252 = getelementptr inbounds %struct.cp_info, ptr %248, i64 %251, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !7
  %254 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %253, i32 noundef 47) #26
  %255 = icmp eq ptr %254, null
  br i1 %255, label %290, label %256

256:                                              ; preds = %256, %226
  %257 = phi ptr [ %259, %256 ], [ %254, %226 ]
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  %259 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %258, i32 noundef 47) #26
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %256, !llvm.loop !55

261:                                              ; preds = %256
  %.lcssa2 = phi ptr [ %257, %256 ]
  %262 = ptrtoint ptr %253 to i64
  %263 = ptrtoint ptr %.lcssa2 to i64
  %264 = sub i64 %263, %262
  %265 = shl i64 %264, 32
  %266 = add i64 %265, 4294967296
  %267 = ashr exact i64 %266, 32
  %268 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %267) #29
  %269 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 9
  store ptr %268, ptr %269, align 8, !tbaa !56
  %270 = ashr exact i64 %265, 32
  %271 = tail call ptr @strncpy(ptr noundef nonnull %268, ptr noundef %253, i64 noundef %270) #25
  %272 = getelementptr inbounds i8, ptr %268, i64 %270
  store i8 0, ptr %272, align 1, !tbaa !7
  %273 = getelementptr inbounds i8, ptr %253, i64 %270
  %274 = getelementptr inbounds i8, ptr %273, i64 1
  %275 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %274) #26
  %276 = add i64 %275, 1
  %277 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %276) #29
  %278 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  store ptr %277, ptr %278, align 8, !tbaa !57
  %279 = load i64, ptr %250, align 8, !tbaa !7
  %280 = getelementptr inbounds %struct.cp_info, ptr %248, i64 %279, i32 1
  store ptr %274, ptr %280, align 8, !tbaa !7
  %281 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %277, ptr noundef nonnull dereferenceable(1) %274) #25
  %282 = load ptr, ptr %269, align 8, !tbaa !56
  %283 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %282) #26
  br label %284

284:                                              ; preds = %288, %261
  %285 = phi ptr [ %282, %261 ], [ %289, %288 ]
  %286 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %285, i32 noundef 47) #26
  %287 = icmp eq ptr %286, null
  br i1 %287, label %297, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds i8, ptr %286, i64 1
  store i8 46, ptr %286, align 1, !tbaa !7
  br label %284, !llvm.loop !58

290:                                              ; preds = %226
  %291 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 9
  store ptr null, ptr %291, align 8, !tbaa !56
  %292 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %253) #26
  %293 = add i64 %292, 1
  %294 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %293) #29
  %295 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  store ptr %294, ptr %295, align 8, !tbaa !57
  %296 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %294, ptr noundef nonnull dereferenceable(1) %253) #25
  br label %299

297:                                              ; preds = %284
  %298 = trunc i64 %283 to i32
  br label %299

299:                                              ; preds = %297, %290
  %300 = phi i32 [ 0, %290 ], [ %298, %297 ]
  %301 = load i16, ptr %34, align 8, !tbaa !59
  %302 = add i16 %301, -1
  %303 = icmp sgt i16 %302, -1
  br i1 %303, label %304, label %309

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 9
  %306 = sext i32 %300 to i64
  %307 = add nsw i32 %300, 1
  %308 = sext i32 %307 to i64
  br label %317

309:                                              ; preds = %492, %299
  %310 = phi i16 [ 0, %299 ], [ %493, %492 ]
  %311 = load i16, ptr %235, align 8, !tbaa !52
  %312 = icmp eq i16 %311, 0
  br i1 %312, label %1006, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 9
  %315 = sext i32 %300 to i64
  %316 = add nsw i32 %300, 1
  br label %498

317:                                              ; preds = %492, %304
  %318 = phi i16 [ %302, %304 ], [ %494, %492 ]
  %319 = phi i16 [ 0, %304 ], [ %493, %492 ]
  %320 = load ptr, ptr %247, align 8, !tbaa !46
  %321 = zext i16 %318 to i64
  %322 = getelementptr inbounds %struct.cp_info, ptr %320, i64 %321
  %323 = load i8, ptr %322, align 8, !tbaa.struct !60
  switch i8 %323, label %492 [
    i8 7, label %324
    i8 12, label %380
  ]

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.cp_info, ptr %320, i64 %321, i32 1
  %326 = load i64, ptr %325, align 8, !tbaa !7
  %327 = getelementptr inbounds %struct.cp_info, ptr %320, i64 %326, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !13
  %329 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %328, ptr noundef nonnull dereferenceable(11) @.str.10.21, i64 noundef 10) #26
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %324
  %332 = getelementptr inbounds i8, ptr %328, i64 10
  store ptr %332, ptr %327, align 8, !tbaa !13
  br label %341

333:                                              ; preds = %337, %324
  %334 = phi ptr [ %338, %337 ], [ %328, %324 ]
  %335 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %334, i32 noundef 47) #26
  %336 = icmp eq ptr %335, null
  br i1 %336, label %339, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds i8, ptr %335, i64 1
  store i8 46, ptr %335, align 1, !tbaa !7
  br label %333, !llvm.loop !67

339:                                              ; preds = %333
  %340 = load ptr, ptr %327, align 8, !tbaa !13
  br label %341

341:                                              ; preds = %339, %331
  %342 = phi ptr [ %340, %339 ], [ %332, %331 ]
  %343 = load ptr, ptr %305, align 8, !tbaa !56
  %344 = icmp eq ptr %343, null
  br i1 %344, label %350, label %345

345:                                              ; preds = %341
  %346 = tail call i32 @strncmp(ptr noundef %342, ptr noundef nonnull %343, i64 noundef %306) #26
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %345
  %349 = getelementptr inbounds i8, ptr %342, i64 %308
  store ptr %349, ptr %327, align 8, !tbaa !13
  br label %350

350:                                              ; preds = %348, %345, %341
  %351 = phi ptr [ %342, %345 ], [ %349, %348 ], [ %342, %341 ]
  %352 = load i16, ptr %33, align 8, !tbaa !34
  %353 = icmp eq i16 %319, %352
  br i1 %353, label %492, label %354

354:                                              ; preds = %350
  %355 = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %351, i32 noundef 46) #26
  %356 = icmp eq ptr %355, null
  br i1 %356, label %492, label %357

357:                                              ; preds = %354
  %358 = load ptr, ptr %245, align 8, !tbaa !54
  %359 = add i16 %319, 1
  %360 = zext i16 %319 to i64
  %361 = getelementptr inbounds ptr, ptr %358, i64 %360
  store ptr %351, ptr %361, align 8, !tbaa !13
  %362 = icmp ugt i16 %359, 1
  br i1 %362, label %363, label %377

363:                                              ; preds = %357
  %364 = zext i16 %359 to i64
  %365 = add nuw nsw i64 %364, 4294967294
  %366 = load ptr, ptr %245, align 8, !tbaa !54
  %367 = and i64 %365, 4294967295
  br label %371

368:                                              ; preds = %371
  %369 = add nsw i64 %372, -1
  %370 = icmp sgt i64 %372, 0
  br i1 %370, label %371, label %377, !llvm.loop !68

371:                                              ; preds = %368, %363
  %372 = phi i64 [ %367, %363 ], [ %369, %368 ]
  %373 = getelementptr inbounds ptr, ptr %366, i64 %372
  %374 = load ptr, ptr %373, align 8, !tbaa !13
  %375 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %374, ptr noundef nonnull dereferenceable(1) %351) #26
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %368

377:                                              ; preds = %371, %368, %357
  %378 = phi i16 [ %359, %357 ], [ %319, %371 ], [ %359, %368 ]
  %379 = getelementptr inbounds i8, ptr %355, i64 1
  store ptr %379, ptr %327, align 8, !tbaa !13
  br label %492

380:                                              ; preds = %317
  %381 = getelementptr inbounds i8, ptr %322, i64 8
  %382 = load ptr, ptr %381, align 8, !tbaa.struct !69
  %383 = getelementptr inbounds %struct.ClassVersion, ptr %382, i64 0, i32 1
  %384 = load i16, ptr %383, align 2, !tbaa !70
  %385 = zext i16 %384 to i64
  %386 = getelementptr inbounds %struct.cp_info, ptr %320, i64 %385, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !7
  %388 = tail call noalias ptr @strdup(ptr noundef %387) #25
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %391

390:                                              ; preds = %380
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 1) #28
  br label %391

391:                                              ; preds = %390, %380
  %392 = load i8, ptr %388, align 1, !tbaa !7
  store i8 %392, ptr %387, align 1, !tbaa !7
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %492, label %394

394:                                              ; preds = %486, %391
  %395 = phi ptr [ %487, %486 ], [ %387, %391 ]
  %396 = phi i16 [ %489, %486 ], [ %319, %391 ]
  %397 = phi ptr [ %488, %486 ], [ %388, %391 ]
  %398 = getelementptr inbounds i8, ptr %397, i64 1
  %399 = getelementptr inbounds i8, ptr %395, i64 1
  %400 = load i8, ptr %397, align 1, !tbaa !7
  %401 = icmp eq i8 %400, 76
  br i1 %401, label %402, label %486

402:                                              ; preds = %394
  %403 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %398, i32 noundef 59) #26
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 0) #28
  br label %406

406:                                              ; preds = %405, %402
  %407 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %398, ptr noundef nonnull dereferenceable(11) @.str.10.21, i64 noundef 10) #26
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %406
  %410 = getelementptr inbounds i8, ptr %397, i64 11
  br label %419

411:                                              ; preds = %417, %406
  %412 = phi ptr [ %418, %417 ], [ %398, %406 ]
  %413 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %412, i32 noundef 47) #26
  %414 = icmp ne ptr %413, null
  %415 = icmp ult ptr %413, %403
  %416 = and i1 %414, %415
  br i1 %416, label %417, label %419

417:                                              ; preds = %411
  %418 = getelementptr inbounds i8, ptr %413, i64 1
  store i8 46, ptr %413, align 1, !tbaa !7
  br label %411, !llvm.loop !72

419:                                              ; preds = %411, %409
  %420 = phi ptr [ %410, %409 ], [ %398, %411 ]
  %421 = load ptr, ptr %305, align 8, !tbaa !56
  %422 = icmp eq ptr %421, null
  br i1 %422, label %429, label %423

423:                                              ; preds = %419
  %424 = tail call i32 @strncmp(ptr noundef nonnull %420, ptr noundef nonnull %421, i64 noundef %306) #26
  %425 = icmp eq i32 %424, 0
  %426 = select i1 %425, i32 %307, i32 0
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i8, ptr %420, i64 %427
  br label %429

429:                                              ; preds = %423, %419
  %430 = phi ptr [ %420, %419 ], [ %428, %423 ]
  %431 = load i16, ptr %33, align 8, !tbaa !34
  %432 = icmp eq i16 %396, %431
  br i1 %432, label %476, label %433

433:                                              ; preds = %429
  %434 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %430, i32 noundef 46) #26
  %435 = icmp ne ptr %434, null
  %436 = icmp ult ptr %434, %403
  %437 = and i1 %435, %436
  br i1 %437, label %438, label %476

438:                                              ; preds = %438, %433
  %439 = phi ptr [ %441, %438 ], [ %434, %433 ]
  %440 = getelementptr inbounds i8, ptr %439, i64 1
  %441 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %440, i32 noundef 46) #26
  %442 = icmp ne ptr %441, null
  %443 = icmp ult ptr %441, %403
  %444 = and i1 %442, %443
  br i1 %444, label %438, label %445, !llvm.loop !73

445:                                              ; preds = %438
  %.lcssa1 = phi ptr [ %440, %438 ]
  %446 = ptrtoint ptr %403 to i64
  %447 = ptrtoint ptr %430 to i64
  %448 = sub i64 %446, %447
  %449 = shl i64 %448, 32
  %450 = add i64 %449, 4294967296
  %451 = ashr exact i64 %450, 32
  %452 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %451) #29
  %453 = load ptr, ptr %245, align 8, !tbaa !54
  %454 = add i16 %396, 1
  %455 = zext i16 %396 to i64
  %456 = getelementptr inbounds ptr, ptr %453, i64 %455
  store ptr %452, ptr %456, align 8, !tbaa !13
  %457 = ashr exact i64 %449, 32
  %458 = tail call ptr @strncpy(ptr noundef nonnull %452, ptr noundef %430, i64 noundef %457) #25
  %459 = getelementptr inbounds i8, ptr %452, i64 %457
  store i8 0, ptr %459, align 1, !tbaa !7
  %460 = icmp ugt i16 %454, 1
  br i1 %460, label %461, label %476

461:                                              ; preds = %445
  %462 = zext i16 %454 to i64
  %463 = add nuw nsw i64 %462, 4294967294
  %464 = load ptr, ptr %245, align 8, !tbaa !54
  %465 = and i64 %463, 4294967295
  br label %469

466:                                              ; preds = %469
  %467 = add nsw i64 %470, -1
  %468 = icmp sgt i64 %470, 0
  br i1 %468, label %469, label %476, !llvm.loop !74

469:                                              ; preds = %466, %461
  %470 = phi i64 [ %465, %461 ], [ %467, %466 ]
  %471 = getelementptr inbounds ptr, ptr %464, i64 %470
  %472 = load ptr, ptr %471, align 8, !tbaa !13
  %473 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %472, ptr noundef nonnull dereferenceable(1) %452) #26
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %466

475:                                              ; preds = %469
  tail call void @_ZdaPv(ptr noundef nonnull %452) #30
  br label %476

476:                                              ; preds = %475, %466, %445, %433, %429
  %477 = phi ptr [ %430, %433 ], [ %430, %429 ], [ %.lcssa1, %475 ], [ %.lcssa1, %445 ], [ %.lcssa1, %466 ]
  %478 = phi i16 [ %396, %433 ], [ %396, %429 ], [ %396, %475 ], [ %454, %445 ], [ %454, %466 ]
  br label %479

479:                                              ; preds = %479, %476
  %480 = phi ptr [ %399, %476 ], [ %484, %479 ]
  %481 = phi ptr [ %477, %476 ], [ %482, %479 ]
  %482 = getelementptr inbounds i8, ptr %481, i64 1
  %483 = load i8, ptr %481, align 1, !tbaa !7
  %484 = getelementptr inbounds i8, ptr %480, i64 1
  store i8 %483, ptr %480, align 1, !tbaa !7
  %485 = icmp eq i8 %483, 59
  br i1 %485, label %486, label %479, !llvm.loop !75

486:                                              ; preds = %479, %394
  %487 = phi ptr [ %399, %394 ], [ %484, %479 ]
  %488 = phi ptr [ %398, %394 ], [ %482, %479 ]
  %489 = phi i16 [ %396, %394 ], [ %478, %479 ]
  %490 = load i8, ptr %488, align 1, !tbaa !7
  store i8 %490, ptr %487, align 1, !tbaa !7
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %492, label %394, !llvm.loop !76

492:                                              ; preds = %486, %391, %377, %354, %350, %317
  %493 = phi i16 [ %378, %377 ], [ %319, %354 ], [ %319, %350 ], [ %319, %317 ], [ %319, %391 ], [ %489, %486 ]
  %494 = add nsw i16 %318, -1
  %495 = icmp sgt i16 %318, 0
  br i1 %495, label %317, label %309, !llvm.loop !77

496:                                              ; preds = %1004, %634
  %497 = icmp eq i16 %502, 0
  br i1 %497, label %1006, label %498, !llvm.loop !78

498:                                              ; preds = %496, %313
  %499 = phi i64 [ 0, %313 ], [ %505, %496 ]
  %500 = phi i16 [ %311, %313 ], [ %502, %496 ]
  %501 = phi i16 [ %310, %313 ], [ %635, %496 ]
  %502 = add i16 %500, -1
  %503 = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #29
  store i16 0, ptr %503, align 8, !tbaa !10
  %504 = load ptr, ptr %239, align 8, !tbaa !53
  %505 = add nuw nsw i64 %499, 1
  %506 = getelementptr inbounds ptr, ptr %504, i64 %499
  store ptr %503, ptr %506, align 8, !tbaa !13
  %507 = load ptr, ptr %0, align 8, !tbaa !26
  %508 = tail call i32 @getc(ptr noundef %507) #28
  %509 = trunc i32 %508 to i16
  %510 = tail call i32 @getc(ptr noundef %507) #28
  %511 = trunc i32 %510 to i16
  %512 = shl i16 %509, 8
  %513 = and i16 %511, 255
  %514 = or i16 %513, %512
  store i16 %514, ptr %503, align 2, !tbaa !10
  %515 = load ptr, ptr %0, align 8, !tbaa !26
  %516 = tail call i32 @getc(ptr noundef %515) #28
  %517 = zext i32 %516 to i64
  %518 = tail call i32 @getc(ptr noundef %515) #28
  %519 = shl nuw nsw i64 %517, 8
  %520 = and i32 %518, 255
  %521 = zext i32 %520 to i64
  %522 = load ptr, ptr %247, align 8, !tbaa !46
  %523 = and i64 %519, 65280
  %524 = or i64 %523, %521
  %525 = getelementptr inbounds %struct.cp_info, ptr %522, i64 %524, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !7
  %527 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 1
  store ptr %526, ptr %527, align 8, !tbaa !79
  %528 = load ptr, ptr %0, align 8, !tbaa !26
  %529 = tail call i32 @getc(ptr noundef %528) #28
  %530 = zext i32 %529 to i64
  %531 = tail call i32 @getc(ptr noundef %528) #28
  %532 = shl nuw nsw i64 %530, 8
  %533 = and i32 %531, 255
  %534 = zext i32 %533 to i64
  %535 = load ptr, ptr %247, align 8, !tbaa !46
  %536 = and i64 %532, 65280
  %537 = or i64 %536, %534
  %538 = getelementptr inbounds %struct.cp_info, ptr %535, i64 %537, i32 1
  %539 = load ptr, ptr %538, align 8, !tbaa !7
  %540 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 2
  store ptr %539, ptr %540, align 8, !tbaa !82
  %541 = tail call noalias ptr @strdup(ptr noundef %539) #25
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %544

543:                                              ; preds = %498
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 1) #28
  br label %544

544:                                              ; preds = %543, %498
  %545 = load i8, ptr %541, align 1, !tbaa !7
  store i8 %545, ptr %539, align 1, !tbaa !7
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %634, label %547

547:                                              ; preds = %629, %544
  %548 = phi ptr [ %552, %629 ], [ %539, %544 ]
  %549 = phi i16 [ %631, %629 ], [ %501, %544 ]
  %550 = phi ptr [ %630, %629 ], [ %541, %544 ]
  %551 = getelementptr inbounds i8, ptr %550, i64 1
  %552 = getelementptr inbounds i8, ptr %548, i64 1
  %553 = load i8, ptr %550, align 1, !tbaa !7
  %554 = icmp eq i8 %553, 76
  br i1 %554, label %555, label %629

555:                                              ; preds = %547
  %556 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %551, i32 noundef 59) #26
  %557 = icmp eq ptr %556, null
  br i1 %557, label %558, label %559

558:                                              ; preds = %555
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 0) #28
  br label %559

559:                                              ; preds = %558, %555
  %560 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %551, ptr noundef nonnull dereferenceable(11) @.str.10.21, i64 noundef 10) #26
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %559
  %563 = getelementptr inbounds i8, ptr %550, i64 11
  br label %572

564:                                              ; preds = %570, %559
  %565 = phi ptr [ %571, %570 ], [ %551, %559 ]
  %566 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %565, i32 noundef 47) #26
  %567 = icmp ne ptr %566, null
  %568 = icmp ult ptr %566, %556
  %569 = and i1 %567, %568
  br i1 %569, label %570, label %572

570:                                              ; preds = %564
  %571 = getelementptr inbounds i8, ptr %566, i64 1
  store i8 46, ptr %566, align 1, !tbaa !7
  br label %564, !llvm.loop !83

572:                                              ; preds = %564, %562
  %573 = phi ptr [ %563, %562 ], [ %551, %564 ]
  %574 = load ptr, ptr %314, align 8, !tbaa !56
  %575 = icmp eq ptr %574, null
  br i1 %575, label %582, label %576

576:                                              ; preds = %572
  %577 = tail call i32 @strncmp(ptr noundef nonnull %573, ptr noundef nonnull %574, i64 noundef %315) #26
  %578 = icmp eq i32 %577, 0
  %579 = select i1 %578, i32 %316, i32 0
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i8, ptr %573, i64 %580
  br label %582

582:                                              ; preds = %576, %572
  %583 = phi ptr [ %573, %572 ], [ %581, %576 ]
  %584 = load i16, ptr %33, align 8, !tbaa !34
  %585 = icmp eq i16 %549, %584
  br i1 %585, label %629, label %586

586:                                              ; preds = %582
  %587 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %583, i32 noundef 46) #26
  %588 = icmp ne ptr %587, null
  %589 = icmp ult ptr %587, %556
  %590 = and i1 %588, %589
  br i1 %590, label %591, label %629

591:                                              ; preds = %591, %586
  %592 = phi ptr [ %594, %591 ], [ %587, %586 ]
  %593 = getelementptr inbounds i8, ptr %592, i64 1
  %594 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %593, i32 noundef 46) #26
  %595 = icmp ne ptr %594, null
  %596 = icmp ult ptr %594, %556
  %597 = and i1 %595, %596
  br i1 %597, label %591, label %598, !llvm.loop !84

598:                                              ; preds = %591
  %.lcssa = phi ptr [ %593, %591 ]
  %599 = ptrtoint ptr %556 to i64
  %600 = ptrtoint ptr %583 to i64
  %601 = sub i64 %599, %600
  %602 = shl i64 %601, 32
  %603 = add i64 %602, 4294967296
  %604 = ashr exact i64 %603, 32
  %605 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %604) #29
  %606 = load ptr, ptr %245, align 8, !tbaa !54
  %607 = add i16 %549, 1
  %608 = zext i16 %549 to i64
  %609 = getelementptr inbounds ptr, ptr %606, i64 %608
  store ptr %605, ptr %609, align 8, !tbaa !13
  %610 = ashr exact i64 %602, 32
  %611 = tail call ptr @strncpy(ptr noundef nonnull %605, ptr noundef %583, i64 noundef %610) #25
  %612 = getelementptr inbounds i8, ptr %605, i64 %610
  store i8 0, ptr %612, align 1, !tbaa !7
  %613 = icmp ugt i16 %607, 1
  br i1 %613, label %614, label %629

614:                                              ; preds = %598
  %615 = zext i16 %607 to i64
  %616 = add nuw nsw i64 %615, 4294967294
  %617 = load ptr, ptr %245, align 8, !tbaa !54
  %618 = and i64 %616, 4294967295
  br label %622

619:                                              ; preds = %622
  %620 = add nsw i64 %623, -1
  %621 = icmp sgt i64 %623, 0
  br i1 %621, label %622, label %629, !llvm.loop !85

622:                                              ; preds = %619, %614
  %623 = phi i64 [ %618, %614 ], [ %620, %619 ]
  %624 = getelementptr inbounds ptr, ptr %617, i64 %623
  %625 = load ptr, ptr %624, align 8, !tbaa !13
  %626 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %625, ptr noundef nonnull dereferenceable(1) %605) #26
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %619

628:                                              ; preds = %622
  tail call void @_ZdaPv(ptr noundef nonnull %605) #30
  br label %629

629:                                              ; preds = %628, %619, %598, %586, %582, %547
  %630 = phi ptr [ %583, %586 ], [ %583, %582 ], [ %551, %547 ], [ %.lcssa, %628 ], [ %.lcssa, %598 ], [ %.lcssa, %619 ]
  %631 = phi i16 [ %549, %586 ], [ %549, %582 ], [ %549, %547 ], [ %549, %628 ], [ %607, %598 ], [ %607, %619 ]
  %632 = load i8, ptr %630, align 1, !tbaa !7
  store i8 %632, ptr %552, align 1, !tbaa !7
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %634, label %547, !llvm.loop !86

634:                                              ; preds = %629, %544
  %635 = phi i16 [ %501, %544 ], [ %631, %629 ]
  %636 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 19
  store i32 0, ptr %636, align 4, !tbaa !87
  %637 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 11
  store i16 0, ptr %637, align 8, !tbaa !88
  %638 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 9
  store i16 0, ptr %638, align 8, !tbaa !89
  %639 = load ptr, ptr %0, align 8, !tbaa !26
  %640 = tail call i32 @getc(ptr noundef %639) #28
  %641 = tail call i32 @getc(ptr noundef %639) #28
  %642 = shl i32 %640, 8
  %643 = and i32 %641, 255
  %644 = and i32 %642, 65280
  %645 = or i32 %643, %644
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %496, label %647

647:                                              ; preds = %634
  %648 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 20
  %649 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 3
  %650 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 4
  %651 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 5
  %652 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 6
  %653 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 7
  %654 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 8
  %655 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 12
  %656 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 13
  %657 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 14
  %658 = getelementptr inbounds %struct.method_info, ptr %503, i64 0, i32 10
  br label %659

659:                                              ; preds = %1004, %647
  %660 = phi i32 [ %645, %647 ], [ %661, %1004 ]
  %661 = add nsw i32 %660, -1
  %662 = load ptr, ptr %0, align 8, !tbaa !26
  %663 = tail call i32 @getc(ptr noundef %662) #28
  %664 = zext i32 %663 to i64
  %665 = tail call i32 @getc(ptr noundef %662) #28
  %666 = shl nuw nsw i64 %664, 8
  %667 = and i32 %665, 255
  %668 = zext i32 %667 to i64
  %669 = load ptr, ptr %0, align 8, !tbaa !26
  %670 = tail call i32 @getc(ptr noundef %669) #28
  %671 = zext i32 %670 to i64
  %672 = tail call i32 @getc(ptr noundef %669) #28
  %673 = shl nuw nsw i64 %671, 8
  %674 = and i32 %672, 255
  %675 = zext i32 %674 to i64
  %676 = and i64 %673, 65280
  %677 = or i64 %676, %675
  %678 = tail call i32 @getc(ptr noundef %669) #28
  %679 = zext i32 %678 to i64
  %680 = tail call i32 @getc(ptr noundef %669) #28
  %681 = shl nuw nsw i64 %679, 8
  %682 = and i32 %680, 255
  %683 = zext i32 %682 to i64
  %684 = and i64 %681, 65280
  %685 = or i64 %684, %683
  %686 = shl nuw nsw i64 %677, 16
  %687 = or i64 %685, %686
  %688 = load ptr, ptr %247, align 8, !tbaa !46
  %689 = and i64 %666, 65280
  %690 = or i64 %689, %668
  %691 = getelementptr inbounds %struct.cp_info, ptr %688, i64 %690, i32 1
  %692 = load ptr, ptr %691, align 8, !tbaa !7
  %693 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %692, ptr noundef nonnull dereferenceable(5) @.str.11.22) #26
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %953

695:                                              ; preds = %659
  %696 = load ptr, ptr %0, align 8, !tbaa !26
  %697 = tail call i32 @getc(ptr noundef %696) #28
  %698 = tail call i32 @getc(ptr noundef %696) #28
  %699 = trunc i32 %698 to i8
  store i8 %699, ptr %649, align 8, !tbaa !90
  %700 = load ptr, ptr %0, align 8, !tbaa !26
  %701 = tail call i32 @getc(ptr noundef %700) #28
  %702 = tail call i32 @getc(ptr noundef %700) #28
  %703 = trunc i32 %702 to i8
  store i8 %703, ptr %650, align 1, !tbaa !91
  %704 = load ptr, ptr %0, align 8, !tbaa !26
  %705 = tail call i32 @getc(ptr noundef %704) #28
  %706 = zext i32 %705 to i64
  %707 = tail call i32 @getc(ptr noundef %704) #28
  %708 = shl nuw nsw i64 %706, 8
  %709 = and i32 %707, 255
  %710 = zext i32 %709 to i64
  %711 = and i64 %708, 65280
  %712 = or i64 %711, %710
  %713 = tail call i32 @getc(ptr noundef %704) #28
  %714 = zext i32 %713 to i64
  %715 = tail call i32 @getc(ptr noundef %704) #28
  %716 = shl nuw nsw i64 %714, 8
  %717 = and i32 %715, 255
  %718 = zext i32 %717 to i64
  %719 = and i64 %716, 65280
  %720 = or i64 %719, %718
  %721 = shl nuw nsw i64 %712, 16
  %722 = or i64 %720, %721
  %723 = trunc i64 %722 to i32
  store i32 %723, ptr %651, align 4, !tbaa !92
  %724 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %722) #29
  store ptr %724, ptr %652, align 8, !tbaa !93
  %725 = load i32, ptr %3, align 8, !tbaa !31
  %726 = add i32 %725, %723
  store i32 %726, ptr %3, align 8, !tbaa !31
  %727 = load ptr, ptr %0, align 8, !tbaa !26
  %728 = tail call i64 @fread(ptr noundef nonnull %724, i64 noundef %722, i64 noundef 1, ptr noundef %727) #28
  %729 = load ptr, ptr %0, align 8, !tbaa !26
  %730 = tail call i32 @getc(ptr noundef %729) #28
  %731 = trunc i32 %730 to i16
  %732 = tail call i32 @getc(ptr noundef %729) #28
  %733 = trunc i32 %732 to i16
  %734 = shl i16 %731, 8
  %735 = and i16 %733, 255
  %736 = or i16 %735, %734
  store i16 %736, ptr %653, align 8, !tbaa !94
  %737 = zext i16 %736 to i64
  %738 = mul nuw nsw i64 %737, 24
  %739 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %738) #29
  store ptr %739, ptr %654, align 8, !tbaa !95
  %740 = icmp eq i16 %736, 0
  br i1 %740, label %741, label %750

741:                                              ; preds = %750, %695
  %742 = load ptr, ptr %0, align 8, !tbaa !26
  %743 = tail call i32 @getc(ptr noundef %742) #28
  %744 = tail call i32 @getc(ptr noundef %742) #28
  %745 = shl i32 %743, 8
  %746 = and i32 %744, 255
  %747 = and i32 %745, 65280
  %748 = or i32 %746, %747
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %1004, label %798

750:                                              ; preds = %750, %695
  %751 = phi ptr [ %794, %750 ], [ %739, %695 ]
  %752 = phi i64 [ %795, %750 ], [ 0, %695 ]
  %753 = phi i16 [ %754, %750 ], [ %736, %695 ]
  %754 = add i16 %753, -1
  %755 = getelementptr inbounds %struct.Block, ptr %751, i64 %752
  store i32 0, ptr %755, align 8, !tbaa !96
  %756 = load ptr, ptr %0, align 8, !tbaa !26
  %757 = tail call i32 @getc(ptr noundef %756) #28
  %758 = trunc i32 %757 to i16
  %759 = tail call i32 @getc(ptr noundef %756) #28
  %760 = trunc i32 %759 to i16
  %761 = shl i16 %758, 8
  %762 = and i16 %760, 255
  %763 = or i16 %762, %761
  %764 = load ptr, ptr %654, align 8, !tbaa !95
  %765 = getelementptr inbounds %struct.Block, ptr %764, i64 %752, i32 1
  store i16 %763, ptr %765, align 4, !tbaa !99
  %766 = load ptr, ptr %0, align 8, !tbaa !26
  %767 = tail call i32 @getc(ptr noundef %766) #28
  %768 = trunc i32 %767 to i16
  %769 = tail call i32 @getc(ptr noundef %766) #28
  %770 = trunc i32 %769 to i16
  %771 = shl i16 %768, 8
  %772 = and i16 %770, 255
  %773 = or i16 %772, %771
  %774 = load ptr, ptr %654, align 8, !tbaa !95
  %775 = getelementptr inbounds %struct.Block, ptr %774, i64 %752, i32 2
  store i16 %773, ptr %775, align 2, !tbaa !100
  %776 = load ptr, ptr %0, align 8, !tbaa !26
  %777 = tail call i32 @getc(ptr noundef %776) #28
  %778 = trunc i32 %777 to i16
  %779 = tail call i32 @getc(ptr noundef %776) #28
  %780 = trunc i32 %779 to i16
  %781 = shl i16 %778, 8
  %782 = and i16 %780, 255
  %783 = or i16 %782, %781
  %784 = load ptr, ptr %654, align 8, !tbaa !95
  %785 = getelementptr inbounds %struct.Block, ptr %784, i64 %752, i32 3
  store i16 %783, ptr %785, align 8, !tbaa !7
  %786 = load ptr, ptr %0, align 8, !tbaa !26
  %787 = tail call i32 @getc(ptr noundef %786) #28
  %788 = trunc i32 %787 to i16
  %789 = tail call i32 @getc(ptr noundef %786) #28
  %790 = trunc i32 %789 to i16
  %791 = shl i16 %788, 8
  %792 = and i16 %790, 255
  %793 = or i16 %792, %791
  %794 = load ptr, ptr %654, align 8, !tbaa !95
  %795 = add nuw nsw i64 %752, 1
  %796 = getelementptr inbounds %struct.Block, ptr %794, i64 %752, i32 4
  store i16 %793, ptr %796, align 4, !tbaa !101
  %797 = icmp eq i16 %754, 0
  br i1 %797, label %741, label %750, !llvm.loop !102

798:                                              ; preds = %951, %741
  %799 = phi i32 [ %800, %951 ], [ %748, %741 ]
  %800 = add nsw i32 %799, -1
  %801 = load ptr, ptr %0, align 8, !tbaa !26
  %802 = tail call i32 @getc(ptr noundef %801) #28
  %803 = zext i32 %802 to i64
  %804 = tail call i32 @getc(ptr noundef %801) #28
  %805 = shl nuw nsw i64 %803, 8
  %806 = and i32 %804, 255
  %807 = zext i32 %806 to i64
  %808 = load ptr, ptr %0, align 8, !tbaa !26
  %809 = tail call i32 @getc(ptr noundef %808) #28
  %810 = zext i32 %809 to i64
  %811 = tail call i32 @getc(ptr noundef %808) #28
  %812 = shl nuw nsw i64 %810, 8
  %813 = and i32 %811, 255
  %814 = zext i32 %813 to i64
  %815 = and i64 %812, 65280
  %816 = or i64 %815, %814
  %817 = tail call i32 @getc(ptr noundef %808) #28
  %818 = zext i32 %817 to i64
  %819 = tail call i32 @getc(ptr noundef %808) #28
  %820 = shl nuw nsw i64 %818, 8
  %821 = and i32 %819, 255
  %822 = zext i32 %821 to i64
  %823 = and i64 %820, 65280
  %824 = or i64 %823, %822
  %825 = shl nuw nsw i64 %816, 16
  %826 = or i64 %824, %825
  %827 = load ptr, ptr %247, align 8, !tbaa !46
  %828 = and i64 %805, 65280
  %829 = or i64 %828, %807
  %830 = getelementptr inbounds %struct.cp_info, ptr %827, i64 %829, i32 1
  %831 = load ptr, ptr %830, align 8, !tbaa !7
  %832 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %831, ptr noundef nonnull dereferenceable(16) @.str.12) #26
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %852

834:                                              ; preds = %798
  %835 = load ptr, ptr %0, align 8, !tbaa !26
  %836 = tail call i32 @getc(ptr noundef %835) #28
  %837 = trunc i32 %836 to i16
  %838 = tail call i32 @getc(ptr noundef %835) #28
  %839 = trunc i32 %838 to i16
  %840 = shl i16 %837, 8
  %841 = and i16 %839, 255
  %842 = or i16 %841, %840
  store i16 %842, ptr %638, align 8, !tbaa !89
  %843 = zext i16 %842 to i64
  %844 = shl nuw nsw i64 %843, 2
  %845 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %844) #29
  store ptr %845, ptr %658, align 8, !tbaa !103
  %846 = zext i16 %842 to i32
  %847 = shl nuw nsw i32 %846, 2
  %848 = load i32, ptr %3, align 8, !tbaa !31
  %849 = add nsw i32 %847, %848
  store i32 %849, ptr %3, align 8, !tbaa !31
  %850 = load ptr, ptr %0, align 8, !tbaa !26
  %851 = tail call i64 @fread(ptr noundef nonnull %845, i64 noundef %844, i64 noundef 1, ptr noundef %850) #28
  br label %951

852:                                              ; preds = %798
  %853 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %831, ptr noundef nonnull dereferenceable(19) @.str.13) #26
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %940

855:                                              ; preds = %852
  %856 = load ptr, ptr %0, align 8, !tbaa !26
  %857 = tail call i32 @getc(ptr noundef %856) #28
  %858 = trunc i32 %857 to i16
  %859 = tail call i32 @getc(ptr noundef %856) #28
  %860 = trunc i32 %859 to i16
  %861 = shl i16 %858, 8
  %862 = and i16 %860, 255
  %863 = or i16 %862, %861
  store i16 %863, ptr %637, align 8, !tbaa !88
  %864 = zext i16 %863 to i64
  %865 = mul nuw nsw i64 %864, 10
  %866 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %865) #29
  store ptr %866, ptr %655, align 8, !tbaa !104
  %867 = zext i16 %863 to i32
  %868 = mul nuw nsw i32 %867, 10
  %869 = load i32, ptr %3, align 8, !tbaa !31
  %870 = add nsw i32 %868, %869
  store i32 %870, ptr %3, align 8, !tbaa !31
  %871 = load ptr, ptr %0, align 8, !tbaa !26
  %872 = tail call i64 @fread(ptr noundef nonnull %866, i64 noundef %865, i64 noundef 1, ptr noundef %871) #28
  %873 = load i16, ptr %637, align 8, !tbaa !88
  %874 = zext i16 %873 to i64
  %875 = shl nuw nsw i64 %874, 4
  %876 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %875) #29
  store ptr %876, ptr %656, align 8, !tbaa !105
  %877 = icmp eq i16 %873, 0
  br i1 %877, label %907, label %878

878:                                              ; preds = %878, %855
  %879 = phi i64 [ %880, %878 ], [ %874, %855 ]
  %880 = add nsw i64 %879, -1
  %881 = load ptr, ptr %655, align 8, !tbaa !104
  %882 = getelementptr inbounds %struct.LocalVariableTableEntry, ptr %881, i64 %880, i32 2
  %883 = load i16, ptr %882, align 2, !tbaa !106
  %884 = load ptr, ptr %247, align 8, !tbaa !46
  %885 = zext i16 %883 to i64
  %886 = getelementptr inbounds %struct.cp_info, ptr %884, i64 %885, i32 1
  %887 = load ptr, ptr %886, align 8, !tbaa !7
  %888 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %887) #26
  %889 = add i64 %888, 1
  %890 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %889) #29
  %891 = load ptr, ptr %656, align 8, !tbaa !105
  %892 = getelementptr inbounds %struct.LocalVariableTableEntry, ptr %881, i64 %880, i32 4
  %893 = load i16, ptr %892, align 2, !tbaa !108
  %894 = zext i16 %893 to i64
  %895 = getelementptr inbounds ptr, ptr %891, i64 %894
  store ptr %890, ptr %895, align 8, !tbaa !13
  %896 = load ptr, ptr %656, align 8, !tbaa !105
  %897 = load ptr, ptr %655, align 8, !tbaa !104
  %898 = getelementptr inbounds %struct.LocalVariableTableEntry, ptr %897, i64 %880, i32 4
  %899 = load i16, ptr %898, align 2, !tbaa !108
  %900 = zext i16 %899 to i64
  %901 = getelementptr inbounds ptr, ptr %896, i64 %900
  %902 = load ptr, ptr %901, align 8, !tbaa !13
  %903 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %902, ptr noundef nonnull dereferenceable(1) %887) #25
  %904 = icmp eq i64 %880, 0
  br i1 %904, label %905, label %878, !llvm.loop !109

905:                                              ; preds = %878
  %906 = load i16, ptr %637, align 8, !tbaa !88
  br label %907

907:                                              ; preds = %905, %855
  %908 = phi i16 [ %906, %905 ], [ 0, %855 ]
  %909 = zext i16 %908 to i64
  %910 = shl nuw nsw i64 %909, 4
  %911 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %910) #29
  store ptr %911, ptr %657, align 8, !tbaa !110
  %912 = icmp eq i16 %908, 0
  br i1 %912, label %951, label %913

913:                                              ; preds = %913, %907
  %914 = phi i64 [ %915, %913 ], [ %909, %907 ]
  %915 = add nsw i64 %914, -1
  %916 = load ptr, ptr %655, align 8, !tbaa !104
  %917 = getelementptr inbounds %struct.LocalVariableTableEntry, ptr %916, i64 %915, i32 3
  %918 = load i16, ptr %917, align 2, !tbaa !111
  %919 = load ptr, ptr %247, align 8, !tbaa !46
  %920 = zext i16 %918 to i64
  %921 = getelementptr inbounds %struct.cp_info, ptr %919, i64 %920, i32 1
  %922 = load ptr, ptr %921, align 8, !tbaa !7
  %923 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %922) #26
  %924 = add i64 %923, 1
  %925 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %924) #29
  %926 = load ptr, ptr %657, align 8, !tbaa !110
  %927 = getelementptr inbounds %struct.LocalVariableTableEntry, ptr %916, i64 %915, i32 4
  %928 = load i16, ptr %927, align 2, !tbaa !108
  %929 = zext i16 %928 to i64
  %930 = getelementptr inbounds ptr, ptr %926, i64 %929
  store ptr %925, ptr %930, align 8, !tbaa !13
  %931 = load ptr, ptr %657, align 8, !tbaa !110
  %932 = load ptr, ptr %655, align 8, !tbaa !104
  %933 = getelementptr inbounds %struct.LocalVariableTableEntry, ptr %932, i64 %915, i32 4
  %934 = load i16, ptr %933, align 2, !tbaa !108
  %935 = zext i16 %934 to i64
  %936 = getelementptr inbounds ptr, ptr %931, i64 %935
  %937 = load ptr, ptr %936, align 8, !tbaa !13
  %938 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %937, ptr noundef nonnull dereferenceable(1) %922) #25
  %939 = icmp eq i64 %915, 0
  br i1 %939, label %951, label %913, !llvm.loop !112

940:                                              ; preds = %852
  %941 = load ptr, ptr @stderr, align 8, !tbaa !13
  %942 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %941, ptr noundef nonnull @.str.14, ptr noundef %831, i64 noundef %826) #27
  %943 = trunc i64 %826 to i32
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %951, label %945

945:                                              ; preds = %945, %940
  %946 = phi i32 [ %947, %945 ], [ %943, %940 ]
  %947 = add nsw i32 %946, -1
  %948 = load ptr, ptr %0, align 8, !tbaa !26
  %949 = tail call i32 @getc(ptr noundef %948) #28
  %950 = icmp eq i32 %947, 0
  br i1 %950, label %951, label %945, !llvm.loop !113

951:                                              ; preds = %945, %940, %913, %907, %834
  %952 = icmp eq i32 %800, 0
  br i1 %952, label %1004, label %798, !llvm.loop !114

953:                                              ; preds = %659
  %954 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %692, ptr noundef nonnull dereferenceable(11) @.str.15) #26
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %983

956:                                              ; preds = %953
  %957 = load ptr, ptr %0, align 8, !tbaa !26
  %958 = tail call i32 @getc(ptr noundef %957) #28
  %959 = trunc i32 %958 to i16
  %960 = tail call i32 @getc(ptr noundef %957) #28
  %961 = trunc i32 %960 to i16
  %962 = shl i16 %959, 8
  %963 = and i16 %961, 255
  %964 = or i16 %963, %962
  %965 = zext i16 %964 to i32
  store i32 %965, ptr %636, align 4, !tbaa !87
  %966 = zext i16 %964 to i64
  %967 = shl nuw nsw i64 %966, 2
  %968 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %967) #29
  store ptr %968, ptr %648, align 8, !tbaa !115
  %969 = icmp eq i16 %964, 0
  br i1 %969, label %1004, label %970

970:                                              ; preds = %970, %956
  %971 = phi i32 [ %973, %970 ], [ %965, %956 ]
  %972 = phi ptr [ %981, %970 ], [ %968, %956 ]
  %973 = add nsw i32 %971, -1
  %974 = load ptr, ptr %0, align 8, !tbaa !26
  %975 = tail call i32 @getc(ptr noundef %974) #28
  %976 = tail call i32 @getc(ptr noundef %974) #28
  %977 = shl i32 %975, 8
  %978 = and i32 %976, 255
  %979 = and i32 %977, 65280
  %980 = or i32 %978, %979
  %981 = getelementptr inbounds i32, ptr %972, i64 1
  store i32 %980, ptr %972, align 4, !tbaa !17
  %982 = icmp eq i32 %973, 0
  br i1 %982, label %1004, label %970, !llvm.loop !116

983:                                              ; preds = %953
  %984 = load ptr, ptr @stderr, align 8, !tbaa !13
  %985 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %984, ptr noundef nonnull @.str.16, ptr noundef %692, i64 noundef %687) #27
  %986 = icmp eq i64 %687, 0
  br i1 %986, label %987, label %989

987:                                              ; preds = %989, %983
  %988 = tail call i32 @putchar(i32 10)
  br label %1004

989:                                              ; preds = %989, %983
  %990 = phi i32 [ %991, %989 ], [ 0, %983 ]
  %991 = add i32 %990, 1
  %992 = load ptr, ptr %0, align 8, !tbaa !26
  %993 = tail call i32 @getc(ptr noundef %992) #28
  %994 = and i32 %993, 255
  %995 = and i32 %991, 7
  %996 = icmp eq i32 %995, 0
  %997 = and i32 %991, 15
  %998 = icmp eq i32 %997, 0
  %999 = select i1 %998, i32 9, i32 10
  %1000 = select i1 %996, i32 %999, i32 32
  %1001 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %994, i32 noundef %1000) #28
  %1002 = zext i32 %991 to i64
  %1003 = icmp eq i64 %687, %1002
  br i1 %1003, label %987, label %989, !llvm.loop !117

1004:                                             ; preds = %987, %970, %956, %951, %741
  %1005 = icmp eq i32 %661, 0
  br i1 %1005, label %496, label %659, !llvm.loop !118

1006:                                             ; preds = %496, %309
  %1007 = phi i16 [ %310, %309 ], [ %635, %496 ]
  store i16 %1007, ptr %33, align 8, !tbaa !34
  %1008 = load ptr, ptr %0, align 8, !tbaa !26
  %1009 = tail call i32 @getc(ptr noundef %1008) #28
  %1010 = trunc i32 %1009 to i16
  %1011 = tail call i32 @getc(ptr noundef %1008) #28
  %1012 = trunc i32 %1011 to i16
  %1013 = shl i16 %1010, 8
  %1014 = and i16 %1012, 255
  %1015 = or i16 %1014, %1013
  %1016 = icmp eq i16 %1015, 0
  br i1 %1016, label %1089, label %1017

1017:                                             ; preds = %1006
  %1018 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 19
  br label %1019

1019:                                             ; preds = %1087, %1017
  %1020 = phi i16 [ %1015, %1017 ], [ %1021, %1087 ]
  %1021 = add i16 %1020, -1
  %1022 = load ptr, ptr %0, align 8, !tbaa !26
  %1023 = tail call i32 @getc(ptr noundef %1022) #28
  %1024 = zext i32 %1023 to i64
  %1025 = tail call i32 @getc(ptr noundef %1022) #28
  %1026 = shl nuw nsw i64 %1024, 8
  %1027 = and i32 %1025, 255
  %1028 = zext i32 %1027 to i64
  %1029 = load ptr, ptr %0, align 8, !tbaa !26
  %1030 = tail call i32 @getc(ptr noundef %1029) #28
  %1031 = zext i32 %1030 to i64
  %1032 = tail call i32 @getc(ptr noundef %1029) #28
  %1033 = shl nuw nsw i64 %1031, 8
  %1034 = and i32 %1032, 255
  %1035 = zext i32 %1034 to i64
  %1036 = and i64 %1033, 65280
  %1037 = or i64 %1036, %1035
  %1038 = tail call i32 @getc(ptr noundef %1029) #28
  %1039 = zext i32 %1038 to i64
  %1040 = tail call i32 @getc(ptr noundef %1029) #28
  %1041 = shl nuw nsw i64 %1039, 8
  %1042 = and i32 %1040, 255
  %1043 = zext i32 %1042 to i64
  %1044 = and i64 %1041, 65280
  %1045 = or i64 %1044, %1043
  %1046 = shl nuw nsw i64 %1037, 16
  %1047 = or i64 %1045, %1046
  %1048 = load ptr, ptr %247, align 8, !tbaa !46
  %1049 = and i64 %1026, 65280
  %1050 = or i64 %1049, %1028
  %1051 = getelementptr inbounds %struct.cp_info, ptr %1048, i64 %1050, i32 1
  %1052 = load ptr, ptr %1051, align 8, !tbaa !7
  %1053 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1052, ptr noundef nonnull dereferenceable(11) @.str.19) #26
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1055, label %1077

1055:                                             ; preds = %1019
  %1056 = icmp eq i64 %1047, 2
  br i1 %1056, label %1060, label %1057

1057:                                             ; preds = %1055
  %1058 = load ptr, ptr @stderr, align 8, !tbaa !13
  %1059 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 48, i64 1, ptr %1058) #31
  tail call void @exit(i32 noundef 1) #32
  unreachable

1060:                                             ; preds = %1055
  %1061 = load ptr, ptr %0, align 8, !tbaa !26
  %1062 = tail call i32 @getc(ptr noundef %1061) #28
  %1063 = zext i32 %1062 to i64
  %1064 = tail call i32 @getc(ptr noundef %1061) #28
  %1065 = shl nuw nsw i64 %1063, 8
  %1066 = and i32 %1064, 255
  %1067 = zext i32 %1066 to i64
  %1068 = load ptr, ptr %247, align 8, !tbaa !46
  %1069 = and i64 %1065, 65280
  %1070 = or i64 %1069, %1067
  %1071 = getelementptr inbounds %struct.cp_info, ptr %1068, i64 %1070, i32 1
  %1072 = load ptr, ptr %1071, align 8, !tbaa !7
  %1073 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1072) #26
  %1074 = add i64 %1073, 1
  %1075 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %1074) #29
  store ptr %1075, ptr %1018, align 8, !tbaa !119
  %1076 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1075, ptr noundef nonnull dereferenceable(1) %1072) #25
  br label %1087

1077:                                             ; preds = %1019
  %1078 = load ptr, ptr @stderr, align 8, !tbaa !13
  %1079 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1078, ptr noundef nonnull @.str.21, ptr noundef %1052, i64 noundef %1047) #27
  %1080 = icmp eq i64 %1047, 0
  br i1 %1080, label %1087, label %1081

1081:                                             ; preds = %1081, %1077
  %1082 = phi i64 [ %1083, %1081 ], [ %1047, %1077 ]
  %1083 = add nsw i64 %1082, -1
  %1084 = load ptr, ptr %0, align 8, !tbaa !26
  %1085 = tail call i32 @getc(ptr noundef %1084) #28
  %1086 = icmp eq i64 %1083, 0
  br i1 %1086, label %1087, label %1081, !llvm.loop !120

1087:                                             ; preds = %1081, %1077, %1060
  %1088 = icmp eq i16 %1021, 0
  br i1 %1088, label %1089, label %1019, !llvm.loop !121

1089:                                             ; preds = %1087, %1006
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9Classfile5printEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #13 align 2 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @stderr, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef %5) #27
  %7 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = load ptr, ptr %4, align 8, !tbaa !119
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef %9) #28
  %11 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %7, align 8, !tbaa !25
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef nonnull %12) #28
  br label %17

17:                                               ; preds = %14, %1
  %18 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 20
  %19 = load i16, ptr %18, align 8, !tbaa !34
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = zext i16 %19 to i32
  %23 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  br label %25

25:                                               ; preds = %25, %21
  %26 = phi i32 [ %28, %25 ], [ %22, %21 ]
  %27 = phi ptr [ %30, %25 ], [ %24, %21 ]
  %28 = add nsw i32 %26, -1
  %29 = load ptr, ptr %7, align 8, !tbaa !25
  %30 = getelementptr inbounds ptr, ptr %27, i64 1
  %31 = load ptr, ptr %27, align 8, !tbaa !13
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.25, ptr noundef %31) #28
  %33 = icmp eq i32 %28, 0
  br i1 %33, label %34, label %25, !llvm.loop !122

34:                                               ; preds = %25, %17
  %35 = load ptr, ptr %7, align 8, !tbaa !25
  %36 = tail call i32 @fputc(i32 10, ptr %35)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #33
  %37 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 7
  %38 = tail call noundef zeroext i16 @_ZN11AccessFlags6strlenEv(ptr noundef nonnull align 2 dereferenceable(2) %37) #28
  %39 = zext i16 %38 to i64
  %40 = add nuw nsw i64 %39, 1
  %41 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %40) #29
  store ptr %41, ptr %2, align 8, !tbaa !13
  %42 = load ptr, ptr %7, align 8, !tbaa !25
  %43 = tail call noundef ptr @_ZN11AccessFlags8toStringEPc(ptr noundef nonnull align 2 dereferenceable(2) %37, ptr noundef nonnull %41) #28
  %44 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !57
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.26, ptr noundef %43, ptr noundef %45) #28
  tail call void @_ZdaPv(ptr noundef nonnull %41) #30
  %47 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 11
  %48 = load i16, ptr %47, align 8, !tbaa !36
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = zext i16 %48 to i64
  %54 = getelementptr inbounds %struct.cp_info, ptr %52, i64 %53, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !7
  %56 = getelementptr inbounds %struct.cp_info, ptr %52, i64 %55, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !7
  store ptr %57, ptr %2, align 8, !tbaa !13
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(7) @.str.27) #26
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 12
  store ptr @.str.27, ptr %61, align 8, !tbaa !123
  br label %70

62:                                               ; preds = %50
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #26
  %64 = add i64 %63, 1
  %65 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %64) #29
  %66 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 12
  store ptr %65, ptr %66, align 8, !tbaa !123
  %67 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %57) #25
  %68 = load ptr, ptr %7, align 8, !tbaa !25
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.28, ptr noundef nonnull %65) #28
  br label %70

70:                                               ; preds = %62, %60, %34
  %71 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 13
  %72 = load i16, ptr %71, align 8, !tbaa !37
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %111, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %7, align 8, !tbaa !25
  %76 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr %75)
  %77 = load i16, ptr %71, align 8, !tbaa !37
  %78 = zext i16 %77 to i32
  %79 = add nsw i32 %78, -1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %98, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 14
  %83 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi i32 [ %79, %81 ], [ %96, %84 ]
  %86 = load ptr, ptr %7, align 8, !tbaa !25
  %87 = load ptr, ptr %82, align 8, !tbaa !38
  %88 = load i16, ptr %87, align 2, !tbaa !39
  %89 = load ptr, ptr %83, align 8, !tbaa !46
  %90 = zext i16 %88 to i64
  %91 = getelementptr inbounds %struct.cp_info, ptr %89, i64 %90, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !7
  %93 = getelementptr inbounds %struct.cp_info, ptr %89, i64 %92, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !7
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.30, ptr noundef %94) #28
  %96 = add nsw i32 %85, -1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %84, !llvm.loop !124

98:                                               ; preds = %84, %74
  %99 = load ptr, ptr %7, align 8, !tbaa !25
  %100 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 14
  %101 = load ptr, ptr %100, align 8, !tbaa !38
  %102 = load i16, ptr %101, align 2, !tbaa !39
  %103 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !46
  %105 = zext i16 %102 to i64
  %106 = getelementptr inbounds %struct.cp_info, ptr %104, i64 %105, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !7
  %108 = getelementptr inbounds %struct.cp_info, ptr %104, i64 %107, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !7
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.31, ptr noundef %109) #28
  br label %111

111:                                              ; preds = %98, %70
  %112 = load ptr, ptr %7, align 8, !tbaa !25
  %113 = tail call i32 @fputc(i32 123, ptr %112)
  %114 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 15
  %115 = load i16, ptr %114, align 8, !tbaa !41
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %211, label %117

117:                                              ; preds = %111
  %118 = zext i16 %115 to i32
  %119 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 16
  %120 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  br label %121

121:                                              ; preds = %207, %117
  %122 = phi i64 [ 0, %117 ], [ %126, %207 ]
  %123 = phi i32 [ %118, %117 ], [ %124, %207 ]
  %124 = add nsw i32 %123, -1
  %125 = load ptr, ptr %119, align 8, !tbaa !42
  %126 = add nuw nsw i64 %122, 1
  %127 = getelementptr inbounds ptr, ptr %125, i64 %122
  %128 = load ptr, ptr %127, align 8, !tbaa !13
  %129 = call noundef zeroext i16 @_ZN11AccessFlags6strlenEv(ptr noundef nonnull align 2 dereferenceable(2) %128) #28
  %130 = zext i16 %129 to i64
  %131 = add nuw nsw i64 %130, 1
  %132 = call noalias noundef nonnull ptr @_Znam(i64 noundef %131) #29
  store ptr %132, ptr %2, align 8, !tbaa !13
  %133 = load ptr, ptr %7, align 8, !tbaa !25
  %134 = call noundef ptr @_ZN11AccessFlags8toStringEPc(ptr noundef nonnull align 2 dereferenceable(2) %128, ptr noundef nonnull %132) #28
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.33, ptr noundef %134) #28
  %136 = load ptr, ptr %2, align 8, !tbaa !13
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %121
  call void @_ZdaPv(ptr noundef nonnull %136) #30
  br label %139

139:                                              ; preds = %138, %121
  %140 = getelementptr inbounds %struct.field_info, ptr %128, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !48
  store ptr %141, ptr %2, align 8, !tbaa !13
  %142 = load ptr, ptr %7, align 8, !tbaa !25
  %143 = getelementptr inbounds %struct.field_info, ptr %128, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !47
  %145 = call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef nonnull %0, ptr noundef %142, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %144, ptr noundef null) #28
  %146 = getelementptr inbounds %struct.field_info, ptr %128, i64 0, i32 4
  %147 = load i32, ptr %146, align 8, !tbaa !44
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %207, label %149

149:                                              ; preds = %139
  %150 = load ptr, ptr %7, align 8, !tbaa !25
  %151 = call i64 @fwrite(ptr nonnull @.str.34, i64 3, i64 1, ptr %150)
  %152 = load ptr, ptr %140, align 8, !tbaa !48
  %153 = load i8, ptr %152, align 1, !tbaa !7
  %154 = sext i8 %153 to i32
  switch i32 %154, label %204 [
    i32 73, label %155
    i32 74, label %164
    i32 70, label %181
    i32 68, label %191
  ]

155:                                              ; preds = %149
  %156 = load ptr, ptr %7, align 8, !tbaa !25
  %157 = getelementptr inbounds %struct.field_info, ptr %128, i64 0, i32 5
  %158 = load i16, ptr %157, align 4, !tbaa !49
  %159 = load ptr, ptr %120, align 8, !tbaa !46
  %160 = zext i16 %158 to i64
  %161 = getelementptr inbounds %struct.cp_info, ptr %159, i64 %160, i32 1
  %162 = load i64, ptr %161, align 8, !tbaa !7
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %156, ptr noundef nonnull @.str.35, i64 noundef %162) #28
  br label %207

164:                                              ; preds = %149
  %165 = getelementptr inbounds %struct.field_info, ptr %128, i64 0, i32 5
  %166 = load i16, ptr %165, align 4, !tbaa !49
  %167 = load ptr, ptr %120, align 8, !tbaa !46
  %168 = zext i16 %166 to i64
  %169 = getelementptr inbounds %struct.cp_info, ptr %167, i64 %168, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !7
  %171 = icmp eq i64 %170, 0
  %172 = load ptr, ptr %7, align 8, !tbaa !25
  %173 = add i16 %166, 1
  %174 = zext i16 %173 to i64
  %175 = getelementptr inbounds %struct.cp_info, ptr %167, i64 %174, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !7
  br i1 %171, label %179, label %177

177:                                              ; preds = %164
  %178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.36, i64 noundef %170, i64 noundef %176) #28
  br label %207

179:                                              ; preds = %164
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.37, i64 noundef %176) #28
  br label %207

181:                                              ; preds = %149
  %182 = load ptr, ptr %7, align 8, !tbaa !25
  %183 = getelementptr inbounds %struct.field_info, ptr %128, i64 0, i32 5
  %184 = load i16, ptr %183, align 4, !tbaa !49
  %185 = load ptr, ptr %120, align 8, !tbaa !46
  %186 = zext i16 %184 to i64
  %187 = getelementptr inbounds %struct.cp_info, ptr %185, i64 %186, i32 1
  %188 = load float, ptr %187, align 8, !tbaa !7
  %189 = fpext float %188 to double
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.38, double noundef %189) #28
  br label %207

191:                                              ; preds = %149
  %192 = load ptr, ptr %7, align 8, !tbaa !25
  %193 = getelementptr inbounds %struct.field_info, ptr %128, i64 0, i32 5
  %194 = load i16, ptr %193, align 4, !tbaa !49
  %195 = load ptr, ptr %120, align 8, !tbaa !46
  %196 = zext i16 %194 to i64
  %197 = getelementptr inbounds %struct.cp_info, ptr %195, i64 %196, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !7
  %199 = inttoptr i64 %198 to ptr
  %200 = load double, ptr %199, align 8, !tbaa !63
  %201 = fptrunc double %200 to float
  %202 = fpext float %201 to double
  %203 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef nonnull @.str.39, double noundef %202) #28
  br label %207

204:                                              ; preds = %149
  %205 = load ptr, ptr @stderr, align 8, !tbaa !13
  %206 = call i64 @fwrite(ptr nonnull @.str.40, i64 22, i64 1, ptr %205) #31
  br label %207

207:                                              ; preds = %204, %191, %181, %179, %177, %155, %139
  %208 = load ptr, ptr %7, align 8, !tbaa !25
  %209 = call i32 @fputc(i32 59, ptr %208)
  %210 = icmp eq i32 %124, 0
  br i1 %210, label %211, label %121, !llvm.loop !125

211:                                              ; preds = %207, %111
  %212 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 17
  %213 = load i16, ptr %212, align 8, !tbaa !52
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %233, label %215

215:                                              ; preds = %211
  %216 = zext i16 %213 to i32
  %217 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 18
  br label %218

218:                                              ; preds = %231, %215
  %219 = phi i64 [ 0, %215 ], [ %223, %231 ]
  %220 = phi i32 [ %216, %215 ], [ %221, %231 ]
  %221 = add nsw i32 %220, -1
  %222 = load ptr, ptr %217, align 8, !tbaa !53
  %223 = add nuw nsw i64 %219, 1
  %224 = getelementptr inbounds ptr, ptr %222, i64 %219
  %225 = load ptr, ptr %224, align 8, !tbaa !13
  %226 = call noundef i32 @_Z14decompileblockP9ClassfileP11method_info(ptr noundef nonnull %0, ptr noundef %225) #28
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %218
  %229 = load ptr, ptr %7, align 8, !tbaa !25
  %230 = call i64 @fwrite(ptr nonnull @.str.42, i64 41, i64 1, ptr %229)
  br label %231

231:                                              ; preds = %228, %218
  %232 = icmp eq i32 %221, 0
  br i1 %232, label %233, label %218, !llvm.loop !126

233:                                              ; preds = %231, %211
  %234 = load ptr, ptr %7, align 8, !tbaa !25
  %235 = call i64 @fwrite(ptr nonnull @.str.43, i64 2, i64 1, ptr %234)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN9ConstPool4readEP9ClassfilePt(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) #13 align 2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.Classfile, ptr %1, i64 0, i32 2
  %6 = tail call i32 @getc(ptr noundef %4) #28
  %7 = trunc i32 %6 to i16
  %8 = tail call i32 @getc(ptr noundef %4) #28
  %9 = trunc i32 %8 to i16
  %10 = shl i16 %7, 8
  %11 = and i16 %9, 255
  %12 = or i16 %11, %10
  store i16 %12, ptr %0, align 8, !tbaa !59
  %13 = zext i16 %12 to i64
  %14 = shl nuw nsw i64 %13, 4
  %15 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #29
  %16 = getelementptr inbounds %struct.ConstPool, ptr %0, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !46
  store i8 0, ptr %15, align 8, !tbaa !127
  %17 = zext i16 %12 to i32
  %18 = add nsw i32 %17, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = add nsw i32 %17, -2
  %22 = getelementptr inbounds %struct.Classfile, ptr %1, i64 0, i32 1
  br label %24

23:                                               ; preds = %352, %3
  ret void

24:                                               ; preds = %352, %20
  %25 = phi i32 [ %21, %20 ], [ %355, %352 ]
  %26 = phi i32 [ %18, %20 ], [ %354, %352 ]
  %27 = phi i32 [ 1, %20 ], [ %353, %352 ]
  %28 = load ptr, ptr %16, align 8, !tbaa !46
  %29 = add nsw i32 %27, 1
  %30 = sext i32 %27 to i64
  %31 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30
  %32 = load ptr, ptr %1, align 8, !tbaa !26
  %33 = tail call i32 @getc(ptr noundef %32) #28
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %31, align 8, !tbaa !127
  %35 = load i32, ptr @debugon, align 4, !tbaa !17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = load ptr, ptr %22, align 8, !tbaa !25
  %39 = load i32, ptr %5, align 8, !tbaa !31
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.32, i32 noundef %39, i32 noundef %27) #28
  %41 = load i8, ptr %31, align 8, !tbaa !127
  br label %42

42:                                               ; preds = %37, %24
  %43 = phi i8 [ %34, %24 ], [ %41, %37 ]
  switch i8 %43, label %346 [
    i8 1, label %44
    i8 2, label %72
    i8 3, label %78
    i8 4, label %104
    i8 5, label %133
    i8 6, label %191
    i8 7, label %246
    i8 8, label %263
    i8 9, label %280
    i8 10, label %280
    i8 11, label %280
    i8 12, label %313
  ]

44:                                               ; preds = %42
  %45 = load ptr, ptr %1, align 8, !tbaa !26
  %46 = tail call i32 @getc(ptr noundef %45) #28
  %47 = trunc i32 %46 to i16
  %48 = tail call i32 @getc(ptr noundef %45) #28
  %49 = trunc i32 %48 to i16
  %50 = shl i16 %47, 8
  %51 = and i16 %49, 255
  %52 = or i16 %51, %50
  %53 = zext i16 %52 to i32
  %54 = add nuw nsw i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %55) #29
  %57 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !7
  %58 = load i32, ptr %5, align 8, !tbaa !31
  %59 = add nsw i32 %58, %53
  store i32 %59, ptr %5, align 8, !tbaa !31
  %60 = load ptr, ptr %57, align 8, !tbaa !7
  %61 = zext i16 %52 to i64
  %62 = load ptr, ptr %1, align 8, !tbaa !26
  %63 = tail call i64 @fread(ptr noundef %60, i64 noundef %61, i64 noundef 1, ptr noundef %62) #28
  %64 = load ptr, ptr %57, align 8, !tbaa !7
  %65 = getelementptr inbounds i8, ptr %64, i64 %61
  store i8 0, ptr %65, align 1, !tbaa !7
  %66 = load i32, ptr @debugon, align 4, !tbaa !17
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %352, label %68

68:                                               ; preds = %44
  %69 = load ptr, ptr %22, align 8, !tbaa !25
  %70 = load ptr, ptr %57, align 8, !tbaa !7
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.1.33, ptr noundef %70) #28
  br label %352

72:                                               ; preds = %42
  %73 = load i32, ptr @debugon, align 4, !tbaa !17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %352, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %22, align 8, !tbaa !25
  %77 = tail call i64 @fwrite(ptr nonnull @.str.2.34, i64 8, i64 1, ptr %76)
  br label %352

78:                                               ; preds = %42
  %79 = load ptr, ptr %1, align 8, !tbaa !26
  %80 = tail call i32 @getc(ptr noundef %79) #28
  %81 = zext i32 %80 to i64
  %82 = tail call i32 @getc(ptr noundef %79) #28
  %83 = shl nuw nsw i64 %81, 8
  %84 = and i32 %82, 255
  %85 = zext i32 %84 to i64
  %86 = and i64 %83, 65280
  %87 = or i64 %86, %85
  %88 = tail call i32 @getc(ptr noundef %79) #28
  %89 = zext i32 %88 to i64
  %90 = tail call i32 @getc(ptr noundef %79) #28
  %91 = shl nuw nsw i64 %89, 8
  %92 = and i32 %90, 255
  %93 = zext i32 %92 to i64
  %94 = and i64 %91, 65280
  %95 = or i64 %94, %93
  %96 = shl nuw nsw i64 %87, 16
  %97 = or i64 %95, %96
  %98 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store i64 %97, ptr %98, align 8, !tbaa !7
  %99 = load i32, ptr @debugon, align 4, !tbaa !17
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %352, label %101

101:                                              ; preds = %78
  %102 = load ptr, ptr %22, align 8, !tbaa !25
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.3.35, i64 noundef %97) #28
  br label %352

104:                                              ; preds = %42
  %105 = load ptr, ptr %1, align 8, !tbaa !26
  %106 = tail call i32 @getc(ptr noundef %105) #28
  %107 = zext i32 %106 to i64
  %108 = tail call i32 @getc(ptr noundef %105) #28
  %109 = shl nuw nsw i64 %107, 8
  %110 = and i32 %108, 255
  %111 = zext i32 %110 to i64
  %112 = and i64 %109, 65280
  %113 = or i64 %112, %111
  %114 = tail call i32 @getc(ptr noundef %105) #28
  %115 = zext i32 %114 to i64
  %116 = tail call i32 @getc(ptr noundef %105) #28
  %117 = shl nuw nsw i64 %115, 8
  %118 = and i32 %116, 255
  %119 = zext i32 %118 to i64
  %120 = and i64 %117, 65280
  %121 = or i64 %120, %119
  %122 = shl nuw nsw i64 %113, 16
  %123 = or i64 %121, %122
  %124 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store i64 %123, ptr %124, align 8, !tbaa !7
  %125 = load i32, ptr @debugon, align 4, !tbaa !17
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %352, label %127

127:                                              ; preds = %104
  %128 = trunc i64 %123 to i32
  %129 = bitcast i32 %128 to float
  %130 = load ptr, ptr %22, align 8, !tbaa !25
  %131 = fpext float %129 to double
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.4.36, double noundef %131) #28
  br label %352

133:                                              ; preds = %42
  %134 = load ptr, ptr %1, align 8, !tbaa !26
  %135 = tail call i32 @getc(ptr noundef %134) #28
  %136 = zext i32 %135 to i64
  %137 = tail call i32 @getc(ptr noundef %134) #28
  %138 = shl nuw nsw i64 %136, 8
  %139 = and i32 %137, 255
  %140 = zext i32 %139 to i64
  %141 = and i64 %138, 65280
  %142 = or i64 %141, %140
  %143 = tail call i32 @getc(ptr noundef %134) #28
  %144 = zext i32 %143 to i64
  %145 = tail call i32 @getc(ptr noundef %134) #28
  %146 = shl nuw nsw i64 %144, 8
  %147 = and i32 %145, 255
  %148 = zext i32 %147 to i64
  %149 = and i64 %146, 65280
  %150 = or i64 %149, %148
  %151 = shl nuw nsw i64 %142, 16
  %152 = or i64 %150, %151
  %153 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store i64 %152, ptr %153, align 8, !tbaa !7
  %154 = load ptr, ptr %16, align 8, !tbaa !46
  %155 = add nsw i32 %27, 2
  %156 = sext i32 %29 to i64
  %157 = getelementptr inbounds %struct.cp_info, ptr %154, i64 %156
  store i8 0, ptr %157, align 8, !tbaa !127
  %158 = load ptr, ptr %1, align 8, !tbaa !26
  %159 = tail call i32 @getc(ptr noundef %158) #28
  %160 = zext i32 %159 to i64
  %161 = tail call i32 @getc(ptr noundef %158) #28
  %162 = shl nuw nsw i64 %160, 8
  %163 = and i32 %161, 255
  %164 = zext i32 %163 to i64
  %165 = and i64 %162, 65280
  %166 = or i64 %165, %164
  %167 = tail call i32 @getc(ptr noundef %158) #28
  %168 = zext i32 %167 to i64
  %169 = tail call i32 @getc(ptr noundef %158) #28
  %170 = shl nuw nsw i64 %168, 8
  %171 = and i32 %169, 255
  %172 = zext i32 %171 to i64
  %173 = and i64 %170, 65280
  %174 = or i64 %173, %172
  %175 = shl nuw nsw i64 %166, 16
  %176 = or i64 %174, %175
  %177 = getelementptr inbounds %struct.cp_info, ptr %154, i64 %156, i32 1
  store i64 %176, ptr %177, align 8, !tbaa !7
  %178 = load i32, ptr @debugon, align 4, !tbaa !17
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %133
  %181 = getelementptr %struct.cp_info, ptr %157, i64 -1, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !7
  %183 = icmp eq i64 %182, 0
  %184 = load ptr, ptr %22, align 8, !tbaa !25
  br i1 %183, label %187, label %185

185:                                              ; preds = %180
  %186 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef nonnull @.str.5.37, i64 noundef %182, i64 noundef %176) #28
  br label %189

187:                                              ; preds = %180
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef nonnull @.str.6.38, i64 noundef %176) #28
  br label %189

189:                                              ; preds = %187, %185, %133
  %190 = add nsw i32 %26, -2
  br label %352, !llvm.loop !129

191:                                              ; preds = %42
  %192 = load ptr, ptr %1, align 8, !tbaa !26
  %193 = tail call i32 @getc(ptr noundef %192) #28
  %194 = zext i32 %193 to i64
  %195 = tail call i32 @getc(ptr noundef %192) #28
  %196 = shl nuw nsw i64 %194, 8
  %197 = and i32 %195, 255
  %198 = zext i32 %197 to i64
  %199 = and i64 %196, 65280
  %200 = or i64 %199, %198
  %201 = tail call i32 @getc(ptr noundef %192) #28
  %202 = zext i32 %201 to i64
  %203 = tail call i32 @getc(ptr noundef %192) #28
  %204 = shl nuw nsw i64 %202, 8
  %205 = and i32 %203, 255
  %206 = zext i32 %205 to i64
  %207 = and i64 %204, 65280
  %208 = or i64 %207, %206
  %209 = shl nuw nsw i64 %200, 16
  %210 = or i64 %208, %209
  %211 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  %212 = getelementptr inbounds i64, ptr %211, i64 1
  store i64 %210, ptr %212, align 8, !tbaa !61
  %213 = load ptr, ptr %1, align 8, !tbaa !26
  %214 = tail call i32 @getc(ptr noundef %213) #28
  %215 = zext i32 %214 to i64
  %216 = tail call i32 @getc(ptr noundef %213) #28
  %217 = shl nuw nsw i64 %215, 8
  %218 = and i32 %216, 255
  %219 = zext i32 %218 to i64
  %220 = and i64 %217, 65280
  %221 = or i64 %220, %219
  %222 = tail call i32 @getc(ptr noundef %213) #28
  %223 = zext i32 %222 to i64
  %224 = tail call i32 @getc(ptr noundef %213) #28
  %225 = shl nuw nsw i64 %223, 8
  %226 = and i32 %224, 255
  %227 = zext i32 %226 to i64
  %228 = and i64 %225, 65280
  %229 = or i64 %228, %227
  %230 = shl nuw nsw i64 %221, 16
  %231 = or i64 %229, %230
  store i64 %231, ptr %211, align 8, !tbaa !7
  %232 = load i32, ptr @debugon, align 4, !tbaa !17
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %191
  %235 = bitcast i64 %231 to double
  %236 = load ptr, ptr %22, align 8, !tbaa !25
  %237 = fptrunc double %235 to float
  %238 = fpext float %237 to double
  %239 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str.7.39, double noundef %238) #28
  br label %240

240:                                              ; preds = %234, %191
  %241 = load ptr, ptr %16, align 8, !tbaa !46
  %242 = add nsw i32 %27, 2
  %243 = sext i32 %29 to i64
  %244 = getelementptr inbounds %struct.cp_info, ptr %241, i64 %243
  store i8 0, ptr %244, align 8, !tbaa !127
  %245 = add nsw i32 %26, -2
  br label %352, !llvm.loop !129

246:                                              ; preds = %42
  %247 = load ptr, ptr %1, align 8, !tbaa !26
  %248 = tail call i32 @getc(ptr noundef %247) #28
  %249 = trunc i32 %248 to i16
  %250 = tail call i32 @getc(ptr noundef %247) #28
  %251 = trunc i32 %250 to i16
  %252 = shl i16 %249, 8
  %253 = and i16 %251, 255
  %254 = or i16 %253, %252
  %255 = zext i16 %254 to i64
  %256 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store i64 %255, ptr %256, align 8, !tbaa !7
  %257 = load i32, ptr @debugon, align 4, !tbaa !17
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %352, label %259

259:                                              ; preds = %246
  %260 = load ptr, ptr %22, align 8, !tbaa !25
  %261 = zext i16 %254 to i32
  %262 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.8.40, i32 noundef %261) #28
  br label %352

263:                                              ; preds = %42
  %264 = load ptr, ptr %1, align 8, !tbaa !26
  %265 = tail call i32 @getc(ptr noundef %264) #28
  %266 = trunc i32 %265 to i16
  %267 = tail call i32 @getc(ptr noundef %264) #28
  %268 = trunc i32 %267 to i16
  %269 = shl i16 %266, 8
  %270 = and i16 %268, 255
  %271 = or i16 %270, %269
  %272 = zext i16 %271 to i64
  %273 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store i64 %272, ptr %273, align 8, !tbaa !7
  %274 = load i32, ptr @debugon, align 4, !tbaa !17
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %352, label %276

276:                                              ; preds = %263
  %277 = load ptr, ptr %22, align 8, !tbaa !25
  %278 = zext i16 %271 to i32
  %279 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %277, ptr noundef nonnull @.str.9.41, i32 noundef %278) #28
  br label %352

280:                                              ; preds = %42, %42, %42
  %281 = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29
  %282 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store ptr %281, ptr %282, align 8, !tbaa !7
  %283 = load ptr, ptr %1, align 8, !tbaa !26
  %284 = tail call i32 @getc(ptr noundef %283) #28
  %285 = trunc i32 %284 to i16
  %286 = tail call i32 @getc(ptr noundef %283) #28
  %287 = trunc i32 %286 to i16
  %288 = shl i16 %285, 8
  %289 = and i16 %287, 255
  %290 = or i16 %289, %288
  %291 = load ptr, ptr %282, align 8, !tbaa !7
  store i16 %290, ptr %291, align 2, !tbaa !130
  %292 = load ptr, ptr %1, align 8, !tbaa !26
  %293 = tail call i32 @getc(ptr noundef %292) #28
  %294 = trunc i32 %293 to i16
  %295 = tail call i32 @getc(ptr noundef %292) #28
  %296 = trunc i32 %295 to i16
  %297 = shl i16 %294, 8
  %298 = and i16 %296, 255
  %299 = or i16 %298, %297
  %300 = load ptr, ptr %282, align 8, !tbaa !7
  %301 = getelementptr inbounds %struct.ClassVersion, ptr %300, i64 0, i32 1
  store i16 %299, ptr %301, align 2, !tbaa !132
  %302 = load i32, ptr @debugon, align 4, !tbaa !17
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %352, label %304

304:                                              ; preds = %280
  %305 = load ptr, ptr %22, align 8, !tbaa !25
  %306 = load ptr, ptr %282, align 8, !tbaa !7
  %307 = load i16, ptr %306, align 2, !tbaa !130
  %308 = zext i16 %307 to i32
  %309 = getelementptr inbounds %struct.ClassVersion, ptr %306, i64 0, i32 1
  %310 = load i16, ptr %309, align 2, !tbaa !132
  %311 = zext i16 %310 to i32
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %305, ptr noundef nonnull @.str.10.42, i32 noundef %308, i32 noundef %311) #28
  br label %352

313:                                              ; preds = %42
  %314 = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29
  %315 = getelementptr inbounds %struct.cp_info, ptr %28, i64 %30, i32 1
  store ptr %314, ptr %315, align 8, !tbaa !7
  %316 = load ptr, ptr %1, align 8, !tbaa !26
  %317 = tail call i32 @getc(ptr noundef %316) #28
  %318 = trunc i32 %317 to i16
  %319 = tail call i32 @getc(ptr noundef %316) #28
  %320 = trunc i32 %319 to i16
  %321 = shl i16 %318, 8
  %322 = and i16 %320, 255
  %323 = or i16 %322, %321
  %324 = load ptr, ptr %315, align 8, !tbaa !7
  store i16 %323, ptr %324, align 2, !tbaa !133
  %325 = load ptr, ptr %1, align 8, !tbaa !26
  %326 = tail call i32 @getc(ptr noundef %325) #28
  %327 = trunc i32 %326 to i16
  %328 = tail call i32 @getc(ptr noundef %325) #28
  %329 = trunc i32 %328 to i16
  %330 = shl i16 %327, 8
  %331 = and i16 %329, 255
  %332 = or i16 %331, %330
  %333 = load ptr, ptr %315, align 8, !tbaa !7
  %334 = getelementptr inbounds %struct.ClassVersion, ptr %333, i64 0, i32 1
  store i16 %332, ptr %334, align 2, !tbaa !70
  %335 = load i32, ptr @debugon, align 4, !tbaa !17
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %352, label %337

337:                                              ; preds = %313
  %338 = load ptr, ptr %22, align 8, !tbaa !25
  %339 = load ptr, ptr %315, align 8, !tbaa !7
  %340 = load i16, ptr %339, align 2, !tbaa !133
  %341 = zext i16 %340 to i32
  %342 = getelementptr inbounds %struct.ClassVersion, ptr %339, i64 0, i32 1
  %343 = load i16, ptr %342, align 2, !tbaa !70
  %344 = zext i16 %343 to i32
  %345 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %338, ptr noundef nonnull @.str.11.43, i32 noundef %341, i32 noundef %344) #28
  br label %352

346:                                              ; preds = %42
  %347 = load ptr, ptr @stderr, align 8, !tbaa !13
  %348 = load i16, ptr %0, align 8, !tbaa !59
  %349 = zext i16 %348 to i32
  %350 = load i32, ptr %5, align 8, !tbaa !31
  %351 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef nonnull @.str.12.44, i32 noundef %29, i32 noundef %349, i32 noundef %350) #27
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 6) #28
  br label %352

352:                                              ; preds = %346, %337, %313, %304, %280, %276, %263, %259, %246, %240, %189, %127, %104, %101, %78, %75, %72, %68, %44
  %353 = phi i32 [ %29, %346 ], [ %29, %337 ], [ %29, %313 ], [ %29, %304 ], [ %29, %280 ], [ %29, %276 ], [ %29, %263 ], [ %29, %259 ], [ %29, %246 ], [ %242, %240 ], [ %155, %189 ], [ %29, %127 ], [ %29, %104 ], [ %29, %101 ], [ %29, %78 ], [ %29, %75 ], [ %29, %72 ], [ %29, %68 ], [ %29, %44 ]
  %354 = phi i32 [ %25, %346 ], [ %25, %337 ], [ %25, %313 ], [ %25, %304 ], [ %25, %280 ], [ %25, %276 ], [ %25, %263 ], [ %25, %259 ], [ %25, %246 ], [ %245, %240 ], [ %190, %189 ], [ %25, %127 ], [ %25, %104 ], [ %25, %101 ], [ %25, %78 ], [ %25, %75 ], [ %25, %72 ], [ %25, %68 ], [ %25, %44 ]
  %355 = add nsw i32 %354, -1
  %356 = icmp eq i32 %354, 0
  br i1 %356, label %23, label %24
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z7pushimmP9Classfile(ptr nocapture noundef readnone %0) #13 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = add i32 %2, 1
  store i32 %4, ptr @currpc, align 4, !tbaa !17
  %5 = load i32, ptr @bufflength, align 4, !tbaa !17
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr @bufflength, align 4, !tbaa !17
  %7 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %8, ptr @inbuff, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  %11 = load i32, ptr @ch, align 4, !tbaa !17
  %12 = icmp eq i32 %11, 17
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = shl nsw i32 %10, 8
  %15 = add i32 %2, 2
  store i32 %15, ptr @currpc, align 4, !tbaa !17
  %16 = add nsw i32 %5, -2
  store i32 %16, ptr @bufflength, align 4, !tbaa !17
  %17 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %17, ptr @inbuff, align 8, !tbaa !13
  %18 = load i8, ptr %8, align 1, !tbaa !7
  %19 = zext i8 %18 to i32
  %20 = or i32 %14, %19
  br label %21

21:                                               ; preds = %13, %1
  %22 = phi i32 [ %20, %13 ], [ %10, %1 ]
  %23 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #29
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @.str.45, i32 noundef %22) #25
  %25 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %25, i32 noundef %3, ptr noundef nonnull %23, i32 noundef 4, i32 noundef 1, i32 noundef 0) #28
          to label %26 unwind label %29

26:                                               ; preds = %21
  %27 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  store ptr %28, ptr @stkptr, align 8, !tbaa !13
  store ptr %25, ptr %27, align 8, !tbaa !13
  ret i32 0

29:                                               ; preds = %21
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %25) #30
  resume { ptr, i32 } %30
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize uwtable
define internal void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %7 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
  store ptr %2, ptr %7, align 8, !tbaa !134
  %8 = getelementptr inbounds %struct.Id, ptr %7, i64 0, i32 1
  store i32 %3, ptr %8, align 8, !tbaa !137
  %9 = getelementptr inbounds %struct.Id, ptr %7, i64 0, i32 2
  store i32 %4, ptr %9, align 4, !tbaa !138
  %10 = getelementptr inbounds %struct.Id, ptr %7, i64 0, i32 3
  store i32 %5, ptr %10, align 8, !tbaa !139
  %11 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  store i32 1, ptr %11, align 8, !tbaa !140
  %12 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 3
  store i32 %1, ptr %12, align 8, !tbaa !142
  %13 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 2
  store i32 %1, ptr %13, align 4, !tbaa !143
  %14 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
  store i32 0, ptr %14, align 8, !tbaa !144
  %15 = getelementptr inbounds %struct.Exp_, ptr %14, i64 0, i32 1
  store i32 1, ptr %15, align 4, !tbaa !148
  %16 = getelementptr inbounds %struct.Exp_, ptr %14, i64 0, i32 2
  store i32 %3, ptr %16, align 8, !tbaa !149
  %17 = getelementptr inbounds %struct.Exp_, ptr %14, i64 0, i32 3
  store i32 39, ptr %17, align 4, !tbaa !150
  %18 = getelementptr inbounds %struct.Exp_, ptr %14, i64 0, i32 4
  store ptr %7, ptr %18, align 8, !tbaa !151
  store ptr %14, ptr %0, align 8, !tbaa !152
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z9pushconstP9Classfile(ptr nocapture noundef readonly %0) #13 personality ptr @__gxx_personality_v0 {
  %2 = alloca [1024 x i8], align 16
  %3 = load i32, ptr @currpc, align 4, !tbaa !17
  %4 = add i32 %3, -1
  %5 = add i32 %3, 1
  store i32 %5, ptr @currpc, align 4, !tbaa !17
  %6 = load i32, ptr @bufflength, align 4, !tbaa !17
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr @bufflength, align 4, !tbaa !17
  %8 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr @inbuff, align 8, !tbaa !13
  %10 = load i8, ptr %8, align 1, !tbaa !7
  %11 = zext i8 %10 to i32
  %12 = load i32, ptr @ch, align 4, !tbaa !17
  %13 = icmp eq i32 %12, 18
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = shl nuw nsw i32 %11, 8
  %16 = add i32 %3, 2
  store i32 %16, ptr @currpc, align 4, !tbaa !17
  %17 = add nsw i32 %6, -2
  store i32 %17, ptr @bufflength, align 4, !tbaa !17
  %18 = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %18, ptr @inbuff, align 8, !tbaa !13
  %19 = load i8, ptr %9, align 1, !tbaa !7
  %20 = zext i8 %19 to i32
  %21 = or i32 %15, %20
  br label %22

22:                                               ; preds = %14, %1
  %23 = phi i32 [ %21, %14 ], [ %11, %1 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #33
  %24 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds %struct.cp_info, ptr %25, i64 %26
  %28 = load i8, ptr %27, align 8, !tbaa !127
  switch i8 %28, label %59 [
    i8 3, label %29
    i8 5, label %33
    i8 4, label %43
    i8 6, label %48
    i8 8, label %52
  ]

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.cp_info, ptr %25, i64 %26, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !7
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.1.46, i64 noundef %31) #25
  br label %63

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.cp_info, ptr %25, i64 %26, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !7
  %36 = icmp eq i64 %35, 0
  %37 = getelementptr inbounds %struct.cp_info, ptr %27, i64 1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !7
  br i1 %36, label %41, label %39

39:                                               ; preds = %33
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2.47, i64 noundef %35, i64 noundef %38) #25
  br label %63

41:                                               ; preds = %33
  %42 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.3.48, i64 noundef %38) #25
  br label %63

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.cp_info, ptr %25, i64 %26, i32 1
  %45 = load float, ptr %44, align 8, !tbaa !7
  %46 = fpext float %45 to double
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.4.49, double noundef %46) #25
  br label %63

48:                                               ; preds = %22
  %49 = getelementptr inbounds %struct.cp_info, ptr %25, i64 %26, i32 1
  %50 = load double, ptr %49, align 8, !tbaa !7
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.5.50, double noundef %50) #25
  br label %63

52:                                               ; preds = %22
  %53 = getelementptr inbounds %struct.cp_info, ptr %25, i64 %26, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !7
  %55 = and i64 %54, 65535
  %56 = getelementptr inbounds %struct.cp_info, ptr %25, i64 %55, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !7
  %58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.6.51, ptr noundef %57) #25
  br label %63

59:                                               ; preds = %22
  %60 = zext i8 %28 to i32
  %61 = load ptr, ptr @stderr, align 8, !tbaa !13
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.7.52, i32 noundef %60) #27
  br label %75

63:                                               ; preds = %52, %48, %43, %41, %39, %29
  %64 = phi i32 [ 8, %52 ], [ 7, %48 ], [ 6, %43 ], [ 4, %29 ], [ 5, %41 ], [ 5, %39 ]
  %65 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %66 = add i64 %65, 1
  %67 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %66) #29
  %68 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(1) %2) #25
  %69 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %69, i32 noundef %4, ptr noundef nonnull %67, i32 noundef %64, i32 noundef 2, i32 noundef %23) #28
          to label %70 unwind label %73

70:                                               ; preds = %63
  %71 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  store ptr %72, ptr @stkptr, align 8, !tbaa !13
  store ptr %69, ptr %71, align 8, !tbaa !13
  br label %75

73:                                               ; preds = %63
  %74 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %69) #30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #33
  resume { ptr, i32 } %74

75:                                               ; preds = %70, %59
  %76 = phi i32 [ -1, %59 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #33
  ret i32 %76
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z7pushimpP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %3 = load i32, ptr @currpc, align 4, !tbaa !17
  %4 = add i32 %3, -1
  %5 = load i32, ptr @ch, align 4, !tbaa !17
  %6 = add nsw i32 %5, -1
  %7 = getelementptr inbounds %struct.Exp, ptr %2, i64 0, i32 1
  store i32 1, ptr %7, align 8, !tbaa !140
  %8 = getelementptr inbounds %struct.Exp, ptr %2, i64 0, i32 3
  store i32 %4, ptr %8, align 8, !tbaa !142
  %9 = getelementptr inbounds %struct.Exp, ptr %2, i64 0, i32 2
  store i32 %4, ptr %9, align 4, !tbaa !143
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds %struct.Exp_, ptr @std_exps, i64 %10
  store ptr %11, ptr %2, align 8, !tbaa !152
  %12 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  store ptr %13, ptr @stkptr, align 8, !tbaa !13
  store ptr %2, ptr %12, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z9pushlocalP9Classfile(ptr nocapture noundef readnone %0) #13 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load i32, ptr @ch, align 4, !tbaa !17
  %5 = icmp slt i32 %4, 26
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = add i32 %2, 1
  store i32 %7, ptr @currpc, align 4, !tbaa !17
  %8 = load i32, ptr @bufflength, align 4, !tbaa !17
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr @bufflength, align 4, !tbaa !17
  %10 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr @inbuff, align 8, !tbaa !13
  %12 = load i8, ptr %10, align 1, !tbaa !7
  %13 = sext i8 %12 to i32
  switch i32 %4, label %37 [
    i32 21, label %14
    i32 22, label %15
    i32 23, label %16
    i32 24, label %17
    i32 25, label %18
  ]

14:                                               ; preds = %6
  br label %37

15:                                               ; preds = %6
  br label %37

16:                                               ; preds = %6
  br label %37

17:                                               ; preds = %6
  br label %37

18:                                               ; preds = %6
  br label %37

19:                                               ; preds = %1
  %20 = icmp ult i32 %4, 30
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = add nsw i32 %4, -26
  br label %37

23:                                               ; preds = %19
  %24 = icmp ult i32 %4, 34
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = add nsw i32 %4, -30
  br label %37

27:                                               ; preds = %23
  %28 = icmp ult i32 %4, 38
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = add nsw i32 %4, -34
  br label %37

31:                                               ; preds = %27
  %32 = icmp ult i32 %4, 42
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = add nsw i32 %4, -38
  br label %37

35:                                               ; preds = %31
  %36 = add nsw i32 %4, -42
  br label %37

37:                                               ; preds = %35, %33, %29, %25, %21, %18, %17, %16, %15, %14, %6
  %38 = phi i32 [ 0, %6 ], [ 8, %18 ], [ 7, %17 ], [ 6, %16 ], [ 5, %15 ], [ 4, %14 ], [ 4, %21 ], [ 5, %25 ], [ 6, %29 ], [ 7, %33 ], [ 8, %35 ]
  %39 = phi i32 [ %13, %6 ], [ %13, %18 ], [ %13, %17 ], [ %13, %16 ], [ %13, %15 ], [ %13, %14 ], [ %22, %21 ], [ %26, %25 ], [ %30, %29 ], [ %34, %33 ], [ %36, %35 ]
  %40 = load ptr, ptr @miptr, align 8, !tbaa !13
  %41 = getelementptr inbounds %struct.method_info, ptr %40, i64 0, i32 13
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #26
  %49 = add i64 %48, 1
  %50 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %49) #29
  %51 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) %45) #25
  %52 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %52, i32 noundef %3, ptr noundef nonnull %50, i32 noundef %38, i32 noundef 3, i32 noundef %39) #28
          to label %56 unwind label %59

53:                                               ; preds = %37
  %54 = load ptr, ptr @stderr, align 8, !tbaa !13
  %55 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 42, i64 1, ptr %54) #31
  br label %61

56:                                               ; preds = %47
  %57 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  store ptr %58, ptr @stkptr, align 8, !tbaa !13
  store ptr %52, ptr %57, align 8, !tbaa !13
  br label %61

59:                                               ; preds = %47
  %60 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %52) #30
  resume { ptr, i32 } %60

61:                                               ; preds = %56, %53
  %62 = phi i32 [ 0, %56 ], [ 1, %53 ]
  ret i32 %62
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z10storelocalP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load i32, ptr @ch, align 4, !tbaa !17
  %5 = icmp slt i32 %4, 59
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = add i32 %4, -54
  %8 = icmp ult i32 %7, 5
  %9 = add i32 %4, -50
  %10 = select i1 %8, i32 %9, i32 0
  %11 = add i32 %2, 1
  store i32 %11, ptr @currpc, align 4, !tbaa !17
  %12 = load i32, ptr @bufflength, align 4, !tbaa !17
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr @bufflength, align 4, !tbaa !17
  %14 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %15, ptr @inbuff, align 8, !tbaa !13
  %16 = load i8, ptr %14, align 1, !tbaa !7
  %17 = sext i8 %16 to i32
  br label %36

18:                                               ; preds = %1
  %19 = icmp ult i32 %4, 63
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = add nsw i32 %4, -59
  br label %36

22:                                               ; preds = %18
  %23 = icmp ult i32 %4, 67
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = add nsw i32 %4, -63
  br label %36

26:                                               ; preds = %22
  %27 = icmp ult i32 %4, 71
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = add nsw i32 %4, -67
  br label %36

30:                                               ; preds = %26
  %31 = icmp ult i32 %4, 75
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = add nsw i32 %4, -71
  br label %36

34:                                               ; preds = %30
  %35 = add nsw i32 %4, -75
  br label %36

36:                                               ; preds = %34, %32, %28, %24, %20, %6
  %37 = phi i32 [ %10, %6 ], [ 4, %20 ], [ 5, %24 ], [ 6, %28 ], [ 7, %32 ], [ 8, %34 ]
  %38 = phi i32 [ %17, %6 ], [ %21, %20 ], [ %25, %24 ], [ %29, %28 ], [ %33, %32 ], [ %35, %34 ]
  %39 = load ptr, ptr @miptr, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.method_info, ptr %39, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !105
  %42 = sext i32 %38 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %36
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #26
  %48 = add i64 %47, 1
  %49 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %48) #29
  %50 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %44) #25
  %51 = getelementptr inbounds %struct.method_info, ptr %39, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !153
  %53 = getelementptr inbounds i32, ptr %52, i64 %42
  %54 = load i32, ptr %53, align 4, !tbaa !154
  br label %67

55:                                               ; preds = %36
  %56 = tail call noalias noundef nonnull dereferenceable(7) ptr @_Znam(i64 noundef 7) #29
  store ptr %56, ptr %43, align 8, !tbaa !13
  %57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %38) #25
  %58 = load ptr, ptr @miptr, align 8, !tbaa !13
  %59 = getelementptr inbounds %struct.method_info, ptr %58, i64 0, i32 16
  %60 = load ptr, ptr %59, align 8, !tbaa !153
  %61 = getelementptr inbounds i32, ptr %60, i64 %42
  %62 = load i32, ptr %61, align 4, !tbaa !154
  switch i32 %62, label %67 [
    i32 0, label %63
    i32 13, label %63
  ]

63:                                               ; preds = %55, %55
  %64 = icmp eq i32 %37, 4
  br i1 %64, label %66, label %65

65:                                               ; preds = %63
  store i32 %37, ptr %61, align 4, !tbaa !154
  br label %67

66:                                               ; preds = %63
  store i32 13, ptr %61, align 4, !tbaa !154
  br label %67

67:                                               ; preds = %66, %65, %55, %46
  %68 = phi ptr [ %49, %46 ], [ %56, %65 ], [ %56, %66 ], [ %56, %55 ]
  %69 = phi i32 [ %54, %46 ], [ %37, %65 ], [ 4, %66 ], [ %37, %55 ]
  %70 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %70, i32 noundef %3, ptr noundef nonnull %68, i32 noundef %69, i32 noundef 3, i32 noundef %38) #28
          to label %71 unwind label %94

71:                                               ; preds = %67
  %72 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %73 = getelementptr inbounds ptr, ptr %72, i64 -1
  store ptr %73, ptr @stkptr, align 8, !tbaa !13
  %74 = load ptr, ptr %73, align 8, !tbaa !13
  %75 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %76 = getelementptr inbounds %struct.Exp, ptr %74, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !142
  %78 = tail call i32 @llvm.umin.i32(i32 %3, i32 %77)
  %79 = getelementptr inbounds %struct.Exp, ptr %75, i64 0, i32 1
  store i32 1, ptr %79, align 8, !tbaa !140
  %80 = getelementptr inbounds %struct.Exp, ptr %75, i64 0, i32 2
  store i32 %3, ptr %80, align 4, !tbaa !143
  %81 = getelementptr inbounds %struct.Exp, ptr %75, i64 0, i32 3
  store i32 %78, ptr %81, align 8, !tbaa !142
  %82 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %83 unwind label %96

83:                                               ; preds = %71
  store i32 0, ptr %82, align 8, !tbaa !144
  %84 = getelementptr inbounds %struct.Exp_, ptr %82, i64 0, i32 1
  store i32 4, ptr %84, align 4, !tbaa !148
  %85 = getelementptr inbounds %struct.Exp_, ptr %82, i64 0, i32 2
  store i32 %69, ptr %85, align 8, !tbaa !149
  %86 = getelementptr inbounds %struct.Exp_, ptr %82, i64 0, i32 3
  store i32 6, ptr %86, align 4, !tbaa !150
  store ptr %82, ptr %75, align 8, !tbaa !152
  %87 = getelementptr inbounds %struct.Exp, ptr %75, i64 0, i32 4
  store ptr %70, ptr %87, align 8, !tbaa !155
  %88 = getelementptr inbounds %struct.Exp, ptr %75, i64 0, i32 5
  store ptr %74, ptr %88, align 8, !tbaa !156
  br i1 %45, label %89, label %98

89:                                               ; preds = %83
  %90 = load ptr, ptr @miptr, align 8, !tbaa !13
  %91 = getelementptr inbounds %struct.method_info, ptr %90, i64 0, i32 15
  %92 = load ptr, ptr %91, align 8, !tbaa !157
  %93 = getelementptr inbounds i32, ptr %92, i64 %42
  store i32 %78, ptr %93, align 4, !tbaa !17
  br label %98

94:                                               ; preds = %67
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %117

96:                                               ; preds = %71
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %117

98:                                               ; preds = %89, %83
  %99 = load ptr, ptr %74, align 8, !tbaa !152
  %100 = getelementptr inbounds %struct.Exp_, ptr %99, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !149
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load ptr, ptr %70, align 8, !tbaa !152
  %105 = getelementptr inbounds %struct.Exp_, ptr %104, i64 0, i32 2
  %106 = load i32, ptr %105, align 8, !tbaa !149
  %107 = icmp eq i32 %106, 10
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = icmp eq ptr %99, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 2)
  %110 = icmp eq ptr %99, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 3)
  %111 = select i1 %109, i1 true, i1 %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.Exp_, ptr %99, i64 13
  store ptr %113, ptr %74, align 8, !tbaa !152
  br label %114

114:                                              ; preds = %112, %108, %103, %98
  %115 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %116 = getelementptr inbounds ptr, ptr %115, i64 1
  store ptr %116, ptr @donestkptr, align 8, !tbaa !13
  store ptr %75, ptr %115, align 8, !tbaa !13
  ret i32 0

117:                                              ; preds = %96, %94
  %118 = phi ptr [ %75, %96 ], [ %70, %94 ]
  %119 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  tail call void @_ZdlPv(ptr noundef nonnull %118) #30
  resume { ptr, i32 } %119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z9iinclocalP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = add i32 %2, 1
  store i32 %4, ptr @currpc, align 4, !tbaa !17
  %5 = load i32, ptr @bufflength, align 4, !tbaa !17
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr @bufflength, align 4, !tbaa !17
  %7 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %8, ptr @inbuff, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  %11 = load ptr, ptr @miptr, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.method_info, ptr %11, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = sext i8 %9 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.method_info, ptr %11, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !153
  %21 = getelementptr inbounds i32, ptr %20, i64 %14
  %22 = load i32, ptr %21, align 4, !tbaa !154
  %23 = icmp eq i32 %22, 13
  br i1 %23, label %26, label %27

24:                                               ; preds = %1
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %115

26:                                               ; preds = %18
  store i32 4, ptr %21, align 4, !tbaa !154
  br label %35

27:                                               ; preds = %18
  %28 = add i32 %22, -3
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = zext i32 %22 to i64
  %32 = getelementptr inbounds [0 x ptr], ptr @type2str, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  %34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.55, i32 noundef %10, i32 noundef %22, ptr noundef %33) #28
  br label %115

35:                                               ; preds = %27, %26
  %36 = add i32 %2, 2
  store i32 %36, ptr @currpc, align 4, !tbaa !17
  %37 = add nsw i32 %5, -2
  store i32 %37, ptr @bufflength, align 4, !tbaa !17
  %38 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %38, ptr @inbuff, align 8, !tbaa !13
  %39 = load i8, ptr %8, align 1, !tbaa !7
  switch i8 %39, label %40 [
    i8 -1, label %66
    i8 1, label %66
  ]

40:                                               ; preds = %35
  %41 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %41, i32 noundef %3, ptr noundef nonnull %16, i32 noundef 4, i32 noundef 3, i32 noundef %10) #28
          to label %42 unwind label %60

42:                                               ; preds = %40
  %43 = tail call noalias noundef nonnull dereferenceable(5) ptr @_Znam(i64 noundef 5) #29
  %44 = tail call i8 @llvm.abs.i8(i8 %39, i1 false)
  %45 = zext i8 %44 to i64
  %46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) @.str.3.56, i64 noundef %45) #25
  %47 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %47, i32 noundef %3, ptr noundef nonnull %43, i32 noundef 4, i32 noundef 1, i32 noundef 0) #28
          to label %48 unwind label %62

48:                                               ; preds = %42
  %49 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %50 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 1
  store i32 1, ptr %50, align 8, !tbaa !140
  %51 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 3
  store i32 %3, ptr %51, align 8, !tbaa !142
  %52 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 2
  store i32 %3, ptr %52, align 4, !tbaa !143
  %53 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %54 unwind label %64

54:                                               ; preds = %48
  %55 = icmp slt i8 %39, 0
  %56 = select i1 %55, i32 21, i32 20
  store i32 0, ptr %53, align 8, !tbaa !144
  %57 = getelementptr inbounds %struct.Exp_, ptr %53, i64 0, i32 1
  store i32 4, ptr %57, align 4, !tbaa !148
  %58 = getelementptr inbounds %struct.Exp_, ptr %53, i64 0, i32 2
  store i32 4, ptr %58, align 8, !tbaa !149
  %59 = getelementptr inbounds %struct.Exp_, ptr %53, i64 0, i32 3
  store i32 %56, ptr %59, align 4, !tbaa !150
  store ptr %53, ptr %49, align 8, !tbaa !152
  br label %84

60:                                               ; preds = %40
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %112

62:                                               ; preds = %42
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %112

64:                                               ; preds = %48
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %112

66:                                               ; preds = %35, %35
  %67 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %67, i32 noundef %3, ptr noundef nonnull %16, i32 noundef 4, i32 noundef 3, i32 noundef %10) #28
          to label %68 unwind label %80

68:                                               ; preds = %66
  %69 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %70 = getelementptr inbounds %struct.Exp, ptr %69, i64 0, i32 1
  store i32 1, ptr %70, align 8, !tbaa !140
  %71 = getelementptr inbounds %struct.Exp, ptr %69, i64 0, i32 3
  store i32 %3, ptr %71, align 8, !tbaa !142
  %72 = getelementptr inbounds %struct.Exp, ptr %69, i64 0, i32 2
  store i32 %3, ptr %72, align 4, !tbaa !143
  %73 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %74 unwind label %82

74:                                               ; preds = %68
  %75 = icmp slt i8 %39, 0
  %76 = select i1 %75, i32 23, i32 22
  store i32 0, ptr %73, align 8, !tbaa !144
  %77 = getelementptr inbounds %struct.Exp_, ptr %73, i64 0, i32 1
  store i32 2, ptr %77, align 4, !tbaa !148
  %78 = getelementptr inbounds %struct.Exp_, ptr %73, i64 0, i32 2
  store i32 4, ptr %78, align 8, !tbaa !149
  %79 = getelementptr inbounds %struct.Exp_, ptr %73, i64 0, i32 3
  store i32 %76, ptr %79, align 4, !tbaa !150
  store ptr %73, ptr %69, align 8, !tbaa !152
  br label %84

80:                                               ; preds = %66
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %112

82:                                               ; preds = %68
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %112

84:                                               ; preds = %74, %54
  %85 = phi ptr [ %69, %74 ], [ %49, %54 ]
  %86 = phi ptr [ %67, %74 ], [ %41, %54 ]
  %87 = phi ptr [ null, %74 ], [ %47, %54 ]
  %88 = phi ptr [ %73, %74 ], [ %53, %54 ]
  %89 = getelementptr inbounds %struct.Exp, ptr %85, i64 0, i32 4
  store ptr %86, ptr %89, align 8, !tbaa !155
  %90 = getelementptr inbounds %struct.Exp, ptr %85, i64 0, i32 5
  store ptr %87, ptr %90, align 8, !tbaa !156
  %91 = load i32, ptr @lastaction, align 4, !tbaa !17
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %93, label %109

93:                                               ; preds = %84
  %94 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %95 = getelementptr inbounds ptr, ptr %94, i64 -1
  %96 = load ptr, ptr %95, align 8, !tbaa !13
  %97 = load ptr, ptr %96, align 8, !tbaa !152
  %98 = getelementptr inbounds %struct.Exp_, ptr %97, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !151
  %100 = load ptr, ptr %99, align 8, !tbaa !134
  %101 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) %16) #26
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.Exp_, ptr %88, i64 0, i32 1
  store i32 3, ptr %104, align 4, !tbaa !148
  %105 = getelementptr inbounds %struct.Exp, ptr %85, i64 0, i32 3
  %106 = getelementptr inbounds %struct.Exp, ptr %96, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !142
  %108 = tail call i32 @llvm.umin.i32(i32 %3, i32 %107)
  store i32 %108, ptr %105, align 8, !tbaa !142
  store ptr %85, ptr %95, align 8, !tbaa !13
  br label %115

109:                                              ; preds = %93, %84
  %110 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %111 = getelementptr inbounds ptr, ptr %110, i64 1
  store ptr %111, ptr @donestkptr, align 8, !tbaa !13
  store ptr %85, ptr %110, align 8, !tbaa !13
  br label %115

112:                                              ; preds = %82, %80, %64, %62, %60
  %113 = phi ptr [ %67, %80 ], [ %69, %82 ], [ %41, %60 ], [ %49, %64 ], [ %47, %62 ]
  %114 = phi { ptr, i32 } [ %81, %80 ], [ %83, %82 ], [ %61, %60 ], [ %65, %64 ], [ %63, %62 ]
  tail call void @_ZdlPv(ptr noundef nonnull %113) #30
  resume { ptr, i32 } %114

115:                                              ; preds = %109, %103, %30, %24
  %116 = phi i32 [ 1, %30 ], [ 1, %24 ], [ 0, %109 ], [ 0, %103 ]
  ret i32 %116
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #15

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z9anewarrayP9Classfile(ptr nocapture noundef readonly %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = add i32 %2, 2
  store i32 %4, ptr @currpc, align 4, !tbaa !17
  %5 = load i32, ptr @bufflength, align 4, !tbaa !17
  %6 = add nsw i32 %5, -2
  store i32 %6, ptr @bufflength, align 4, !tbaa !17
  %7 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %8, ptr @inbuff, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %10, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = zext i8 %13 to i64
  %15 = or i64 %11, %14
  %16 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %15, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %19, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %22, i32 noundef %3, ptr noundef %21, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
          to label %23 unwind label %46

23:                                               ; preds = %1
  %24 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %25 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %26 = getelementptr inbounds ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = getelementptr inbounds %struct.Exp, ptr %24, i64 0, i32 1
  store i32 1, ptr %28, align 8, !tbaa !140
  %29 = getelementptr inbounds %struct.Exp, ptr %24, i64 0, i32 3
  store i32 %3, ptr %29, align 8, !tbaa !142
  %30 = getelementptr inbounds %struct.Exp, ptr %24, i64 0, i32 2
  store i32 %3, ptr %30, align 4, !tbaa !143
  %31 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %32 unwind label %48

32:                                               ; preds = %23
  store <4 x i32> <i32 0, i32 7, i32 0, i32 39>, ptr %31, align 8, !tbaa !7
  store ptr %31, ptr %24, align 8, !tbaa !152
  %33 = getelementptr inbounds %struct.Exp, ptr %24, i64 0, i32 4
  store ptr %22, ptr %33, align 8, !tbaa !155
  %34 = getelementptr inbounds %struct.Exp, ptr %24, i64 0, i32 5
  store ptr %27, ptr %34, align 8, !tbaa !156
  %35 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %36 = getelementptr inbounds %struct.Exp, ptr %27, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !142
  %38 = tail call i32 @llvm.umin.i32(i32 %3, i32 %37)
  %39 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 1
  store i32 1, ptr %39, align 8, !tbaa !140
  %40 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 2
  store i32 %3, ptr %40, align 4, !tbaa !143
  %41 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 3
  store i32 %38, ptr %41, align 8, !tbaa !142
  %42 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %43 unwind label %50

43:                                               ; preds = %32
  store <4 x i32> <i32 0, i32 2, i32 9, i32 18>, ptr %42, align 8, !tbaa !7
  store ptr %42, ptr %35, align 8, !tbaa !152
  %44 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 4
  store ptr %24, ptr %44, align 8, !tbaa !155
  %45 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 5
  store ptr null, ptr %45, align 8, !tbaa !156
  store ptr %35, ptr %26, align 8, !tbaa !13
  ret i32 0

46:                                               ; preds = %1
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %52

48:                                               ; preds = %23
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %52

50:                                               ; preds = %32
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %48, %46
  %53 = phi ptr [ %24, %48 ], [ %35, %50 ], [ %22, %46 ]
  %54 = phi { ptr, i32 } [ %49, %48 ], [ %51, %50 ], [ %47, %46 ]
  tail call void @_ZdlPv(ptr noundef nonnull %53) #30
  resume { ptr, i32 } %54
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z14multianewarrayP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57) #28
  %3 = load i32, ptr @currpc, align 4, !tbaa !17
  %4 = add i32 %3, -1
  %5 = add i32 %3, 2
  store i32 %5, ptr @currpc, align 4, !tbaa !17
  %6 = load i32, ptr @bufflength, align 4, !tbaa !17
  %7 = add nsw i32 %6, -2
  store i32 %7, ptr @bufflength, align 4, !tbaa !17
  %8 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %9 = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %9, ptr @inbuff, align 8, !tbaa !13
  %10 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %11 = getelementptr inbounds ptr, ptr %10, i64 -1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %14 = getelementptr inbounds %struct.Exp, ptr %12, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !142
  %16 = tail call i32 @llvm.umin.i32(i32 %4, i32 %15)
  %17 = getelementptr inbounds %struct.Exp, ptr %13, i64 0, i32 1
  store i32 1, ptr %17, align 8, !tbaa !140
  %18 = getelementptr inbounds %struct.Exp, ptr %13, i64 0, i32 2
  store i32 %4, ptr %18, align 4, !tbaa !143
  %19 = getelementptr inbounds %struct.Exp, ptr %13, i64 0, i32 3
  store i32 %16, ptr %19, align 8, !tbaa !142
  %20 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %21 unwind label %24

21:                                               ; preds = %1
  store <4 x i32> <i32 0, i32 2, i32 9, i32 18>, ptr %20, align 8, !tbaa !7
  store ptr %20, ptr %13, align 8, !tbaa !152
  %22 = getelementptr inbounds %struct.Exp, ptr %13, i64 0, i32 4
  store ptr %12, ptr %22, align 8, !tbaa !155
  %23 = getelementptr inbounds %struct.Exp, ptr %13, i64 0, i32 5
  store ptr null, ptr %23, align 8, !tbaa !156
  store ptr %13, ptr %11, align 8, !tbaa !13
  ret i32 0

24:                                               ; preds = %1
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %13) #30
  resume { ptr, i32 } %25
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z13doarraylengthP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %5 = getelementptr inbounds ptr, ptr %4, i64 -1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %3, ptr noundef nonnull @.str.1.58, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
          to label %8 unwind label %22

8:                                                ; preds = %1
  %9 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %10 = getelementptr inbounds %struct.Exp, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = tail call i32 @llvm.umin.i32(i32 %3, i32 %11)
  %13 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 1
  store i32 1, ptr %13, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 2
  store i32 %3, ptr %14, align 4, !tbaa !143
  %15 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 3
  store i32 %12, ptr %15, align 8, !tbaa !142
  %16 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %17 unwind label %24

17:                                               ; preds = %8
  store <4 x i32> <i32 0, i32 4, i32 4, i32 5>, ptr %16, align 8, !tbaa !7
  store ptr %16, ptr %9, align 8, !tbaa !152
  %18 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 4
  store ptr %6, ptr %18, align 8, !tbaa !155
  %19 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 5
  store ptr %7, ptr %19, align 8, !tbaa !156
  %20 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %21 = getelementptr inbounds ptr, ptr %20, i64 -1
  store ptr %9, ptr %21, align 8, !tbaa !13
  ret i32 0

22:                                               ; preds = %1
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %8
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %9, %24 ], [ %7, %22 ]
  %28 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  tail call void @_ZdlPv(ptr noundef nonnull %27) #30
  resume { ptr, i32 } %28
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z10doarraygetP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %5 = getelementptr inbounds ptr, ptr %4, i64 -1
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds ptr, ptr %4, i64 -2
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %10 = getelementptr inbounds %struct.Exp, ptr %8, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = tail call i32 @llvm.umin.i32(i32 %3, i32 %11)
  %13 = getelementptr inbounds %struct.Exp, ptr %6, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !142
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  %16 = load i32, ptr @ch, align 4, !tbaa !17
  %17 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 1
  store i32 1, ptr %17, align 8, !tbaa !140
  %18 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 2
  store i32 %3, ptr %18, align 4, !tbaa !143
  %19 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 3
  store i32 %15, ptr %19, align 8, !tbaa !142
  %20 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %21 unwind label %28

21:                                               ; preds = %1
  %22 = add nsw i32 %16, -42
  store i32 0, ptr %20, align 8, !tbaa !144
  %23 = getelementptr inbounds %struct.Exp_, ptr %20, i64 0, i32 1
  store i32 7, ptr %23, align 4, !tbaa !148
  %24 = getelementptr inbounds %struct.Exp_, ptr %20, i64 0, i32 2
  store i32 %22, ptr %24, align 8, !tbaa !149
  %25 = getelementptr inbounds %struct.Exp_, ptr %20, i64 0, i32 3
  store i32 39, ptr %25, align 4, !tbaa !150
  store ptr %20, ptr %9, align 8, !tbaa !152
  %26 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 4
  store ptr %8, ptr %26, align 8, !tbaa !155
  %27 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 5
  store ptr %6, ptr %27, align 8, !tbaa !156
  store ptr %9, ptr %7, align 8, !tbaa !13
  ret i32 0

28:                                               ; preds = %1
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %9) #30
  resume { ptr, i32 } %29
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z10doarrayputP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %5 = getelementptr inbounds ptr, ptr %4, i64 -1
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds ptr, ptr %4, i64 -2
  store ptr %7, ptr @stkptr, align 8, !tbaa !13
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = getelementptr inbounds ptr, ptr %4, i64 -3
  store ptr %9, ptr @stkptr, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.Exp, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !142
  %13 = tail call i32 @llvm.umin.i32(i32 %3, i32 %12)
  %14 = getelementptr inbounds %struct.Exp, ptr %8, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !142
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %15)
  %17 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %18 = getelementptr inbounds %struct.Exp, ptr %17, i64 0, i32 1
  store i32 1, ptr %18, align 8, !tbaa !140
  %19 = getelementptr inbounds %struct.Exp, ptr %17, i64 0, i32 2
  store i32 %3, ptr %19, align 4, !tbaa !143
  %20 = getelementptr inbounds %struct.Exp, ptr %17, i64 0, i32 3
  store i32 %16, ptr %20, align 8, !tbaa !142
  %21 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %22 unwind label %35

22:                                               ; preds = %1
  store <4 x i32> <i32 0, i32 7, i32 8, i32 39>, ptr %21, align 8, !tbaa !7
  store ptr %21, ptr %17, align 8, !tbaa !152
  %23 = getelementptr inbounds %struct.Exp, ptr %17, i64 0, i32 4
  store ptr %10, ptr %23, align 8, !tbaa !155
  %24 = getelementptr inbounds %struct.Exp, ptr %17, i64 0, i32 5
  store ptr %8, ptr %24, align 8, !tbaa !156
  %25 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %26 = getelementptr inbounds %struct.Exp, ptr %25, i64 0, i32 1
  store i32 1, ptr %26, align 8, !tbaa !140
  %27 = getelementptr inbounds %struct.Exp, ptr %25, i64 0, i32 2
  store i32 %3, ptr %27, align 4, !tbaa !143
  %28 = getelementptr inbounds %struct.Exp, ptr %25, i64 0, i32 3
  store i32 %16, ptr %28, align 8, !tbaa !142
  %29 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %30 unwind label %37

30:                                               ; preds = %22
  store <4 x i32> <i32 0, i32 4, i32 8, i32 6>, ptr %29, align 8, !tbaa !7
  store ptr %29, ptr %25, align 8, !tbaa !152
  %31 = getelementptr inbounds %struct.Exp, ptr %25, i64 0, i32 4
  store ptr %17, ptr %31, align 8, !tbaa !155
  %32 = getelementptr inbounds %struct.Exp, ptr %25, i64 0, i32 5
  store ptr %6, ptr %32, align 8, !tbaa !156
  %33 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  store ptr %34, ptr @donestkptr, align 8, !tbaa !13
  store ptr %25, ptr %33, align 8, !tbaa !13
  ret i32 0

35:                                               ; preds = %1
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %22
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %25, %37 ], [ %17, %35 ]
  %41 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  tail call void @_ZdlPv(ptr noundef nonnull %40) #30
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @_Z5dopopP9Classfile(ptr nocapture noundef readnone %0) #16 {
  %2 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %3 = icmp eq ptr %2, @stack
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds ptr, ptr %2, i64 -1
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr @donestkptr, align 8, !tbaa !13
  store ptr %6, ptr %7, align 8, !tbaa !13
  br label %9

9:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @_Z5dodupP9Classfile(ptr nocapture noundef readnone %0) #16 {
  %2 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %3 = getelementptr inbounds ptr, ptr %2, i64 -1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  %6 = getelementptr inbounds %struct.Exp_, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !150
  %8 = icmp eq i32 %7, 18
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  store ptr %4, ptr %2, align 8, !tbaa !13
  %10 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.Exp, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !140
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !140
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %15, ptr @stkptr, align 8, !tbaa !13
  br label %16

16:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @_Z8dodup_x1P9Classfile(ptr nocapture noundef readnone %0) #16 {
  %2 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %3 = getelementptr inbounds ptr, ptr %2, i64 -1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  store ptr %4, ptr %2, align 8, !tbaa !13
  %5 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %6 = getelementptr inbounds ptr, ptr %5, i64 -2
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds ptr, ptr %5, i64 -1
  store ptr %7, ptr %8, align 8, !tbaa !13
  %9 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds ptr, ptr %9, i64 -2
  store ptr %10, ptr %11, align 8, !tbaa !13
  %12 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.Exp, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !140
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !140
  %17 = getelementptr inbounds ptr, ptr %12, i64 1
  store ptr %17, ptr @stkptr, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z9pushbinopP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %5 = getelementptr inbounds ptr, ptr %4, i64 -1
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds ptr, ptr %4, i64 -2
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %10 = getelementptr inbounds %struct.Exp, ptr %8, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct.Exp, ptr %6, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %3)
  %16 = load ptr, ptr %8, align 8, !tbaa !152
  %17 = getelementptr inbounds %struct.Exp_, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !149
  %19 = load i32, ptr @ch, align 4, !tbaa !17
  %20 = icmp slt i32 %19, 116
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = add nsw i32 %19, -96
  %23 = ashr i32 %22, 2
  br label %28

24:                                               ; preds = %1
  %25 = add nsw i32 %19, -120
  %26 = ashr i32 %25, 1
  %27 = add nsw i32 %26, 7
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i32 [ %23, %21 ], [ %27, %24 ]
  %30 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 1
  store i32 1, ptr %30, align 8, !tbaa !140
  %31 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 2
  store i32 %3, ptr %31, align 4, !tbaa !143
  %32 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 3
  store i32 %15, ptr %32, align 8, !tbaa !142
  %33 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %34 unwind label %40

34:                                               ; preds = %28
  store i32 0, ptr %33, align 8, !tbaa !144
  %35 = getelementptr inbounds %struct.Exp_, ptr %33, i64 0, i32 1
  store i32 4, ptr %35, align 4, !tbaa !148
  %36 = getelementptr inbounds %struct.Exp_, ptr %33, i64 0, i32 2
  store i32 %18, ptr %36, align 8, !tbaa !149
  %37 = getelementptr inbounds %struct.Exp_, ptr %33, i64 0, i32 3
  store i32 %29, ptr %37, align 4, !tbaa !150
  store ptr %33, ptr %9, align 8, !tbaa !152
  %38 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 4
  store ptr %8, ptr %38, align 8, !tbaa !155
  %39 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 5
  store ptr %6, ptr %39, align 8, !tbaa !156
  store ptr %9, ptr %7, align 8, !tbaa !13
  ret i32 0

40:                                               ; preds = %28
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %9) #30
  resume { ptr, i32 } %41
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z8pushunopP9Classfile(ptr nocapture noundef readonly %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %5 = getelementptr inbounds ptr, ptr %4, i64 -1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = load i32, ptr @ch, align 4, !tbaa !17
  switch i32 %7, label %159 [
    i32 116, label %8
    i32 117, label %8
    i32 118, label %8
    i32 119, label %8
    i32 136, label %162
    i32 139, label %162
    i32 142, label %162
    i32 133, label %12
    i32 140, label %12
    i32 143, label %12
    i32 134, label %13
    i32 137, label %13
    i32 144, label %13
    i32 135, label %14
    i32 138, label %14
    i32 141, label %14
    i32 145, label %15
    i32 146, label %16
    i32 147, label %17
    i32 191, label %18
    i32 187, label %34
    i32 186, label %74
    i32 167, label %80
  ]

8:                                                ; preds = %1, %1, %1, %1
  %9 = load ptr, ptr %6, align 8, !tbaa !152
  %10 = getelementptr inbounds %struct.Exp_, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !149
  br label %162

12:                                               ; preds = %1, %1, %1
  br label %162

13:                                               ; preds = %1, %1, %1
  br label %162

14:                                               ; preds = %1, %1, %1
  br label %162

15:                                               ; preds = %1
  br label %162

16:                                               ; preds = %1
  br label %162

17:                                               ; preds = %1
  br label %162

18:                                               ; preds = %1
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %19 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %20 = getelementptr inbounds %struct.Exp, ptr %6, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !142
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %3)
  %23 = getelementptr inbounds %struct.Exp, ptr %19, i64 0, i32 1
  store i32 1, ptr %23, align 8, !tbaa !140
  %24 = getelementptr inbounds %struct.Exp, ptr %19, i64 0, i32 2
  store i32 %3, ptr %24, align 4, !tbaa !143
  %25 = getelementptr inbounds %struct.Exp, ptr %19, i64 0, i32 3
  store i32 %22, ptr %25, align 8, !tbaa !142
  %26 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %27 unwind label %32

27:                                               ; preds = %18
  store <4 x i32> <i32 0, i32 2, i32 0, i32 17>, ptr %26, align 8, !tbaa !7
  store ptr %26, ptr %19, align 8, !tbaa !152
  %28 = getelementptr inbounds %struct.Exp, ptr %19, i64 0, i32 4
  store ptr %6, ptr %28, align 8, !tbaa !155
  %29 = getelementptr inbounds %struct.Exp, ptr %19, i64 0, i32 5
  store ptr null, ptr %29, align 8, !tbaa !156
  %30 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %31, ptr @donestkptr, align 8, !tbaa !13
  store ptr %19, ptr %30, align 8, !tbaa !13
  br label %184

32:                                               ; preds = %18
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %186

34:                                               ; preds = %1
  %35 = add i32 %2, 2
  store i32 %35, ptr @currpc, align 4, !tbaa !17
  %36 = load i32, ptr @bufflength, align 4, !tbaa !17
  %37 = add nsw i32 %36, -2
  store i32 %37, ptr @bufflength, align 4, !tbaa !17
  %38 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %39 = getelementptr inbounds i8, ptr %38, i64 2
  store ptr %39, ptr @inbuff, align 8, !tbaa !13
  %40 = load i8, ptr %38, align 1, !tbaa !7
  %41 = zext i8 %40 to i16
  %42 = shl nuw i16 %41, 8
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !7
  %45 = zext i8 %44 to i16
  %46 = or i16 %42, %45
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = zext i16 %46 to i64
  %51 = getelementptr inbounds %struct.cp_info, ptr %49, i64 %50, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !7
  %53 = getelementptr inbounds %struct.cp_info, ptr %49, i64 %52, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #26
  %56 = add i64 %55, 1
  %57 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %56) #29
  %58 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) %54) #25
  %59 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %59, i32 noundef %3, ptr noundef nonnull %57, i32 noundef 0, i32 noundef 2, i32 noundef %47) #28
          to label %60 unwind label %76

60:                                               ; preds = %34
  %61 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %62 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !142
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 %3)
  %65 = getelementptr inbounds %struct.Exp, ptr %61, i64 0, i32 1
  store i32 1, ptr %65, align 8, !tbaa !140
  %66 = getelementptr inbounds %struct.Exp, ptr %61, i64 0, i32 2
  store i32 %3, ptr %66, align 4, !tbaa !143
  %67 = getelementptr inbounds %struct.Exp, ptr %61, i64 0, i32 3
  store i32 %64, ptr %67, align 8, !tbaa !142
  %68 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %69 unwind label %78

69:                                               ; preds = %60
  store <4 x i32> <i32 0, i32 2, i32 8, i32 18>, ptr %68, align 8, !tbaa !7
  store ptr %68, ptr %61, align 8, !tbaa !152
  %70 = getelementptr inbounds %struct.Exp, ptr %61, i64 0, i32 4
  store ptr %59, ptr %70, align 8, !tbaa !155
  %71 = getelementptr inbounds %struct.Exp, ptr %61, i64 0, i32 5
  store ptr null, ptr %71, align 8, !tbaa !156
  %72 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  store ptr %73, ptr @stkptr, align 8, !tbaa !13
  store ptr %61, ptr %72, align 8, !tbaa !13
  br label %74

74:                                               ; preds = %69, %1
  %75 = phi ptr [ %6, %1 ], [ %59, %69 ]
  br label %162

76:                                               ; preds = %34
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %186

78:                                               ; preds = %60
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %186

80:                                               ; preds = %1
  %81 = icmp eq ptr %4, @stack
  br i1 %81, label %122, label %82

82:                                               ; preds = %80
  %83 = load i32, ptr @cond_pcend, align 4, !tbaa !17
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr @stderr, align 8, !tbaa !13
  %87 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 46, i64 1, ptr %86) #31
  br label %184

88:                                               ; preds = %82
  %89 = add i32 %2, 2
  store i32 %89, ptr @currpc, align 4, !tbaa !17
  %90 = load i32, ptr @bufflength, align 4, !tbaa !17
  %91 = add nsw i32 %90, -2
  store i32 %91, ptr @bufflength, align 4, !tbaa !17
  %92 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %93 = getelementptr inbounds i8, ptr %92, i64 2
  store ptr %93, ptr @inbuff, align 8, !tbaa !13
  %94 = load i8, ptr %92, align 1, !tbaa !7
  %95 = zext i8 %94 to i16
  %96 = shl nuw i16 %95, 8
  %97 = getelementptr inbounds i8, ptr %92, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !7
  %99 = zext i8 %98 to i16
  %100 = or i16 %96, %99
  %101 = sext i16 %100 to i32
  %102 = add i32 %3, %101
  store i32 %102, ptr @cond_pcend, align 4, !tbaa !17
  store ptr %4, ptr @cond_stkptr, align 8, !tbaa !13
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %103 = load ptr, ptr %5, align 8, !tbaa !13
  store ptr %103, ptr @cond_e2, align 8, !tbaa !13
  %104 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %105 = getelementptr inbounds ptr, ptr %104, i64 -1
  store ptr %105, ptr @donestkptr, align 8, !tbaa !13
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = load ptr, ptr %106, align 8, !tbaa !152
  %108 = getelementptr inbounds %struct.Exp_, ptr %107, i64 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !148
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %111, label %119

111:                                              ; preds = %88
  %112 = getelementptr inbounds %struct.Exp, ptr %106, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !7
  %114 = icmp eq i32 %113, %89
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr @stderr, align 8, !tbaa !13
  %117 = tail call i64 @fwrite(ptr nonnull @.str.1.60, i64 31, i64 1, ptr %116) #31
  br label %184

118:                                              ; preds = %111
  store ptr %106, ptr @cond_e, align 8, !tbaa !13
  store ptr %105, ptr @cond_donestkptr, align 8, !tbaa !13
  br label %184

119:                                              ; preds = %88
  %120 = load ptr, ptr @stderr, align 8, !tbaa !13
  %121 = tail call i64 @fwrite(ptr nonnull @.str.2.61, i64 57, i64 1, ptr %120) #31
  br label %184

122:                                              ; preds = %80
  %123 = add i32 %2, 2
  store i32 %123, ptr @currpc, align 4, !tbaa !17
  %124 = load i32, ptr @bufflength, align 4, !tbaa !17
  %125 = add nsw i32 %124, -2
  store i32 %125, ptr @bufflength, align 4, !tbaa !17
  %126 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %127 = getelementptr inbounds i8, ptr %126, i64 2
  store ptr %127, ptr @inbuff, align 8, !tbaa !13
  %128 = load i8, ptr %126, align 1, !tbaa !7
  %129 = zext i8 %128 to i16
  %130 = shl nuw i16 %129, 8
  %131 = getelementptr inbounds i8, ptr %126, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !7
  %133 = zext i8 %132 to i16
  %134 = or i16 %130, %133
  %135 = sext i16 %134 to i32
  %136 = add i32 %3, %135
  %137 = tail call noalias noundef nonnull dereferenceable(100) ptr @_Znam(i64 noundef 100) #29
  %138 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %137, ptr noundef nonnull dereferenceable(1) @.str.3.62, i32 noundef %136) #25
  %139 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #26
  %140 = add i64 %139, 1
  %141 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %140) #29
  %142 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %141, ptr noundef nonnull dereferenceable(1) %137) #25
  tail call void @_ZdaPv(ptr noundef nonnull %137) #30
  %143 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %143, i32 noundef %3, ptr noundef nonnull %141, i32 noundef 0, i32 noundef 1, i32 noundef 0) #28
          to label %144 unwind label %155

144:                                              ; preds = %122
  %145 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %146 = getelementptr inbounds %struct.Exp, ptr %145, i64 0, i32 1
  store i32 1, ptr %146, align 8, !tbaa !140
  %147 = getelementptr inbounds %struct.Exp, ptr %145, i64 0, i32 3
  store i32 %3, ptr %147, align 8, !tbaa !142
  %148 = getelementptr inbounds %struct.Exp, ptr %145, i64 0, i32 2
  store i32 %3, ptr %148, align 4, !tbaa !143
  %149 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %150 unwind label %157

150:                                              ; preds = %144
  store <4 x i32> <i32 0, i32 2, i32 0, i32 19>, ptr %149, align 8, !tbaa !7
  store ptr %149, ptr %145, align 8, !tbaa !152
  %151 = getelementptr inbounds %struct.Exp, ptr %145, i64 0, i32 4
  store ptr %143, ptr %151, align 8, !tbaa !155
  %152 = getelementptr inbounds %struct.Exp, ptr %145, i64 0, i32 7
  store i32 %136, ptr %152, align 8, !tbaa !7
  %153 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %154 = getelementptr inbounds ptr, ptr %153, i64 1
  store ptr %154, ptr @donestkptr, align 8, !tbaa !13
  store ptr %145, ptr %153, align 8, !tbaa !13
  br label %184

155:                                              ; preds = %122
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %186

157:                                              ; preds = %144
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %186

159:                                              ; preds = %1
  %160 = load ptr, ptr @stderr, align 8, !tbaa !13
  %161 = tail call i64 @fwrite(ptr nonnull @.str.4.63, i64 33, i64 1, ptr %160) #31
  tail call void @exit(i32 noundef -1) #32
  unreachable

162:                                              ; preds = %74, %17, %16, %15, %14, %13, %12, %8, %1, %1, %1
  %163 = phi ptr [ %75, %74 ], [ %6, %17 ], [ %6, %16 ], [ %6, %15 ], [ %6, %14 ], [ %6, %13 ], [ %6, %12 ], [ %6, %8 ], [ %6, %1 ], [ %6, %1 ], [ %6, %1 ]
  %164 = phi i32 [ 18, %74 ], [ 15, %17 ], [ 15, %16 ], [ 15, %15 ], [ 15, %14 ], [ 15, %13 ], [ 15, %12 ], [ 14, %8 ], [ 15, %1 ], [ 15, %1 ], [ 15, %1 ]
  %165 = phi i32 [ 0, %74 ], [ 3, %17 ], [ 2, %16 ], [ 1, %15 ], [ 7, %14 ], [ 6, %13 ], [ 5, %12 ], [ %11, %8 ], [ 4, %1 ], [ 4, %1 ], [ 4, %1 ]
  %166 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %167 = getelementptr inbounds %struct.Exp, ptr %163, i64 0, i32 3
  %168 = load i32, ptr %167, align 8, !tbaa !142
  %169 = tail call i32 @llvm.umin.i32(i32 %168, i32 %3)
  %170 = getelementptr inbounds %struct.Exp, ptr %166, i64 0, i32 1
  store i32 1, ptr %170, align 8, !tbaa !140
  %171 = getelementptr inbounds %struct.Exp, ptr %166, i64 0, i32 2
  store i32 %3, ptr %171, align 4, !tbaa !143
  %172 = getelementptr inbounds %struct.Exp, ptr %166, i64 0, i32 3
  store i32 %169, ptr %172, align 8, !tbaa !142
  %173 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %174 unwind label %182

174:                                              ; preds = %162
  store i32 0, ptr %173, align 8, !tbaa !144
  %175 = getelementptr inbounds %struct.Exp_, ptr %173, i64 0, i32 1
  store i32 2, ptr %175, align 4, !tbaa !148
  %176 = getelementptr inbounds %struct.Exp_, ptr %173, i64 0, i32 2
  store i32 %165, ptr %176, align 8, !tbaa !149
  %177 = getelementptr inbounds %struct.Exp_, ptr %173, i64 0, i32 3
  store i32 %164, ptr %177, align 4, !tbaa !150
  store ptr %173, ptr %166, align 8, !tbaa !152
  %178 = getelementptr inbounds %struct.Exp, ptr %166, i64 0, i32 4
  store ptr %163, ptr %178, align 8, !tbaa !155
  %179 = getelementptr inbounds %struct.Exp, ptr %166, i64 0, i32 5
  store ptr null, ptr %179, align 8, !tbaa !156
  %180 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %181 = getelementptr inbounds ptr, ptr %180, i64 -1
  store ptr %166, ptr %181, align 8, !tbaa !13
  br label %184

182:                                              ; preds = %162
  %183 = landingpad { ptr, i32 }
          cleanup
  br label %186

184:                                              ; preds = %174, %150, %119, %118, %115, %85, %27
  %185 = phi i32 [ 1, %85 ], [ 1, %115 ], [ 0, %118 ], [ 1, %119 ], [ 0, %150 ], [ 0, %174 ], [ 0, %27 ]
  ret i32 %185

186:                                              ; preds = %182, %157, %155, %78, %76, %32
  %187 = phi ptr [ %166, %182 ], [ %145, %157 ], [ %143, %155 ], [ %61, %78 ], [ %59, %76 ], [ %19, %32 ]
  %188 = phi { ptr, i32 } [ %183, %182 ], [ %158, %157 ], [ %156, %155 ], [ %79, %78 ], [ %77, %76 ], [ %33, %32 ]
  tail call void @_ZdlPv(ptr noundef nonnull %187) #30
  resume { ptr, i32 } %188
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z5doif1P9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = load i32, ptr @currpc, align 4, !tbaa !17
  %4 = add i32 %3, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #33
  %5 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %6 = getelementptr inbounds ptr, ptr %5, i64 -1
  store ptr %6, ptr @stkptr, align 8, !tbaa !13
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  store ptr %7, ptr %2, align 8, !tbaa !13
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = getelementptr inbounds %struct.Exp_, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !149
  switch i32 %10, label %79 [
    i32 12, label %11
    i32 10, label %21
    i32 4, label %33
    i32 8, label %56
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.Exp_, ptr %8, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !150
  %14 = icmp eq i32 %13, 26
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @stderr, align 8, !tbaa !13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 12, i64 1, ptr %16) #31
  br label %106

18:                                               ; preds = %11
  %19 = load i32, ptr @ch, align 4, !tbaa !17
  %20 = add nsw i32 %19, -125
  store i32 %20, ptr %12, align 4, !tbaa !150
  store i32 10, ptr %9, align 8, !tbaa !149
  br label %79

21:                                               ; preds = %1
  %22 = load i32, ptr @ch, align 4, !tbaa !17
  %23 = icmp eq i32 %22, 153
  br i1 %23, label %24, label %79

24:                                               ; preds = %21
  %25 = call noundef i32 @_Z6notexpPP3Exp(ptr noundef nonnull %2) #28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load ptr, ptr %2, align 8, !tbaa !13
  %29 = load i32, ptr @currpc, align 4, !tbaa !17
  br label %79

30:                                               ; preds = %24
  %31 = load ptr, ptr @stderr, align 8, !tbaa !13
  %32 = call i64 @fwrite(ptr nonnull @.str.64, i64 12, i64 1, ptr %31) #31
  br label %106

33:                                               ; preds = %1
  %34 = load ptr, ptr %6, align 8, !tbaa !13
  %35 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %36 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 1
  store i32 1, ptr %36, align 8, !tbaa !140
  %37 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 3
  store i32 %4, ptr %37, align 8, !tbaa !142
  %38 = getelementptr inbounds %struct.Exp, ptr %35, i64 0, i32 2
  store i32 %4, ptr %38, align 4, !tbaa !143
  store ptr getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 2), ptr %35, align 8, !tbaa !152
  %39 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %40 = getelementptr inbounds %struct.Exp, ptr %34, i64 0, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !142
  %42 = load i32, ptr @ch, align 4, !tbaa !17
  %43 = getelementptr inbounds %struct.Exp, ptr %39, i64 0, i32 1
  store i32 1, ptr %43, align 8, !tbaa !140
  %44 = getelementptr inbounds %struct.Exp, ptr %39, i64 0, i32 2
  store i32 %4, ptr %44, align 4, !tbaa !143
  %45 = getelementptr inbounds %struct.Exp, ptr %39, i64 0, i32 3
  store i32 %41, ptr %45, align 8, !tbaa !142
  %46 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %47 unwind label %54

47:                                               ; preds = %33
  %48 = add nsw i32 %42, -125
  store i32 0, ptr %46, align 8, !tbaa !144
  %49 = getelementptr inbounds %struct.Exp_, ptr %46, i64 0, i32 1
  store i32 4, ptr %49, align 4, !tbaa !148
  %50 = getelementptr inbounds %struct.Exp_, ptr %46, i64 0, i32 2
  store i32 10, ptr %50, align 8, !tbaa !149
  %51 = getelementptr inbounds %struct.Exp_, ptr %46, i64 0, i32 3
  store i32 %48, ptr %51, align 4, !tbaa !150
  store ptr %46, ptr %39, align 8, !tbaa !152
  %52 = getelementptr inbounds %struct.Exp, ptr %39, i64 0, i32 4
  store ptr %34, ptr %52, align 8, !tbaa !155
  %53 = getelementptr inbounds %struct.Exp, ptr %39, i64 0, i32 5
  store ptr %35, ptr %53, align 8, !tbaa !156
  store ptr %39, ptr %2, align 8, !tbaa !13
  br label %79

54:                                               ; preds = %33
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %108

56:                                               ; preds = %1
  %57 = load ptr, ptr %6, align 8, !tbaa !13
  %58 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %59 = getelementptr inbounds %struct.Exp, ptr %58, i64 0, i32 1
  store i32 1, ptr %59, align 8, !tbaa !140
  %60 = getelementptr inbounds %struct.Exp, ptr %58, i64 0, i32 3
  store i32 %4, ptr %60, align 8, !tbaa !142
  %61 = getelementptr inbounds %struct.Exp, ptr %58, i64 0, i32 2
  store i32 %4, ptr %61, align 4, !tbaa !143
  store ptr @std_exps, ptr %58, align 8, !tbaa !152
  %62 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %63 = getelementptr inbounds %struct.Exp, ptr %57, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !142
  %65 = load i32, ptr @ch, align 4, !tbaa !17
  %66 = getelementptr inbounds %struct.Exp, ptr %62, i64 0, i32 1
  store i32 1, ptr %66, align 8, !tbaa !140
  %67 = getelementptr inbounds %struct.Exp, ptr %62, i64 0, i32 2
  store i32 %4, ptr %67, align 4, !tbaa !143
  %68 = getelementptr inbounds %struct.Exp, ptr %62, i64 0, i32 3
  store i32 %64, ptr %68, align 8, !tbaa !142
  %69 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %70 unwind label %77

70:                                               ; preds = %56
  %71 = add nsw i32 %65, -170
  store i32 0, ptr %69, align 8, !tbaa !144
  %72 = getelementptr inbounds %struct.Exp_, ptr %69, i64 0, i32 1
  store i32 4, ptr %72, align 4, !tbaa !148
  %73 = getelementptr inbounds %struct.Exp_, ptr %69, i64 0, i32 2
  store i32 10, ptr %73, align 8, !tbaa !149
  %74 = getelementptr inbounds %struct.Exp_, ptr %69, i64 0, i32 3
  store i32 %71, ptr %74, align 4, !tbaa !150
  store ptr %69, ptr %62, align 8, !tbaa !152
  %75 = getelementptr inbounds %struct.Exp, ptr %62, i64 0, i32 4
  store ptr %57, ptr %75, align 8, !tbaa !155
  %76 = getelementptr inbounds %struct.Exp, ptr %62, i64 0, i32 5
  store ptr %58, ptr %76, align 8, !tbaa !156
  store ptr %62, ptr %2, align 8, !tbaa !13
  br label %79

77:                                               ; preds = %56
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %108

79:                                               ; preds = %70, %47, %27, %21, %18, %1
  %80 = phi i32 [ %29, %27 ], [ %3, %1 ], [ %3, %21 ], [ %3, %70 ], [ %3, %47 ], [ %3, %18 ]
  %81 = phi ptr [ %28, %27 ], [ %7, %1 ], [ %7, %21 ], [ %62, %70 ], [ %39, %47 ], [ %7, %18 ]
  %82 = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %83 = getelementptr inbounds %struct.Exp, ptr %81, i64 0, i32 3
  %84 = load i32, ptr %83, align 8, !tbaa !142
  %85 = add i32 %80, 2
  store i32 %85, ptr @currpc, align 4, !tbaa !17
  %86 = load i32, ptr @bufflength, align 4, !tbaa !17
  %87 = add nsw i32 %86, -2
  store i32 %87, ptr @bufflength, align 4, !tbaa !17
  %88 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %89 = getelementptr inbounds i8, ptr %88, i64 2
  store ptr %89, ptr @inbuff, align 8, !tbaa !13
  %90 = load i8, ptr %88, align 1, !tbaa !7
  %91 = zext i8 %90 to i16
  %92 = shl nuw i16 %91, 8
  %93 = getelementptr inbounds i8, ptr %88, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !7
  %95 = zext i8 %94 to i16
  %96 = or i16 %92, %95
  %97 = sext i16 %96 to i32
  %98 = add i32 %4, %97
  %99 = getelementptr inbounds %struct.Exp, ptr %82, i64 0, i32 1
  store i32 1, ptr %99, align 8, !tbaa !140
  %100 = getelementptr inbounds %struct.Exp, ptr %82, i64 0, i32 2
  store i32 %4, ptr %100, align 4, !tbaa !143
  %101 = getelementptr inbounds %struct.Exp, ptr %82, i64 0, i32 3
  store i32 %84, ptr %101, align 8, !tbaa !142
  store ptr getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 17), ptr %82, align 8, !tbaa !152
  %102 = getelementptr inbounds %struct.Exp, ptr %82, i64 0, i32 4
  store ptr %81, ptr %102, align 8, !tbaa !155
  %103 = getelementptr inbounds %struct.Exp, ptr %82, i64 0, i32 7
  store i32 %98, ptr %103, align 8, !tbaa !7
  %104 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %105 = getelementptr inbounds ptr, ptr %104, i64 1
  store ptr %105, ptr @donestkptr, align 8, !tbaa !13
  store ptr %82, ptr %104, align 8, !tbaa !13
  br label %106

106:                                              ; preds = %79, %30, %15
  %107 = phi i32 [ 0, %79 ], [ 1, %30 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  ret i32 %107

108:                                              ; preds = %77, %54
  %109 = phi ptr [ %62, %77 ], [ %39, %54 ]
  %110 = phi { ptr, i32 } [ %78, %77 ], [ %55, %54 ]
  tail call void @_ZdlPv(ptr noundef nonnull %109) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #33
  resume { ptr, i32 } %110
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z5doif2P9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %5 = getelementptr inbounds ptr, ptr %4, i64 -1
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds ptr, ptr %4, i64 -2
  store ptr %7, ptr @stkptr, align 8, !tbaa !13
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %10 = getelementptr inbounds %struct.Exp, ptr %8, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct.Exp, ptr %6, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %15 = load i32, ptr @ch, align 4, !tbaa !17
  %16 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 1
  store i32 1, ptr %16, align 8, !tbaa !140
  %17 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 2
  store i32 %3, ptr %17, align 4, !tbaa !143
  %18 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 3
  store i32 %14, ptr %18, align 8, !tbaa !142
  %19 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %20 unwind label %51

20:                                               ; preds = %1
  %21 = add nsw i32 %15, -159
  %22 = srem i32 %21, 6
  %23 = add nsw i32 %22, 28
  store i32 0, ptr %19, align 8, !tbaa !144
  %24 = getelementptr inbounds %struct.Exp_, ptr %19, i64 0, i32 1
  store i32 4, ptr %24, align 4, !tbaa !148
  %25 = getelementptr inbounds %struct.Exp_, ptr %19, i64 0, i32 2
  store i32 10, ptr %25, align 8, !tbaa !149
  %26 = getelementptr inbounds %struct.Exp_, ptr %19, i64 0, i32 3
  store i32 %23, ptr %26, align 4, !tbaa !150
  store ptr %19, ptr %9, align 8, !tbaa !152
  %27 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 4
  store ptr %8, ptr %27, align 8, !tbaa !155
  %28 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 5
  store ptr %6, ptr %28, align 8, !tbaa !156
  %29 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %30 = add i32 %2, 2
  store i32 %30, ptr @currpc, align 4, !tbaa !17
  %31 = load i32, ptr @bufflength, align 4, !tbaa !17
  %32 = add nsw i32 %31, -2
  store i32 %32, ptr @bufflength, align 4, !tbaa !17
  %33 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %34 = getelementptr inbounds i8, ptr %33, i64 2
  store ptr %34, ptr @inbuff, align 8, !tbaa !13
  %35 = load i8, ptr %33, align 1, !tbaa !7
  %36 = zext i8 %35 to i16
  %37 = shl nuw i16 %36, 8
  %38 = getelementptr inbounds i8, ptr %33, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !7
  %40 = zext i8 %39 to i16
  %41 = or i16 %37, %40
  %42 = sext i16 %41 to i32
  %43 = add i32 %3, %42
  %44 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 1
  store i32 1, ptr %44, align 8, !tbaa !140
  %45 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 2
  store i32 %3, ptr %45, align 4, !tbaa !143
  %46 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 3
  store i32 %14, ptr %46, align 8, !tbaa !142
  store ptr getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 17), ptr %29, align 8, !tbaa !152
  %47 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 4
  store ptr %9, ptr %47, align 8, !tbaa !155
  %48 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 7
  store i32 %43, ptr %48, align 8, !tbaa !7
  %49 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  store ptr %50, ptr @donestkptr, align 8, !tbaa !13
  store ptr %29, ptr %49, align 8, !tbaa !13
  ret i32 0

51:                                               ; preds = %1
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %9) #30
  resume { ptr, i32 } %52
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z5docmpP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %5 = getelementptr inbounds ptr, ptr %4, i64 -1
  store ptr %5, ptr @stkptr, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds ptr, ptr %4, i64 -2
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %10 = getelementptr inbounds %struct.Exp, ptr %8, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct.Exp, ptr %6, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !142
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %15 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 1
  store i32 1, ptr %15, align 8, !tbaa !140
  %16 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 2
  store i32 %3, ptr %16, align 4, !tbaa !143
  %17 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 3
  store i32 %14, ptr %17, align 8, !tbaa !142
  %18 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %19 unwind label %22

19:                                               ; preds = %1
  store <4 x i32> <i32 0, i32 4, i32 12, i32 26>, ptr %18, align 8, !tbaa !7
  store ptr %18, ptr %9, align 8, !tbaa !152
  %20 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 4
  store ptr %8, ptr %20, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.Exp, ptr %9, i64 0, i32 5
  store ptr %6, ptr %21, align 8, !tbaa !156
  store ptr %9, ptr %7, align 8, !tbaa !13
  ret i32 0

22:                                               ; preds = %1
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %9) #30
  resume { ptr, i32 } %23
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z17finishconditionalP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %3 = load ptr, ptr @cond_stkptr, align 8, !tbaa !13
  %4 = icmp eq ptr %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %7 = load ptr, ptr @cond_donestkptr, align 8, !tbaa !13
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !13
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1.69, i64 11, i64 1, ptr %10) #31
  br label %54

12:                                               ; preds = %5
  %13 = load ptr, ptr @cond_e, align 8, !tbaa !13
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  %15 = getelementptr inbounds %struct.Exp_, ptr %14, i64 1
  store ptr %15, ptr %13, align 8, !tbaa !152
  %16 = load ptr, ptr @cond_e, align 8, !tbaa !13
  %17 = getelementptr inbounds %struct.Exp, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !155
  %19 = load ptr, ptr %18, align 8, !tbaa !152
  %20 = getelementptr inbounds %struct.Exp_, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = add i32 %21, -34
  %23 = icmp ult i32 %22, -6
  br i1 %23, label %24, label %45

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.Exp_, ptr %19, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !149
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !tbaa !13
  %30 = tail call i64 @fwrite(ptr nonnull @.str.2.72, i64 24, i64 1, ptr %29) #31
  br label %54

31:                                               ; preds = %24
  %32 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %33 = load i32, ptr @currpc, align 4, !tbaa !17
  %34 = getelementptr inbounds %struct.Exp, ptr %18, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !142
  %36 = getelementptr inbounds %struct.Exp, ptr %32, i64 0, i32 1
  store i32 1, ptr %36, align 8, !tbaa !140
  %37 = getelementptr inbounds %struct.Exp, ptr %32, i64 0, i32 2
  store i32 %33, ptr %37, align 4, !tbaa !143
  %38 = getelementptr inbounds %struct.Exp, ptr %32, i64 0, i32 3
  store i32 %35, ptr %38, align 8, !tbaa !142
  %39 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %40 unwind label %43

40:                                               ; preds = %31
  store <4 x i32> <i32 0, i32 2, i32 10, i32 34>, ptr %39, align 8, !tbaa !7
  store ptr %39, ptr %32, align 8, !tbaa !152
  %41 = getelementptr inbounds %struct.Exp, ptr %32, i64 0, i32 4
  store ptr %18, ptr %41, align 8, !tbaa !155
  %42 = getelementptr inbounds %struct.Exp, ptr %32, i64 0, i32 5
  store ptr null, ptr %42, align 8, !tbaa !156
  store ptr %32, ptr %17, align 8, !tbaa !155
  br label %47

43:                                               ; preds = %31
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %32) #30
  resume { ptr, i32 } %44

45:                                               ; preds = %12
  %46 = xor i32 %21, 1
  store i32 %46, ptr %20, align 4, !tbaa !17
  br label %47

47:                                               ; preds = %45, %40
  %48 = load ptr, ptr @cond_e2, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.Exp, ptr %16, i64 0, i32 5
  store ptr %48, ptr %49, align 8, !tbaa !156
  %50 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %51 = getelementptr inbounds ptr, ptr %50, i64 -1
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = getelementptr inbounds %struct.Exp, ptr %16, i64 0, i32 6
  store ptr %52, ptr %53, align 8, !tbaa !7
  store ptr %16, ptr %51, align 8, !tbaa !13
  store i32 -1, ptr @cond_pcend, align 4, !tbaa !17
  br label %54

54:                                               ; preds = %47, %28, %9
  %55 = phi i32 [ 1, %9 ], [ 1, %28 ], [ 0, %47 ]
  ret i32 %55
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z8doreturnP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load i32, ptr @ch, align 4, !tbaa !17
  %5 = icmp eq i32 %4, 177
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load i32, ptr @bufflength, align 4, !tbaa !17
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %6
  %10 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %10, i32 noundef %3, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 1, i32 noundef 0) #28
          to label %11 unwind label %22

11:                                               ; preds = %9
  %12 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %13 = getelementptr inbounds %struct.Exp, ptr %12, i64 0, i32 1
  store i32 1, ptr %13, align 8, !tbaa !140
  %14 = getelementptr inbounds %struct.Exp, ptr %12, i64 0, i32 3
  store i32 %3, ptr %14, align 8, !tbaa !142
  %15 = getelementptr inbounds %struct.Exp, ptr %12, i64 0, i32 2
  store i32 %3, ptr %15, align 4, !tbaa !143
  %16 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %17 unwind label %24

17:                                               ; preds = %11
  store <4 x i32> <i32 0, i32 2, i32 0, i32 16>, ptr %16, align 8, !tbaa !7
  store ptr %16, ptr %12, align 8, !tbaa !152
  %18 = getelementptr inbounds %struct.Exp, ptr %12, i64 0, i32 4
  store ptr %10, ptr %18, align 8, !tbaa !155
  %19 = getelementptr inbounds %struct.Exp, ptr %12, i64 0, i32 5
  store ptr null, ptr %19, align 8, !tbaa !156
  %20 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  store ptr %21, ptr @donestkptr, align 8, !tbaa !13
  store ptr %12, ptr %20, align 8, !tbaa !13
  br label %64

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %65

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %65

26:                                               ; preds = %1
  %27 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %28 = getelementptr inbounds ptr, ptr %27, i64 -1
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = load ptr, ptr %29, align 8, !tbaa !152
  %31 = getelementptr inbounds %struct.Exp_, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !149
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load ptr, ptr @miptr, align 8, !tbaa !13
  %36 = getelementptr inbounds %struct.method_info, ptr %35, i64 0, i32 18
  %37 = load i32, ptr %36, align 8, !tbaa !158
  %38 = icmp eq i32 %37, 10
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = icmp eq ptr %30, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 2)
  %41 = icmp eq ptr %30, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 3)
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.Exp_, ptr %30, i64 13
  store ptr %44, ptr %29, align 8, !tbaa !152
  %45 = load ptr, ptr @stkptr, align 8, !tbaa !13
  br label %46

46:                                               ; preds = %43, %39, %34, %26
  %47 = phi ptr [ %27, %39 ], [ %45, %43 ], [ %27, %34 ], [ %27, %26 ]
  %48 = getelementptr inbounds ptr, ptr %47, i64 -1
  store ptr %48, ptr @stkptr, align 8, !tbaa !13
  %49 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %50 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !142
  %52 = tail call i32 @llvm.umin.i32(i32 %3, i32 %51)
  %53 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 1
  store i32 1, ptr %53, align 8, !tbaa !140
  %54 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 2
  store i32 %3, ptr %54, align 4, !tbaa !143
  %55 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 3
  store i32 %52, ptr %55, align 8, !tbaa !142
  %56 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %57 unwind label %62

57:                                               ; preds = %46
  store <4 x i32> <i32 0, i32 2, i32 0, i32 16>, ptr %56, align 8, !tbaa !7
  store ptr %56, ptr %49, align 8, !tbaa !152
  %58 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 4
  store ptr %29, ptr %58, align 8, !tbaa !155
  %59 = getelementptr inbounds %struct.Exp, ptr %49, i64 0, i32 5
  store ptr null, ptr %59, align 8, !tbaa !156
  %60 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %61, ptr @donestkptr, align 8, !tbaa !13
  store ptr %49, ptr %60, align 8, !tbaa !13
  br label %64

62:                                               ; preds = %46
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %65

64:                                               ; preds = %57, %17, %6
  ret i32 0

65:                                               ; preds = %62, %24, %22
  %66 = phi ptr [ %10, %22 ], [ %12, %24 ], [ %49, %62 ]
  %67 = phi { ptr, i32 } [ %23, %22 ], [ %25, %24 ], [ %63, %62 ]
  tail call void @_ZdlPv(ptr noundef nonnull %66) #30
  resume { ptr, i32 } %67
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z13dotableswitchP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load i32, ptr @bufflength, align 4, !tbaa !17
  %5 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %6 = and i32 %2, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = trunc i32 %2 to i2
  %10 = xor i2 %9, -1
  %11 = zext i2 %10 to i32
  %12 = add i32 %2, %11
  %13 = zext i2 %10 to i64
  %14 = add nuw nsw i64 %13, 1
  %15 = add i32 %12, 1
  %16 = xor i32 %11, -1
  %17 = add i32 %4, %16
  %18 = getelementptr i8, ptr %5, i64 %14
  store i32 %15, ptr @currpc, align 4, !tbaa !17
  store i32 %17, ptr @bufflength, align 4, !tbaa !17
  store ptr %18, ptr @inbuff, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %8, %1
  %20 = phi ptr [ %18, %8 ], [ %5, %1 ]
  %21 = phi i32 [ %17, %8 ], [ %4, %1 ]
  %22 = phi i32 [ %15, %8 ], [ %2, %1 ]
  %23 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %24 = getelementptr inbounds ptr, ptr %23, i64 -1
  store ptr %24, ptr @stkptr, align 8, !tbaa !13
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = add i32 %22, 4
  store i32 %26, ptr @currpc, align 4, !tbaa !17
  %27 = add nsw i32 %21, -4
  store i32 %27, ptr @bufflength, align 4, !tbaa !17
  %28 = getelementptr inbounds i8, ptr %20, i64 4
  store ptr %28, ptr @inbuff, align 8, !tbaa !13
  %29 = load i8, ptr %20, align 1, !tbaa !7
  %30 = getelementptr inbounds i8, ptr %20, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !7
  %32 = getelementptr inbounds i8, ptr %20, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = getelementptr inbounds i8, ptr %20, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !7
  %36 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %36, ptr @inbuff, align 8, !tbaa !13
  %37 = load i8, ptr %28, align 1, !tbaa !7
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 %38, 24
  %40 = getelementptr inbounds i8, ptr %20, i64 5
  %41 = load i8, ptr %40, align 1, !tbaa !7
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = or i32 %43, %39
  %45 = getelementptr inbounds i8, ptr %20, i64 6
  %46 = load i8, ptr %45, align 1, !tbaa !7
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %44, %48
  %50 = getelementptr inbounds i8, ptr %20, i64 7
  %51 = load i8, ptr %50, align 1, !tbaa !7
  %52 = zext i8 %51 to i32
  %53 = or i32 %49, %52
  %54 = add i32 %22, 12
  store i32 %54, ptr @currpc, align 4, !tbaa !17
  %55 = add nsw i32 %21, -12
  store i32 %55, ptr @bufflength, align 4, !tbaa !17
  %56 = getelementptr inbounds i8, ptr %20, i64 12
  store ptr %56, ptr @inbuff, align 8, !tbaa !13
  %57 = load i8, ptr %36, align 1, !tbaa !7
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 %58, 24
  %60 = getelementptr inbounds i8, ptr %20, i64 9
  %61 = load i8, ptr %60, align 1, !tbaa !7
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 16
  %64 = or i32 %63, %59
  %65 = getelementptr inbounds i8, ptr %20, i64 10
  %66 = load i8, ptr %65, align 1, !tbaa !7
  %67 = zext i8 %66 to i32
  %68 = shl nuw nsw i32 %67, 8
  %69 = or i32 %64, %68
  %70 = getelementptr inbounds i8, ptr %20, i64 11
  %71 = load i8, ptr %70, align 1, !tbaa !7
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = sub i32 %73, %53
  %75 = add i32 %74, 1
  %76 = zext i32 %75 to i64
  %77 = shl nuw nsw i64 %76, 4
  %78 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %77) #29
  %79 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %80 = getelementptr inbounds %struct.Exp, ptr %25, i64 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !142
  %82 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 1
  store i32 1, ptr %82, align 8, !tbaa !140
  %83 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 2
  store i32 %3, ptr %83, align 4, !tbaa !143
  %84 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 3
  store i32 %81, ptr %84, align 8, !tbaa !142
  %85 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %86 unwind label %107

86:                                               ; preds = %19
  %87 = zext i8 %29 to i32
  %88 = shl nuw i32 %87, 24
  %89 = zext i8 %31 to i32
  %90 = shl nuw nsw i32 %89, 16
  %91 = or i32 %90, %88
  %92 = zext i8 %33 to i32
  %93 = shl nuw nsw i32 %92, 8
  %94 = or i32 %91, %93
  %95 = zext i8 %35 to i32
  %96 = or i32 %94, %95
  store <4 x i32> <i32 0, i32 9, i32 0, i32 39>, ptr %85, align 8, !tbaa !7
  store ptr %85, ptr %79, align 8, !tbaa !152
  %97 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 4
  store ptr %25, ptr %97, align 8, !tbaa !155
  %98 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 6
  store i32 %96, ptr %98, align 8, !tbaa !7
  %99 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 7
  store i32 %75, ptr %99, align 8, !tbaa !7
  %100 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 8
  store ptr %78, ptr %100, align 8, !tbaa !7
  %101 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %102 = getelementptr inbounds ptr, ptr %101, i64 1
  store ptr %102, ptr @donestkptr, align 8, !tbaa !13
  store ptr %79, ptr %101, align 8, !tbaa !13
  %103 = icmp ugt i32 %53, %73
  br i1 %103, label %106, label %104

104:                                              ; preds = %86
  %105 = load ptr, ptr @inbuff, align 8, !tbaa !13
  br label %109

106:                                              ; preds = %109, %86
  ret i32 0

107:                                              ; preds = %19
  %108 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %79) #30
  resume { ptr, i32 } %108

109:                                              ; preds = %109, %104
  %110 = phi i32 [ %115, %109 ], [ %53, %104 ]
  %111 = phi ptr [ %137, %109 ], [ %78, %104 ]
  %112 = phi i32 [ %117, %109 ], [ %54, %104 ]
  %113 = phi i32 [ %118, %109 ], [ %55, %104 ]
  %114 = phi ptr [ %119, %109 ], [ %105, %104 ]
  %115 = add i32 %110, 1
  %116 = zext i32 %110 to i64
  store i64 %116, ptr %111, align 8, !tbaa !159
  %117 = add i32 %112, 4
  store i32 %117, ptr @currpc, align 4, !tbaa !17
  %118 = add nsw i32 %113, -4
  store i32 %118, ptr @bufflength, align 4, !tbaa !17
  %119 = getelementptr inbounds i8, ptr %114, i64 4
  store ptr %119, ptr @inbuff, align 8, !tbaa !13
  %120 = load i8, ptr %114, align 1, !tbaa !7
  %121 = zext i8 %120 to i64
  %122 = shl nuw nsw i64 %121, 24
  %123 = getelementptr inbounds i8, ptr %114, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !7
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 16
  %127 = or i64 %126, %122
  %128 = getelementptr inbounds i8, ptr %114, i64 2
  %129 = load i8, ptr %128, align 1, !tbaa !7
  %130 = zext i8 %129 to i64
  %131 = shl nuw nsw i64 %130, 8
  %132 = or i64 %127, %131
  %133 = getelementptr inbounds i8, ptr %114, i64 3
  %134 = load i8, ptr %133, align 1, !tbaa !7
  %135 = zext i8 %134 to i64
  %136 = or i64 %132, %135
  %137 = getelementptr inbounds %struct.Case, ptr %111, i64 1
  %138 = getelementptr inbounds %struct.Case, ptr %111, i64 0, i32 1
  store i64 %136, ptr %138, align 8, !tbaa !161
  %139 = icmp ugt i32 %115, %73
  br i1 %139, label %106, label %109, !llvm.loop !162
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z10doluswitchP9Classfile(ptr nocapture noundef readnone %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = load i32, ptr @bufflength, align 4, !tbaa !17
  %5 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %6 = and i32 %2, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = trunc i32 %2 to i2
  %10 = xor i2 %9, -1
  %11 = zext i2 %10 to i32
  %12 = add i32 %2, %11
  %13 = zext i2 %10 to i64
  %14 = add nuw nsw i64 %13, 1
  %15 = add i32 %12, 1
  %16 = xor i32 %11, -1
  %17 = add i32 %4, %16
  %18 = getelementptr i8, ptr %5, i64 %14
  store i32 %15, ptr @currpc, align 4, !tbaa !17
  store i32 %17, ptr @bufflength, align 4, !tbaa !17
  store ptr %18, ptr @inbuff, align 8, !tbaa !13
  br label %19

19:                                               ; preds = %8, %1
  %20 = phi ptr [ %18, %8 ], [ %5, %1 ]
  %21 = phi i32 [ %17, %8 ], [ %4, %1 ]
  %22 = phi i32 [ %15, %8 ], [ %2, %1 ]
  %23 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %24 = getelementptr inbounds ptr, ptr %23, i64 -1
  store ptr %24, ptr @stkptr, align 8, !tbaa !13
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = add i32 %22, 4
  store i32 %26, ptr @currpc, align 4, !tbaa !17
  %27 = add nsw i32 %21, -4
  store i32 %27, ptr @bufflength, align 4, !tbaa !17
  %28 = getelementptr inbounds i8, ptr %20, i64 4
  store ptr %28, ptr @inbuff, align 8, !tbaa !13
  %29 = load i8, ptr %20, align 1, !tbaa !7
  %30 = getelementptr inbounds i8, ptr %20, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !7
  %32 = getelementptr inbounds i8, ptr %20, i64 2
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = getelementptr inbounds i8, ptr %20, i64 3
  %35 = load i8, ptr %34, align 1, !tbaa !7
  %36 = add i32 %22, 8
  store i32 %36, ptr @currpc, align 4, !tbaa !17
  %37 = add nsw i32 %21, -8
  store i32 %37, ptr @bufflength, align 4, !tbaa !17
  %38 = getelementptr inbounds i8, ptr %20, i64 8
  store ptr %38, ptr @inbuff, align 8, !tbaa !13
  %39 = load i8, ptr %28, align 1, !tbaa !7
  %40 = zext i8 %39 to i32
  %41 = shl nuw i32 %40, 24
  %42 = getelementptr inbounds i8, ptr %20, i64 5
  %43 = load i8, ptr %42, align 1, !tbaa !7
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 16
  %46 = or i32 %45, %41
  %47 = getelementptr inbounds i8, ptr %20, i64 6
  %48 = load i8, ptr %47, align 1, !tbaa !7
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = or i32 %46, %50
  %52 = getelementptr inbounds i8, ptr %20, i64 7
  %53 = load i8, ptr %52, align 1, !tbaa !7
  %54 = zext i8 %53 to i32
  %55 = or i32 %51, %54
  %56 = zext i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 4
  %58 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %57) #29
  %59 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %60 = getelementptr inbounds %struct.Exp, ptr %25, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !142
  %62 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 1
  store i32 1, ptr %62, align 8, !tbaa !140
  %63 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 2
  store i32 %3, ptr %63, align 4, !tbaa !143
  %64 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 3
  store i32 %61, ptr %64, align 8, !tbaa !142
  %65 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %66 unwind label %87

66:                                               ; preds = %19
  %67 = zext i8 %29 to i32
  %68 = shl nuw i32 %67, 24
  %69 = zext i8 %31 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = or i32 %70, %68
  %72 = zext i8 %33 to i32
  %73 = shl nuw nsw i32 %72, 8
  %74 = or i32 %71, %73
  %75 = zext i8 %35 to i32
  %76 = or i32 %74, %75
  store <4 x i32> <i32 0, i32 9, i32 0, i32 39>, ptr %65, align 8, !tbaa !7
  store ptr %65, ptr %59, align 8, !tbaa !152
  %77 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 4
  store ptr %25, ptr %77, align 8, !tbaa !155
  %78 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 6
  store i32 %76, ptr %78, align 8, !tbaa !7
  %79 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 7
  store i32 %55, ptr %79, align 8, !tbaa !7
  %80 = getelementptr inbounds %struct.Exp, ptr %59, i64 0, i32 8
  store ptr %58, ptr %80, align 8, !tbaa !7
  %81 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  store ptr %82, ptr @donestkptr, align 8, !tbaa !13
  store ptr %59, ptr %81, align 8, !tbaa !13
  %83 = icmp eq i32 %55, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %66
  %85 = load ptr, ptr @inbuff, align 8, !tbaa !13
  br label %89

86:                                               ; preds = %89, %66
  ret i32 0

87:                                               ; preds = %19
  %88 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %59) #30
  resume { ptr, i32 } %88

89:                                               ; preds = %89, %84
  %90 = phi i32 [ %95, %89 ], [ %55, %84 ]
  %91 = phi ptr [ %136, %89 ], [ %58, %84 ]
  %92 = phi i32 [ %116, %89 ], [ %36, %84 ]
  %93 = phi i32 [ %117, %89 ], [ %37, %84 ]
  %94 = phi ptr [ %118, %89 ], [ %85, %84 ]
  %95 = add i32 %90, -1
  %96 = add i32 %92, 4
  store i32 %96, ptr @currpc, align 4, !tbaa !17
  %97 = add nsw i32 %93, -4
  store i32 %97, ptr @bufflength, align 4, !tbaa !17
  %98 = getelementptr inbounds i8, ptr %94, i64 4
  store ptr %98, ptr @inbuff, align 8, !tbaa !13
  %99 = load i8, ptr %94, align 1, !tbaa !7
  %100 = zext i8 %99 to i64
  %101 = shl nuw nsw i64 %100, 24
  %102 = getelementptr inbounds i8, ptr %94, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !7
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 16
  %106 = or i64 %105, %101
  %107 = getelementptr inbounds i8, ptr %94, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !7
  %109 = zext i8 %108 to i64
  %110 = shl nuw nsw i64 %109, 8
  %111 = or i64 %106, %110
  %112 = getelementptr inbounds i8, ptr %94, i64 3
  %113 = load i8, ptr %112, align 1, !tbaa !7
  %114 = zext i8 %113 to i64
  %115 = or i64 %111, %114
  store i64 %115, ptr %91, align 8, !tbaa !159
  %116 = add i32 %92, 8
  store i32 %116, ptr @currpc, align 4, !tbaa !17
  %117 = add nsw i32 %93, -8
  store i32 %117, ptr @bufflength, align 4, !tbaa !17
  %118 = getelementptr inbounds i8, ptr %94, i64 8
  store ptr %118, ptr @inbuff, align 8, !tbaa !13
  %119 = load i8, ptr %98, align 1, !tbaa !7
  %120 = zext i8 %119 to i64
  %121 = shl nuw nsw i64 %120, 24
  %122 = getelementptr inbounds i8, ptr %94, i64 5
  %123 = load i8, ptr %122, align 1, !tbaa !7
  %124 = zext i8 %123 to i64
  %125 = shl nuw nsw i64 %124, 16
  %126 = or i64 %125, %121
  %127 = getelementptr inbounds i8, ptr %94, i64 6
  %128 = load i8, ptr %127, align 1, !tbaa !7
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i64 %129, 8
  %131 = or i64 %126, %130
  %132 = getelementptr inbounds i8, ptr %94, i64 7
  %133 = load i8, ptr %132, align 1, !tbaa !7
  %134 = zext i8 %133 to i64
  %135 = or i64 %131, %134
  %136 = getelementptr inbounds %struct.Case, ptr %91, i64 1
  %137 = getelementptr inbounds %struct.Case, ptr %91, i64 0, i32 1
  store i64 %135, ptr %137, align 8, !tbaa !161
  %138 = icmp eq i32 %95, 0
  br i1 %138, label %86, label %89, !llvm.loop !163
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z5dogetP9Classfile(ptr nocapture noundef readonly %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = add i32 %2, 2
  store i32 %4, ptr @currpc, align 4, !tbaa !17
  %5 = load i32, ptr @bufflength, align 4, !tbaa !17
  %6 = add nsw i32 %5, -2
  store i32 %6, ptr @bufflength, align 4, !tbaa !17
  %7 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %8, ptr @inbuff, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = zext i8 %13 to i16
  %15 = or i16 %11, %14
  %16 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = zext i16 %15 to i64
  %19 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %18, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds %struct.ClassVersion, ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !132
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %23, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = load i16, ptr %25, align 2, !tbaa !133
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %27, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %31 = getelementptr inbounds %struct.ClassVersion, ptr %25, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !70
  %33 = zext i16 %32 to i64
  %34 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %33, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  %36 = invoke noundef i32 @_Z8sig2typePc(ptr noundef %35) #28
          to label %37 unwind label %71

37:                                               ; preds = %1
  %38 = sext i16 %15 to i32
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %30, i32 noundef %3, ptr noundef %29, i32 noundef %36, i32 noundef 2, i32 noundef %38) #28
          to label %39 unwind label %71

39:                                               ; preds = %37
  %40 = load i32, ptr @ch, align 4, !tbaa !17
  %41 = icmp eq i32 %40, 178
  br i1 %41, label %42, label %81

42:                                               ; preds = %39
  %43 = load i16, ptr %20, align 2, !tbaa !130
  %44 = load ptr, ptr %16, align 8, !tbaa !46
  %45 = zext i16 %43 to i64
  %46 = getelementptr inbounds %struct.cp_info, ptr %44, i64 %45, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !7
  %48 = getelementptr inbounds %struct.cp_info, ptr %44, i64 %47, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !7
  %50 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !57
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) %51) #26
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %42
  %55 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %55, i32 noundef %3, ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
          to label %56 unwind label %73

56:                                               ; preds = %54
  %57 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %58 = load ptr, ptr %30, align 8, !tbaa !152
  %59 = getelementptr inbounds %struct.Exp_, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 8, !tbaa !149
  %61 = getelementptr inbounds %struct.Exp, ptr %57, i64 0, i32 1
  store i32 1, ptr %61, align 8, !tbaa !140
  %62 = getelementptr inbounds %struct.Exp, ptr %57, i64 0, i32 3
  store i32 %3, ptr %62, align 8, !tbaa !142
  %63 = getelementptr inbounds %struct.Exp, ptr %57, i64 0, i32 2
  store i32 %3, ptr %63, align 4, !tbaa !143
  %64 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %65 unwind label %75

65:                                               ; preds = %56
  store i32 0, ptr %64, align 8, !tbaa !144
  %66 = getelementptr inbounds %struct.Exp_, ptr %64, i64 0, i32 1
  store i32 4, ptr %66, align 4, !tbaa !148
  %67 = getelementptr inbounds %struct.Exp_, ptr %64, i64 0, i32 2
  store i32 %60, ptr %67, align 8, !tbaa !149
  %68 = getelementptr inbounds %struct.Exp_, ptr %64, i64 0, i32 3
  store i32 5, ptr %68, align 4, !tbaa !150
  store ptr %64, ptr %57, align 8, !tbaa !152
  %69 = getelementptr inbounds %struct.Exp, ptr %57, i64 0, i32 4
  store ptr %55, ptr %69, align 8, !tbaa !155
  %70 = getelementptr inbounds %struct.Exp, ptr %57, i64 0, i32 5
  store ptr %30, ptr %70, align 8, !tbaa !156
  store i32 0, ptr %59, align 8, !tbaa !149
  br label %77

71:                                               ; preds = %37, %1
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %124

73:                                               ; preds = %54
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %124

75:                                               ; preds = %56
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %124

77:                                               ; preds = %65, %42
  %78 = phi ptr [ %57, %65 ], [ %30, %42 ]
  %79 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %80 = getelementptr inbounds ptr, ptr %79, i64 1
  store ptr %80, ptr @stkptr, align 8, !tbaa !13
  store ptr %78, ptr %79, align 8, !tbaa !13
  br label %123

81:                                               ; preds = %39
  %82 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %83 = getelementptr inbounds ptr, ptr %82, i64 -1
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = load ptr, ptr %84, align 8, !tbaa !152
  %86 = getelementptr inbounds %struct.Exp_, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !148
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %100

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.Exp_, ptr %85, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !151
  %92 = load ptr, ptr %91, align 8, !tbaa !134
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(5) @.str.78) #26
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.Exp, ptr %84, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !142
  %98 = tail call i32 @llvm.umin.i32(i32 %3, i32 %97)
  %99 = getelementptr inbounds %struct.Exp, ptr %30, i64 0, i32 3
  store i32 %98, ptr %99, align 8, !tbaa !142
  store ptr %30, ptr %83, align 8, !tbaa !13
  br label %123

100:                                              ; preds = %89, %81
  %101 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %102 = load ptr, ptr %83, align 8, !tbaa !13
  %103 = getelementptr inbounds %struct.Exp, ptr %102, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !142
  %105 = tail call i32 @llvm.umin.i32(i32 %3, i32 %104)
  %106 = load ptr, ptr %30, align 8, !tbaa !152
  %107 = getelementptr inbounds %struct.Exp_, ptr %106, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !149
  %109 = getelementptr inbounds %struct.Exp, ptr %101, i64 0, i32 1
  store i32 1, ptr %109, align 8, !tbaa !140
  %110 = getelementptr inbounds %struct.Exp, ptr %101, i64 0, i32 2
  store i32 %3, ptr %110, align 4, !tbaa !143
  %111 = getelementptr inbounds %struct.Exp, ptr %101, i64 0, i32 3
  store i32 %105, ptr %111, align 8, !tbaa !142
  %112 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %113 unwind label %121

113:                                              ; preds = %100
  store i32 0, ptr %112, align 8, !tbaa !144
  %114 = getelementptr inbounds %struct.Exp_, ptr %112, i64 0, i32 1
  store i32 4, ptr %114, align 4, !tbaa !148
  %115 = getelementptr inbounds %struct.Exp_, ptr %112, i64 0, i32 2
  store i32 %108, ptr %115, align 8, !tbaa !149
  %116 = getelementptr inbounds %struct.Exp_, ptr %112, i64 0, i32 3
  store i32 5, ptr %116, align 4, !tbaa !150
  store ptr %112, ptr %101, align 8, !tbaa !152
  %117 = getelementptr inbounds %struct.Exp, ptr %101, i64 0, i32 4
  store ptr %102, ptr %117, align 8, !tbaa !155
  %118 = getelementptr inbounds %struct.Exp, ptr %101, i64 0, i32 5
  store ptr %30, ptr %118, align 8, !tbaa !156
  store ptr %101, ptr %83, align 8, !tbaa !13
  %119 = load ptr, ptr %30, align 8, !tbaa !152
  %120 = getelementptr inbounds %struct.Exp_, ptr %119, i64 0, i32 2
  store i32 0, ptr %120, align 8, !tbaa !149
  br label %123

121:                                              ; preds = %100
  %122 = landingpad { ptr, i32 }
          cleanup
  br label %124

123:                                              ; preds = %113, %95, %77
  ret i32 0

124:                                              ; preds = %121, %75, %73, %71
  %125 = phi ptr [ %55, %73 ], [ %57, %75 ], [ %101, %121 ], [ %30, %71 ]
  %126 = phi { ptr, i32 } [ %74, %73 ], [ %76, %75 ], [ %122, %121 ], [ %72, %71 ]
  tail call void @_ZdlPv(ptr noundef nonnull %125) #30
  resume { ptr, i32 } %126
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z5doputP9Classfile(ptr nocapture noundef readonly %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = add i32 %2, 2
  store i32 %4, ptr @currpc, align 4, !tbaa !17
  %5 = load i32, ptr @bufflength, align 4, !tbaa !17
  %6 = add nsw i32 %5, -2
  store i32 %6, ptr @bufflength, align 4, !tbaa !17
  %7 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %8, ptr @inbuff, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = zext i8 %9 to i64
  %11 = shl nuw nsw i64 %10, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = zext i8 %13 to i64
  %15 = or i64 %11, %14
  %16 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %15, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.ClassVersion, ptr %19, i64 0, i32 1
  %21 = load i16, ptr %20, align 2, !tbaa !132
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %22, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = load i16, ptr %24, align 2, !tbaa !133
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %26, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %30 = getelementptr inbounds %struct.ClassVersion, ptr %24, i64 0, i32 1
  %31 = load i16, ptr %30, align 2, !tbaa !70
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds %struct.cp_info, ptr %17, i64 %32, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = invoke noundef i32 @_Z8sig2typePc(ptr noundef %34) #28
          to label %36 unwind label %69

36:                                               ; preds = %1
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %29, i32 noundef %3, ptr noundef %28, i32 noundef %35, i32 noundef 0, i32 noundef 0) #28
          to label %37 unwind label %69

37:                                               ; preds = %36
  %38 = load i32, ptr @ch, align 4, !tbaa !17
  %39 = icmp eq i32 %38, 179
  br i1 %39, label %40, label %117

40:                                               ; preds = %37
  %41 = load i16, ptr %19, align 2, !tbaa !130
  %42 = load ptr, ptr %16, align 8, !tbaa !46
  %43 = zext i16 %41 to i64
  %44 = getelementptr inbounds %struct.cp_info, ptr %42, i64 %43, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !7
  %46 = getelementptr inbounds %struct.cp_info, ptr %42, i64 %45, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %49) #26
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %75, label %52

52:                                               ; preds = %40
  %53 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %53, i32 noundef %3, ptr noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
          to label %54 unwind label %71

54:                                               ; preds = %52
  %55 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %56 = load ptr, ptr %29, align 8, !tbaa !152
  %57 = getelementptr inbounds %struct.Exp_, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 8, !tbaa !149
  %59 = getelementptr inbounds %struct.Exp, ptr %55, i64 0, i32 1
  store i32 1, ptr %59, align 8, !tbaa !140
  %60 = getelementptr inbounds %struct.Exp, ptr %55, i64 0, i32 3
  store i32 %3, ptr %60, align 8, !tbaa !142
  %61 = getelementptr inbounds %struct.Exp, ptr %55, i64 0, i32 2
  store i32 %3, ptr %61, align 4, !tbaa !143
  %62 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %63 unwind label %73

63:                                               ; preds = %54
  store i32 0, ptr %62, align 8, !tbaa !144
  %64 = getelementptr inbounds %struct.Exp_, ptr %62, i64 0, i32 1
  store i32 4, ptr %64, align 4, !tbaa !148
  %65 = getelementptr inbounds %struct.Exp_, ptr %62, i64 0, i32 2
  store i32 %58, ptr %65, align 8, !tbaa !149
  %66 = getelementptr inbounds %struct.Exp_, ptr %62, i64 0, i32 3
  store i32 5, ptr %66, align 4, !tbaa !150
  store ptr %62, ptr %55, align 8, !tbaa !152
  %67 = getelementptr inbounds %struct.Exp, ptr %55, i64 0, i32 4
  store ptr %53, ptr %67, align 8, !tbaa !155
  %68 = getelementptr inbounds %struct.Exp, ptr %55, i64 0, i32 5
  store ptr %29, ptr %68, align 8, !tbaa !156
  store i32 0, ptr %57, align 8, !tbaa !149
  br label %75

69:                                               ; preds = %36, %1
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %234

71:                                               ; preds = %52
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %234

73:                                               ; preds = %54
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %234

75:                                               ; preds = %63, %40
  %76 = phi ptr [ %55, %63 ], [ %29, %40 ]
  %77 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %78 = getelementptr inbounds ptr, ptr %77, i64 -1
  store ptr %78, ptr @stkptr, align 8, !tbaa !13
  %79 = load ptr, ptr %78, align 8, !tbaa !13
  %80 = load ptr, ptr %79, align 8, !tbaa !152
  %81 = getelementptr inbounds %struct.Exp_, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 8, !tbaa !149
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = load ptr, ptr %76, align 8, !tbaa !152
  %86 = getelementptr inbounds %struct.Exp_, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !149
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = icmp eq ptr %80, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 2)
  %91 = icmp eq ptr %80, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 3)
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.Exp_, ptr %80, i64 13
  store ptr %94, ptr %79, align 8, !tbaa !152
  br label %95

95:                                               ; preds = %93, %89, %84, %75
  %96 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %97 = getelementptr inbounds %struct.Exp, ptr %79, i64 0, i32 3
  %98 = load i32, ptr %97, align 8, !tbaa !142
  %99 = tail call i32 @llvm.umin.i32(i32 %3, i32 %98)
  %100 = load ptr, ptr %76, align 8, !tbaa !152
  %101 = getelementptr inbounds %struct.Exp_, ptr %100, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !149
  %103 = getelementptr inbounds %struct.Exp, ptr %96, i64 0, i32 1
  store i32 1, ptr %103, align 8, !tbaa !140
  %104 = getelementptr inbounds %struct.Exp, ptr %96, i64 0, i32 2
  store i32 %3, ptr %104, align 4, !tbaa !143
  %105 = getelementptr inbounds %struct.Exp, ptr %96, i64 0, i32 3
  store i32 %99, ptr %105, align 8, !tbaa !142
  %106 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %107 unwind label %115

107:                                              ; preds = %95
  store i32 0, ptr %106, align 8, !tbaa !144
  %108 = getelementptr inbounds %struct.Exp_, ptr %106, i64 0, i32 1
  store i32 4, ptr %108, align 4, !tbaa !148
  %109 = getelementptr inbounds %struct.Exp_, ptr %106, i64 0, i32 2
  store i32 %102, ptr %109, align 8, !tbaa !149
  %110 = getelementptr inbounds %struct.Exp_, ptr %106, i64 0, i32 3
  store i32 6, ptr %110, align 4, !tbaa !150
  store ptr %106, ptr %96, align 8, !tbaa !152
  %111 = getelementptr inbounds %struct.Exp, ptr %96, i64 0, i32 4
  store ptr %76, ptr %111, align 8, !tbaa !155
  %112 = getelementptr inbounds %struct.Exp, ptr %96, i64 0, i32 5
  store ptr %79, ptr %112, align 8, !tbaa !156
  %113 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %114 = getelementptr inbounds ptr, ptr %113, i64 1
  store ptr %114, ptr @donestkptr, align 8, !tbaa !13
  store ptr %96, ptr %113, align 8, !tbaa !13
  br label %233

115:                                              ; preds = %95
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %234

117:                                              ; preds = %37
  %118 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %119 = getelementptr inbounds ptr, ptr %118, i64 -2
  %120 = load ptr, ptr %119, align 8, !tbaa !13
  %121 = load ptr, ptr %120, align 8, !tbaa !152
  %122 = getelementptr inbounds %struct.Exp_, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !148
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %175

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.Exp_, ptr %121, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !151
  %128 = load ptr, ptr %127, align 8, !tbaa !134
  %129 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %128, ptr noundef nonnull dereferenceable(5) @.str.78) #26
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %175

131:                                              ; preds = %125
  %132 = getelementptr inbounds ptr, ptr %118, i64 -1
  store ptr %132, ptr @stkptr, align 8, !tbaa !13
  %133 = load ptr, ptr %132, align 8, !tbaa !13
  %134 = load ptr, ptr %133, align 8, !tbaa !152
  %135 = getelementptr inbounds %struct.Exp_, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !149
  %137 = icmp eq i32 %136, 4
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load ptr, ptr %29, align 8, !tbaa !152
  %140 = getelementptr inbounds %struct.Exp_, ptr %139, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !149
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %143, label %150

143:                                              ; preds = %138
  %144 = icmp eq ptr %134, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 2)
  %145 = icmp eq ptr %134, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 3)
  %146 = select i1 %144, i1 true, i1 %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.Exp_, ptr %134, i64 13
  store ptr %148, ptr %133, align 8, !tbaa !152
  %149 = load ptr, ptr @stkptr, align 8, !tbaa !13
  br label %150

150:                                              ; preds = %147, %143, %138, %131
  %151 = phi ptr [ %132, %143 ], [ %149, %147 ], [ %132, %138 ], [ %132, %131 ]
  %152 = getelementptr inbounds ptr, ptr %151, i64 -1
  store ptr %152, ptr @stkptr, align 8, !tbaa !13
  %153 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %154 = load ptr, ptr %152, align 8, !tbaa !13
  %155 = getelementptr inbounds %struct.Exp, ptr %154, i64 0, i32 3
  %156 = load i32, ptr %155, align 8, !tbaa !142
  %157 = tail call i32 @llvm.umin.i32(i32 %3, i32 %156)
  %158 = load ptr, ptr %29, align 8, !tbaa !152
  %159 = getelementptr inbounds %struct.Exp_, ptr %158, i64 0, i32 2
  %160 = load i32, ptr %159, align 8, !tbaa !149
  %161 = getelementptr inbounds %struct.Exp, ptr %153, i64 0, i32 1
  store i32 1, ptr %161, align 8, !tbaa !140
  %162 = getelementptr inbounds %struct.Exp, ptr %153, i64 0, i32 2
  store i32 %3, ptr %162, align 4, !tbaa !143
  %163 = getelementptr inbounds %struct.Exp, ptr %153, i64 0, i32 3
  store i32 %157, ptr %163, align 8, !tbaa !142
  %164 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %165 unwind label %173

165:                                              ; preds = %150
  store i32 0, ptr %164, align 8, !tbaa !144
  %166 = getelementptr inbounds %struct.Exp_, ptr %164, i64 0, i32 1
  store i32 4, ptr %166, align 4, !tbaa !148
  %167 = getelementptr inbounds %struct.Exp_, ptr %164, i64 0, i32 2
  store i32 %160, ptr %167, align 8, !tbaa !149
  %168 = getelementptr inbounds %struct.Exp_, ptr %164, i64 0, i32 3
  store i32 6, ptr %168, align 4, !tbaa !150
  store ptr %164, ptr %153, align 8, !tbaa !152
  %169 = getelementptr inbounds %struct.Exp, ptr %153, i64 0, i32 4
  store ptr %29, ptr %169, align 8, !tbaa !155
  %170 = getelementptr inbounds %struct.Exp, ptr %153, i64 0, i32 5
  store ptr %133, ptr %170, align 8, !tbaa !156
  %171 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %172 = getelementptr inbounds ptr, ptr %171, i64 1
  store ptr %172, ptr @donestkptr, align 8, !tbaa !13
  store ptr %153, ptr %171, align 8, !tbaa !13
  br label %233

173:                                              ; preds = %150
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %234

175:                                              ; preds = %125, %117
  %176 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %177 = getelementptr inbounds ptr, ptr %118, i64 -1
  %178 = load ptr, ptr %177, align 8, !tbaa !13
  %179 = getelementptr inbounds %struct.Exp, ptr %178, i64 0, i32 3
  %180 = load i32, ptr %179, align 8, !tbaa !142
  %181 = tail call i32 @llvm.umin.i32(i32 %180, i32 %3)
  %182 = load ptr, ptr %29, align 8, !tbaa !152
  %183 = getelementptr inbounds %struct.Exp_, ptr %182, i64 0, i32 2
  %184 = load i32, ptr %183, align 8, !tbaa !149
  %185 = getelementptr inbounds %struct.Exp, ptr %176, i64 0, i32 1
  store i32 1, ptr %185, align 8, !tbaa !140
  %186 = getelementptr inbounds %struct.Exp, ptr %176, i64 0, i32 2
  store i32 %3, ptr %186, align 4, !tbaa !143
  %187 = getelementptr inbounds %struct.Exp, ptr %176, i64 0, i32 3
  store i32 %181, ptr %187, align 8, !tbaa !142
  %188 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %189 unwind label %209

189:                                              ; preds = %175
  store i32 0, ptr %188, align 8, !tbaa !144
  %190 = getelementptr inbounds %struct.Exp_, ptr %188, i64 0, i32 1
  store i32 4, ptr %190, align 4, !tbaa !148
  %191 = getelementptr inbounds %struct.Exp_, ptr %188, i64 0, i32 2
  store i32 %184, ptr %191, align 8, !tbaa !149
  %192 = getelementptr inbounds %struct.Exp_, ptr %188, i64 0, i32 3
  store i32 5, ptr %192, align 4, !tbaa !150
  store ptr %188, ptr %176, align 8, !tbaa !152
  %193 = getelementptr inbounds %struct.Exp, ptr %176, i64 0, i32 4
  store ptr %120, ptr %193, align 8, !tbaa !155
  %194 = getelementptr inbounds %struct.Exp, ptr %176, i64 0, i32 5
  store ptr %29, ptr %194, align 8, !tbaa !156
  store i32 0, ptr %183, align 8, !tbaa !149
  store ptr %177, ptr @stkptr, align 8, !tbaa !13
  %195 = load ptr, ptr %177, align 8, !tbaa !13
  %196 = load ptr, ptr %195, align 8, !tbaa !152
  %197 = getelementptr inbounds %struct.Exp_, ptr %196, i64 0, i32 2
  %198 = load i32, ptr %197, align 8, !tbaa !149
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %211

200:                                              ; preds = %189
  %201 = load i32, ptr %191, align 8, !tbaa !149
  %202 = icmp eq i32 %201, 10
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = icmp eq ptr %196, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 2)
  %205 = icmp eq ptr %196, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 3)
  %206 = select i1 %204, i1 true, i1 %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.Exp_, ptr %196, i64 13
  store ptr %208, ptr %195, align 8, !tbaa !152
  br label %211

209:                                              ; preds = %175
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %234

211:                                              ; preds = %207, %203, %200, %189
  %212 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %213 = getelementptr inbounds %struct.Exp, ptr %195, i64 0, i32 3
  %214 = load i32, ptr %213, align 8, !tbaa !142
  %215 = tail call i32 @llvm.umin.i32(i32 %214, i32 %181)
  %216 = load ptr, ptr %176, align 8, !tbaa !152
  %217 = getelementptr inbounds %struct.Exp_, ptr %216, i64 0, i32 2
  %218 = load i32, ptr %217, align 8, !tbaa !149
  %219 = getelementptr inbounds %struct.Exp, ptr %212, i64 0, i32 1
  store i32 1, ptr %219, align 8, !tbaa !140
  %220 = getelementptr inbounds %struct.Exp, ptr %212, i64 0, i32 2
  store i32 %3, ptr %220, align 4, !tbaa !143
  %221 = getelementptr inbounds %struct.Exp, ptr %212, i64 0, i32 3
  store i32 %215, ptr %221, align 8, !tbaa !142
  %222 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %223 unwind label %231

223:                                              ; preds = %211
  store i32 0, ptr %222, align 8, !tbaa !144
  %224 = getelementptr inbounds %struct.Exp_, ptr %222, i64 0, i32 1
  store i32 4, ptr %224, align 4, !tbaa !148
  %225 = getelementptr inbounds %struct.Exp_, ptr %222, i64 0, i32 2
  store i32 %218, ptr %225, align 8, !tbaa !149
  %226 = getelementptr inbounds %struct.Exp_, ptr %222, i64 0, i32 3
  store i32 6, ptr %226, align 4, !tbaa !150
  store ptr %222, ptr %212, align 8, !tbaa !152
  %227 = getelementptr inbounds %struct.Exp, ptr %212, i64 0, i32 4
  store ptr %176, ptr %227, align 8, !tbaa !155
  %228 = getelementptr inbounds %struct.Exp, ptr %212, i64 0, i32 5
  store ptr %195, ptr %228, align 8, !tbaa !156
  %229 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %230 = getelementptr inbounds ptr, ptr %229, i64 1
  store ptr %230, ptr @donestkptr, align 8, !tbaa !13
  store ptr %212, ptr %229, align 8, !tbaa !13
  br label %233

231:                                              ; preds = %211
  %232 = landingpad { ptr, i32 }
          cleanup
  br label %234

233:                                              ; preds = %223, %165, %107
  ret i32 0

234:                                              ; preds = %231, %209, %173, %115, %73, %71, %69
  %235 = phi ptr [ %153, %173 ], [ %212, %231 ], [ %176, %209 ], [ %96, %115 ], [ %55, %73 ], [ %53, %71 ], [ %29, %69 ]
  %236 = phi { ptr, i32 } [ %174, %173 ], [ %232, %231 ], [ %210, %209 ], [ %116, %115 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ]
  tail call void @_ZdlPv(ptr noundef nonnull %235) #30
  resume { ptr, i32 } %236
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z10invokefuncP9Classfile(ptr nocapture noundef readonly %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = alloca [256 x i32], align 16
  %3 = load i32, ptr @currpc, align 4, !tbaa !17
  %4 = add i32 %3, -1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #33
  %5 = add i32 %3, 2
  store i32 %5, ptr @currpc, align 4, !tbaa !17
  %6 = load i32, ptr @bufflength, align 4, !tbaa !17
  %7 = add nsw i32 %6, -2
  store i32 %7, ptr @bufflength, align 4, !tbaa !17
  %8 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %9 = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %9, ptr @inbuff, align 8, !tbaa !13
  %10 = load i8, ptr %8, align 1, !tbaa !7
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 8
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !7
  %15 = zext i8 %14 to i64
  %16 = or i64 %12, %15
  %17 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.cp_info, ptr %18, i64 %16, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds %struct.ClassVersion, ptr %20, i64 0, i32 1
  %22 = load i16, ptr %21, align 2, !tbaa !132
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds %struct.cp_info, ptr %18, i64 %23, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = load i16, ptr %20, align 2, !tbaa !130
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds %struct.cp_info, ptr %18, i64 %27, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !7
  %30 = getelementptr inbounds %struct.cp_info, ptr %18, i64 %29, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = getelementptr inbounds %struct.ClassVersion, ptr %25, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !70
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.cp_info, ptr %18, i64 %34, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = load i16, ptr %25, align 2, !tbaa !133
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds %struct.cp_info, ptr %18, i64 %38, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #26
  %42 = add i64 %41, -2
  %43 = icmp ugt i64 %42, 2305843009213693951
  %44 = shl i64 %42, 3
  %45 = select i1 %43, i64 -1, i64 %44
  %46 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %45) #29
  %47 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %47, i32 noundef %4, ptr noundef %40, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
          to label %48 unwind label %69

48:                                               ; preds = %1
  %49 = getelementptr inbounds i8, ptr %36, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !7
  %51 = icmp eq i8 %50, 41
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %36, i64 2
  %54 = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %53) #28
  br label %122

55:                                               ; preds = %76, %48
  %56 = phi ptr [ %78, %76 ], [ %49, %48 ]
  %57 = phi ptr [ %77, %76 ], [ %36, %48 ]
  %58 = phi i32 [ %60, %76 ], [ 0, %48 ]
  %59 = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %56) #28
  %60 = add i32 %58, 1
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %61
  store i32 %59, ptr %62, align 4, !tbaa !154
  %63 = load i8, ptr %56, align 1, !tbaa !7
  %64 = icmp eq i8 %63, 91
  %65 = getelementptr inbounds i8, ptr %57, i64 2
  %66 = select i1 %64, ptr %65, ptr %56
  %67 = load i8, ptr %66, align 1, !tbaa !7
  %68 = icmp eq i8 %67, 76
  br i1 %68, label %71, label %76

69:                                               ; preds = %1
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %383

71:                                               ; preds = %71, %55
  %72 = phi ptr [ %73, %71 ], [ %66, %55 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !7
  %75 = icmp eq i8 %74, 59
  br i1 %75, label %76, label %71, !llvm.loop !164

76:                                               ; preds = %71, %55
  %77 = phi ptr [ %66, %55 ], [ %73, %71 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !7
  %80 = icmp eq i8 %79, 41
  br i1 %80, label %81, label %55, !llvm.loop !165

81:                                               ; preds = %76
  %.lcssa1 = phi ptr [ %77, %76 ]
  %.lcssa = phi i32 [ %60, %76 ]
  %82 = getelementptr inbounds i8, ptr %.lcssa1, i64 2
  %83 = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %82) #28
  %84 = icmp eq i32 %.lcssa, 0
  br i1 %84, label %122, label %85

85:                                               ; preds = %81
  %86 = sext i32 %.lcssa to i64
  %87 = load ptr, ptr @stkptr, align 8, !tbaa !13
  br label %88

88:                                               ; preds = %112, %85
  %89 = phi ptr [ %87, %85 ], [ %114, %112 ]
  %90 = phi i64 [ %86, %85 ], [ %93, %112 ]
  %91 = phi i32 [ %4, %85 ], [ %119, %112 ]
  %92 = phi ptr [ %46, %85 ], [ %115, %112 ]
  %93 = add nsw i64 %90, -1
  %94 = getelementptr inbounds ptr, ptr %89, i64 -1
  store ptr %94, ptr @stkptr, align 8, !tbaa !13
  %95 = load ptr, ptr %94, align 8, !tbaa !13
  %96 = load ptr, ptr %95, align 8, !tbaa !152
  %97 = getelementptr inbounds %struct.Exp_, ptr %96, i64 0, i32 2
  %98 = load i32, ptr %97, align 8, !tbaa !149
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %112

100:                                              ; preds = %88
  %101 = getelementptr inbounds [256 x i32], ptr %2, i64 0, i64 %93
  %102 = load i32, ptr %101, align 4, !tbaa !154
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = icmp eq ptr %96, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 2)
  %106 = icmp eq ptr %96, getelementptr inbounds ([0 x %struct.Exp_], ptr @std_exps, i64 0, i64 3)
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.Exp_, ptr %96, i64 13
  store ptr %109, ptr %95, align 8, !tbaa !152
  %110 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %111 = load ptr, ptr %110, align 8, !tbaa !13
  br label %112

112:                                              ; preds = %108, %104, %100, %88
  %113 = phi ptr [ %95, %104 ], [ %111, %108 ], [ %95, %100 ], [ %95, %88 ]
  %114 = phi ptr [ %94, %104 ], [ %110, %108 ], [ %94, %100 ], [ %94, %88 ]
  %115 = getelementptr inbounds ptr, ptr %92, i64 1
  store ptr %113, ptr %92, align 8, !tbaa !13
  %116 = load ptr, ptr %114, align 8, !tbaa !13
  %117 = getelementptr inbounds %struct.Exp, ptr %116, i64 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !142
  %119 = tail call i32 @llvm.umin.i32(i32 %91, i32 %118)
  %120 = and i64 %93, 4294967295
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %88, !llvm.loop !166

122:                                              ; preds = %112, %81, %52
  %123 = phi i32 [ %83, %81 ], [ %54, %52 ], [ %83, %112 ]
  %124 = phi i32 [ 0, %81 ], [ 0, %52 ], [ %.lcssa, %112 ]
  %125 = phi i32 [ %4, %81 ], [ %4, %52 ], [ %119, %112 ]
  %126 = load i32, ptr @ch, align 4, !tbaa !17
  switch i32 %126, label %145 [
    i32 185, label %127
    i32 184, label %319
  ]

127:                                              ; preds = %122
  %128 = load i32, ptr @currpc, align 4, !tbaa !17
  %129 = add i32 %128, 1
  store i32 %129, ptr @currpc, align 4, !tbaa !17
  %130 = load i32, ptr @bufflength, align 4, !tbaa !17
  %131 = add nsw i32 %130, -1
  store i32 %131, ptr @bufflength, align 4, !tbaa !17
  %132 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %133 = getelementptr inbounds i8, ptr %132, i64 1
  store ptr %133, ptr @inbuff, align 8, !tbaa !13
  %134 = load i8, ptr %132, align 1, !tbaa !7
  %135 = zext i8 %134 to i32
  %136 = add nsw i32 %135, -1
  %137 = icmp eq i32 %124, %136
  br i1 %137, label %141, label %138

138:                                              ; preds = %127
  %139 = load ptr, ptr @stderr, align 8, !tbaa !13
  %140 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 60, i64 1, ptr %139) #31
  br label %381

141:                                              ; preds = %127
  %142 = add i32 %128, 2
  store i32 %142, ptr @currpc, align 4, !tbaa !17
  %143 = add nsw i32 %130, -2
  store i32 %143, ptr @bufflength, align 4, !tbaa !17
  %144 = getelementptr inbounds i8, ptr %132, i64 2
  store ptr %144, ptr @inbuff, align 8, !tbaa !13
  br label %145

145:                                              ; preds = %141, %122
  %146 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %147 = getelementptr inbounds ptr, ptr %146, i64 -1
  %148 = load ptr, ptr %147, align 8, !tbaa !13
  %149 = load ptr, ptr %148, align 8, !tbaa !152
  %150 = getelementptr inbounds %struct.Exp_, ptr %149, i64 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !148
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %266

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.Exp_, ptr %149, i64 0, i32 4
  %155 = load ptr, ptr %154, align 8, !tbaa !151
  %156 = load ptr, ptr %155, align 8, !tbaa !134
  %157 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %156, ptr noundef nonnull dereferenceable(5) @.str.1.80) #26
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %266

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  %161 = load ptr, ptr %160, align 8, !tbaa !57
  %162 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %161) #26
  %163 = icmp eq i32 %162, 0
  %164 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(7) @.str.2.81) #26
  %165 = icmp eq i32 %164, 0
  br i1 %163, label %235, label %166

166:                                              ; preds = %159
  br i1 %165, label %167, label %196

167:                                              ; preds = %166
  %168 = load ptr, ptr %47, align 8, !tbaa !152
  %169 = getelementptr inbounds %struct.Exp_, ptr %168, i64 0, i32 4
  %170 = load ptr, ptr %169, align 8, !tbaa !151
  store ptr @.str.3.82, ptr %170, align 8, !tbaa !134
  %171 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %172 = getelementptr inbounds ptr, ptr %171, i64 -1
  %173 = load ptr, ptr %172, align 8, !tbaa !13
  %174 = getelementptr inbounds %struct.Exp, ptr %173, i64 0, i32 3
  %175 = load i32, ptr %174, align 8, !tbaa !142
  %176 = tail call i32 @llvm.umin.i32(i32 %125, i32 %175)
  %177 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %178 = getelementptr inbounds %struct.Exp, ptr %177, i64 0, i32 1
  store i32 1, ptr %178, align 8, !tbaa !140
  %179 = getelementptr inbounds %struct.Exp, ptr %177, i64 0, i32 2
  store i32 %4, ptr %179, align 4, !tbaa !143
  %180 = getelementptr inbounds %struct.Exp, ptr %177, i64 0, i32 3
  store i32 %176, ptr %180, align 8, !tbaa !142
  %181 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %182 unwind label %193

182:                                              ; preds = %167
  store i32 0, ptr %181, align 8, !tbaa !144
  %183 = getelementptr inbounds %struct.Exp_, ptr %181, i64 0, i32 1
  store i32 6, ptr %183, align 4, !tbaa !148
  %184 = getelementptr inbounds %struct.Exp_, ptr %181, i64 0, i32 2
  store i32 %123, ptr %184, align 8, !tbaa !149
  %185 = getelementptr inbounds %struct.Exp_, ptr %181, i64 0, i32 3
  store i32 39, ptr %185, align 4, !tbaa !150
  store ptr %181, ptr %177, align 8, !tbaa !152
  %186 = getelementptr inbounds %struct.Exp, ptr %177, i64 0, i32 4
  store ptr %47, ptr %186, align 8, !tbaa !155
  %187 = getelementptr inbounds %struct.Exp, ptr %177, i64 0, i32 7
  store i32 %124, ptr %187, align 8, !tbaa !7
  %188 = getelementptr inbounds %struct.Exp, ptr %177, i64 0, i32 8
  store ptr %46, ptr %188, align 8, !tbaa !7
  %189 = icmp eq i32 %123, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %182
  store ptr %172, ptr @stkptr, align 8, !tbaa !13
  %191 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %192 = getelementptr inbounds ptr, ptr %191, i64 1
  store ptr %192, ptr @donestkptr, align 8, !tbaa !13
  store ptr %177, ptr %191, align 8, !tbaa !13
  br label %381

193:                                              ; preds = %167
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %383

195:                                              ; preds = %182
  store ptr %177, ptr %172, align 8, !tbaa !13
  br label %381

196:                                              ; preds = %166
  %197 = getelementptr inbounds %struct.Exp, ptr %148, i64 0, i32 3
  %198 = load i32, ptr %197, align 8, !tbaa !142
  %199 = tail call i32 @llvm.umin.i32(i32 %125, i32 %198)
  %200 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %200, i32 noundef %4, ptr noundef nonnull @.str.3.82, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
          to label %201 unwind label %228

201:                                              ; preds = %196
  %202 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %203 = getelementptr inbounds %struct.Exp, ptr %202, i64 0, i32 1
  store i32 1, ptr %203, align 8, !tbaa !140
  %204 = getelementptr inbounds %struct.Exp, ptr %202, i64 0, i32 2
  store i32 %4, ptr %204, align 4, !tbaa !143
  %205 = getelementptr inbounds %struct.Exp, ptr %202, i64 0, i32 3
  store i32 %199, ptr %205, align 8, !tbaa !142
  %206 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %207 unwind label %230

207:                                              ; preds = %201
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %206, align 8, !tbaa !7
  store ptr %206, ptr %202, align 8, !tbaa !152
  %208 = getelementptr inbounds %struct.Exp, ptr %202, i64 0, i32 4
  store ptr %200, ptr %208, align 8, !tbaa !155
  %209 = getelementptr inbounds %struct.Exp, ptr %202, i64 0, i32 5
  store ptr %47, ptr %209, align 8, !tbaa !156
  %210 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %211 = getelementptr inbounds %struct.Exp, ptr %210, i64 0, i32 1
  store i32 1, ptr %211, align 8, !tbaa !140
  %212 = getelementptr inbounds %struct.Exp, ptr %210, i64 0, i32 2
  store i32 %4, ptr %212, align 4, !tbaa !143
  %213 = getelementptr inbounds %struct.Exp, ptr %210, i64 0, i32 3
  store i32 %199, ptr %213, align 8, !tbaa !142
  %214 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %215 unwind label %232

215:                                              ; preds = %207
  store i32 0, ptr %214, align 8, !tbaa !144
  %216 = getelementptr inbounds %struct.Exp_, ptr %214, i64 0, i32 1
  store i32 6, ptr %216, align 4, !tbaa !148
  %217 = getelementptr inbounds %struct.Exp_, ptr %214, i64 0, i32 2
  store i32 %123, ptr %217, align 8, !tbaa !149
  %218 = getelementptr inbounds %struct.Exp_, ptr %214, i64 0, i32 3
  store i32 39, ptr %218, align 4, !tbaa !150
  store ptr %214, ptr %210, align 8, !tbaa !152
  %219 = getelementptr inbounds %struct.Exp, ptr %210, i64 0, i32 4
  store ptr %202, ptr %219, align 8, !tbaa !155
  %220 = getelementptr inbounds %struct.Exp, ptr %210, i64 0, i32 7
  store i32 %124, ptr %220, align 8, !tbaa !7
  %221 = getelementptr inbounds %struct.Exp, ptr %210, i64 0, i32 8
  store ptr %46, ptr %221, align 8, !tbaa !7
  %222 = icmp eq i32 %123, 0
  %223 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %224 = getelementptr inbounds ptr, ptr %223, i64 -1
  br i1 %222, label %225, label %234

225:                                              ; preds = %215
  store ptr %224, ptr @stkptr, align 8, !tbaa !13
  %226 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %227 = getelementptr inbounds ptr, ptr %226, i64 1
  store ptr %227, ptr @donestkptr, align 8, !tbaa !13
  store ptr %210, ptr %226, align 8, !tbaa !13
  br label %381

228:                                              ; preds = %196
  %229 = landingpad { ptr, i32 }
          cleanup
  br label %383

230:                                              ; preds = %201
  %231 = landingpad { ptr, i32 }
          cleanup
  br label %383

232:                                              ; preds = %207
  %233 = landingpad { ptr, i32 }
          cleanup
  br label %383

234:                                              ; preds = %215
  store ptr %210, ptr %224, align 8, !tbaa !13
  br label %381

235:                                              ; preds = %159
  br i1 %165, label %236, label %243

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.Exp, ptr %148, i64 0, i32 3
  %238 = load i32, ptr %237, align 8, !tbaa !142
  %239 = tail call i32 @llvm.umin.i32(i32 %125, i32 %238)
  %240 = load ptr, ptr %47, align 8, !tbaa !152
  %241 = getelementptr inbounds %struct.Exp_, ptr %240, i64 0, i32 4
  %242 = load ptr, ptr %241, align 8, !tbaa !151
  store ptr @.str.1.80, ptr %242, align 8, !tbaa !134
  br label %243

243:                                              ; preds = %236, %235
  %244 = phi i32 [ %125, %235 ], [ %239, %236 ]
  %245 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %246 = getelementptr inbounds %struct.Exp, ptr %245, i64 0, i32 1
  store i32 1, ptr %246, align 8, !tbaa !140
  %247 = getelementptr inbounds %struct.Exp, ptr %245, i64 0, i32 2
  store i32 %4, ptr %247, align 4, !tbaa !143
  %248 = getelementptr inbounds %struct.Exp, ptr %245, i64 0, i32 3
  store i32 %244, ptr %248, align 8, !tbaa !142
  %249 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %250 unwind label %263

250:                                              ; preds = %243
  store i32 0, ptr %249, align 8, !tbaa !144
  %251 = getelementptr inbounds %struct.Exp_, ptr %249, i64 0, i32 1
  store i32 6, ptr %251, align 4, !tbaa !148
  %252 = getelementptr inbounds %struct.Exp_, ptr %249, i64 0, i32 2
  store i32 %123, ptr %252, align 8, !tbaa !149
  %253 = getelementptr inbounds %struct.Exp_, ptr %249, i64 0, i32 3
  store i32 39, ptr %253, align 4, !tbaa !150
  store ptr %249, ptr %245, align 8, !tbaa !152
  %254 = getelementptr inbounds %struct.Exp, ptr %245, i64 0, i32 4
  store ptr %47, ptr %254, align 8, !tbaa !155
  %255 = getelementptr inbounds %struct.Exp, ptr %245, i64 0, i32 7
  store i32 %124, ptr %255, align 8, !tbaa !7
  %256 = getelementptr inbounds %struct.Exp, ptr %245, i64 0, i32 8
  store ptr %46, ptr %256, align 8, !tbaa !7
  %257 = icmp eq i32 %123, 0
  %258 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %259 = getelementptr inbounds ptr, ptr %258, i64 -1
  br i1 %257, label %260, label %265

260:                                              ; preds = %250
  store ptr %259, ptr @stkptr, align 8, !tbaa !13
  %261 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %262 = getelementptr inbounds ptr, ptr %261, i64 1
  store ptr %262, ptr @donestkptr, align 8, !tbaa !13
  store ptr %245, ptr %261, align 8, !tbaa !13
  br label %381

263:                                              ; preds = %243
  %264 = landingpad { ptr, i32 }
          cleanup
  br label %383

265:                                              ; preds = %250
  store ptr %245, ptr %259, align 8, !tbaa !13
  br label %381

266:                                              ; preds = %153, %145
  %267 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(7) @.str.2.81) #26
  %268 = icmp eq i32 %267, 0
  %269 = getelementptr inbounds %struct.Exp, ptr %148, i64 0, i32 3
  %270 = load i32, ptr %269, align 8, !tbaa !142
  %271 = tail call i32 @llvm.umin.i32(i32 %125, i32 %270)
  %272 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %273 = load ptr, ptr %147, align 8, !tbaa !13
  %274 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 1
  store i32 1, ptr %274, align 8, !tbaa !140
  %275 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 2
  store i32 %4, ptr %275, align 4, !tbaa !143
  %276 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 3
  store i32 %271, ptr %276, align 8, !tbaa !142
  br i1 %268, label %277, label %289

277:                                              ; preds = %266
  %278 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %279 unwind label %287

279:                                              ; preds = %277
  store <4 x i32> <i32 0, i32 6, i32 8, i32 39>, ptr %278, align 8, !tbaa !7
  store ptr %278, ptr %272, align 8, !tbaa !152
  %280 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 4
  store ptr %273, ptr %280, align 8, !tbaa !155
  %281 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 7
  store i32 %124, ptr %281, align 8, !tbaa !7
  %282 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 8
  store ptr %46, ptr %282, align 8, !tbaa !7
  %283 = load ptr, ptr %273, align 8, !tbaa !152
  %284 = getelementptr inbounds %struct.Exp_, ptr %283, i64 0, i32 3
  %285 = load i32, ptr %284, align 4, !tbaa !150
  %286 = icmp ne i32 %285, 18
  br label %310

287:                                              ; preds = %277
  %288 = landingpad { ptr, i32 }
          cleanup
  br label %383

289:                                              ; preds = %266
  %290 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %291 unwind label %306

291:                                              ; preds = %289
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %290, align 8, !tbaa !7
  store ptr %290, ptr %272, align 8, !tbaa !152
  %292 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 4
  store ptr %273, ptr %292, align 8, !tbaa !155
  %293 = getelementptr inbounds %struct.Exp, ptr %272, i64 0, i32 5
  store ptr %47, ptr %293, align 8, !tbaa !156
  %294 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %295 = getelementptr inbounds %struct.Exp, ptr %294, i64 0, i32 1
  store i32 1, ptr %295, align 8, !tbaa !140
  %296 = getelementptr inbounds %struct.Exp, ptr %294, i64 0, i32 2
  store i32 %4, ptr %296, align 4, !tbaa !143
  %297 = getelementptr inbounds %struct.Exp, ptr %294, i64 0, i32 3
  store i32 %271, ptr %297, align 8, !tbaa !142
  %298 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %299 unwind label %308

299:                                              ; preds = %291
  store i32 0, ptr %298, align 8, !tbaa !144
  %300 = getelementptr inbounds %struct.Exp_, ptr %298, i64 0, i32 1
  store i32 6, ptr %300, align 4, !tbaa !148
  %301 = getelementptr inbounds %struct.Exp_, ptr %298, i64 0, i32 2
  store i32 %123, ptr %301, align 8, !tbaa !149
  %302 = getelementptr inbounds %struct.Exp_, ptr %298, i64 0, i32 3
  store i32 39, ptr %302, align 4, !tbaa !150
  store ptr %298, ptr %294, align 8, !tbaa !152
  %303 = getelementptr inbounds %struct.Exp, ptr %294, i64 0, i32 4
  store ptr %272, ptr %303, align 8, !tbaa !155
  %304 = getelementptr inbounds %struct.Exp, ptr %294, i64 0, i32 7
  store i32 %124, ptr %304, align 8, !tbaa !7
  %305 = getelementptr inbounds %struct.Exp, ptr %294, i64 0, i32 8
  store ptr %46, ptr %305, align 8, !tbaa !7
  br label %310

306:                                              ; preds = %289
  %307 = landingpad { ptr, i32 }
          cleanup
  br label %383

308:                                              ; preds = %291
  %309 = landingpad { ptr, i32 }
          cleanup
  br label %383

310:                                              ; preds = %299, %279
  %311 = phi i1 [ %286, %279 ], [ true, %299 ]
  %312 = phi ptr [ %272, %279 ], [ %294, %299 ]
  %313 = icmp eq i32 %123, 0
  %314 = and i1 %313, %311
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  store ptr %147, ptr @stkptr, align 8, !tbaa !13
  %316 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %317 = getelementptr inbounds ptr, ptr %316, i64 1
  store ptr %317, ptr @donestkptr, align 8, !tbaa !13
  store ptr %312, ptr %316, align 8, !tbaa !13
  br label %381

318:                                              ; preds = %310
  store ptr %312, ptr %147, align 8, !tbaa !13
  br label %381

319:                                              ; preds = %122
  %320 = load i16, ptr %20, align 2, !tbaa !130
  %321 = load ptr, ptr %17, align 8, !tbaa !46
  %322 = zext i16 %320 to i64
  %323 = getelementptr inbounds %struct.cp_info, ptr %321, i64 %322, i32 1
  %324 = load i64, ptr %323, align 8, !tbaa !7
  %325 = getelementptr inbounds %struct.cp_info, ptr %321, i64 %324, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !7
  %327 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  %328 = load ptr, ptr %327, align 8, !tbaa !57
  %329 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %326, ptr noundef nonnull dereferenceable(1) %328) #26
  %330 = icmp eq i32 %329, 0
  %331 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  br i1 %330, label %357, label %332

332:                                              ; preds = %319
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %331, i32 noundef %4, ptr noundef %326, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
          to label %333 unwind label %351

333:                                              ; preds = %332
  %334 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %335 = getelementptr inbounds %struct.Exp, ptr %334, i64 0, i32 1
  store i32 1, ptr %335, align 8, !tbaa !140
  %336 = getelementptr inbounds %struct.Exp, ptr %334, i64 0, i32 2
  store i32 %4, ptr %336, align 4, !tbaa !143
  %337 = getelementptr inbounds %struct.Exp, ptr %334, i64 0, i32 3
  store i32 %125, ptr %337, align 8, !tbaa !142
  %338 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %339 unwind label %353

339:                                              ; preds = %333
  store <4 x i32> <i32 0, i32 4, i32 11, i32 5>, ptr %338, align 8, !tbaa !7
  store ptr %338, ptr %334, align 8, !tbaa !152
  %340 = getelementptr inbounds %struct.Exp, ptr %334, i64 0, i32 4
  store ptr %331, ptr %340, align 8, !tbaa !155
  %341 = getelementptr inbounds %struct.Exp, ptr %334, i64 0, i32 5
  store ptr %47, ptr %341, align 8, !tbaa !156
  %342 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %343 = getelementptr inbounds %struct.Exp, ptr %342, i64 0, i32 1
  store i32 1, ptr %343, align 8, !tbaa !140
  %344 = getelementptr inbounds %struct.Exp, ptr %342, i64 0, i32 2
  store i32 %4, ptr %344, align 4, !tbaa !143
  %345 = getelementptr inbounds %struct.Exp, ptr %342, i64 0, i32 3
  store i32 %125, ptr %345, align 8, !tbaa !142
  %346 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %347 unwind label %355

347:                                              ; preds = %339
  store i32 0, ptr %346, align 8, !tbaa !144
  %348 = getelementptr inbounds %struct.Exp_, ptr %346, i64 0, i32 1
  store i32 6, ptr %348, align 4, !tbaa !148
  %349 = getelementptr inbounds %struct.Exp_, ptr %346, i64 0, i32 2
  store i32 %123, ptr %349, align 8, !tbaa !149
  %350 = getelementptr inbounds %struct.Exp_, ptr %346, i64 0, i32 3
  store i32 39, ptr %350, align 4, !tbaa !150
  store ptr %346, ptr %342, align 8, !tbaa !152
  br label %368

351:                                              ; preds = %332
  %352 = landingpad { ptr, i32 }
          cleanup
  br label %383

353:                                              ; preds = %333
  %354 = landingpad { ptr, i32 }
          cleanup
  br label %383

355:                                              ; preds = %339
  %356 = landingpad { ptr, i32 }
          cleanup
  br label %383

357:                                              ; preds = %319
  %358 = getelementptr inbounds %struct.Exp, ptr %331, i64 0, i32 1
  store i32 1, ptr %358, align 8, !tbaa !140
  %359 = getelementptr inbounds %struct.Exp, ptr %331, i64 0, i32 2
  store i32 %4, ptr %359, align 4, !tbaa !143
  %360 = getelementptr inbounds %struct.Exp, ptr %331, i64 0, i32 3
  store i32 %125, ptr %360, align 8, !tbaa !142
  %361 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %362 unwind label %366

362:                                              ; preds = %357
  store i32 0, ptr %361, align 8, !tbaa !144
  %363 = getelementptr inbounds %struct.Exp_, ptr %361, i64 0, i32 1
  store i32 6, ptr %363, align 4, !tbaa !148
  %364 = getelementptr inbounds %struct.Exp_, ptr %361, i64 0, i32 2
  store i32 %123, ptr %364, align 8, !tbaa !149
  %365 = getelementptr inbounds %struct.Exp_, ptr %361, i64 0, i32 3
  store i32 39, ptr %365, align 4, !tbaa !150
  store ptr %361, ptr %331, align 8, !tbaa !152
  br label %368

366:                                              ; preds = %357
  %367 = landingpad { ptr, i32 }
          cleanup
  br label %383

368:                                              ; preds = %362, %347
  %369 = phi ptr [ %331, %362 ], [ %342, %347 ]
  %370 = phi ptr [ %47, %362 ], [ %334, %347 ]
  %371 = getelementptr inbounds %struct.Exp, ptr %369, i64 0, i32 4
  store ptr %370, ptr %371, align 8, !tbaa !155
  %372 = getelementptr inbounds %struct.Exp, ptr %369, i64 0, i32 7
  store i32 %124, ptr %372, align 8, !tbaa !7
  %373 = getelementptr inbounds %struct.Exp, ptr %369, i64 0, i32 8
  store ptr %46, ptr %373, align 8, !tbaa !7
  %374 = icmp eq i32 %123, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %368
  %376 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %377 = getelementptr inbounds ptr, ptr %376, i64 1
  store ptr %377, ptr @donestkptr, align 8, !tbaa !13
  store ptr %369, ptr %376, align 8, !tbaa !13
  br label %381

378:                                              ; preds = %368
  %379 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %380 = getelementptr inbounds ptr, ptr %379, i64 1
  store ptr %380, ptr @stkptr, align 8, !tbaa !13
  store ptr %369, ptr %379, align 8, !tbaa !13
  br label %381

381:                                              ; preds = %378, %375, %318, %315, %265, %260, %234, %225, %195, %190, %138
  %382 = phi i32 [ 1, %138 ], [ 0, %195 ], [ 0, %190 ], [ 0, %234 ], [ 0, %225 ], [ 0, %265 ], [ 0, %260 ], [ 0, %318 ], [ 0, %315 ], [ 0, %378 ], [ 0, %375 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #33
  ret i32 %382

383:                                              ; preds = %366, %355, %353, %351, %308, %306, %287, %263, %232, %230, %228, %193, %69
  %384 = phi ptr [ %177, %193 ], [ %245, %263 ], [ %202, %230 ], [ %210, %232 ], [ %200, %228 ], [ %272, %306 ], [ %294, %308 ], [ %272, %287 ], [ %331, %351 ], [ %342, %355 ], [ %334, %353 ], [ %331, %366 ], [ %47, %69 ]
  %385 = phi { ptr, i32 } [ %194, %193 ], [ %264, %263 ], [ %231, %230 ], [ %233, %232 ], [ %229, %228 ], [ %307, %306 ], [ %309, %308 ], [ %288, %287 ], [ %352, %351 ], [ %356, %355 ], [ %354, %353 ], [ %367, %366 ], [ %70, %69 ]
  tail call void @_ZdlPv(ptr noundef nonnull %384) #30
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #33
  resume { ptr, i32 } %385
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z11docheckcastP9Classfile(ptr nocapture noundef readonly %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = add i32 %2, 2
  store i32 %4, ptr @currpc, align 4, !tbaa !17
  %5 = load i32, ptr @bufflength, align 4, !tbaa !17
  %6 = add nsw i32 %5, -2
  store i32 %6, ptr @bufflength, align 4, !tbaa !17
  %7 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %8, ptr @inbuff, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = zext i8 %13 to i16
  %15 = or i16 %11, %14
  %16 = zext i16 %15 to i32
  %17 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %17, i64 -1
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %21 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = zext i16 %15 to i64
  %24 = getelementptr inbounds %struct.cp_info, ptr %22, i64 %23, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !7
  %26 = getelementptr inbounds %struct.cp_info, ptr %22, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %20, i32 noundef %3, ptr noundef %27, i32 noundef 8, i32 noundef 2, i32 noundef %16) #28
          to label %28 unwind label %42

28:                                               ; preds = %1
  %29 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %30 = getelementptr inbounds %struct.Exp, ptr %19, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !142
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 %3)
  %33 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 1
  store i32 1, ptr %33, align 8, !tbaa !140
  %34 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 2
  store i32 %3, ptr %34, align 4, !tbaa !143
  %35 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 3
  store i32 %32, ptr %35, align 8, !tbaa !142
  %36 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %37 unwind label %44

37:                                               ; preds = %28
  store <4 x i32> <i32 0, i32 2, i32 8, i32 15>, ptr %36, align 8, !tbaa !7
  store ptr %36, ptr %29, align 8, !tbaa !152
  %38 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 4
  store ptr %19, ptr %38, align 8, !tbaa !155
  %39 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 5
  store ptr %20, ptr %39, align 8, !tbaa !156
  %40 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %41 = getelementptr inbounds ptr, ptr %40, i64 -1
  store ptr %29, ptr %41, align 8, !tbaa !13
  ret i32 0

42:                                               ; preds = %1
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %46

44:                                               ; preds = %28
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %29, %44 ], [ %20, %42 ]
  %48 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  tail call void @_ZdlPv(ptr noundef nonnull %47) #30
  resume { ptr, i32 } %48
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z12doinstanceofP9Classfile(ptr nocapture noundef readonly %0) #3 personality ptr @__gxx_personality_v0 {
  %2 = load i32, ptr @currpc, align 4, !tbaa !17
  %3 = add i32 %2, -1
  %4 = add i32 %2, 2
  store i32 %4, ptr @currpc, align 4, !tbaa !17
  %5 = load i32, ptr @bufflength, align 4, !tbaa !17
  %6 = add nsw i32 %5, -2
  store i32 %6, ptr @bufflength, align 4, !tbaa !17
  %7 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %8, ptr @inbuff, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = zext i8 %13 to i16
  %15 = or i16 %11, %14
  %16 = zext i16 %15 to i32
  %17 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %18 = getelementptr inbounds ptr, ptr %17, i64 -1
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %21 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = zext i16 %15 to i64
  %24 = getelementptr inbounds %struct.cp_info, ptr %22, i64 %23, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !7
  %26 = getelementptr inbounds %struct.cp_info, ptr %22, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  invoke void @_ZN3ExpC2EjPc4Type3Loci(ptr noundef nonnull align 8 dereferenceable(64) %20, i32 noundef %3, ptr noundef %27, i32 noundef 8, i32 noundef 2, i32 noundef %16) #28
          to label %28 unwind label %41

28:                                               ; preds = %1
  %29 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %30 = getelementptr inbounds %struct.Exp, ptr %19, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !142
  %32 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 1
  store i32 1, ptr %32, align 8, !tbaa !140
  %33 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 2
  store i32 %3, ptr %33, align 4, !tbaa !143
  %34 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 3
  store i32 %31, ptr %34, align 8, !tbaa !142
  %35 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %36 unwind label %43

36:                                               ; preds = %28
  store <4 x i32> <i32 0, i32 4, i32 10, i32 37>, ptr %35, align 8, !tbaa !7
  store ptr %35, ptr %29, align 8, !tbaa !152
  %37 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 4
  store ptr %19, ptr %37, align 8, !tbaa !155
  %38 = getelementptr inbounds %struct.Exp, ptr %29, i64 0, i32 5
  store ptr %20, ptr %38, align 8, !tbaa !156
  %39 = load ptr, ptr @stkptr, align 8, !tbaa !13
  %40 = getelementptr inbounds ptr, ptr %39, i64 -1
  store ptr %29, ptr %40, align 8, !tbaa !13
  ret i32 0

41:                                               ; preds = %1
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %45

43:                                               ; preds = %28
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %29, %43 ], [ %20, %41 ]
  %47 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ]
  tail call void @_ZdlPv(ptr noundef nonnull %46) #30
  resume { ptr, i32 } %47
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z14decompileblockP9ClassfileP11method_info(ptr noundef %0, ptr noundef nonnull %1) #3 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr @miptr, align 8, !tbaa !13
  store i32 -1, ptr @cond_pcend, align 4, !tbaa !17
  %4 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = getelementptr inbounds %struct.method_info, ptr %1, i64 0, i32 1
  %7 = tail call noundef zeroext i16 @_ZN11AccessFlags6strlenEv(ptr noundef nonnull align 2 dereferenceable(2) %1) #28
  %8 = zext i16 %7 to i64
  %9 = add nuw nsw i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #29
  %11 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = tail call noundef ptr @_ZN11AccessFlags8toStringEPc(ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull %10) #28
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.5.87, ptr noundef %13) #28
  tail call void @_ZdaPv(ptr noundef nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #33
  %15 = getelementptr inbounds %struct.method_info, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  store ptr %16, ptr %3, align 8, !tbaa !13
  %17 = load ptr, ptr %11, align 8, !tbaa !25
  %18 = load ptr, ptr %6, align 8, !tbaa !79
  %19 = call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %18, ptr noundef nonnull %1) #28
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %590

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.method_info, ptr %1, i64 0, i32 19
  %23 = load i32, ptr %22, align 4, !tbaa !87
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.method_info, ptr %1, i64 0, i32 20
  %27 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 6, i32 1
  br label %34

28:                                               ; preds = %34, %21
  %29 = load i16, ptr %1, align 2, !tbaa !10
  %30 = and i16 %29, 1280
  %31 = icmp ne i16 %30, 0
  %32 = icmp eq i32 %5, 2
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %587, label %52

34:                                               ; preds = %34, %25
  %35 = phi i64 [ 0, %25 ], [ %38, %34 ]
  %36 = load ptr, ptr %11, align 8, !tbaa !25
  %37 = load ptr, ptr %26, align 8, !tbaa !115
  %38 = add nuw i64 %35, 1
  %39 = getelementptr inbounds i32, ptr %37, i64 %35
  %40 = load i32, ptr %39, align 4, !tbaa !17
  %41 = load ptr, ptr %27, align 8, !tbaa !46
  %42 = and i32 %40, 65535
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cp_info, ptr %41, i64 %43, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !7
  %46 = getelementptr inbounds %struct.cp_info, ptr %41, i64 %45, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.6.88, ptr noundef %47) #28
  %49 = load i32, ptr %22, align 4, !tbaa !87
  %50 = zext i32 %49 to i64
  %51 = icmp eq i64 %38, %50
  br i1 %51, label %28, label %34, !llvm.loop !167

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.method_info, ptr %1, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !93
  store ptr %54, ptr @inbuff, align 8, !tbaa !13
  %55 = getelementptr inbounds %struct.method_info, ptr %1, i64 0, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !92
  store i32 %56, ptr @bufflength, align 4, !tbaa !17
  store i32 0, ptr @currpc, align 4, !tbaa !17
  store ptr @stack, ptr @stkptr, align 8, !tbaa !13
  store ptr @donestack, ptr @donestkptr, align 8, !tbaa !13
  store i32 0, ptr @indentlevel, align 4, !tbaa !17
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %93, %52
  %59 = phi i32 [ %94, %93 ], [ %56, %52 ]
  %60 = phi i32 [ %82, %93 ], [ 0, %52 ]
  %61 = load i32, ptr @currpc, align 4, !tbaa !17
  %62 = load i32, ptr @cond_pcend, align 4, !tbaa !17
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = call noundef i32 @_Z17finishconditionalP9Classfile(ptr noundef %0) #28
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %590

67:                                               ; preds = %64
  %68 = load i32, ptr @currpc, align 4, !tbaa !17
  %69 = load i32, ptr @bufflength, align 4, !tbaa !17
  br label %70

70:                                               ; preds = %67, %58
  %71 = phi i32 [ %69, %67 ], [ %59, %58 ]
  %72 = phi i32 [ %68, %67 ], [ %61, %58 ]
  %73 = add i32 %72, 1
  store i32 %73, ptr @currpc, align 4, !tbaa !17
  %74 = add nsw i32 %71, -1
  store i32 %74, ptr @bufflength, align 4, !tbaa !17
  %75 = load ptr, ptr @inbuff, align 8, !tbaa !13
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %76, ptr @inbuff, align 8, !tbaa !13
  %77 = load i8, ptr %75, align 1, !tbaa !7
  %78 = zext i8 %77 to i32
  store i32 %78, ptr @ch, align 4, !tbaa !17
  store i32 %60, ptr @lastaction, align 4, !tbaa !17
  %79 = zext i8 %77 to i64
  %80 = getelementptr inbounds [256 x i8], ptr @actions, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !7
  %82 = sext i8 %81 to i32
  %83 = icmp eq i8 %81, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %70
  %85 = sext i8 %81 to i64
  %86 = getelementptr inbounds [28 x ptr], ptr @actiontable, i64 0, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !13
  %88 = call noundef i32 %87(ptr noundef %0) #28
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %590

90:                                               ; preds = %70
  %91 = load ptr, ptr %11, align 8, !tbaa !25
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.7.105, i32 noundef %78) #28
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, ptr @bufflength, align 4, !tbaa !17
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %58, label %96, !llvm.loop !168

96:                                               ; preds = %93, %52
  %97 = load ptr, ptr %11, align 8, !tbaa !25
  %98 = call i64 @fwrite(ptr nonnull @.str.8.106, i64 3, i64 1, ptr %97)
  %99 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %99, i8 0, i64 16, i1 false)
  %100 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %101 = getelementptr inbounds ptr, ptr %100, i64 -1
  %102 = icmp ugt ptr %101, @donestack
  br i1 %102, label %103, label %215

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.looplist, ptr %99, i64 0, i32 1
  br label %105

105:                                              ; preds = %209, %103
  %106 = phi ptr [ @donestack, %103 ], [ %211, %209 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !13
  %108 = getelementptr inbounds ptr, ptr %106, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !13
  %110 = getelementptr inbounds ptr, ptr %106, i64 2
  %111 = load ptr, ptr %110, align 8, !tbaa !13
  %112 = load ptr, ptr %107, align 8, !tbaa !152
  %113 = getelementptr inbounds %struct.Exp_, ptr %112, i64 0, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !150
  %115 = icmp eq i32 %114, 19
  br i1 %115, label %182, label %116

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.Exp_, ptr %112, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !148
  %119 = icmp eq i32 %118, 8
  br i1 %119, label %120, label %209

120:                                              ; preds = %116
  %121 = load ptr, ptr %109, align 8, !tbaa !152
  %122 = getelementptr inbounds %struct.Exp_, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !148
  %124 = icmp eq i32 %123, 8
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.Exp_, ptr %121, i64 0, i32 3
  %127 = load i32, ptr %126, align 4, !tbaa !150
  %128 = icmp eq i32 %127, 24
  br i1 %128, label %129, label %182

129:                                              ; preds = %125, %120
  %130 = getelementptr inbounds %struct.Exp, ptr %107, i64 0, i32 3
  %131 = load i32, ptr %130, align 8, !tbaa !142
  %132 = getelementptr inbounds %struct.Exp, ptr %109, i64 0, i32 3
  %133 = load i32, ptr %132, align 8, !tbaa !142
  %134 = call i32 @llvm.umin.i32(i32 %131, i32 %133)
  %135 = getelementptr inbounds %struct.Exp, ptr %107, i64 0, i32 7
  %136 = load i32, ptr %135, align 8, !tbaa !7
  %137 = getelementptr inbounds %struct.Exp, ptr %109, i64 0, i32 7
  %138 = load i32, ptr %137, align 8, !tbaa !7
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %129
  %141 = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %142 = getelementptr inbounds %struct.Exp, ptr %107, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !155
  %144 = getelementptr inbounds %struct.Exp, ptr %109, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !155
  %146 = getelementptr inbounds %struct.Exp, ptr %141, i64 0, i32 1
  store i32 1, ptr %146, align 8, !tbaa !140
  %147 = getelementptr inbounds %struct.Exp, ptr %141, i64 0, i32 3
  store i32 %134, ptr %147, align 8, !tbaa !142
  %148 = getelementptr inbounds %struct.Exp, ptr %141, i64 0, i32 2
  store i32 %134, ptr %148, align 4, !tbaa !143
  %149 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %150 unwind label %153

150:                                              ; preds = %140
  store <4 x i32> <i32 0, i32 4, i32 10, i32 36>, ptr %149, align 8, !tbaa !7
  store ptr %149, ptr %141, align 8, !tbaa !152
  %151 = getelementptr inbounds %struct.Exp, ptr %141, i64 0, i32 4
  store ptr %143, ptr %151, align 8, !tbaa !155
  %152 = getelementptr inbounds %struct.Exp, ptr %141, i64 0, i32 5
  store ptr %145, ptr %152, align 8, !tbaa !156
  br label %176

153:                                              ; preds = %140
  %.lcssa1 = phi ptr [ %141, %140 ]
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %179

155:                                              ; preds = %129
  %156 = getelementptr inbounds %struct.Exp, ptr %111, i64 0, i32 3
  %157 = load i32, ptr %156, align 8, !tbaa !142
  %158 = icmp eq i32 %136, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %155
  %160 = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %161 = getelementptr inbounds %struct.Exp, ptr %107, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !155
  %163 = getelementptr inbounds %struct.Exp, ptr %109, i64 0, i32 4
  %164 = load ptr, ptr %163, align 8, !tbaa !155
  %165 = getelementptr inbounds %struct.Exp, ptr %160, i64 0, i32 1
  store i32 1, ptr %165, align 8, !tbaa !140
  %166 = getelementptr inbounds %struct.Exp, ptr %160, i64 0, i32 3
  store i32 %134, ptr %166, align 8, !tbaa !142
  %167 = getelementptr inbounds %struct.Exp, ptr %160, i64 0, i32 2
  store i32 %134, ptr %167, align 4, !tbaa !143
  %168 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %169 unwind label %174

169:                                              ; preds = %159
  store <4 x i32> <i32 0, i32 4, i32 10, i32 35>, ptr %168, align 8, !tbaa !7
  store ptr %168, ptr %160, align 8, !tbaa !152
  %170 = getelementptr inbounds %struct.Exp, ptr %160, i64 0, i32 4
  store ptr %162, ptr %170, align 8, !tbaa !155
  %171 = getelementptr inbounds %struct.Exp, ptr %160, i64 0, i32 5
  store ptr %164, ptr %171, align 8, !tbaa !156
  %172 = call noundef i32 @_Z6notexpPP3Exp(ptr noundef nonnull %170) #28
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %176, label %590

174:                                              ; preds = %159
  %.lcssa = phi ptr [ %160, %159 ]
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %179

176:                                              ; preds = %169, %150
  %177 = phi ptr [ %160, %169 ], [ %141, %150 ]
  call void @_Z7killexpP3Exp(ptr noundef nonnull %107) #28
  %178 = getelementptr inbounds %struct.Exp, ptr %109, i64 0, i32 4
  store ptr %177, ptr %178, align 8, !tbaa !155
  store i32 %134, ptr %132, align 8, !tbaa !142
  store ptr %109, ptr %106, align 8, !tbaa !13
  store ptr null, ptr %108, align 8, !tbaa !13
  br label %182

179:                                              ; preds = %174, %153
  %180 = phi ptr [ %.lcssa, %174 ], [ %.lcssa1, %153 ]
  %181 = phi { ptr, i32 } [ %175, %174 ], [ %154, %153 ]
  call void @_ZdlPv(ptr noundef nonnull %180) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  resume { ptr, i32 } %181

182:                                              ; preds = %176, %155, %125, %105
  %183 = phi ptr [ %109, %105 ], [ %109, %125 ], [ %109, %155 ], [ %111, %176 ]
  %184 = phi ptr [ %107, %105 ], [ %107, %125 ], [ %107, %155 ], [ %109, %176 ]
  %185 = phi ptr [ %106, %105 ], [ %106, %125 ], [ %106, %155 ], [ %108, %176 ]
  %186 = getelementptr inbounds %struct.Exp, ptr %184, i64 0, i32 3
  %187 = load i32, ptr %186, align 8, !tbaa !142
  %188 = getelementptr inbounds %struct.Exp, ptr %184, i64 0, i32 7
  %189 = load i32, ptr %188, align 8, !tbaa !7
  %190 = icmp ult i32 %187, %189
  br i1 %190, label %209, label %191

191:                                              ; preds = %182
  %192 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
  %193 = load i32, ptr %186, align 8, !tbaa !142
  %194 = load i32, ptr %188, align 8, !tbaa !7
  %195 = getelementptr inbounds %struct.Exp, ptr %183, i64 0, i32 3
  %196 = load i32, ptr %195, align 8, !tbaa !142
  %197 = getelementptr inbounds %struct.Exp, ptr %184, i64 0, i32 4
  %198 = load ptr, ptr %197, align 8, !tbaa !155
  store i32 %193, ptr %192, align 8, !tbaa !169
  %199 = getelementptr inbounds %struct.Loop, ptr %192, i64 0, i32 1
  store i32 %194, ptr %199, align 4, !tbaa !172
  %200 = getelementptr inbounds %struct.Loop, ptr %192, i64 0, i32 2
  store i32 %196, ptr %200, align 8, !tbaa !173
  %201 = getelementptr inbounds %struct.Loop, ptr %192, i64 0, i32 4
  store ptr %198, ptr %201, align 8, !tbaa !174
  %202 = getelementptr inbounds %struct.Loop, ptr %192, i64 0, i32 5
  store i32 1, ptr %202, align 8, !tbaa !175
  %203 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
  store ptr %192, ptr %203, align 8, !tbaa !176
  %204 = getelementptr inbounds %struct.looplist, ptr %203, i64 0, i32 1
  store ptr null, ptr %204, align 8, !tbaa !178
  %205 = load ptr, ptr %104, align 8, !tbaa !179
  %206 = icmp eq ptr %205, null
  %207 = getelementptr inbounds %struct.looplist, ptr %205, i64 0, i32 1
  %208 = select i1 %206, ptr %99, ptr %207
  store ptr %203, ptr %208, align 8, !tbaa !13
  store ptr %203, ptr %104, align 8
  br label %209

209:                                              ; preds = %191, %182, %116
  %210 = phi ptr [ %106, %116 ], [ %185, %182 ], [ %185, %191 ]
  %211 = getelementptr inbounds ptr, ptr %210, i64 1
  %212 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %213 = getelementptr inbounds ptr, ptr %212, i64 -1
  %214 = icmp ult ptr %211, %213
  br i1 %214, label %105, label %215, !llvm.loop !181

215:                                              ; preds = %209, %96
  %216 = phi ptr [ %100, %96 ], [ %212, %209 ]
  %217 = icmp eq ptr %216, @donestack
  br i1 %217, label %584, label %218

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.looplist, ptr %99, i64 0, i32 1
  br label %220

220:                                              ; preds = %571, %218
  %221 = phi ptr [ null, %218 ], [ %572, %571 ]
  %222 = phi ptr [ null, %218 ], [ %573, %571 ]
  %223 = phi ptr [ null, %218 ], [ %574, %571 ]
  %224 = phi ptr [ null, %218 ], [ %575, %571 ]
  %225 = phi ptr [ null, %218 ], [ %576, %571 ]
  %226 = phi ptr [ null, %218 ], [ %577, %571 ]
  %227 = phi ptr [ null, %218 ], [ %578, %571 ]
  %228 = phi ptr [ null, %218 ], [ %579, %571 ]
  %229 = phi ptr [ null, %218 ], [ %580, %571 ]
  %230 = phi ptr [ undef, %218 ], [ %581, %571 ]
  %231 = phi ptr [ @donestack, %218 ], [ %232, %571 ]
  %232 = getelementptr inbounds ptr, ptr %231, i64 1
  %233 = load ptr, ptr %231, align 8, !tbaa !13
  %234 = icmp eq ptr %233, null
  br i1 %234, label %571, label %235

235:                                              ; preds = %220
  %236 = load ptr, ptr %99, align 8, !tbaa !182
  %237 = icmp eq ptr %236, null
  br i1 %237, label %318, label %238

238:                                              ; preds = %235
  %239 = load ptr, ptr %236, align 8, !tbaa !176
  %240 = getelementptr inbounds %struct.Loop, ptr %239, i64 0, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !172
  %242 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 3
  %243 = load i32, ptr %242, align 8, !tbaa !142
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %271

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.Loop, ptr %239, i64 0, i32 5
  store i32 1, ptr %246, align 8, !tbaa !175
  %247 = load ptr, ptr %11, align 8, !tbaa !25
  %248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %247, ptr noundef nonnull @.str.9.107, ptr noundef %230) #28
  %249 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %250 = add nsw i32 %249, 1
  store i32 %250, ptr @indentlevel, align 4, !tbaa !17
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %265, %245
  %253 = load ptr, ptr %236, align 8, !tbaa !176
  %254 = getelementptr inbounds %struct.looplist, ptr %236, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !178
  store ptr %255, ptr %99, align 8, !tbaa !182
  call void @_ZdlPv(ptr noundef %236) #30
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store ptr null, ptr %219, align 8, !tbaa !179
  br label %258

258:                                              ; preds = %257, %252
  %259 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
  store ptr %253, ptr %259, align 8, !tbaa !176
  %260 = getelementptr inbounds %struct.looplist, ptr %259, i64 0, i32 1
  store ptr %229, ptr %260, align 8, !tbaa !178
  %261 = icmp eq ptr %228, null
  %262 = select i1 %261, ptr %259, ptr %227
  %263 = select i1 %261, ptr %259, ptr %228
  %264 = icmp eq ptr %255, null
  br i1 %264, label %318, label %271

265:                                              ; preds = %265, %245
  %266 = phi i32 [ %267, %265 ], [ %250, %245 ]
  %267 = add nsw i32 %266, -1
  %268 = load ptr, ptr %11, align 8, !tbaa !25
  %269 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %268)
  %270 = icmp eq i32 %267, 0
  br i1 %270, label %252, label %265, !llvm.loop !183

271:                                              ; preds = %258, %238
  %272 = phi ptr [ %255, %258 ], [ %236, %238 ]
  %273 = phi ptr [ %259, %258 ], [ %229, %238 ]
  %274 = phi ptr [ %263, %258 ], [ %228, %238 ]
  %275 = phi ptr [ %262, %258 ], [ %227, %238 ]
  %276 = phi ptr [ %259, %258 ], [ %223, %238 ]
  %277 = load ptr, ptr %272, align 8, !tbaa !176
  %278 = load ptr, ptr %233, align 8, !tbaa !152
  %279 = getelementptr inbounds %struct.Exp_, ptr %278, i64 0, i32 3
  %280 = load i32, ptr %279, align 4, !tbaa !150
  %281 = icmp eq i32 %280, 19
  br i1 %281, label %282, label %318

282:                                              ; preds = %271
  %283 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 7
  %284 = load i32, ptr %283, align 8, !tbaa !7
  %285 = load i32, ptr %277, align 8, !tbaa !169
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %287, label %318

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.Loop, ptr %277, i64 0, i32 5
  store i32 0, ptr %288, align 8, !tbaa !175
  %289 = getelementptr inbounds %struct.Loop, ptr %277, i64 0, i32 4
  %290 = load ptr, ptr %289, align 8, !tbaa !174
  %291 = call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %290, i32 noundef 0) #28
  %292 = load ptr, ptr %11, align 8, !tbaa !25
  %293 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef nonnull @.str.11.109, ptr noundef %291) #28
  %294 = icmp eq ptr %291, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %287
  call void @_ZdaPv(ptr noundef nonnull %291) #30
  br label %296

296:                                              ; preds = %295, %287
  %297 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %298 = add nsw i32 %297, 1
  store i32 %298, ptr @indentlevel, align 4, !tbaa !17
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %312

300:                                              ; preds = %312, %296
  %301 = load ptr, ptr %272, align 8, !tbaa !176
  %302 = getelementptr inbounds %struct.looplist, ptr %272, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !178
  store ptr %303, ptr %99, align 8, !tbaa !182
  call void @_ZdlPv(ptr noundef %272) #30
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  store ptr null, ptr %219, align 8, !tbaa !179
  br label %306

306:                                              ; preds = %305, %300
  %307 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
  store ptr %301, ptr %307, align 8, !tbaa !176
  %308 = getelementptr inbounds %struct.looplist, ptr %307, i64 0, i32 1
  store ptr %273, ptr %308, align 8, !tbaa !178
  %309 = icmp eq ptr %275, null
  %310 = select i1 %309, ptr %307, ptr %275
  %311 = select i1 %309, ptr %307, ptr %275
  br label %571, !llvm.loop !184

312:                                              ; preds = %312, %296
  %313 = phi i32 [ %314, %312 ], [ %298, %296 ]
  %314 = add nsw i32 %313, -1
  %315 = load ptr, ptr %11, align 8, !tbaa !25
  %316 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %315)
  %317 = icmp eq i32 %314, 0
  br i1 %317, label %300, label %312, !llvm.loop !185

318:                                              ; preds = %282, %271, %258, %235
  %319 = phi ptr [ %273, %271 ], [ %273, %282 ], [ %259, %258 ], [ %229, %235 ]
  %320 = phi ptr [ %274, %271 ], [ %274, %282 ], [ %263, %258 ], [ %228, %235 ]
  %321 = phi ptr [ %275, %271 ], [ %275, %282 ], [ %262, %258 ], [ %227, %235 ]
  %322 = phi ptr [ %276, %271 ], [ %276, %282 ], [ %259, %258 ], [ %223, %235 ]
  %323 = icmp eq ptr %226, null
  br i1 %323, label %343, label %324

324:                                              ; preds = %318
  %325 = load i32, ptr %226, align 8, !tbaa !186
  %326 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 3
  %327 = load i32, ptr %326, align 8, !tbaa !142
  %328 = icmp eq i32 %325, %327
  br i1 %328, label %329, label %343

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.intnode, ptr %226, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !188
  call void @_ZdlPv(ptr noundef nonnull %226) #30
  %332 = load ptr, ptr %11, align 8, !tbaa !25
  %333 = call i64 @fwrite(ptr nonnull @.str.12.110, i64 4, i64 1, ptr %332)
  %334 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %335 = add nsw i32 %334, -1
  store i32 %335, ptr @indentlevel, align 4, !tbaa !17
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %343, label %337

337:                                              ; preds = %337, %329
  %338 = phi i32 [ %339, %337 ], [ %335, %329 ]
  %339 = add nsw i32 %338, -1
  %340 = load ptr, ptr %11, align 8, !tbaa !25
  %341 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %340)
  %342 = icmp eq i32 %339, 0
  br i1 %342, label %343, label %337, !llvm.loop !189

343:                                              ; preds = %337, %329, %324, %318
  %344 = phi ptr [ %331, %329 ], [ %222, %324 ], [ %222, %318 ], [ %331, %337 ]
  %345 = phi ptr [ %331, %329 ], [ %225, %324 ], [ %225, %318 ], [ %331, %337 ]
  %346 = phi ptr [ %331, %329 ], [ %226, %324 ], [ null, %318 ], [ %331, %337 ]
  %347 = load ptr, ptr %233, align 8, !tbaa !152
  %348 = getelementptr inbounds %struct.Exp_, ptr %347, i64 0, i32 3
  %349 = load i32, ptr %348, align 4, !tbaa !150
  %350 = icmp eq i32 %349, 19
  br i1 %350, label %355, label %351

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.Exp_, ptr %347, i64 0, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !148
  %354 = icmp eq i32 %353, 8
  br i1 %354, label %355, label %472

355:                                              ; preds = %351, %343
  %356 = icmp eq ptr %322, null
  br i1 %356, label %425, label %357

357:                                              ; preds = %355
  %358 = load ptr, ptr %322, align 8, !tbaa !176
  %359 = load i32, ptr %358, align 8, !tbaa !169
  %360 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 3
  %361 = load i32, ptr %360, align 8, !tbaa !142
  %362 = icmp eq i32 %359, %361
  br i1 %362, label %363, label %398

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.Loop, ptr %358, i64 0, i32 5
  %365 = load i32, ptr %364, align 8, !tbaa !175
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %380

367:                                              ; preds = %363
  br i1 %350, label %368, label %371

368:                                              ; preds = %367
  %369 = load ptr, ptr %11, align 8, !tbaa !25
  %370 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef nonnull @.str.13.111, i32 noundef %359) #28
  br label %383

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.Loop, ptr %358, i64 0, i32 4
  %373 = load ptr, ptr %372, align 8, !tbaa !174
  %374 = call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %373, i32 noundef 0) #28
  %375 = load ptr, ptr %11, align 8, !tbaa !25
  %376 = load i32, ptr %360, align 8, !tbaa !142
  %377 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %375, ptr noundef nonnull @.str.14.112, ptr noundef %374, i32 noundef %376) #28
  %378 = icmp eq ptr %374, null
  br i1 %378, label %383, label %379

379:                                              ; preds = %371
  call void @_ZdaPv(ptr noundef nonnull %374) #30
  br label %383

380:                                              ; preds = %363
  %381 = load ptr, ptr %11, align 8, !tbaa !25
  %382 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %381, ptr noundef nonnull @.str.15.113, i32 noundef %359) #28
  br label %383

383:                                              ; preds = %380, %379, %371, %368
  %384 = getelementptr inbounds %struct.looplist, ptr %322, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !178
  call void @_ZdlPv(ptr noundef nonnull %322) #30
  %386 = icmp eq ptr %385, null
  %387 = select i1 %386, ptr null, ptr %321
  %388 = select i1 %386, ptr null, ptr %320
  %389 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %390 = add nsw i32 %389, -1
  store i32 %390, ptr @indentlevel, align 4, !tbaa !17
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %571, label %392, !llvm.loop !184

392:                                              ; preds = %392, %383
  %393 = phi i32 [ %394, %392 ], [ %390, %383 ]
  %394 = add nsw i32 %393, -1
  %395 = load ptr, ptr %11, align 8, !tbaa !25
  %396 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %395)
  %397 = icmp eq i32 %394, 0
  br i1 %397, label %571, label %392, !llvm.loop !190

398:                                              ; preds = %357
  %399 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 7
  %400 = load i32, ptr %399, align 8, !tbaa !7
  br label %405

401:                                              ; preds = %405
  %402 = getelementptr inbounds %struct.looplist, ptr %406, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !13
  %404 = icmp eq ptr %403, null
  br i1 %404, label %425, label %405, !llvm.loop !191

405:                                              ; preds = %401, %398
  %406 = phi ptr [ %403, %401 ], [ %322, %398 ]
  %407 = load ptr, ptr %406, align 8, !tbaa !176
  %408 = getelementptr inbounds %struct.Loop, ptr %407, i64 0, i32 2
  %409 = load i32, ptr %408, align 8, !tbaa !173
  %410 = icmp eq i32 %409, %400
  br i1 %410, label %411, label %401

411:                                              ; preds = %405
  %412 = load ptr, ptr %11, align 8, !tbaa !25
  %413 = load ptr, ptr %231, align 8, !tbaa !13
  %414 = getelementptr inbounds %struct.Exp, ptr %413, i64 0, i32 3
  %415 = load i32, ptr %414, align 8, !tbaa !142
  %416 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %412, ptr noundef nonnull @.str.16.114, i32 noundef %415) #28
  %417 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %571, label %419, !llvm.loop !184

419:                                              ; preds = %419, %411
  %420 = phi i32 [ %421, %419 ], [ %417, %411 ]
  %421 = add nsw i32 %420, -1
  %422 = load ptr, ptr %11, align 8, !tbaa !25
  %423 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %422)
  %424 = icmp eq i32 %421, 0
  br i1 %424, label %571, label %419, !llvm.loop !192

425:                                              ; preds = %401, %355
  %426 = icmp eq ptr %344, null
  br i1 %426, label %457, label %427

427:                                              ; preds = %425
  %428 = load i32, ptr %344, align 8, !tbaa !186
  %429 = load ptr, ptr %232, align 8, !tbaa !13
  %430 = icmp eq ptr %429, null
  br i1 %430, label %434, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.Exp, ptr %429, i64 0, i32 3
  %433 = load i32, ptr %432, align 8, !tbaa !142
  br label %434

434:                                              ; preds = %431, %427
  %435 = phi i32 [ %433, %431 ], [ 0, %427 ]
  %436 = icmp eq i32 %428, %435
  br i1 %436, label %437, label %457

437:                                              ; preds = %434
  %438 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 7
  %439 = load i32, ptr %438, align 8, !tbaa !7
  %440 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
  store i32 %439, ptr %440, align 8, !tbaa !186
  %441 = getelementptr inbounds %struct.intnode, ptr %440, i64 0, i32 1
  store ptr %221, ptr %441, align 8, !tbaa !188
  %442 = getelementptr inbounds %struct.intnode, ptr %344, i64 0, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !188
  call void @_ZdlPv(ptr noundef nonnull %344) #30
  %444 = load ptr, ptr %11, align 8, !tbaa !25
  %445 = load ptr, ptr %231, align 8, !tbaa !13
  %446 = getelementptr inbounds %struct.Exp, ptr %445, i64 0, i32 3
  %447 = load i32, ptr %446, align 8, !tbaa !142
  %448 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %444, ptr noundef nonnull @.str.17.115, i32 noundef %447) #28
  %449 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %571, label %451, !llvm.loop !184

451:                                              ; preds = %451, %437
  %452 = phi i32 [ %453, %451 ], [ %449, %437 ]
  %453 = add nsw i32 %452, -1
  %454 = load ptr, ptr %11, align 8, !tbaa !25
  %455 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %454)
  %456 = icmp eq i32 %453, 0
  br i1 %456, label %571, label %451, !llvm.loop !193

457:                                              ; preds = %434, %425
  %458 = getelementptr inbounds %struct.Exp_, ptr %347, i64 0, i32 1
  %459 = load i32, ptr %458, align 4, !tbaa !148
  %460 = icmp eq i32 %459, 8
  br i1 %460, label %461, label %540

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 7
  %463 = load i32, ptr %462, align 8, !tbaa !7
  %464 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 3
  %465 = load i32, ptr %464, align 8, !tbaa !142
  %466 = icmp ugt i32 %463, %465
  br i1 %466, label %467, label %540

467:                                              ; preds = %461
  %468 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
  store i32 %463, ptr %468, align 8, !tbaa !186
  %469 = getelementptr inbounds %struct.intnode, ptr %468, i64 0, i32 1
  store ptr %344, ptr %469, align 8, !tbaa !188
  %470 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %471 = add nsw i32 %470, 1
  store i32 %471, ptr @indentlevel, align 4, !tbaa !17
  br label %540

472:                                              ; preds = %351
  %473 = icmp eq i32 %349, 16
  br i1 %473, label %474, label %518

474:                                              ; preds = %472
  %475 = icmp eq ptr %345, null
  br i1 %475, label %518, label %476

476:                                              ; preds = %474
  %477 = load i32, ptr %345, align 8, !tbaa !186
  %478 = load ptr, ptr %232, align 8, !tbaa !13
  %479 = icmp eq ptr %478, null
  br i1 %479, label %483, label %480

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.Exp, ptr %478, i64 0, i32 3
  %482 = load i32, ptr %481, align 8, !tbaa !142
  br label %483

483:                                              ; preds = %480, %476
  %484 = phi i32 [ %482, %480 ], [ 0, %476 ]
  %485 = icmp eq i32 %477, %484
  br i1 %485, label %486, label %518

486:                                              ; preds = %483
  %487 = getelementptr inbounds %struct.intnode, ptr %345, i64 0, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !188
  call void @_ZdlPv(ptr noundef nonnull %345) #30
  %489 = call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %233, i32 noundef 0) #28
  %490 = icmp eq ptr %489, null
  br i1 %490, label %506, label %491

491:                                              ; preds = %486
  %492 = load ptr, ptr %11, align 8, !tbaa !25
  %493 = load ptr, ptr %231, align 8, !tbaa !13
  %494 = getelementptr inbounds %struct.Exp, ptr %493, i64 0, i32 3
  %495 = load i32, ptr %494, align 8, !tbaa !142
  %496 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %492, ptr noundef nonnull @.str.18, ptr noundef nonnull %489, i32 noundef %495) #28
  %497 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %505, label %499

499:                                              ; preds = %499, %491
  %500 = phi i32 [ %501, %499 ], [ %497, %491 ]
  %501 = add nsw i32 %500, -1
  %502 = load ptr, ptr %11, align 8, !tbaa !25
  %503 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %502)
  %504 = icmp eq i32 %501, 0
  br i1 %504, label %505, label %499, !llvm.loop !194

505:                                              ; preds = %499, %491
  call void @_ZdaPv(ptr noundef nonnull %489) #30
  br label %506

506:                                              ; preds = %505, %486
  %507 = load ptr, ptr %11, align 8, !tbaa !25
  %508 = call i64 @fwrite(ptr nonnull @.str.12.110, i64 4, i64 1, ptr %507)
  %509 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %510 = add nsw i32 %509, -1
  store i32 %510, ptr @indentlevel, align 4, !tbaa !17
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %571, label %512, !llvm.loop !184

512:                                              ; preds = %512, %506
  %513 = phi i32 [ %514, %512 ], [ %510, %506 ]
  %514 = add nsw i32 %513, -1
  %515 = load ptr, ptr %11, align 8, !tbaa !25
  %516 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %515)
  %517 = icmp eq i32 %514, 0
  br i1 %517, label %571, label %512, !llvm.loop !195

518:                                              ; preds = %483, %474, %472
  %519 = phi ptr [ %345, %483 ], [ null, %474 ], [ %346, %472 ]
  %520 = icmp eq ptr %224, null
  br i1 %520, label %540, label %521

521:                                              ; preds = %518
  %522 = load i32, ptr %224, align 8, !tbaa !186
  %523 = getelementptr inbounds %struct.Exp, ptr %233, i64 0, i32 3
  %524 = load i32, ptr %523, align 8, !tbaa !142
  %525 = icmp eq i32 %522, %524
  br i1 %525, label %526, label %540

526:                                              ; preds = %521
  %527 = getelementptr inbounds %struct.intnode, ptr %224, i64 0, i32 1
  %528 = load ptr, ptr %527, align 8, !tbaa !188
  call void @_ZdlPv(ptr noundef nonnull %224) #30
  %529 = load ptr, ptr %11, align 8, !tbaa !25
  %530 = call i64 @fwrite(ptr nonnull @.str.12.110, i64 4, i64 1, ptr %529)
  %531 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %532 = add nsw i32 %531, -1
  store i32 %532, ptr @indentlevel, align 4, !tbaa !17
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %540, label %534

534:                                              ; preds = %534, %526
  %535 = phi i32 [ %536, %534 ], [ %532, %526 ]
  %536 = add nsw i32 %535, -1
  %537 = load ptr, ptr %11, align 8, !tbaa !25
  %538 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %537)
  %539 = icmp eq i32 %536, 0
  br i1 %539, label %540, label %534, !llvm.loop !196

540:                                              ; preds = %534, %526, %521, %518, %467, %461, %457
  %541 = phi ptr [ %528, %526 ], [ %221, %521 ], [ %221, %518 ], [ %221, %457 ], [ %221, %461 ], [ %221, %467 ], [ %528, %534 ]
  %542 = phi ptr [ %344, %526 ], [ %344, %521 ], [ %344, %518 ], [ %344, %457 ], [ %344, %461 ], [ %468, %467 ], [ %344, %534 ]
  %543 = phi ptr [ %528, %526 ], [ %224, %521 ], [ null, %518 ], [ %224, %457 ], [ %224, %461 ], [ %224, %467 ], [ %528, %534 ]
  %544 = phi ptr [ %345, %526 ], [ %345, %521 ], [ %345, %518 ], [ %344, %457 ], [ %344, %461 ], [ %468, %467 ], [ %345, %534 ]
  %545 = phi ptr [ %519, %526 ], [ %519, %521 ], [ %519, %518 ], [ %344, %457 ], [ %344, %461 ], [ %468, %467 ], [ %519, %534 ]
  %546 = phi ptr [ %319, %526 ], [ %319, %521 ], [ %319, %518 ], [ %322, %457 ], [ %322, %461 ], [ %322, %467 ], [ %319, %534 ]
  %547 = call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %233, i32 noundef 0) #28
  %548 = icmp eq ptr %547, null
  br i1 %548, label %571, label %549

549:                                              ; preds = %540
  %550 = load ptr, ptr %11, align 8, !tbaa !25
  %551 = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %547, i32 noundef 123) #26
  %552 = icmp eq ptr %551, null
  %553 = select i1 %552, ptr @.str.20.116, ptr @.str.19.117
  %554 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %550, ptr noundef nonnull %553, ptr noundef nonnull %547) #28
  %555 = load ptr, ptr %11, align 8, !tbaa !25
  %556 = load ptr, ptr %231, align 8, !tbaa !13
  %557 = getelementptr inbounds %struct.Exp, ptr %556, i64 0, i32 3
  %558 = load i32, ptr %557, align 8, !tbaa !142
  %559 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %555, ptr noundef nonnull @.str.21.118, i32 noundef %558) #28
  %560 = load ptr, ptr %11, align 8, !tbaa !25
  %561 = call i32 @fputc(i32 10, ptr %560)
  %562 = load i32, ptr @indentlevel, align 4, !tbaa !17
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %570, label %564

564:                                              ; preds = %564, %549
  %565 = phi i32 [ %566, %564 ], [ %562, %549 ]
  %566 = add nsw i32 %565, -1
  %567 = load ptr, ptr %11, align 8, !tbaa !25
  %568 = call i64 @fwrite(ptr nonnull @.str.10.108, i64 2, i64 1, ptr %567)
  %569 = icmp eq i32 %566, 0
  br i1 %569, label %570, label %564, !llvm.loop !197

570:                                              ; preds = %564, %549
  call void @_ZdaPv(ptr noundef nonnull %547) #30
  br label %571

571:                                              ; preds = %570, %540, %512, %506, %451, %437, %419, %411, %392, %383, %306, %220
  %572 = phi ptr [ %541, %570 ], [ %221, %220 ], [ %541, %540 ], [ %440, %437 ], [ %221, %383 ], [ %221, %411 ], [ %221, %506 ], [ %221, %306 ], [ %440, %451 ], [ %221, %392 ], [ %221, %419 ], [ %221, %512 ]
  %573 = phi ptr [ %542, %570 ], [ %222, %220 ], [ %542, %540 ], [ %443, %437 ], [ %344, %383 ], [ %344, %411 ], [ %488, %506 ], [ %222, %306 ], [ %443, %451 ], [ %344, %392 ], [ %344, %419 ], [ %488, %512 ]
  %574 = phi ptr [ %322, %570 ], [ %223, %220 ], [ %322, %540 ], [ %322, %437 ], [ %385, %383 ], [ %322, %411 ], [ %322, %506 ], [ %307, %306 ], [ %322, %451 ], [ %385, %392 ], [ %322, %419 ], [ %322, %512 ]
  %575 = phi ptr [ %543, %570 ], [ %224, %220 ], [ %543, %540 ], [ %440, %437 ], [ %224, %383 ], [ %224, %411 ], [ %224, %506 ], [ %224, %306 ], [ %440, %451 ], [ %224, %392 ], [ %224, %419 ], [ %224, %512 ]
  %576 = phi ptr [ %544, %570 ], [ %225, %220 ], [ %544, %540 ], [ %443, %437 ], [ %345, %383 ], [ %345, %411 ], [ %488, %506 ], [ %225, %306 ], [ %443, %451 ], [ %345, %392 ], [ %345, %419 ], [ %488, %512 ]
  %577 = phi ptr [ %545, %570 ], [ %226, %220 ], [ %545, %540 ], [ %443, %437 ], [ %346, %383 ], [ %346, %411 ], [ %488, %506 ], [ %226, %306 ], [ %443, %451 ], [ %346, %392 ], [ %346, %419 ], [ %488, %512 ]
  %578 = phi ptr [ %321, %570 ], [ %227, %220 ], [ %321, %540 ], [ %321, %437 ], [ %387, %383 ], [ %321, %411 ], [ %321, %506 ], [ %310, %306 ], [ %321, %451 ], [ %387, %392 ], [ %321, %419 ], [ %321, %512 ]
  %579 = phi ptr [ %320, %570 ], [ %228, %220 ], [ %320, %540 ], [ %320, %437 ], [ %388, %383 ], [ %320, %411 ], [ %320, %506 ], [ %311, %306 ], [ %320, %451 ], [ %388, %392 ], [ %320, %419 ], [ %320, %512 ]
  %580 = phi ptr [ %546, %570 ], [ %229, %220 ], [ %546, %540 ], [ %322, %437 ], [ %385, %383 ], [ %322, %411 ], [ %319, %506 ], [ %307, %306 ], [ %322, %451 ], [ %385, %392 ], [ %322, %419 ], [ %319, %512 ]
  %581 = phi ptr [ %547, %570 ], [ %230, %220 ], [ null, %540 ], [ %230, %437 ], [ %230, %383 ], [ %230, %411 ], [ %489, %506 ], [ %291, %306 ], [ %230, %451 ], [ %230, %392 ], [ %230, %419 ], [ %489, %512 ]
  %582 = load ptr, ptr @donestkptr, align 8, !tbaa !13
  %583 = icmp eq ptr %232, %582
  br i1 %583, label %584, label %220

584:                                              ; preds = %571, %215
  %585 = load ptr, ptr %11, align 8, !tbaa !25
  %586 = call i64 @fwrite(ptr nonnull @.str.23.119, i64 3, i64 1, ptr %585)
  br label %590

587:                                              ; preds = %28
  %588 = load ptr, ptr %11, align 8, !tbaa !25
  %589 = call i32 @fputc(i32 59, ptr %588)
  br label %590

590:                                              ; preds = %587, %584, %169, %84, %64, %2
  %591 = phi i32 [ 1, %2 ], [ 0, %584 ], [ 0, %587 ], [ 1, %169 ], [ 1, %64 ], [ 1, %84 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #33
  ret i32 %591
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: mustprogress noreturn nounwind optsize uwtable
define internal void @_Z10fatalerroriz(i32 noundef %0, ...) #18 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #33
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !13
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [7 x ptr], ptr @errmsgs, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = call i32 @vfprintf(ptr noundef %3, ptr noundef %6, ptr noundef nonnull %2) #27
  call void @llvm.va_end(ptr nonnull %2)
  call void @exit(i32 noundef %0) #32
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_GLOBAL__sub_I_exp.cpp() #20 section ".text.startup" {
  store i32 1, ptr @std_exps, align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 0, i32 1), align 4, !tbaa !148
  %1 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @idnull, i64 0, i32 1), align 8, !tbaa !137
  store i32 %1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 0, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 0, i32 3), align 4, !tbaa !150
  store ptr @idnull, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 0, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 1), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 1, i32 1), align 4, !tbaa !148
  %2 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @idneg1, i64 0, i32 1), align 8, !tbaa !137
  store i32 %2, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 1, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 1, i32 3), align 4, !tbaa !150
  store ptr @idneg1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 1, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 2), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 2, i32 1), align 4, !tbaa !148
  %3 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id0i, i64 0, i32 1), align 8, !tbaa !137
  store i32 %3, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 2, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 2, i32 3), align 4, !tbaa !150
  store ptr @id0i, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 2, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 3), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 3, i32 1), align 4, !tbaa !148
  %4 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id1i, i64 0, i32 1), align 8, !tbaa !137
  store i32 %4, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 3, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 3, i32 3), align 4, !tbaa !150
  store ptr @id1i, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 3, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 4), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 4, i32 1), align 4, !tbaa !148
  %5 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id2i, i64 0, i32 1), align 8, !tbaa !137
  store i32 %5, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 4, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 4, i32 3), align 4, !tbaa !150
  store ptr @id2i, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 4, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 5), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 5, i32 1), align 4, !tbaa !148
  %6 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id3i, i64 0, i32 1), align 8, !tbaa !137
  store i32 %6, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 5, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 5, i32 3), align 4, !tbaa !150
  store ptr @id3i, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 5, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 6), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 6, i32 1), align 4, !tbaa !148
  %7 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id4i, i64 0, i32 1), align 8, !tbaa !137
  store i32 %7, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 6, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 6, i32 3), align 4, !tbaa !150
  store ptr @id4i, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 6, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 7), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 7, i32 1), align 4, !tbaa !148
  %8 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id5i, i64 0, i32 1), align 8, !tbaa !137
  store i32 %8, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 7, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 7, i32 3), align 4, !tbaa !150
  store ptr @id5i, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 7, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 8), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 8, i32 1), align 4, !tbaa !148
  %9 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id0L, i64 0, i32 1), align 8, !tbaa !137
  store i32 %9, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 8, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 8, i32 3), align 4, !tbaa !150
  store ptr @id0L, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 8, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 9), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 9, i32 1), align 4, !tbaa !148
  %10 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id1L, i64 0, i32 1), align 8, !tbaa !137
  store i32 %10, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 9, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 9, i32 3), align 4, !tbaa !150
  store ptr @id1L, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 9, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 10), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 10, i32 1), align 4, !tbaa !148
  %11 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id0f, i64 0, i32 1), align 8, !tbaa !137
  store i32 %11, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 10, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 10, i32 3), align 4, !tbaa !150
  store ptr @id0f, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 10, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 11), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 11, i32 1), align 4, !tbaa !148
  %12 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id1f, i64 0, i32 1), align 8, !tbaa !137
  store i32 %12, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 11, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 11, i32 3), align 4, !tbaa !150
  store ptr @id1f, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 11, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 12), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 12, i32 1), align 4, !tbaa !148
  %13 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id2f, i64 0, i32 1), align 8, !tbaa !137
  store i32 %13, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 12, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 12, i32 3), align 4, !tbaa !150
  store ptr @id2f, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 12, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 13), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 13, i32 1), align 4, !tbaa !148
  %14 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id0d, i64 0, i32 1), align 8, !tbaa !137
  store i32 %14, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 13, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 13, i32 3), align 4, !tbaa !150
  store ptr @id0d, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 13, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 14), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 14, i32 1), align 4, !tbaa !148
  %15 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @id1d, i64 0, i32 1), align 8, !tbaa !137
  store i32 %15, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 14, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 14, i32 3), align 4, !tbaa !150
  store ptr @id1d, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 14, i32 4), align 16, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 15), align 8, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 15, i32 1), align 4, !tbaa !148
  %16 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @idfalse, i64 0, i32 1), align 8, !tbaa !137
  store i32 %16, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 15, i32 2), align 16, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 15, i32 3), align 4, !tbaa !150
  store ptr @idfalse, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 15, i32 4), align 8, !tbaa !151
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 16), align 16, !tbaa !144
  store i32 1, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 16, i32 1), align 4, !tbaa !148
  %17 = load i32, ptr getelementptr inbounds (%struct.Id, ptr @idtrue, i64 0, i32 1), align 8, !tbaa !137
  store i32 %17, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 16, i32 2), align 8, !tbaa !149
  store i32 39, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 16, i32 3), align 4, !tbaa !150
  store ptr @idtrue, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 16, i32 4), align 16, !tbaa !151
  store <4 x i32> <i32 1, i32 8, i32 0, i32 39>, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 17), align 8, !tbaa !7
  store ptr null, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 17, i32 4), align 8, !tbaa !151
  store <4 x i32> <i32 1, i32 5, i32 10, i32 24>, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 18), align 16, !tbaa !7
  store ptr null, ptr getelementptr inbounds ([19 x %struct.Exp_], ptr @std_exps, i64 0, i64 18, i32 4), align 16, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_Z7killexpP3Exp(ptr nocapture noundef %0) #21 {
  %2 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !140
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !140
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef i32 @_Z6notexpPP3Exp(ptr nocapture noundef %0) #3 personality ptr @__gxx_personality_v0 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi ptr [ %0, %1 ], [ %20, %16 ]
  %4 = phi i1 [ false, %1 ], [ true, %16 ]
  %5 = load ptr, ptr %3, align 8, !tbaa !13
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  %7 = getelementptr inbounds %struct.Exp_, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !7
  switch i32 %8, label %34 [
    i32 34, label %9
    i32 36, label %15
    i32 35, label %16
    i32 11, label %21
    i32 10, label %21
    i32 28, label %29
    i32 29, label %29
    i32 30, label %29
    i32 31, label %29
    i32 32, label %29
    i32 33, label %29
  ]

9:                                                ; preds = %2
  %.lcssa13 = phi ptr [ %3, %2 ]
  %.lcssa9 = phi i1 [ %4, %2 ]
  %.lcssa5 = phi ptr [ %5, %2 ]
  %10 = getelementptr inbounds %struct.Exp, ptr %.lcssa5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  store ptr %11, ptr %.lcssa13, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.Exp, ptr %.lcssa5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !140
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !140
  br label %53

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ 35, %15 ], [ 36, %2 ]
  store i32 %17, ptr %7, align 4, !tbaa !150
  %18 = getelementptr inbounds %struct.Exp, ptr %5, i64 0, i32 4
  %19 = tail call noundef i32 @_Z6notexpPP3Exp(ptr noundef nonnull %18) #28, !range !198
  %20 = getelementptr inbounds %struct.Exp, ptr %5, i64 0, i32 5
  br label %2

21:                                               ; preds = %2, %2
  %.lcssa14 = phi ptr [ %3, %2 ], [ %3, %2 ]
  %.lcssa10 = phi i1 [ %4, %2 ], [ %4, %2 ]
  %.lcssa6 = phi ptr [ %5, %2 ], [ %5, %2 ]
  %.lcssa2 = phi ptr [ %6, %2 ], [ %6, %2 ]
  %22 = getelementptr inbounds %struct.Exp, ptr %.lcssa6, i64 0, i32 4
  %23 = tail call noundef i32 @_Z6notexpPP3Exp(ptr noundef nonnull %22) #28, !range !198
  %24 = getelementptr inbounds %struct.Exp, ptr %.lcssa6, i64 0, i32 5
  %25 = tail call noundef i32 @_Z6notexpPP3Exp(ptr noundef nonnull %24) #28, !range !198
  %26 = load ptr, ptr %.lcssa6, align 8, !tbaa !152
  %27 = getelementptr inbounds %struct.Exp_, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !17
  br label %29

29:                                               ; preds = %21, %2, %2, %2, %2, %2, %2
  %.lcssa11 = phi i1 [ %.lcssa10, %21 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ], [ %4, %2 ]
  %30 = phi i32 [ %28, %21 ], [ %8, %2 ], [ %8, %2 ], [ %8, %2 ], [ %8, %2 ], [ %8, %2 ], [ %8, %2 ]
  %31 = phi ptr [ %26, %21 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ], [ %6, %2 ]
  %32 = getelementptr inbounds %struct.Exp_, ptr %31, i64 0, i32 3
  %33 = xor i32 %30, 1
  store i32 %33, ptr %32, align 4, !tbaa !17
  br label %53

34:                                               ; preds = %2
  %.lcssa12 = phi ptr [ %3, %2 ]
  %.lcssa8 = phi i1 [ %4, %2 ]
  %.lcssa4 = phi ptr [ %5, %2 ]
  %.lcssa = phi ptr [ %6, %2 ]
  %35 = getelementptr inbounds %struct.Exp_, ptr %.lcssa, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !149
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @stderr, align 8, !tbaa !13
  %40 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 24, i64 1, ptr %39) #31
  br label %53

41:                                               ; preds = %34
  %42 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
  %43 = getelementptr inbounds %struct.Exp, ptr %.lcssa4, i64 0, i32 2
  %44 = getelementptr inbounds %struct.Exp, ptr %42, i64 0, i32 1
  store i32 1, ptr %44, align 8, !tbaa !140
  %45 = getelementptr inbounds %struct.Exp, ptr %42, i64 0, i32 2
  %46 = load <2 x i32>, ptr %43, align 4, !tbaa !17
  store <2 x i32> %46, ptr %45, align 4, !tbaa !17
  %47 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %48 unwind label %51

48:                                               ; preds = %41
  store <4 x i32> <i32 0, i32 2, i32 10, i32 34>, ptr %47, align 8, !tbaa !7
  store ptr %47, ptr %42, align 8, !tbaa !152
  %49 = getelementptr inbounds %struct.Exp, ptr %42, i64 0, i32 4
  store ptr %.lcssa4, ptr %49, align 8, !tbaa !155
  %50 = getelementptr inbounds %struct.Exp, ptr %42, i64 0, i32 5
  store ptr null, ptr %50, align 8, !tbaa !156
  store ptr %42, ptr %.lcssa12, align 8, !tbaa !13
  br label %53

51:                                               ; preds = %41
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %42) #30
  resume { ptr, i32 } %52

53:                                               ; preds = %48, %38, %29, %9
  %54 = phi i1 [ %.lcssa8, %38 ], [ %.lcssa8, %48 ], [ %.lcssa11, %29 ], [ %.lcssa9, %9 ]
  %55 = phi i32 [ 1, %38 ], [ 0, %48 ], [ 0, %29 ], [ 0, %9 ]
  %56 = select i1 %54, i32 0, i32 %55
  ret i32 %56
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZN3Exp8toStringEj(ptr nocapture noundef nonnull align 8 dereferenceable(64) %0, i32 %1) #13 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !152
  %4 = getelementptr inbounds %struct.Exp_, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !148
  switch i32 %5, label %454 [
    i32 1, label %6
    i32 2, label %16
    i32 3, label %97
    i32 4, label %134
    i32 5, label %201
    i32 6, label %294
    i32 7, label %382
    i32 8, label %415
    i32 9, label %434
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Exp_, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !151
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #26
  %11 = add i64 %10, 1
  %12 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %11) #29
  %13 = load ptr, ptr %7, align 8, !tbaa !151
  %14 = load ptr, ptr %13, align 8, !tbaa !134
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) %14) #25
  br label %95

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !140
  %19 = add i32 %18, -1
  %20 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !155
  %22 = getelementptr inbounds %struct.Exp, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !140
  %24 = add i32 %19, %23
  store i32 %24, ptr %22, align 8, !tbaa !140
  %25 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %21, i32 poison) #28
  %26 = load ptr, ptr %0, align 8, !tbaa !152
  %27 = getelementptr inbounds %struct.Exp_, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !150
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %30, label %63

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.Exp_, ptr %26, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !149
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load i32, ptr %17, align 8, !tbaa !140
  %36 = add i32 %35, -1
  %37 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !156
  %39 = getelementptr inbounds %struct.Exp, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !140
  %41 = add i32 %36, %40
  store i32 %41, ptr %39, align 8, !tbaa !140
  %42 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %38, i32 poison) #28
  %43 = load ptr, ptr %37, align 8, !tbaa !156
  %44 = getelementptr inbounds %struct.Exp, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !140
  %46 = add i32 %45, -1
  store i32 %46, ptr %44, align 8, !tbaa !140
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #26
  %48 = add i64 %47, 3
  %49 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %48) #29
  %50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) @.str.1.138, ptr noundef nonnull %42) #25
  tail call void @_ZdaPv(ptr noundef nonnull %42) #30
  br label %68

51:                                               ; preds = %30
  %52 = zext i32 %32 to i64
  %53 = getelementptr inbounds [0 x ptr], ptr @type2str, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %54) #26
  %56 = add i64 %55, 3
  %57 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %56) #29
  %58 = load i32, ptr %31, align 8, !tbaa !149
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [0 x ptr], ptr @type2str, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) @.str.1.138, ptr noundef %61) #25
  br label %68

63:                                               ; preds = %16
  %64 = zext i32 %28 to i64
  %65 = getelementptr inbounds [0 x ptr], ptr @op2str, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = tail call noalias ptr @strdup(ptr noundef %66) #25
  br label %68

68:                                               ; preds = %63, %51, %34
  %69 = phi ptr [ %49, %34 ], [ %57, %51 ], [ %67, %63 ]
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #26
  %71 = add i64 %70, 5
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #26
  %73 = add i64 %71, %72
  %74 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %73) #29
  %75 = load ptr, ptr %20, align 8, !tbaa !155
  %76 = load ptr, ptr %75, align 8, !tbaa !152
  %77 = getelementptr inbounds %struct.Exp_, ptr %76, i64 0, i32 3
  %78 = load i32, ptr %77, align 4, !tbaa !150
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !17
  %82 = load ptr, ptr %0, align 8, !tbaa !152
  %83 = getelementptr inbounds %struct.Exp_, ptr %82, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !150
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !17
  %88 = icmp slt i32 %81, %87
  %89 = select i1 %88, ptr @.str.2.139, ptr @.str.3.140
  %90 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull dereferenceable(1) %89, ptr noundef %69, ptr noundef nonnull %25) #25
  %91 = load ptr, ptr %20, align 8, !tbaa !155
  %92 = getelementptr inbounds %struct.Exp, ptr %91, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !140
  %94 = add i32 %93, -1
  store i32 %94, ptr %92, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %25) #30
  tail call void @free(ptr noundef %69) #25
  br label %95

95:                                               ; preds = %434, %415, %382, %375, %201, %134, %97, %68, %6
  %96 = phi ptr [ %117, %97 ], [ %191, %134 ], [ %280, %201 ], [ %405, %382 ], [ %428, %415 ], [ %446, %434 ], [ %380, %375 ], [ %74, %68 ], [ %12, %6 ]
  ret ptr %96

97:                                               ; preds = %2
  %98 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !140
  %100 = add i32 %99, -1
  %101 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !155
  %103 = getelementptr inbounds %struct.Exp, ptr %102, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !140
  %105 = add i32 %100, %104
  store i32 %105, ptr %103, align 8, !tbaa !140
  %106 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %102, i32 poison) #28
  %107 = load ptr, ptr %0, align 8, !tbaa !152
  %108 = getelementptr inbounds %struct.Exp_, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !150
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [0 x ptr], ptr @op2str, i64 0, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !13
  %113 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %112) #26
  %114 = add i64 %113, 5
  %115 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106) #26
  %116 = add i64 %114, %115
  %117 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %116) #29
  %118 = load ptr, ptr %101, align 8, !tbaa !155
  %119 = load ptr, ptr %118, align 8, !tbaa !152
  %120 = getelementptr inbounds %struct.Exp_, ptr %119, i64 0, i32 3
  %121 = load i32, ptr %120, align 4, !tbaa !150
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !17
  %125 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %110
  %126 = load i32, ptr %125, align 4, !tbaa !17
  %127 = icmp slt i32 %124, %126
  %128 = select i1 %127, ptr @.str.4.141, ptr @.str.3.140
  %129 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) %128, ptr noundef nonnull %106, ptr noundef %112) #25
  %130 = load ptr, ptr %101, align 8, !tbaa !155
  %131 = getelementptr inbounds %struct.Exp, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !140
  %133 = add i32 %132, -1
  store i32 %133, ptr %131, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %106) #30
  br label %95

134:                                              ; preds = %2
  %135 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !140
  %137 = add i32 %136, -1
  %138 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !155
  %140 = getelementptr inbounds %struct.Exp, ptr %139, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !140
  %142 = add i32 %137, %141
  store i32 %142, ptr %140, align 8, !tbaa !140
  %143 = load i32, ptr %135, align 8, !tbaa !140
  %144 = add i32 %143, -1
  %145 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !156
  %147 = getelementptr inbounds %struct.Exp, ptr %146, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !140
  %149 = add i32 %144, %148
  store i32 %149, ptr %147, align 8, !tbaa !140
  %150 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %139, i32 poison) #28
  %151 = load ptr, ptr %145, align 8, !tbaa !156
  %152 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %151, i32 poison) #28
  %153 = load ptr, ptr %0, align 8, !tbaa !152
  %154 = getelementptr inbounds %struct.Exp_, ptr %153, i64 0, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !150
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [0 x ptr], ptr @op2str, i64 0, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !13
  %159 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %158) #26
  %160 = add i64 %159, 9
  %161 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %160) #29
  %162 = load ptr, ptr %138, align 8, !tbaa !155
  %163 = load ptr, ptr %162, align 8, !tbaa !152
  %164 = getelementptr inbounds %struct.Exp_, ptr %163, i64 0, i32 3
  %165 = load i32, ptr %164, align 4, !tbaa !150
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !17
  %169 = load i32, ptr %154, align 4, !tbaa !150
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !17
  %173 = icmp slt i32 %168, %172
  %174 = select i1 %173, ptr @.str.1.138, ptr @.str.6.142
  %175 = load ptr, ptr %145, align 8, !tbaa !156
  %176 = load ptr, ptr %175, align 8, !tbaa !152
  %177 = getelementptr inbounds %struct.Exp_, ptr %176, i64 0, i32 3
  %178 = load i32, ptr %177, align 4, !tbaa !150
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !17
  %182 = icmp slt i32 %181, %172
  %183 = select i1 %182, ptr @.str.1.138, ptr @.str.6.142
  %184 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull dereferenceable(1) @.str.5.143, ptr noundef nonnull %174, ptr noundef %158, ptr noundef nonnull %183) #25
  %185 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %161) #26
  %186 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %150) #26
  %187 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %152) #26
  %188 = add i64 %185, -3
  %189 = add i64 %188, %186
  %190 = add i64 %189, %187
  %191 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %190) #29
  %192 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %191, ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull %150, ptr noundef nonnull %152) #25
  tail call void @_ZdaPv(ptr noundef nonnull %161) #30
  %193 = load ptr, ptr %138, align 8, !tbaa !155
  %194 = getelementptr inbounds %struct.Exp, ptr %193, i64 0, i32 1
  %195 = load i32, ptr %194, align 8, !tbaa !140
  %196 = add i32 %195, -1
  store i32 %196, ptr %194, align 8, !tbaa !140
  %197 = load ptr, ptr %145, align 8, !tbaa !156
  %198 = getelementptr inbounds %struct.Exp, ptr %197, i64 0, i32 1
  %199 = load i32, ptr %198, align 8, !tbaa !140
  %200 = add i32 %199, -1
  store i32 %200, ptr %198, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %150) #30
  tail call void @_ZdaPv(ptr noundef nonnull %152) #30
  br label %95

201:                                              ; preds = %2
  %202 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !140
  %204 = add i32 %203, -1
  %205 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %206 = load ptr, ptr %205, align 8, !tbaa !155
  %207 = getelementptr inbounds %struct.Exp, ptr %206, i64 0, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !140
  %209 = add i32 %204, %208
  store i32 %209, ptr %207, align 8, !tbaa !140
  %210 = load i32, ptr %202, align 8, !tbaa !140
  %211 = add i32 %210, -1
  %212 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 5
  %213 = load ptr, ptr %212, align 8, !tbaa !156
  %214 = getelementptr inbounds %struct.Exp, ptr %213, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !140
  %216 = add i32 %211, %215
  store i32 %216, ptr %214, align 8, !tbaa !140
  %217 = load i32, ptr %202, align 8, !tbaa !140
  %218 = add i32 %217, -1
  %219 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !7
  %221 = getelementptr inbounds %struct.Exp, ptr %220, i64 0, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !140
  %223 = add i32 %218, %222
  store i32 %223, ptr %221, align 8, !tbaa !140
  %224 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %206, i32 poison) #28
  %225 = load ptr, ptr %212, align 8, !tbaa !156
  %226 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %225, i32 poison) #28
  %227 = load ptr, ptr %219, align 8, !tbaa !7
  %228 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %227, i32 poison) #28
  %229 = load ptr, ptr %0, align 8, !tbaa !152
  %230 = getelementptr inbounds %struct.Exp_, ptr %229, i64 0, i32 3
  %231 = load i32, ptr %230, align 4, !tbaa !150
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [0 x ptr], ptr @op2str, i64 0, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !13
  %235 = add nsw i32 %231, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [0 x ptr], ptr @op2str, i64 0, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !13
  %239 = tail call noalias noundef nonnull dereferenceable(19) ptr @_Znam(i64 noundef 19) #29
  %240 = load ptr, ptr %205, align 8, !tbaa !155
  %241 = load ptr, ptr %240, align 8, !tbaa !152
  %242 = getelementptr inbounds %struct.Exp_, ptr %241, i64 0, i32 3
  %243 = load i32, ptr %242, align 4, !tbaa !150
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !17
  %247 = load i32, ptr %230, align 4, !tbaa !150
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !17
  %251 = icmp slt i32 %246, %250
  %252 = select i1 %251, ptr @.str.1.138, ptr @.str.6.142
  %253 = load ptr, ptr %212, align 8, !tbaa !156
  %254 = load ptr, ptr %253, align 8, !tbaa !152
  %255 = getelementptr inbounds %struct.Exp_, ptr %254, i64 0, i32 3
  %256 = load i32, ptr %255, align 4, !tbaa !150
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !17
  %260 = icmp slt i32 %259, %250
  %261 = select i1 %260, ptr @.str.1.138, ptr @.str.6.142
  %262 = load ptr, ptr %219, align 8, !tbaa !7
  %263 = load ptr, ptr %262, align 8, !tbaa !152
  %264 = getelementptr inbounds %struct.Exp_, ptr %263, i64 0, i32 3
  %265 = load i32, ptr %264, align 4, !tbaa !150
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [0 x i32], ptr @op_prec, i64 0, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !17
  %269 = icmp slt i32 %268, %250
  %270 = select i1 %269, ptr @.str.1.138, ptr @.str.6.142
  %271 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %239, ptr noundef nonnull dereferenceable(1) @.str.7.144, ptr noundef nonnull %252, ptr noundef %234, ptr noundef nonnull %261, ptr noundef %238, ptr noundef nonnull %270) #25
  %272 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %239) #26
  %273 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %224) #26
  %274 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %226) #26
  %275 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %228) #26
  %276 = add i64 %272, -5
  %277 = add i64 %276, %273
  %278 = add i64 %277, %274
  %279 = add i64 %278, %275
  %280 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %279) #29
  %281 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %280, ptr noundef nonnull dereferenceable(1) %239, ptr noundef nonnull %224, ptr noundef nonnull %226, ptr noundef nonnull %228) #25
  tail call void @_ZdaPv(ptr noundef nonnull %239) #30
  %282 = load ptr, ptr %205, align 8, !tbaa !155
  %283 = getelementptr inbounds %struct.Exp, ptr %282, i64 0, i32 1
  %284 = load i32, ptr %283, align 8, !tbaa !140
  %285 = add i32 %284, -1
  store i32 %285, ptr %283, align 8, !tbaa !140
  %286 = load ptr, ptr %212, align 8, !tbaa !156
  %287 = getelementptr inbounds %struct.Exp, ptr %286, i64 0, i32 1
  %288 = load i32, ptr %287, align 8, !tbaa !140
  %289 = add i32 %288, -1
  store i32 %289, ptr %287, align 8, !tbaa !140
  %290 = load ptr, ptr %219, align 8, !tbaa !7
  %291 = getelementptr inbounds %struct.Exp, ptr %290, i64 0, i32 1
  %292 = load i32, ptr %291, align 8, !tbaa !140
  %293 = add i32 %292, -1
  store i32 %293, ptr %291, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %224) #30
  tail call void @_ZdaPv(ptr noundef nonnull %226) #30
  tail call void @_ZdaPv(ptr noundef nonnull %228) #30
  br label %95

294:                                              ; preds = %2
  %295 = tail call noalias noundef nonnull dereferenceable(256) ptr @_Znam(i64 noundef 256) #29
  %296 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %297 = load i32, ptr %296, align 8, !tbaa !140
  %298 = add i32 %297, -1
  %299 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %300 = load ptr, ptr %299, align 8, !tbaa !155
  %301 = getelementptr inbounds %struct.Exp, ptr %300, i64 0, i32 1
  %302 = load i32, ptr %301, align 8, !tbaa !140
  %303 = add i32 %298, %302
  store i32 %303, ptr %301, align 8, !tbaa !140
  %304 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %300, i32 poison) #28
  %305 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %304) #26
  %306 = trunc i64 %305 to i32
  %307 = add i32 %306, 3
  %308 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %295, ptr noundef nonnull dereferenceable(1) @.str.8.145, ptr noundef nonnull %304) #25
  %309 = load ptr, ptr %299, align 8, !tbaa !155
  %310 = getelementptr inbounds %struct.Exp, ptr %309, i64 0, i32 1
  %311 = load i32, ptr %310, align 8, !tbaa !140
  %312 = add i32 %311, -1
  store i32 %312, ptr %310, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %304) #30
  %313 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 7
  %314 = load i32, ptr %313, align 8, !tbaa !7
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %375, label %316

316:                                              ; preds = %294
  %317 = add nsw i32 %314, -1
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %353, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 8
  %321 = sext i32 %317 to i64
  br label %322

322:                                              ; preds = %322, %319
  %323 = phi i64 [ %321, %319 ], [ %350, %322 ]
  %324 = phi i32 [ %307, %319 ], [ %341, %322 ]
  %325 = load i32, ptr %296, align 8, !tbaa !140
  %326 = add i32 %325, -1
  %327 = load ptr, ptr %320, align 8, !tbaa !7
  %328 = getelementptr inbounds ptr, ptr %327, i64 %323
  %329 = load ptr, ptr %328, align 8, !tbaa !13
  %330 = getelementptr inbounds %struct.Exp, ptr %329, i64 0, i32 1
  %331 = load i32, ptr %330, align 8, !tbaa !140
  %332 = add i32 %326, %331
  store i32 %332, ptr %330, align 8, !tbaa !140
  %333 = load ptr, ptr %320, align 8, !tbaa !7
  %334 = getelementptr inbounds ptr, ptr %333, i64 %323
  %335 = load ptr, ptr %334, align 8, !tbaa !13
  %336 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %335, i32 poison) #28
  %337 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %295, ptr noundef nonnull dereferenceable(1) %336) #25
  %338 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %336) #26
  %339 = trunc i64 %338 to i32
  %340 = add i32 %324, 2
  %341 = add i32 %340, %339
  %342 = load ptr, ptr %320, align 8, !tbaa !7
  %343 = getelementptr inbounds ptr, ptr %342, i64 %323
  %344 = load ptr, ptr %343, align 8, !tbaa !13
  %345 = getelementptr inbounds %struct.Exp, ptr %344, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !140
  %347 = add i32 %346, -1
  store i32 %347, ptr %345, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %336) #30
  %348 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %295)
  %349 = getelementptr inbounds i8, ptr %295, i64 %348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %349, ptr noundef nonnull align 1 dereferenceable(3) @.str.9.146, i64 3, i1 false)
  %350 = add nsw i64 %323, -1
  %351 = and i64 %350, 4294967295
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %322, !llvm.loop !199

353:                                              ; preds = %322, %316
  %354 = phi i32 [ %307, %316 ], [ %341, %322 ]
  %355 = load i32, ptr %296, align 8, !tbaa !140
  %356 = add i32 %355, -1
  %357 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 8
  %358 = load ptr, ptr %357, align 8, !tbaa !7
  %359 = load ptr, ptr %358, align 8, !tbaa !13
  %360 = getelementptr inbounds %struct.Exp, ptr %359, i64 0, i32 1
  %361 = load i32, ptr %360, align 8, !tbaa !140
  %362 = add i32 %356, %361
  store i32 %362, ptr %360, align 8, !tbaa !140
  %363 = load ptr, ptr %357, align 8, !tbaa !7
  %364 = load ptr, ptr %363, align 8, !tbaa !13
  %365 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %364, i32 poison) #28
  %366 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %295, ptr noundef nonnull dereferenceable(1) %365) #25
  %367 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %365) #26
  %368 = trunc i64 %367 to i32
  %369 = add i32 %354, %368
  %370 = load ptr, ptr %357, align 8, !tbaa !7
  %371 = load ptr, ptr %370, align 8, !tbaa !13
  %372 = getelementptr inbounds %struct.Exp, ptr %371, i64 0, i32 1
  %373 = load i32, ptr %372, align 8, !tbaa !140
  %374 = add i32 %373, -1
  store i32 %374, ptr %372, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %365) #30
  br label %375

375:                                              ; preds = %353, %294
  %376 = phi i32 [ %369, %353 ], [ %307, %294 ]
  %377 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %295)
  %378 = getelementptr inbounds i8, ptr %295, i64 %377
  store i16 41, ptr %378, align 1
  %379 = sext i32 %376 to i64
  %380 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %379) #29
  %381 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %380, ptr noundef nonnull dereferenceable(1) %295) #25
  tail call void @_ZdaPv(ptr noundef nonnull %295) #30
  br label %95

382:                                              ; preds = %2
  %383 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %384 = load i32, ptr %383, align 8, !tbaa !140
  %385 = add i32 %384, -1
  %386 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %387 = load ptr, ptr %386, align 8, !tbaa !155
  %388 = getelementptr inbounds %struct.Exp, ptr %387, i64 0, i32 1
  %389 = load i32, ptr %388, align 8, !tbaa !140
  %390 = add i32 %385, %389
  store i32 %390, ptr %388, align 8, !tbaa !140
  %391 = load i32, ptr %383, align 8, !tbaa !140
  %392 = add i32 %391, -1
  %393 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 5
  %394 = load ptr, ptr %393, align 8, !tbaa !156
  %395 = getelementptr inbounds %struct.Exp, ptr %394, i64 0, i32 1
  %396 = load i32, ptr %395, align 8, !tbaa !140
  %397 = add i32 %392, %396
  store i32 %397, ptr %395, align 8, !tbaa !140
  %398 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %387, i32 poison) #28
  %399 = load ptr, ptr %393, align 8, !tbaa !156
  %400 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %399, i32 poison) #28
  %401 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %398) #26
  %402 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %400) #26
  %403 = add i64 %401, 3
  %404 = add i64 %403, %402
  %405 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %404) #29
  %406 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %405, ptr noundef nonnull dereferenceable(1) @.str.11.147, ptr noundef nonnull %398, ptr noundef nonnull %400) #25
  %407 = load ptr, ptr %386, align 8, !tbaa !155
  %408 = getelementptr inbounds %struct.Exp, ptr %407, i64 0, i32 1
  %409 = load i32, ptr %408, align 8, !tbaa !140
  %410 = add i32 %409, -1
  store i32 %410, ptr %408, align 8, !tbaa !140
  %411 = load ptr, ptr %393, align 8, !tbaa !156
  %412 = getelementptr inbounds %struct.Exp, ptr %411, i64 0, i32 1
  %413 = load i32, ptr %412, align 8, !tbaa !140
  %414 = add i32 %413, -1
  store i32 %414, ptr %412, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %398) #30
  tail call void @_ZdaPv(ptr noundef nonnull %400) #30
  br label %95

415:                                              ; preds = %2
  %416 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %417 = tail call noundef i32 @_Z6notexpPP3Exp(ptr noundef nonnull %416) #28, !range !198
  %418 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %419 = load i32, ptr %418, align 8, !tbaa !140
  %420 = add i32 %419, -1
  %421 = load ptr, ptr %416, align 8, !tbaa !155
  %422 = getelementptr inbounds %struct.Exp, ptr %421, i64 0, i32 1
  %423 = load i32, ptr %422, align 8, !tbaa !140
  %424 = add i32 %420, %423
  store i32 %424, ptr %422, align 8, !tbaa !140
  %425 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %421, i32 poison) #28
  %426 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %425) #26
  %427 = add i64 %426, 8
  %428 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %427) #29
  %429 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %428, ptr noundef nonnull dereferenceable(1) @.str.12.148, ptr noundef nonnull %425) #25
  %430 = load ptr, ptr %416, align 8, !tbaa !155
  %431 = getelementptr inbounds %struct.Exp, ptr %430, i64 0, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !140
  %433 = add i32 %432, -1
  store i32 %433, ptr %431, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %425) #30
  br label %95

434:                                              ; preds = %2
  %435 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 1
  %436 = load i32, ptr %435, align 8, !tbaa !140
  %437 = add i32 %436, -1
  %438 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 4
  %439 = load ptr, ptr %438, align 8, !tbaa !155
  %440 = getelementptr inbounds %struct.Exp, ptr %439, i64 0, i32 1
  %441 = load i32, ptr %440, align 8, !tbaa !140
  %442 = add i32 %437, %441
  store i32 %442, ptr %440, align 8, !tbaa !140
  %443 = tail call noundef ptr @_ZN3Exp8toStringEj(ptr noundef nonnull align 8 dereferenceable(64) %439, i32 poison) #28
  %444 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %443) #26
  %445 = add i64 %444, 29
  %446 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %445) #29
  %447 = getelementptr inbounds %struct.Exp, ptr %0, i64 0, i32 6
  %448 = load i32, ptr %447, align 8, !tbaa !7
  %449 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %446, ptr noundef nonnull dereferenceable(1) @.str.13.149, ptr noundef nonnull %443, i32 noundef %448) #25
  %450 = load ptr, ptr %438, align 8, !tbaa !155
  %451 = getelementptr inbounds %struct.Exp, ptr %450, i64 0, i32 1
  %452 = load i32, ptr %451, align 8, !tbaa !140
  %453 = add i32 %452, -1
  store i32 %453, ptr %451, align 8, !tbaa !140
  tail call void @_ZdaPv(ptr noundef nonnull %443) #30
  br label %95

454:                                              ; preds = %2
  %455 = load ptr, ptr @stderr, align 8, !tbaa !13
  %456 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %455, ptr noundef nonnull @.str.14.150, i32 noundef %5) #27
  tail call void @exit(i32 noundef -1) #32
  unreachable
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) #23 {
  %3 = alloca %struct.Classfile, align 8
  %4 = load ptr, ptr @stderr, align 8, !tbaa !13
  %5 = tail call i64 @fwrite(ptr nonnull @.str.151, i64 59, i64 1, ptr %4) #31
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #33
  call void @_ZN9ClassfileC1EiPPc(ptr noundef nonnull align 8 dereferenceable(168) %3, i32 noundef %0, ptr noundef %1) #28
  call void @_ZN9Classfile4readEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #28
  call void @_ZN9Classfile5printEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #28
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #33
  ret i32 0
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_Z8sig2typePc(ptr nocapture noundef readonly %0) #24 {
  %2 = load i8, ptr %0, align 1, !tbaa !7
  %3 = sext i8 %2 to i32
  switch i32 %3, label %15 [
    i32 66, label %18
    i32 67, label %4
    i32 68, label %5
    i32 70, label %6
    i32 73, label %7
    i32 74, label %8
    i32 76, label %9
    i32 83, label %10
    i32 90, label %11
    i32 91, label %12
    i32 40, label %13
    i32 86, label %14
  ]

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  br label %18

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load ptr, ptr @stderr, align 8, !tbaa !13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.9.251, i64 38, i64 1, ptr %16) #31
  tail call void @exit(i32 noundef 1) #32
  unreachable

18:                                               ; preds = %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %1
  %19 = phi i32 [ 0, %14 ], [ 11, %13 ], [ 8, %12 ], [ 10, %11 ], [ 3, %10 ], [ 8, %9 ], [ 5, %8 ], [ 4, %7 ], [ 6, %6 ], [ 7, %5 ], [ 2, %4 ], [ 1, %1 ]
  ret i32 %19
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) #13 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #33
  %7 = load ptr, ptr %2, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !13
  %9 = load i8, ptr %7, align 1, !tbaa !7
  %10 = sext i8 %9 to i32
  switch i32 %10, label %265 [
    i32 66, label %17
    i32 67, label %19
    i32 68, label %21
    i32 70, label %23
    i32 73, label %25
    i32 74, label %27
    i32 76, label %29
    i32 83, label %72
    i32 90, label %74
    i32 91, label %11
    i32 40, label %95
    i32 86, label %263
  ]

11:                                               ; preds = %5
  %12 = load i8, ptr %8, align 1, !tbaa !7
  %13 = add i8 %12, -48
  %14 = icmp ult i8 %13, 10
  br i1 %14, label %76, label %15

15:                                               ; preds = %11
  %16 = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) #28, !range !198
  br label %93

17:                                               ; preds = %5
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.10.254, ptr noundef %3) #28
  br label %268

19:                                               ; preds = %5
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.11.255, ptr noundef %3) #28
  br label %268

21:                                               ; preds = %5
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.12.256, ptr noundef %3) #28
  br label %268

23:                                               ; preds = %5
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.13.257, ptr noundef %3) #28
  br label %268

25:                                               ; preds = %5
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.14.258, ptr noundef %3) #28
  br label %268

27:                                               ; preds = %5
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.15.259, ptr noundef %3) #28
  br label %268

29:                                               ; preds = %29, %5
  %30 = phi ptr [ %31, %29 ], [ %8, %5 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %2, align 8, !tbaa !13
  %32 = load i8, ptr %30, align 1, !tbaa !7
  %33 = icmp eq i8 %32, 59
  br i1 %33, label %34, label %29, !llvm.loop !200

34:                                               ; preds = %29
  %.lcssa = phi ptr [ %31, %29 ]
  %35 = ptrtoint ptr %.lcssa to i64
  %36 = ptrtoint ptr %8 to i64
  %37 = sub i64 %35, %36
  %38 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %37) #29
  %39 = xor i64 %36, -1
  %40 = add i64 %35, %39
  %41 = tail call ptr @strncpy(ptr noundef nonnull %38, ptr noundef nonnull %8, i64 noundef %40) #25
  %42 = getelementptr inbounds i8, ptr %38, i64 %40
  store i8 0, ptr %42, align 1, !tbaa !7
  store ptr %38, ptr %6, align 8, !tbaa !13
  %43 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(11) @.str.16.260, i64 noundef 10) #26
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = getelementptr inbounds i8, ptr %38, i64 10
  br label %54

47:                                               ; preds = %51, %34
  %48 = phi ptr [ %49, %51 ], [ %38, %34 ]
  %49 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %48, i32 noundef 47) #26
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i8 46, ptr %49, align 1, !tbaa !7
  br label %47, !llvm.loop !201

52:                                               ; preds = %47
  %53 = load ptr, ptr %6, align 8, !tbaa !13
  br label %54

54:                                               ; preds = %52, %45
  %55 = phi ptr [ %53, %52 ], [ %46, %45 ]
  %56 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !56
  %58 = icmp eq ptr %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #26
  %61 = shl i64 %60, 32
  %62 = ashr exact i64 %61, 32
  %63 = tail call i32 @strncmp(ptr noundef %55, ptr noundef nonnull %57, i64 noundef %62) #26
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = add i64 %61, 4294967296
  %67 = ashr exact i64 %66, 32
  %68 = getelementptr inbounds i8, ptr %55, i64 %67
  br label %69

69:                                               ; preds = %65, %59, %54
  %70 = phi ptr [ %55, %54 ], [ %68, %65 ], [ %55, %59 ]
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.17.261, ptr noundef %70, ptr noundef %3) #28
  br label %268

72:                                               ; preds = %5
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.18.262, ptr noundef %3) #28
  br label %268

74:                                               ; preds = %5
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.19.263, ptr noundef %3) #28
  br label %268

76:                                               ; preds = %76, %11
  %77 = phi i32 [ %84, %76 ], [ 0, %11 ]
  %78 = phi ptr [ %80, %76 ], [ %8, %11 ]
  %79 = mul nsw i32 %77, 10
  %80 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %80, ptr %2, align 8, !tbaa !13
  %81 = load i8, ptr %78, align 1, !tbaa !7
  %82 = sext i8 %81 to i32
  %83 = add i32 %79, -48
  %84 = add i32 %83, %82
  %85 = load i8, ptr %80, align 1, !tbaa !7
  %86 = add i8 %85, -48
  %87 = icmp ult i8 %86, 10
  br i1 %87, label %76, label %88, !llvm.loop !202

88:                                               ; preds = %76
  %.lcssa1 = phi i32 [ %84, %76 ]
  %89 = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) #28, !range !198
  %90 = icmp eq i32 %.lcssa1, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.20.264, i32 noundef %.lcssa1) #28
  br label %268

93:                                               ; preds = %88, %15
  %94 = tail call i64 @fwrite(ptr nonnull @.str.21.265, i64 2, i64 1, ptr %1)
  br label %268

95:                                               ; preds = %5
  %96 = icmp eq ptr %4, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load ptr, ptr @stderr, align 8, !tbaa !13
  %99 = tail call i64 @fwrite(ptr nonnull @.str.22.266, i64 32, i64 1, ptr %98) #31
  br label %268

100:                                              ; preds = %95
  store ptr %8, ptr %6, align 8, !tbaa !13
  br label %101

101:                                              ; preds = %101, %100
  %102 = phi ptr [ %103, %101 ], [ %8, %100 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 1
  store ptr %103, ptr %2, align 8, !tbaa !13
  %104 = load i8, ptr %102, align 1, !tbaa !7
  %105 = icmp eq i8 %104, 41
  br i1 %105, label %106, label %101, !llvm.loop !203

106:                                              ; preds = %101
  %.lcssa2 = phi ptr [ %103, %101 ]
  %107 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.23.267) #26
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %268, label %109

109:                                              ; preds = %106
  %110 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa2) #26
  %111 = add i64 %110, 1
  %112 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %111) #29
  %113 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 17
  store ptr %112, ptr %113, align 8, !tbaa !204
  %114 = load ptr, ptr %2, align 8, !tbaa !13
  %115 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %112, ptr noundef nonnull dereferenceable(1) %114) #25
  %116 = tail call noundef i32 @_Z8sig2typePc(ptr noundef nonnull %112) #28, !range !205
  %117 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 18
  store i32 %116, ptr %117, align 8, !tbaa !158
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(7) @.str.24.268) #26
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  %121 = tail call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull %4) #28, !range !198
  br label %126

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.Classfile, ptr %0, i64 0, i32 10
  %124 = load ptr, ptr %123, align 8, !tbaa !57
  %125 = tail call i32 @fputs(ptr %124, ptr %1)
  br label %126

126:                                              ; preds = %122, %120
  %127 = tail call i32 @fputc(i32 40, ptr %1)
  %128 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 4
  %129 = load i8, ptr %128, align 1, !tbaa !91
  %130 = add i8 %129, 1
  store i8 %130, ptr %128, align 1, !tbaa !91
  %131 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 11
  %132 = load i16, ptr %131, align 8, !tbaa !88
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %168

134:                                              ; preds = %126
  %135 = zext i8 %130 to i64
  %136 = shl nuw nsw i64 %135, 3
  %137 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %136) #29
  %138 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 13
  store ptr %137, ptr %138, align 8, !tbaa !105
  %139 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %136) #29
  %140 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 14
  store ptr %139, ptr %140, align 8, !tbaa !110
  %141 = shl nuw nsw i64 %135, 2
  %142 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %141) #29
  %143 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 16
  store ptr %142, ptr %143, align 8, !tbaa !153
  %144 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %141) #29
  %145 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 15
  store ptr %144, ptr %145, align 8, !tbaa !157
  %146 = icmp eq i8 %130, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %151, %134
  %148 = load i16, ptr %4, align 2, !tbaa !10
  %149 = and i16 %148, 8
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %163, label %168

151:                                              ; preds = %151, %134
  %152 = phi i64 [ %153, %151 ], [ %135, %134 ]
  %153 = add nsw i64 %152, -1
  %154 = load ptr, ptr %145, align 8, !tbaa !157
  %155 = getelementptr inbounds i32, ptr %154, i64 %153
  store i32 0, ptr %155, align 4, !tbaa !17
  %156 = load ptr, ptr %140, align 8, !tbaa !110
  %157 = getelementptr inbounds ptr, ptr %156, i64 %153
  store ptr null, ptr %157, align 8, !tbaa !13
  %158 = load ptr, ptr %138, align 8, !tbaa !105
  %159 = getelementptr inbounds ptr, ptr %158, i64 %153
  store ptr null, ptr %159, align 8, !tbaa !13
  %160 = load ptr, ptr %143, align 8, !tbaa !153
  %161 = getelementptr inbounds i32, ptr %160, i64 %153
  store i32 0, ptr %161, align 4, !tbaa !154
  %162 = icmp eq i64 %153, 0
  br i1 %162, label %147, label %151, !llvm.loop !206

163:                                              ; preds = %147
  %164 = load ptr, ptr %138, align 8, !tbaa !105
  store ptr @.str.27.269, ptr %164, align 8, !tbaa !13
  %165 = load ptr, ptr %140, align 8, !tbaa !110
  store ptr @.str.28.270, ptr %165, align 8, !tbaa !13
  %166 = load ptr, ptr %143, align 8, !tbaa !153
  store i32 8, ptr %166, align 4, !tbaa !154
  %167 = load ptr, ptr %145, align 8, !tbaa !157
  store i32 0, ptr %167, align 4, !tbaa !17
  br label %168

168:                                              ; preds = %163, %147, %126
  %169 = load ptr, ptr %6, align 8, !tbaa !13
  %170 = load i8, ptr %169, align 1, !tbaa !7
  %171 = icmp eq i8 %170, 41
  br i1 %171, label %261, label %172

172:                                              ; preds = %168
  %173 = load i16, ptr %4, align 2, !tbaa !10
  %174 = and i16 %173, 8
  %175 = icmp eq i16 %174, 0
  %176 = zext i1 %175 to i32
  %177 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 14
  %178 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 13
  %179 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 16
  %180 = getelementptr inbounds %struct.method_info, ptr %4, i64 0, i32 15
  br label %181

181:                                              ; preds = %255, %172
  %182 = phi ptr [ %169, %172 ], [ %258, %255 ]
  %183 = phi i32 [ %176, %172 ], [ %256, %255 ]
  %184 = load i16, ptr %131, align 8, !tbaa !88
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %177, align 8, !tbaa !110
  %188 = sext i32 %183 to i64
  %189 = getelementptr inbounds ptr, ptr %187, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !13
  %191 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %182, ptr noundef nonnull dereferenceable(1) %190) #26
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %186
  %194 = load ptr, ptr @stderr, align 8, !tbaa !13
  %195 = call i64 @fwrite(ptr nonnull @.str.29.271, i64 33, i64 1, ptr %194) #31
  br label %268

196:                                              ; preds = %186
  %197 = load ptr, ptr %178, align 8, !tbaa !105
  %198 = getelementptr inbounds ptr, ptr %197, i64 %188
  %199 = load ptr, ptr %198, align 8, !tbaa !13
  %200 = call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %199, ptr noundef nonnull %4) #28, !range !198
  br label %245

201:                                              ; preds = %181
  %202 = call noalias noundef nonnull dereferenceable(6) ptr @_Znam(i64 noundef 6) #29
  %203 = load ptr, ptr %178, align 8, !tbaa !105
  %204 = sext i32 %183 to i64
  %205 = getelementptr inbounds ptr, ptr %203, i64 %204
  store ptr %202, ptr %205, align 8, !tbaa !13
  %206 = load ptr, ptr %178, align 8, !tbaa !105
  %207 = getelementptr inbounds ptr, ptr %206, i64 %204
  %208 = load ptr, ptr %207, align 8, !tbaa !13
  %209 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %208, ptr noundef nonnull dereferenceable(1) @.str.30.272, i32 noundef %183) #25
  %210 = load ptr, ptr %6, align 8, !tbaa !13
  %211 = load ptr, ptr %178, align 8, !tbaa !105
  %212 = getelementptr inbounds ptr, ptr %211, i64 %204
  %213 = load ptr, ptr %212, align 8, !tbaa !13
  %214 = call noundef i32 @_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %213, ptr noundef nonnull %4) #28, !range !198
  %215 = load ptr, ptr %6, align 8, !tbaa !13
  %216 = ptrtoint ptr %215 to i64
  %217 = ptrtoint ptr %210 to i64
  %218 = sub i64 %216, %217
  %219 = add i64 %218, 1
  %220 = call noalias noundef nonnull ptr @_Znam(i64 noundef %219) #29
  %221 = load ptr, ptr %177, align 8, !tbaa !110
  %222 = getelementptr inbounds ptr, ptr %221, i64 %204
  store ptr %220, ptr %222, align 8, !tbaa !13
  %223 = load ptr, ptr %177, align 8, !tbaa !110
  %224 = getelementptr inbounds ptr, ptr %223, i64 %204
  %225 = load ptr, ptr %224, align 8, !tbaa !13
  %226 = load ptr, ptr %6, align 8, !tbaa !13
  %227 = ptrtoint ptr %226 to i64
  %228 = sub i64 %227, %217
  %229 = call ptr @strncpy(ptr noundef %225, ptr noundef %210, i64 noundef %228) #25
  %230 = load ptr, ptr %177, align 8, !tbaa !110
  %231 = getelementptr inbounds ptr, ptr %230, i64 %204
  %232 = load ptr, ptr %231, align 8, !tbaa !13
  %233 = load ptr, ptr %6, align 8, !tbaa !13
  %234 = ptrtoint ptr %233 to i64
  %235 = sub i64 %234, %217
  %236 = getelementptr inbounds i8, ptr %232, i64 %235
  store i8 0, ptr %236, align 1, !tbaa !7
  %237 = load ptr, ptr %177, align 8, !tbaa !110
  %238 = getelementptr inbounds ptr, ptr %237, i64 %204
  %239 = load ptr, ptr %238, align 8, !tbaa !13
  %240 = call noundef i32 @_Z8sig2typePc(ptr noundef %239) #28, !range !205
  %241 = load ptr, ptr %179, align 8, !tbaa !153
  %242 = getelementptr inbounds i32, ptr %241, i64 %204
  store i32 %240, ptr %242, align 4, !tbaa !154
  %243 = load ptr, ptr %180, align 8, !tbaa !157
  %244 = getelementptr inbounds i32, ptr %243, i64 %204
  store i32 0, ptr %244, align 4, !tbaa !17
  br label %245

245:                                              ; preds = %201, %196
  %246 = load ptr, ptr %6, align 8, !tbaa !13
  %247 = getelementptr inbounds i8, ptr %246, i64 -1
  %248 = load i8, ptr %247, align 1, !tbaa !7
  switch i8 %248, label %251 [
    i8 68, label %249
    i8 74, label %249
  ]

249:                                              ; preds = %245, %245
  %250 = add nsw i32 %183, 1
  br label %251

251:                                              ; preds = %249, %245
  %252 = phi i32 [ %250, %249 ], [ %183, %245 ]
  %253 = load i8, ptr %246, align 1, !tbaa !7
  %254 = icmp eq i8 %253, 41
  br i1 %254, label %261, label %255

255:                                              ; preds = %251
  %256 = add nsw i32 %252, 1
  %257 = call i64 @fwrite(ptr nonnull @.str.31.273, i64 2, i64 1, ptr %1)
  %258 = load ptr, ptr %6, align 8, !tbaa !13
  %259 = load i8, ptr %258, align 1, !tbaa !7
  %260 = icmp eq i8 %259, 41
  br i1 %260, label %261, label %181, !llvm.loop !207

261:                                              ; preds = %255, %251, %168
  %262 = call i32 @fputc(i32 41, ptr %1)
  br label %268

263:                                              ; preds = %5
  %264 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.33.274, ptr noundef %3) #28
  br label %268

265:                                              ; preds = %5
  %266 = load ptr, ptr @stderr, align 8, !tbaa !13
  %267 = tail call i64 @fwrite(ptr nonnull @.str.34.275, i64 30, i64 1, ptr %266) #31
  br label %268

268:                                              ; preds = %265, %263, %261, %193, %106, %97, %93, %91, %74, %72, %69, %27, %25, %23, %21, %19, %17
  %269 = phi i32 [ 1, %265 ], [ 0, %263 ], [ 1, %193 ], [ 0, %261 ], [ 0, %97 ], [ 0, %74 ], [ 0, %72 ], [ 0, %69 ], [ 0, %27 ], [ 0, %25 ], [ 0, %23 ], [ 0, %21 ], [ 0, %19 ], [ 0, %17 ], [ 0, %93 ], [ 0, %91 ], [ 0, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #33
  ret i32 %269
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN12ClassVersion4readEP9Classfile(ptr nocapture noundef nonnull align 2 dereferenceable(4) %0, ptr nocapture noundef readonly %1) #13 align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !26
  %4 = tail call i32 @getc(ptr noundef %3) #28
  %5 = trunc i32 %4 to i16
  %6 = tail call i32 @getc(ptr noundef %3) #28
  %7 = trunc i32 %6 to i16
  %8 = shl i16 %5, 8
  %9 = and i16 %7, 255
  %10 = or i16 %9, %8
  store i16 %10, ptr %0, align 2, !tbaa !208
  %11 = load ptr, ptr %1, align 8, !tbaa !26
  %12 = tail call i32 @getc(ptr noundef %11) #28
  %13 = trunc i32 %12 to i16
  %14 = tail call i32 @getc(ptr noundef %11) #28
  %15 = trunc i32 %14 to i16
  %16 = shl i16 %13, 8
  %17 = and i16 %15, 255
  %18 = or i16 %17, %16
  %19 = getelementptr inbounds %struct.ClassVersion, ptr %0, i64 0, i32 1
  store i16 %18, ptr %19, align 2, !tbaa !209
  %20 = icmp eq i16 %18, 45
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  tail call void (i32, ...) @_Z10fatalerroriz(i32 noundef 5) #28
  br label %29

22:                                               ; preds = %2
  %23 = load i16, ptr %0, align 2, !tbaa !208
  %24 = icmp eq i16 %23, 3
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = zext i16 %23 to i32
  %27 = load ptr, ptr @stderr, align 8, !tbaa !13
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.289, i32 noundef %26) #27
  br label %29

29:                                               ; preds = %25, %22, %21
  ret void
}

attributes #0 = { mustprogress nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind optsize }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { cold optsize }
attributes #28 = { optsize }
attributes #29 = { builtin optsize allocsize(0) }
attributes #30 = { builtin nounwind optsize }
attributes #31 = { cold }
attributes #32 = { noreturn nounwind optsize }
attributes #33 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTS11AccessFlags", !12, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !8, i64 0}
!19 = distinct !{!19, !16}
!20 = !{!21, !14, i64 160}
!21 = !{!"_ZTS9Classfile", !14, i64 0, !14, i64 8, !18, i64 16, !18, i64 20, !22, i64 24, !23, i64 28, !24, i64 32, !11, i64 48, !12, i64 50, !14, i64 56, !14, i64 64, !12, i64 72, !14, i64 80, !12, i64 88, !14, i64 96, !12, i64 104, !14, i64 112, !12, i64 120, !14, i64 128, !14, i64 136, !12, i64 144, !14, i64 152, !14, i64 160}
!22 = !{!"_ZTS10CL_Options", !8, i64 0}
!23 = !{!"_ZTS12ClassVersion", !12, i64 0, !12, i64 2}
!24 = !{!"_ZTS9ConstPool", !12, i64 0, !14, i64 8}
!25 = !{!21, !14, i64 8}
!26 = !{!21, !14, i64 0}
!27 = !{!21, !22, i64 24}
!28 = distinct !{!28, !16}
!29 = !{!21, !18, i64 20}
!30 = distinct !{!30, !16}
!31 = !{!21, !18, i64 16}
!32 = !{!21, !12, i64 30}
!33 = !{!21, !12, i64 28}
!34 = !{!21, !12, i64 144}
!35 = !{!21, !12, i64 50}
!36 = !{!21, !12, i64 72}
!37 = !{!21, !12, i64 88}
!38 = !{!21, !14, i64 96}
!39 = !{!12, !12, i64 0}
!40 = distinct !{!40, !16}
!41 = !{!21, !12, i64 104}
!42 = !{!21, !14, i64 112}
!43 = distinct !{!43, !16}
!44 = !{!45, !18, i64 24}
!45 = !{!"_ZTS10field_info", !11, i64 0, !14, i64 8, !14, i64 16, !18, i64 24, !12, i64 28}
!46 = !{!24, !14, i64 8}
!47 = !{!45, !14, i64 8}
!48 = !{!45, !14, i64 16}
!49 = !{!45, !12, i64 28}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = !{!21, !12, i64 120}
!53 = !{!21, !14, i64 128}
!54 = !{!21, !14, i64 152}
!55 = distinct !{!55, !16}
!56 = !{!21, !14, i64 56}
!57 = !{!21, !14, i64 64}
!58 = distinct !{!58, !16}
!59 = !{!24, !12, i64 0}
!60 = !{i64 0, i64 1, !7, i64 8, i64 8, !61, i64 8, i64 8, !13, i64 8, i64 8, !63, i64 8, i64 4, !65, i64 8, i64 8, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"long", !8, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"double", !8, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"float", !8, i64 0}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = !{i64 0, i64 8, !61, i64 0, i64 8, !13, i64 0, i64 8, !63, i64 0, i64 4, !65, i64 0, i64 8, !13}
!70 = !{!71, !12, i64 2}
!71 = !{!"_ZTS11NameAndType", !12, i64 0, !12, i64 2}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = !{!80, !14, i64 8}
!80 = !{!"_ZTS11method_info", !11, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 25, !18, i64 28, !14, i64 32, !12, i64 40, !14, i64 48, !12, i64 56, !14, i64 64, !12, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !81, i64 128, !18, i64 132, !14, i64 136}
!81 = !{!"_ZTS4Type", !8, i64 0}
!82 = !{!80, !14, i64 16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = !{!80, !18, i64 132}
!88 = !{!80, !12, i64 72}
!89 = !{!80, !12, i64 56}
!90 = !{!80, !8, i64 24}
!91 = !{!80, !8, i64 25}
!92 = !{!80, !18, i64 28}
!93 = !{!80, !14, i64 32}
!94 = !{!80, !12, i64 40}
!95 = !{!80, !14, i64 48}
!96 = !{!97, !98, i64 0}
!97 = !{!"_ZTS5Block", !98, i64 0, !12, i64 4, !12, i64 6, !8, i64 8, !12, i64 12, !14, i64 16}
!98 = !{!"_ZTS9Blocktype", !8, i64 0}
!99 = !{!97, !12, i64 4}
!100 = !{!97, !12, i64 6}
!101 = !{!97, !12, i64 12}
!102 = distinct !{!102, !16}
!103 = !{!80, !14, i64 64}
!104 = !{!80, !14, i64 80}
!105 = !{!80, !14, i64 88}
!106 = !{!107, !12, i64 4}
!107 = !{!"_ZTS23LocalVariableTableEntry", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8}
!108 = !{!107, !12, i64 8}
!109 = distinct !{!109, !16}
!110 = !{!80, !14, i64 96}
!111 = !{!107, !12, i64 6}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = !{!80, !14, i64 136}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !16}
!119 = !{!21, !14, i64 136}
!120 = distinct !{!120, !16}
!121 = distinct !{!121, !16}
!122 = distinct !{!122, !16}
!123 = !{!21, !14, i64 80}
!124 = distinct !{!124, !16}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !16}
!127 = !{!128, !8, i64 0}
!128 = !{!"_ZTS7cp_info", !8, i64 0, !8, i64 8}
!129 = distinct !{!129, !16}
!130 = !{!131, !12, i64 0}
!131 = !{!"_ZTS3Ref", !12, i64 0, !12, i64 2}
!132 = !{!131, !12, i64 2}
!133 = !{!71, !12, i64 0}
!134 = !{!135, !14, i64 0}
!135 = !{!"_ZTS2Id", !14, i64 0, !81, i64 8, !136, i64 12, !18, i64 16, !8, i64 24}
!136 = !{!"_ZTS3Loc", !8, i64 0}
!137 = !{!135, !81, i64 8}
!138 = !{!135, !136, i64 12}
!139 = !{!135, !18, i64 16}
!140 = !{!141, !18, i64 8}
!141 = !{!"_ZTS3Exp", !14, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !14, i64 24, !14, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!142 = !{!141, !18, i64 16}
!143 = !{!141, !18, i64 12}
!144 = !{!145, !18, i64 0}
!145 = !{!"_ZTS4Exp_", !18, i64 0, !146, i64 4, !81, i64 8, !147, i64 12, !14, i64 16}
!146 = !{!"_ZTS7Exptype", !8, i64 0}
!147 = !{!"_ZTS2Op", !8, i64 0}
!148 = !{!145, !146, i64 4}
!149 = !{!145, !81, i64 8}
!150 = !{!145, !147, i64 12}
!151 = !{!145, !14, i64 16}
!152 = !{!141, !14, i64 0}
!153 = !{!80, !14, i64 112}
!154 = !{!81, !81, i64 0}
!155 = !{!141, !14, i64 24}
!156 = !{!141, !14, i64 32}
!157 = !{!80, !14, i64 104}
!158 = !{!80, !81, i64 128}
!159 = !{!160, !62, i64 0}
!160 = !{!"_ZTS4Case", !62, i64 0, !62, i64 8}
!161 = !{!160, !62, i64 8}
!162 = distinct !{!162, !16}
!163 = distinct !{!163, !16}
!164 = distinct !{!164, !16}
!165 = distinct !{!165, !16}
!166 = distinct !{!166, !16}
!167 = distinct !{!167, !16}
!168 = distinct !{!168, !16}
!169 = !{!170, !18, i64 0}
!170 = !{!"_ZTS4Loop", !18, i64 0, !18, i64 4, !18, i64 8, !14, i64 16, !171, i64 24}
!171 = !{!"_ZTS8LoopType", !8, i64 0}
!172 = !{!170, !18, i64 4}
!173 = !{!170, !18, i64 8}
!174 = !{!170, !14, i64 16}
!175 = !{!170, !171, i64 24}
!176 = !{!177, !14, i64 0}
!177 = !{!"_ZTS8loopnode", !14, i64 0, !14, i64 8}
!178 = !{!177, !14, i64 8}
!179 = !{!180, !14, i64 8}
!180 = !{!"_ZTS8looplist", !14, i64 0, !14, i64 8}
!181 = distinct !{!181, !16}
!182 = !{!180, !14, i64 0}
!183 = distinct !{!183, !16}
!184 = distinct !{!184, !16}
!185 = distinct !{!185, !16}
!186 = !{!187, !18, i64 0}
!187 = !{!"_ZTS7intnode", !18, i64 0, !14, i64 8}
!188 = !{!187, !14, i64 8}
!189 = distinct !{!189, !16}
!190 = distinct !{!190, !16}
!191 = distinct !{!191, !16}
!192 = distinct !{!192, !16}
!193 = distinct !{!193, !16}
!194 = distinct !{!194, !16}
!195 = distinct !{!195, !16}
!196 = distinct !{!196, !16}
!197 = distinct !{!197, !16}
!198 = !{i32 0, i32 2}
!199 = distinct !{!199, !16}
!200 = distinct !{!200, !16}
!201 = distinct !{!201, !16}
!202 = distinct !{!202, !16}
!203 = distinct !{!203, !16}
!204 = !{!80, !14, i64 120}
!205 = !{i32 0, i32 12}
!206 = distinct !{!206, !16}
!207 = distinct !{!207, !16}
!208 = !{!23, !12, i64 0}
!209 = !{!23, !12, i64 2}
